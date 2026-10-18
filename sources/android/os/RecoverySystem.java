package android.os;

import android.annotation.SuppressLint;
import android.annotation.SystemApi;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.IRecoverySystemProgressListener;
import android.provider.Settings;
import android.telephony.euicc.EuiccManager;
import android.text.TextUtils;
import android.util.Log;
import android.view.Menu;
import android.view.WindowManager;
import com.android.internal.logging.MetricsLogger;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.security.PublicKey;
import java.security.SignatureException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;
import libcore.io.Streams;
import sun.security.pkcs.PKCS7;
import sun.security.pkcs.SignerInfo;

/* loaded from: /home/user/work/dex/classes2.dex */
public class RecoverySystem {
    private static final String ACTION_EUICC_FACTORY_RESET = "com.android.internal.action.EUICC_FACTORY_RESET";
    private static final long DEFAULT_EUICC_FACTORY_RESET_TIMEOUT_MILLIS = 30000;
    private static final String LAST_PREFIX = "last_";
    private static final int LOG_FILE_MAX_LENGTH = 65536;
    private static final long MAX_EUICC_FACTORY_RESET_TIMEOUT_MILLIS = 60000;
    private static final long MIN_EUICC_FACTORY_RESET_TIMEOUT_MILLIS = 5000;
    private static final String PACKAGE_NAME_WIPING_EUICC_DATA_CALLBACK = "android";
    private static final long PUBLISH_PROGRESS_INTERVAL_MS = 500;
    private static final String TAG = "RecoverySystem";
    private final IRecoverySystem mService;
    private static final File DEFAULT_KEYSTORE = new File("/system/etc/security/otacerts.zip");
    private static final File RECOVERY_DIR = new File("/cache/recovery");
    private static final File LOG_FILE = new File(RECOVERY_DIR, "log");
    private static final File LAST_INSTALL_FILE = new File(RECOVERY_DIR, "last_install");
    public static final File BLOCK_MAP_FILE = new File(RECOVERY_DIR, "block.map");
    public static final File UNCRYPT_PACKAGE_FILE = new File(RECOVERY_DIR, "uncrypt_file");
    public static final File UNCRYPT_STATUS_FILE = new File(RECOVERY_DIR, "uncrypt_status");
    private static final Object sRequestLock = new Object();

    /* loaded from: /home/user/work/dex/classes2.dex */
    public interface ProgressListener {
        void onProgress(int i);
    }

    private static HashSet<X509Certificate> getTrustedCerts(File file) throws IOException, GeneralSecurityException {
        HashSet<X509Certificate> hashSet = new HashSet<>();
        if (file == null) {
            file = DEFAULT_KEYSTORE;
        }
        ZipFile zipFile = new ZipFile(file);
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            Enumeration<? extends ZipEntry> entries = zipFile.entries();
            while (entries.hasMoreElements()) {
                InputStream inputStream = zipFile.getInputStream(entries.nextElement());
                try {
                    hashSet.add((X509Certificate) certificateFactory.generateCertificate(inputStream));
                    inputStream.close();
                } finally {
                }
            }
            return hashSet;
        } finally {
            zipFile.close();
        }
    }

    public static void verifyPackage(File file, final ProgressListener progressListener, File file2) throws IOException, GeneralSecurityException {
        final long length = file.length();
        final RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
        try {
            final long currentTimeMillis = System.currentTimeMillis();
            if (progressListener != null) {
                progressListener.onProgress(0);
            }
            randomAccessFile.seek(length - 6);
            byte[] bArr = new byte[6];
            randomAccessFile.readFully(bArr);
            if (bArr[2] != -1 || bArr[3] != -1) {
                throw new SignatureException("no signature in file (no footer)");
            }
            final int i = (bArr[4] & 255) | ((bArr[5] & 255) << 8);
            boolean z = true;
            int i2 = ((bArr[1] & 255) << 8) | (bArr[0] & 255);
            int i3 = i + 22;
            byte[] bArr2 = new byte[i3];
            randomAccessFile.seek(length - i3);
            randomAccessFile.readFully(bArr2);
            byte b = 80;
            if (bArr2[0] != 80 || bArr2[1] != 75 || bArr2[2] != 5 || bArr2[3] != 6) {
                throw new SignatureException("no signature in file (bad footer)");
            }
            int i4 = 4;
            while (i4 < bArr2.length - 3) {
                if (bArr2[i4] == b && bArr2[i4 + 1] == 75 && bArr2[i4 + 2] == 5) {
                    if (bArr2[i4 + 3] == 6) {
                        throw new SignatureException("EOCD marker found after start of EOCD");
                    }
                }
                i4++;
                b = 80;
            }
            PKCS7 pkcs7 = new PKCS7(new ByteArrayInputStream(bArr2, i3 - i2, i2));
            X509Certificate[] certificates = pkcs7.getCertificates();
            if (certificates == null || certificates.length == 0) {
                throw new SignatureException("signature contains no certificates");
            }
            PublicKey publicKey = certificates[0].getPublicKey();
            SignerInfo[] signerInfos = pkcs7.getSignerInfos();
            if (signerInfos == null || signerInfos.length == 0) {
                throw new SignatureException("signature contains no signedData");
            }
            SignerInfo signerInfo = signerInfos[0];
            Iterator<X509Certificate> it = getTrustedCerts(file2 == null ? DEFAULT_KEYSTORE : file2).iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                } else if (it.next().getPublicKey().equals(publicKey)) {
                    break;
                }
            }
            if (!z) {
                throw new SignatureException("signature doesn't match any trusted key");
            }
            randomAccessFile.seek(0L);
            SignerInfo verify = pkcs7.verify(signerInfo, new InputStream() { // from class: android.os.RecoverySystem.1
                long lastPublishTime;
                long toRead;
                long soFar = 0;
                int lastPercent = 0;

                {
                    this.toRead = (length - i) - 2;
                    this.lastPublishTime = currentTimeMillis;
                }

                @Override // java.io.InputStream
                public int read() throws IOException {
                    throw new UnsupportedOperationException();
                }

                @Override // java.io.InputStream
                public int read(byte[] bArr3, int i5, int i6) throws IOException {
                    if (this.soFar >= this.toRead || Thread.currentThread().isInterrupted()) {
                        return -1;
                    }
                    if (this.soFar + i6 > this.toRead) {
                        i6 = (int) (this.toRead - this.soFar);
                    }
                    int read = randomAccessFile.read(bArr3, i5, i6);
                    this.soFar += read;
                    if (progressListener != null) {
                        long currentTimeMillis2 = System.currentTimeMillis();
                        int i7 = (int) ((this.soFar * 100) / this.toRead);
                        if (i7 > this.lastPercent && currentTimeMillis2 - this.lastPublishTime > RecoverySystem.PUBLISH_PROGRESS_INTERVAL_MS) {
                            this.lastPercent = i7;
                            this.lastPublishTime = currentTimeMillis2;
                            progressListener.onProgress(this.lastPercent);
                        }
                    }
                    return read;
                }
            });
            boolean interrupted = Thread.interrupted();
            if (progressListener != null) {
                progressListener.onProgress(100);
            }
            if (interrupted) {
                throw new SignatureException("verification was interrupted");
            }
            if (verify == null) {
                throw new SignatureException("signature digest verification failed");
            }
            randomAccessFile.close();
            if (!readAndVerifyPackageCompatibilityEntry(file)) {
                throw new SignatureException("package compatibility verification failed");
            }
        } catch (Throwable th) {
            randomAccessFile.close();
            throw th;
        }
    }

    private static boolean verifyPackageCompatibility(InputStream inputStream) throws IOException {
        long size;
        ArrayList arrayList = new ArrayList();
        ZipInputStream zipInputStream = new ZipInputStream(inputStream);
        while (true) {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            if (nextEntry != null) {
                size = nextEntry.getSize();
                if (size > 2147483647L || size < 0) {
                    break;
                }
                byte[] bArr = new byte[(int) size];
                Streams.readFully(zipInputStream, bArr);
                arrayList.add(new String(bArr, StandardCharsets.UTF_8));
            } else {
                if (arrayList.isEmpty()) {
                    throw new IOException("no entries found in the compatibility file");
                }
                return VintfObject.verify((String[]) arrayList.toArray(new String[arrayList.size()])) == 0;
            }
        }
        throw new IOException("invalid entry size (" + size + ") in the compatibility file");
    }

    private static boolean readAndVerifyPackageCompatibilityEntry(File file) throws IOException {
        ZipFile zipFile = new ZipFile(file);
        Throwable th = null;
        try {
            ZipEntry entry = zipFile.getEntry("compatibility.zip");
            if (entry != null) {
                return verifyPackageCompatibility(zipFile.getInputStream(entry));
            }
            return true;
        } finally {
            $closeResource(th, zipFile);
        }
    }

    private static /* synthetic */ void $closeResource(Throwable th, AutoCloseable autoCloseable) {
        if (th == null) {
            autoCloseable.close();
            return;
        }
        try {
            autoCloseable.close();
        } catch (Throwable th2) {
            th.addSuppressed(th2);
        }
    }

    @SystemApi
    @SuppressLint({"Doclava125"})
    public static boolean verifyPackageCompatibility(File file) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        Throwable th = null;
        try {
            return verifyPackageCompatibility(fileInputStream);
        } finally {
            $closeResource(th, fileInputStream);
        }
    }

    @SystemApi
    public static void processPackage(Context context, File file, ProgressListener progressListener, Handler handler) throws IOException {
        String canonicalPath = file.getCanonicalPath();
        if (canonicalPath.startsWith("/data/")) {
            RecoverySystem recoverySystem = (RecoverySystem) context.getSystemService(PowerManager.REBOOT_RECOVERY);
            AnonymousClass2 anonymousClass2 = null;
            if (progressListener != null) {
                if (handler == null) {
                    handler = new Handler(context.getMainLooper());
                }
                anonymousClass2 = new AnonymousClass2(handler, progressListener);
            }
            if (!recoverySystem.uncrypt(canonicalPath, anonymousClass2)) {
                throw new IOException("process package failed");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.os.RecoverySystem$2, reason: invalid class name */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public class AnonymousClass2 extends IRecoverySystemProgressListener.Stub {
        int lastProgress = 0;
        long lastPublishTime = System.currentTimeMillis();
        final /* synthetic */ ProgressListener val$listener;
        final /* synthetic */ Handler val$progressHandler;

        AnonymousClass2(Handler handler, ProgressListener progressListener) {
            this.val$progressHandler = handler;
            this.val$listener = progressListener;
        }

        @Override // android.os.IRecoverySystemProgressListener
        public void onProgress(final int i) {
            final long currentTimeMillis = System.currentTimeMillis();
            this.val$progressHandler.post(new Runnable() { // from class: android.os.RecoverySystem.2.1
                @Override // java.lang.Runnable
                public void run() {
                    if (i <= AnonymousClass2.this.lastProgress || currentTimeMillis - AnonymousClass2.this.lastPublishTime <= RecoverySystem.PUBLISH_PROGRESS_INTERVAL_MS) {
                        return;
                    }
                    AnonymousClass2.this.lastProgress = i;
                    AnonymousClass2.this.lastPublishTime = currentTimeMillis;
                    AnonymousClass2.this.val$listener.onProgress(i);
                }
            });
        }
    }

    @SystemApi
    public static void processPackage(Context context, File file, ProgressListener progressListener) throws IOException {
        processPackage(context, file, progressListener, null);
    }

    public static void installPackage(Context context, File file) throws IOException {
        installPackage(context, file, false);
    }

    @SystemApi
    public static void installPackage(Context context, File file, boolean z) throws IOException {
        synchronized (sRequestLock) {
            LOG_FILE.delete();
            UNCRYPT_PACKAGE_FILE.delete();
            String canonicalPath = file.getCanonicalPath();
            Log.w(TAG, "!!! REBOOTING TO INSTALL " + canonicalPath + " !!!");
            boolean endsWith = canonicalPath.endsWith("_s.zip");
            if (canonicalPath.startsWith("/data/")) {
                if (z) {
                    if (!BLOCK_MAP_FILE.exists()) {
                        Log.e(TAG, "Package claimed to have been processed but failed to find the block map file.");
                        throw new IOException("Failed to find block map file");
                    }
                } else {
                    FileWriter fileWriter = new FileWriter(UNCRYPT_PACKAGE_FILE);
                    try {
                        fileWriter.write(canonicalPath + "\n");
                        fileWriter.close();
                        if (!UNCRYPT_PACKAGE_FILE.setReadable(true, false) || !UNCRYPT_PACKAGE_FILE.setWritable(true, false)) {
                            Log.e(TAG, "Error setting permission for " + UNCRYPT_PACKAGE_FILE);
                        }
                        BLOCK_MAP_FILE.delete();
                    } catch (Throwable th) {
                        fileWriter.close();
                        throw th;
                    }
                }
                canonicalPath = "@/cache/recovery/block.map";
            }
            String str = ("--update_package=" + canonicalPath + "\n") + ("--locale=" + Locale.getDefault().toLanguageTag() + "\n");
            if (endsWith) {
                str = str + "--security\n";
            }
            if (!((RecoverySystem) context.getSystemService(PowerManager.REBOOT_RECOVERY)).setupBcb(str)) {
                throw new IOException("Setup BCB failed");
            }
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            String str2 = PowerManager.REBOOT_RECOVERY_UPDATE;
            if (context.getPackageManager().hasSystemFeature("android.software.leanback") && ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getState() != 2) {
                str2 = PowerManager.REBOOT_RECOVERY_UPDATE + ",quiescent";
            }
            powerManager.reboot(str2);
            throw new IOException("Reboot failed (no permissions?)");
        }
    }

    @SystemApi
    public static void scheduleUpdateOnBoot(Context context, File file) throws IOException {
        String canonicalPath = file.getCanonicalPath();
        boolean endsWith = canonicalPath.endsWith("_s.zip");
        if (canonicalPath.startsWith("/data/")) {
            canonicalPath = "@/cache/recovery/block.map";
        }
        String str = ("--update_package=" + canonicalPath + "\n") + ("--locale=" + Locale.getDefault().toLanguageTag() + "\n");
        if (endsWith) {
            str = str + "--security\n";
        }
        if (!((RecoverySystem) context.getSystemService(PowerManager.REBOOT_RECOVERY)).setupBcb(str)) {
            throw new IOException("schedule update on boot failed");
        }
    }

    @SystemApi
    public static void cancelScheduledUpdate(Context context) throws IOException {
        if (!((RecoverySystem) context.getSystemService(PowerManager.REBOOT_RECOVERY)).clearBcb()) {
            throw new IOException("cancel scheduled update failed");
        }
    }

    public static void rebootWipeUserData(Context context) throws IOException {
        rebootWipeUserData(context, false, context.getPackageName(), false, false);
    }

    public static void rebootWipeUserData(Context context, String str) throws IOException {
        rebootWipeUserData(context, false, str, false, false);
    }

    public static void rebootWipeUserData(Context context, boolean z) throws IOException {
        rebootWipeUserData(context, z, context.getPackageName(), false, false);
    }

    public static void rebootWipeUserData(Context context, boolean z, String str, boolean z2) throws IOException {
        rebootWipeUserData(context, z, str, z2, false);
    }

    public static void rebootWipeUserData(Context context, boolean z, String str, boolean z2, boolean z3) throws IOException {
        UserManager userManager = (UserManager) context.getSystemService("user");
        if (!z2 && userManager.hasUserRestriction(UserManager.DISALLOW_FACTORY_RESET)) {
            throw new SecurityException("Wiping data is not allowed for this user.");
        }
        final ConditionVariable conditionVariable = new ConditionVariable();
        Intent intent = new Intent("android.intent.action.MASTER_CLEAR_NOTIFICATION");
        intent.addFlags(285212672);
        context.sendOrderedBroadcastAsUser(intent, UserHandle.SYSTEM, "android.permission.MASTER_CLEAR", new BroadcastReceiver() { // from class: android.os.RecoverySystem.3
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent2) {
                ConditionVariable.this.open();
            }
        }, null, 0, null, null);
        conditionVariable.block();
        if (z3) {
            wipeEuiccData(context, "android");
        }
        String str2 = null;
        String str3 = z ? "--shutdown_after" : null;
        if (!TextUtils.isEmpty(str)) {
            str2 = "--reason=" + sanitizeArg(str);
        }
        bootCommand(context, str3, "--wipe_data", str2, "--locale=" + Locale.getDefault().toLanguageTag());
    }

    public static void rebootWipeUserData(Context context, boolean z, String str, boolean z2, boolean z3, boolean z4) throws IOException {
        String str2;
        UserManager userManager = (UserManager) context.getSystemService("user");
        if (!z2 && userManager.hasUserRestriction(UserManager.DISALLOW_FACTORY_RESET)) {
            throw new SecurityException("Wiping data is not allowed for this user.");
        }
        final ConditionVariable conditionVariable = new ConditionVariable();
        Intent intent = new Intent("android.intent.action.MASTER_CLEAR_NOTIFICATION");
        intent.addFlags(285212672);
        context.sendOrderedBroadcastAsUser(intent, UserHandle.SYSTEM, "android.permission.MASTER_CLEAR", new BroadcastReceiver() { // from class: android.os.RecoverySystem.4
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent2) {
                ConditionVariable.this.open();
            }
        }, null, 0, null, null);
        conditionVariable.block();
        if (z3) {
            wipeEuiccData(context, "android");
        }
        String str3 = z ? "--shutdown_after" : null;
        if (TextUtils.isEmpty(str)) {
            str2 = null;
        } else {
            str2 = "--reason=" + sanitizeArg(str);
        }
        bootCommand(context, str3, "--wipe_data", str2, "--locale=" + Locale.getDefault().toLanguageTag(), z4 ? "--reset_logo" : null);
    }

    public static boolean wipeEuiccData(Context context, String str) {
        if (Settings.Global.getInt(context.getContentResolver(), Settings.Global.EUICC_PROVISIONED, 0) == 0) {
            Log.d(TAG, "Skipping eUICC wipe/retain as it is not provisioned");
            return true;
        }
        EuiccManager euiccManager = (EuiccManager) context.getSystemService("euicc");
        if (euiccManager == null || !euiccManager.isEnabled()) {
            return false;
        }
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: android.os.RecoverySystem.5
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if (RecoverySystem.ACTION_EUICC_FACTORY_RESET.equals(intent.getAction())) {
                    if (getResultCode() != 0) {
                        Log.e(RecoverySystem.TAG, "Error wiping euicc data, Detailed code = " + intent.getIntExtra(EuiccManager.EXTRA_EMBEDDED_SUBSCRIPTION_DETAILED_CODE, 0));
                    } else {
                        Log.d(RecoverySystem.TAG, "Successfully wiped euicc data.");
                        atomicBoolean.set(true);
                    }
                    countDownLatch.countDown();
                }
            }
        };
        Intent intent = new Intent(ACTION_EUICC_FACTORY_RESET);
        intent.setPackage(str);
        PendingIntent broadcastAsUser = PendingIntent.getBroadcastAsUser(context, 0, intent, 134217728, UserHandle.SYSTEM);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(ACTION_EUICC_FACTORY_RESET);
        HandlerThread handlerThread = new HandlerThread("euiccWipeFinishReceiverThread");
        handlerThread.start();
        context.getApplicationContext().registerReceiver(broadcastReceiver, intentFilter, null, new Handler(handlerThread.getLooper()));
        euiccManager.eraseSubscriptions(broadcastAsUser);
        try {
            long j = Settings.Global.getLong(context.getContentResolver(), Settings.Global.EUICC_FACTORY_RESET_TIMEOUT_MILLIS, DEFAULT_EUICC_FACTORY_RESET_TIMEOUT_MILLIS);
            if (j < 5000) {
                j = 5000;
            } else if (j > 60000) {
                j = 60000;
            }
            if (!countDownLatch.await(j, TimeUnit.MILLISECONDS)) {
                Log.e(TAG, "Timeout wiping eUICC data.");
                return false;
            }
            context.getApplicationContext().unregisterReceiver(broadcastReceiver);
            return atomicBoolean.get();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            Log.e(TAG, "Wiping eUICC data interrupted", e);
            return false;
        } finally {
            context.getApplicationContext().unregisterReceiver(broadcastReceiver);
        }
    }

    public static void rebootPromptAndWipeUserData(Context context, String str) throws IOException {
        String str2;
        if (TextUtils.isEmpty(str)) {
            str2 = null;
        } else {
            str2 = "--reason=" + sanitizeArg(str);
        }
        bootCommand(context, null, "--prompt_and_wipe_data", str2, "--locale=" + Locale.getDefault().toString());
    }

    public static void rebootWipeCache(Context context) throws IOException {
        rebootWipeCache(context, context.getPackageName());
    }

    public static void rebootWipeCache(Context context, String str) throws IOException {
        String str2;
        if (TextUtils.isEmpty(str)) {
            str2 = null;
        } else {
            str2 = "--reason=" + sanitizeArg(str);
        }
        bootCommand(context, "--wipe_cache", str2, "--locale=" + Locale.getDefault().toLanguageTag());
    }

    @SystemApi
    public static void rebootWipeAb(Context context, File file, String str) throws IOException {
        String str2;
        if (TextUtils.isEmpty(str)) {
            str2 = null;
        } else {
            str2 = "--reason=" + sanitizeArg(str);
        }
        bootCommand(context, "--wipe_ab", "--wipe_package=" + file.getCanonicalPath(), str2, "--locale=" + Locale.getDefault().toLanguageTag());
    }

    private static void bootCommand(Context context, String... strArr) throws IOException {
        LOG_FILE.delete();
        StringBuilder sb = new StringBuilder();
        for (String str : strArr) {
            if (!TextUtils.isEmpty(str)) {
                sb.append(str);
                sb.append("\n");
            }
        }
        ((RecoverySystem) context.getSystemService(PowerManager.REBOOT_RECOVERY)).rebootRecoveryWithCommand(sb.toString());
        throw new IOException("Reboot failed (no permissions?)");
    }

    private static void parseLastInstallLog(Context context) {
        Throwable th;
        int i;
        int intExact;
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(LAST_INSTALL_FILE));
            int i2 = -1;
            int i3 = -1;
            int i4 = -1;
            int i5 = -1;
            int i6 = -1;
            int i7 = -1;
            int i8 = -1;
            int i9 = -1;
            int i10 = -1;
            int i11 = -1;
            int i12 = -1;
            while (true) {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    int indexOf = readLine.indexOf(58);
                    if (indexOf != i2 && (i = indexOf + 1) < readLine.length()) {
                        try {
                            long parseLong = Long.parseLong(readLine.substring(i).trim());
                            try {
                                if (readLine.startsWith("bytes")) {
                                    intExact = Math.toIntExact(parseLong / 1048576);
                                } else {
                                    intExact = Math.toIntExact(parseLong);
                                }
                                if (readLine.startsWith(DropBoxManager.EXTRA_TIME)) {
                                    i3 = intExact;
                                } else if (readLine.startsWith("uncrypt_time")) {
                                    i4 = intExact;
                                } else if (readLine.startsWith("source_build")) {
                                    i5 = intExact;
                                } else if (readLine.startsWith("bytes_written")) {
                                    if (i6 != i2) {
                                        intExact += i6;
                                    }
                                    i6 = intExact;
                                } else if (readLine.startsWith("bytes_stashed")) {
                                    if (i7 != i2) {
                                        intExact += i7;
                                    }
                                    i7 = intExact;
                                } else if (readLine.startsWith("temperature_start")) {
                                    i8 = intExact;
                                } else if (readLine.startsWith("temperature_end")) {
                                    i9 = intExact;
                                } else if (readLine.startsWith("temperature_max")) {
                                    i10 = intExact;
                                } else if (readLine.startsWith("error")) {
                                    i11 = intExact;
                                } else if (readLine.startsWith("cause")) {
                                    i12 = intExact;
                                }
                            } catch (ArithmeticException unused) {
                                Log.e(TAG, "Number overflows in " + readLine);
                            }
                        } catch (NumberFormatException unused2) {
                            Log.e(TAG, "Failed to parse numbers in " + readLine);
                        }
                    }
                    i2 = -1;
                } catch (Throwable th2) {
                    th = th2;
                    th = null;
                    $closeResource(th, bufferedReader);
                    throw th;
                }
            }
            int i13 = i2;
            if (i3 != i13) {
                MetricsLogger.histogram(context, "ota_time_total", i3);
                i13 = -1;
            }
            if (i4 != i13) {
                MetricsLogger.histogram(context, "ota_uncrypt_time", i4);
                i13 = -1;
            }
            if (i5 != i13) {
                MetricsLogger.histogram(context, "ota_source_version", i5);
                i13 = -1;
            }
            if (i6 != i13) {
                MetricsLogger.histogram(context, "ota_written_in_MiBs", i6);
                i13 = -1;
            }
            if (i7 != i13) {
                MetricsLogger.histogram(context, "ota_stashed_in_MiBs", i7);
                i13 = -1;
            }
            if (i8 != i13) {
                MetricsLogger.histogram(context, "ota_temperature_start", i8);
                i13 = -1;
            }
            if (i9 != i13) {
                MetricsLogger.histogram(context, "ota_temperature_end", i9);
                i13 = -1;
            }
            if (i10 != i13) {
                MetricsLogger.histogram(context, "ota_temperature_max", i10);
                i13 = -1;
            }
            if (i11 != i13) {
                MetricsLogger.histogram(context, "ota_non_ab_error_code", i11);
                i13 = -1;
            }
            if (i12 != i13) {
                MetricsLogger.histogram(context, "ota_non_ab_cause_code", i12);
            }
            $closeResource(null, bufferedReader);
        } catch (IOException e) {
            Log.e(TAG, "Failed to read lines in last_install", e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:5:0x001f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String handleAftermath(Context context) {
        String str;
        boolean exists;
        int i;
        String[] list;
        String str2 = null;
        try {
            str = FileUtils.readTextFile(LOG_FILE, Menu.CATEGORY_MASK, "...\n");
        } catch (FileNotFoundException unused) {
            Log.i(TAG, "No recovery log file");
            str = null;
            if (str != null) {
            }
            exists = BLOCK_MAP_FILE.exists();
            if (!exists) {
                try {
                    str2 = FileUtils.readTextFile(UNCRYPT_PACKAGE_FILE, 0, null);
                } catch (IOException e) {
                    Log.e(TAG, "Error reading uncrypt file", e);
                }
                if (str2 != null) {
                    if (UNCRYPT_PACKAGE_FILE.delete()) {
                    }
                }
            }
            list = RECOVERY_DIR.list();
            while (list != null) {
                if (!list[i].startsWith(LAST_PREFIX)) {
                    recursiveDelete(new File(RECOVERY_DIR, list[i]));
                }
            }
            return str;
        } catch (IOException e2) {
            Log.e(TAG, "Error reading recovery log", e2);
            str = null;
            if (str != null) {
            }
            exists = BLOCK_MAP_FILE.exists();
            if (!exists) {
            }
            list = RECOVERY_DIR.list();
            while (list != null) {
            }
            return str;
        }
        if (str != null) {
            parseLastInstallLog(context);
        }
        exists = BLOCK_MAP_FILE.exists();
        if (!exists && UNCRYPT_PACKAGE_FILE.exists()) {
            str2 = FileUtils.readTextFile(UNCRYPT_PACKAGE_FILE, 0, null);
            if (str2 != null && str2.startsWith("/data")) {
                if (UNCRYPT_PACKAGE_FILE.delete()) {
                    Log.e(TAG, "Can't delete: " + str2);
                } else {
                    Log.i(TAG, "Deleted: " + str2);
                }
            }
        }
        list = RECOVERY_DIR.list();
        for (i = 0; list != null && i < list.length; i++) {
            if (!list[i].startsWith(LAST_PREFIX) && ((!exists || !list[i].equals(BLOCK_MAP_FILE.getName())) && (!exists || !list[i].equals(UNCRYPT_PACKAGE_FILE.getName())))) {
                recursiveDelete(new File(RECOVERY_DIR, list[i]));
            }
        }
        return str;
    }

    private static void recursiveDelete(File file) {
        if (file.isDirectory()) {
            String[] list = file.list();
            for (int i = 0; list != null && i < list.length; i++) {
                recursiveDelete(new File(file, list[i]));
            }
        }
        if (!file.delete()) {
            Log.e(TAG, "Can't delete: " + file);
            return;
        }
        Log.i(TAG, "Deleted: " + file);
    }

    private boolean uncrypt(String str, IRecoverySystemProgressListener iRecoverySystemProgressListener) {
        try {
            return this.mService.uncrypt(str, iRecoverySystemProgressListener);
        } catch (RemoteException unused) {
            return false;
        }
    }

    private boolean setupBcb(String str) {
        try {
            return this.mService.setupBcb(str);
        } catch (RemoteException unused) {
            return false;
        }
    }

    private boolean clearBcb() {
        try {
            return this.mService.clearBcb();
        } catch (RemoteException unused) {
            return false;
        }
    }

    private void rebootRecoveryWithCommand(String str) {
        try {
            this.mService.rebootRecoveryWithCommand(str);
        } catch (RemoteException unused) {
        }
    }

    private static String sanitizeArg(String str) {
        return str.replace((char) 0, '?').replace('\n', '?');
    }

    public RecoverySystem() {
        this.mService = null;
    }

    public RecoverySystem(IRecoverySystem iRecoverySystem) {
        this.mService = iRecoverySystem;
    }
}
