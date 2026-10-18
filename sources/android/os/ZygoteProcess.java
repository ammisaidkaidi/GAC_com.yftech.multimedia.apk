package android.os;

import android.net.LocalSocket;
import android.net.LocalSocketAddress;
import android.os.Process;
import android.util.Log;
import android.util.Slog;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.util.Preconditions;
import java.io.BufferedWriter;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

/* loaded from: /home/user/work/dex/classes2.dex */
public class ZygoteProcess {
    private static final String LOG_TAG = "ZygoteProcess";
    static final int ZYGOTE_RETRY_MILLIS = 500;
    private List<String> mApiBlacklistExemptions;
    private int mHiddenApiAccessLogSampleRate;
    private final Object mLock;
    private final LocalSocketAddress mSecondarySocket;
    private final LocalSocketAddress mSocket;
    private ZygoteState primaryZygoteState;
    private ZygoteState secondaryZygoteState;

    public ZygoteProcess(String str, String str2) {
        this(new LocalSocketAddress(str, LocalSocketAddress.Namespace.RESERVED), new LocalSocketAddress(str2, LocalSocketAddress.Namespace.RESERVED));
    }

    public ZygoteProcess(LocalSocketAddress localSocketAddress, LocalSocketAddress localSocketAddress2) {
        this.mLock = new Object();
        this.mApiBlacklistExemptions = Collections.emptyList();
        this.mSocket = localSocketAddress;
        this.mSecondarySocket = localSocketAddress2;
    }

    public LocalSocketAddress getPrimarySocketAddress() {
        return this.mSocket;
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class ZygoteState {
        final List<String> abiList;
        final DataInputStream inputStream;
        boolean mClosed;
        final LocalSocket socket;
        final BufferedWriter writer;

        private ZygoteState(LocalSocket localSocket, DataInputStream dataInputStream, BufferedWriter bufferedWriter, List<String> list) {
            this.socket = localSocket;
            this.inputStream = dataInputStream;
            this.writer = bufferedWriter;
            this.abiList = list;
        }

        public static ZygoteState connect(LocalSocketAddress localSocketAddress) throws IOException {
            LocalSocket localSocket = new LocalSocket();
            try {
                localSocket.connect(localSocketAddress);
                DataInputStream dataInputStream = new DataInputStream(localSocket.getInputStream());
                BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(localSocket.getOutputStream()), 256);
                String abiList = ZygoteProcess.getAbiList(bufferedWriter, dataInputStream);
                Log.i("Zygote", "Process: zygote socket " + localSocketAddress.getNamespace() + "/" + localSocketAddress.getName() + " opened, supported ABIS: " + abiList);
                return new ZygoteState(localSocket, dataInputStream, bufferedWriter, Arrays.asList(abiList.split(",")));
            } catch (IOException e) {
                try {
                    localSocket.close();
                } catch (IOException unused) {
                }
                throw e;
            }
        }

        boolean matches(String str) {
            return this.abiList.contains(str);
        }

        public void close() {
            try {
                this.socket.close();
            } catch (IOException e) {
                Log.e(ZygoteProcess.LOG_TAG, "I/O exception on routine close", e);
            }
            this.mClosed = true;
        }

        boolean isClosed() {
            return this.mClosed;
        }
    }

    public final Process.ProcessStartResult start(String str, String str2, int i, int i2, int[] iArr, int i3, int i4, int i5, String str3, String str4, String str5, String str6, String str7, String[] strArr) {
        try {
            return startViaZygote(str, str2, i, i2, iArr, i3, i4, i5, str3, str4, str5, str6, str7, false, strArr);
        } catch (ZygoteStartFailedEx e) {
            Log.e(LOG_TAG, "Starting VM process through Zygote failed");
            throw new RuntimeException("Starting VM process through Zygote failed", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GuardedBy("mLock")
    public static String getAbiList(BufferedWriter bufferedWriter, DataInputStream dataInputStream) throws IOException {
        bufferedWriter.write("1");
        bufferedWriter.newLine();
        bufferedWriter.write("--query-abi-list");
        bufferedWriter.newLine();
        bufferedWriter.flush();
        byte[] bArr = new byte[dataInputStream.readInt()];
        dataInputStream.readFully(bArr);
        return new String(bArr, StandardCharsets.US_ASCII);
    }

    @GuardedBy("mLock")
    private static Process.ProcessStartResult zygoteSendArgsAndGetResult(ZygoteState zygoteState, ArrayList<String> arrayList) throws ZygoteStartFailedEx {
        try {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (arrayList.get(i).indexOf(10) >= 0) {
                    throw new ZygoteStartFailedEx("embedded newlines not allowed");
                }
            }
            BufferedWriter bufferedWriter = zygoteState.writer;
            DataInputStream dataInputStream = zygoteState.inputStream;
            bufferedWriter.write(Integer.toString(arrayList.size()));
            bufferedWriter.newLine();
            for (int i2 = 0; i2 < size; i2++) {
                bufferedWriter.write(arrayList.get(i2));
                bufferedWriter.newLine();
            }
            bufferedWriter.flush();
            Process.ProcessStartResult processStartResult = new Process.ProcessStartResult();
            processStartResult.pid = dataInputStream.readInt();
            processStartResult.usingWrapper = dataInputStream.readBoolean();
            if (processStartResult.pid >= 0) {
                return processStartResult;
            }
            throw new ZygoteStartFailedEx("fork() failed");
        } catch (IOException e) {
            zygoteState.close();
            throw new ZygoteStartFailedEx(e);
        }
    }

    private Process.ProcessStartResult startViaZygote(String str, String str2, int i, int i2, int[] iArr, int i3, int i4, int i5, String str3, String str4, String str5, String str6, String str7, boolean z, String[] strArr) throws ZygoteStartFailedEx {
        Process.ProcessStartResult zygoteSendArgsAndGetResult;
        ArrayList arrayList = new ArrayList();
        arrayList.add("--runtime-args");
        arrayList.add("--setuid=" + i);
        arrayList.add("--setgid=" + i2);
        arrayList.add("--runtime-flags=" + i3);
        if (i4 == 1) {
            arrayList.add("--mount-external-default");
        } else if (i4 == 2) {
            arrayList.add("--mount-external-read");
        } else if (i4 == 3) {
            arrayList.add("--mount-external-write");
        }
        arrayList.add("--target-sdk-version=" + i5);
        if (iArr != null && iArr.length > 0) {
            StringBuilder sb = new StringBuilder();
            sb.append("--setgroups=");
            int length = iArr.length;
            for (int i6 = 0; i6 < length; i6++) {
                if (i6 != 0) {
                    sb.append(',');
                }
                sb.append(iArr[i6]);
            }
            arrayList.add(sb.toString());
        }
        if (str2 != null) {
            arrayList.add("--nice-name=" + str2);
        }
        if (str3 != null) {
            arrayList.add("--seinfo=" + str3);
        }
        if (str5 != null) {
            arrayList.add("--instruction-set=" + str5);
        }
        if (str6 != null) {
            arrayList.add("--app-data-dir=" + str6);
        }
        if (str7 != null) {
            arrayList.add("--invoke-with");
            arrayList.add(str7);
        }
        if (z) {
            arrayList.add("--start-child-zygote");
        }
        arrayList.add(str);
        if (strArr != null) {
            for (String str8 : strArr) {
                arrayList.add(str8);
            }
        }
        synchronized (this.mLock) {
            zygoteSendArgsAndGetResult = zygoteSendArgsAndGetResult(openZygoteSocketIfNeeded(str4), arrayList);
        }
        return zygoteSendArgsAndGetResult;
    }

    public void close() {
        if (this.primaryZygoteState != null) {
            this.primaryZygoteState.close();
        }
        if (this.secondaryZygoteState != null) {
            this.secondaryZygoteState.close();
        }
    }

    public void establishZygoteConnectionForAbi(String str) {
        try {
            synchronized (this.mLock) {
                openZygoteSocketIfNeeded(str);
            }
        } catch (ZygoteStartFailedEx e) {
            throw new RuntimeException("Unable to connect to zygote for abi: " + str, e);
        }
    }

    public boolean setApiBlacklistExemptions(List<String> list) {
        boolean maybeSetApiBlacklistExemptions;
        synchronized (this.mLock) {
            this.mApiBlacklistExemptions = list;
            maybeSetApiBlacklistExemptions = maybeSetApiBlacklistExemptions(this.primaryZygoteState, true);
            if (maybeSetApiBlacklistExemptions) {
                maybeSetApiBlacklistExemptions = maybeSetApiBlacklistExemptions(this.secondaryZygoteState, true);
            }
        }
        return maybeSetApiBlacklistExemptions;
    }

    public void setHiddenApiAccessLogSampleRate(int i) {
        synchronized (this.mLock) {
            this.mHiddenApiAccessLogSampleRate = i;
            maybeSetHiddenApiAccessLogSampleRate(this.primaryZygoteState);
            maybeSetHiddenApiAccessLogSampleRate(this.secondaryZygoteState);
        }
    }

    @GuardedBy("mLock")
    private boolean maybeSetApiBlacklistExemptions(ZygoteState zygoteState, boolean z) {
        if (zygoteState == null || zygoteState.isClosed()) {
            Slog.e(LOG_TAG, "Can't set API blacklist exemptions: no zygote connection");
            return false;
        }
        if (!z && this.mApiBlacklistExemptions.isEmpty()) {
            return true;
        }
        try {
            zygoteState.writer.write(Integer.toString(this.mApiBlacklistExemptions.size() + 1));
            zygoteState.writer.newLine();
            zygoteState.writer.write("--set-api-blacklist-exemptions");
            zygoteState.writer.newLine();
            for (int i = 0; i < this.mApiBlacklistExemptions.size(); i++) {
                zygoteState.writer.write(this.mApiBlacklistExemptions.get(i));
                zygoteState.writer.newLine();
            }
            zygoteState.writer.flush();
            int readInt = zygoteState.inputStream.readInt();
            if (readInt != 0) {
                Slog.e(LOG_TAG, "Failed to set API blacklist exemptions; status " + readInt);
            }
            return true;
        } catch (IOException e) {
            Slog.e(LOG_TAG, "Failed to set API blacklist exemptions", e);
            this.mApiBlacklistExemptions = Collections.emptyList();
            return false;
        }
    }

    private void maybeSetHiddenApiAccessLogSampleRate(ZygoteState zygoteState) {
        if (zygoteState == null || zygoteState.isClosed() || this.mHiddenApiAccessLogSampleRate == -1) {
            return;
        }
        try {
            zygoteState.writer.write(Integer.toString(1));
            zygoteState.writer.newLine();
            zygoteState.writer.write("--hidden-api-log-sampling-rate=" + Integer.toString(this.mHiddenApiAccessLogSampleRate));
            zygoteState.writer.newLine();
            zygoteState.writer.flush();
            int readInt = zygoteState.inputStream.readInt();
            if (readInt != 0) {
                Slog.e(LOG_TAG, "Failed to set hidden API log sampling rate; status " + readInt);
            }
        } catch (IOException e) {
            Slog.e(LOG_TAG, "Failed to set hidden API log sampling rate", e);
        }
    }

    @GuardedBy("mLock")
    private ZygoteState openZygoteSocketIfNeeded(String str) throws ZygoteStartFailedEx {
        Preconditions.checkState(Thread.holdsLock(this.mLock), "ZygoteProcess lock not held");
        if (this.primaryZygoteState == null || this.primaryZygoteState.isClosed()) {
            try {
                this.primaryZygoteState = ZygoteState.connect(this.mSocket);
                maybeSetApiBlacklistExemptions(this.primaryZygoteState, false);
                maybeSetHiddenApiAccessLogSampleRate(this.primaryZygoteState);
            } catch (IOException e) {
                throw new ZygoteStartFailedEx("Error connecting to primary zygote", e);
            }
        }
        if (this.primaryZygoteState.matches(str)) {
            return this.primaryZygoteState;
        }
        if (this.secondaryZygoteState == null || this.secondaryZygoteState.isClosed()) {
            try {
                this.secondaryZygoteState = ZygoteState.connect(this.mSecondarySocket);
                maybeSetApiBlacklistExemptions(this.secondaryZygoteState, false);
                maybeSetHiddenApiAccessLogSampleRate(this.secondaryZygoteState);
            } catch (IOException e2) {
                throw new ZygoteStartFailedEx("Error connecting to secondary zygote", e2);
            }
        }
        if (this.secondaryZygoteState.matches(str)) {
            return this.secondaryZygoteState;
        }
        throw new ZygoteStartFailedEx("Unsupported zygote ABI: " + str);
    }

    public boolean preloadPackageForAbi(String str, String str2, String str3, String str4, String str5) throws ZygoteStartFailedEx, IOException {
        boolean z;
        synchronized (this.mLock) {
            ZygoteState openZygoteSocketIfNeeded = openZygoteSocketIfNeeded(str5);
            openZygoteSocketIfNeeded.writer.write("5");
            openZygoteSocketIfNeeded.writer.newLine();
            openZygoteSocketIfNeeded.writer.write("--preload-package");
            openZygoteSocketIfNeeded.writer.newLine();
            openZygoteSocketIfNeeded.writer.write(str);
            openZygoteSocketIfNeeded.writer.newLine();
            openZygoteSocketIfNeeded.writer.write(str2);
            openZygoteSocketIfNeeded.writer.newLine();
            openZygoteSocketIfNeeded.writer.write(str3);
            openZygoteSocketIfNeeded.writer.newLine();
            openZygoteSocketIfNeeded.writer.write(str4);
            openZygoteSocketIfNeeded.writer.newLine();
            openZygoteSocketIfNeeded.writer.flush();
            z = openZygoteSocketIfNeeded.inputStream.readInt() == 0;
        }
        return z;
    }

    public boolean preloadDefault(String str) throws ZygoteStartFailedEx, IOException {
        boolean z;
        synchronized (this.mLock) {
            ZygoteState openZygoteSocketIfNeeded = openZygoteSocketIfNeeded(str);
            openZygoteSocketIfNeeded.writer.write("1");
            openZygoteSocketIfNeeded.writer.newLine();
            openZygoteSocketIfNeeded.writer.write("--preload-default");
            openZygoteSocketIfNeeded.writer.newLine();
            openZygoteSocketIfNeeded.writer.flush();
            z = openZygoteSocketIfNeeded.inputStream.readInt() == 0;
        }
        return z;
    }

    public static void waitForConnectionToZygote(String str) {
        waitForConnectionToZygote(new LocalSocketAddress(str, LocalSocketAddress.Namespace.RESERVED));
    }

    public static void waitForConnectionToZygote(LocalSocketAddress localSocketAddress) {
        for (int i = 20; i >= 0; i--) {
            try {
                ZygoteState.connect(localSocketAddress).close();
                return;
            } catch (IOException e) {
                Log.w(LOG_TAG, "Got error connecting to zygote, retrying. msg= " + e.getMessage());
                try {
                    Thread.sleep(1000L);
                } catch (InterruptedException unused) {
                }
            }
        }
        Slog.wtf(LOG_TAG, "Failed to connect to Zygote through socket " + localSocketAddress.getName());
    }

    public ChildZygoteProcess startChildZygote(String str, String str2, int i, int i2, int[] iArr, int i3, String str3, String str4, String str5) {
        LocalSocketAddress localSocketAddress = new LocalSocketAddress(str + "/" + UUID.randomUUID().toString());
        try {
            return new ChildZygoteProcess(localSocketAddress, startViaZygote(str, str2, i, i2, iArr, i3, 0, 0, str3, str4, str5, null, null, true, new String[]{"--zygote-socket=" + localSocketAddress.getName()}).pid);
        } catch (ZygoteStartFailedEx e) {
            throw new RuntimeException("Starting child-zygote through Zygote failed", e);
        }
    }
}
