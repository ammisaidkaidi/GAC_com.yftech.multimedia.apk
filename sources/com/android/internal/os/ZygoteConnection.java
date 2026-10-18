package com.android.internal.os;

import android.net.Credentials;
import android.net.LocalSocket;
import android.os.FactoryTest;
import android.os.Process;
import android.os.SystemProperties;
import android.os.Trace;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.system.StructPollfd;
import android.util.Log;
import dalvik.system.VMRuntime;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.Array;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import libcore.io.IoUtils;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes3.dex */
public class ZygoteConnection {
    private static final String TAG = "Zygote";
    private static final int[][] intArray2d = (int[][]) Array.newInstance((Class<?>) int.class, 0, 0);
    private final String abiList;
    private boolean isEof;
    private final LocalSocket mSocket;
    private final DataOutputStream mSocketOutStream;
    private final BufferedReader mSocketReader;
    private final Credentials peer;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ZygoteConnection(LocalSocket localSocket, String str) throws IOException {
        this.mSocket = localSocket;
        this.abiList = str;
        this.mSocketOutStream = new DataOutputStream(localSocket.getOutputStream());
        this.mSocketReader = new BufferedReader(new InputStreamReader(localSocket.getInputStream()), 256);
        this.mSocket.setSoTimeout(1000);
        try {
            this.peer = this.mSocket.getPeerCredentials();
            this.isEof = false;
        } catch (IOException e) {
            Log.e(TAG, "Cannot read peer credentials", e);
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FileDescriptor getFileDesciptor() {
        return this.mSocket.getFileDescriptor();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Runnable processOneCommand(ZygoteServer zygoteServer) {
        FileDescriptor fileDescriptor;
        FileDescriptor fileDescriptor2;
        int[] iArr;
        FileDescriptor fileDescriptor3;
        try {
            String[] readArgumentList = readArgumentList();
            FileDescriptor[] ancillaryFileDescriptors = this.mSocket.getAncillaryFileDescriptors();
            if (readArgumentList == null) {
                this.isEof = true;
                return null;
            }
            Arguments arguments = new Arguments(readArgumentList);
            if (arguments.abiListQuery) {
                handleAbiListQuery();
                return null;
            }
            if (arguments.preloadDefault) {
                handlePreload();
                return null;
            }
            if (arguments.preloadPackage != null) {
                handlePreloadPackage(arguments.preloadPackage, arguments.preloadPackageLibs, arguments.preloadPackageLibFileName, arguments.preloadPackageCacheKey);
                return null;
            }
            if (arguments.apiBlacklistExemptions != null) {
                handleApiBlacklistExemptions(arguments.apiBlacklistExemptions);
                return null;
            }
            if (arguments.hiddenApiAccessLogSampleRate != -1) {
                handleHiddenApiAccessLogSampleRate(arguments.hiddenApiAccessLogSampleRate);
                return null;
            }
            if (arguments.permittedCapabilities != 0 || arguments.effectiveCapabilities != 0) {
                throw new ZygoteSecurityException("Client may not specify capabilities: permitted=0x" + Long.toHexString(arguments.permittedCapabilities) + ", effective=0x" + Long.toHexString(arguments.effectiveCapabilities));
            }
            applyUidSecurityPolicy(arguments, this.peer);
            applyInvokeWithSecurityPolicy(arguments, this.peer);
            applyDebuggerSystemProperty(arguments);
            applyInvokeWithSystemProperty(arguments);
            int[][] iArr2 = arguments.rlimits != null ? (int[][]) arguments.rlimits.toArray(intArray2d) : null;
            if (arguments.invokeWith != null) {
                try {
                    FileDescriptor[] pipe2 = Os.pipe2(OsConstants.O_CLOEXEC);
                    FileDescriptor fileDescriptor4 = pipe2[1];
                    FileDescriptor fileDescriptor5 = pipe2[0];
                    Os.fcntlInt(fileDescriptor4, OsConstants.F_SETFD, 0);
                    int[] iArr3 = {fileDescriptor4.getInt$(), fileDescriptor5.getInt$()};
                    fileDescriptor = fileDescriptor5;
                    fileDescriptor2 = fileDescriptor4;
                    iArr = iArr3;
                } catch (ErrnoException e) {
                    throw new IllegalStateException("Unable to set up pipe for invoke-with", e);
                }
            } else {
                fileDescriptor2 = null;
                fileDescriptor = null;
                iArr = null;
            }
            int[] iArr4 = {-1, -1};
            FileDescriptor fileDescriptor6 = this.mSocket.getFileDescriptor();
            if (fileDescriptor6 != null) {
                iArr4[0] = fileDescriptor6.getInt$();
            }
            FileDescriptor serverSocketFileDescriptor = zygoteServer.getServerSocketFileDescriptor();
            if (serverSocketFileDescriptor != null) {
                iArr4[1] = serverSocketFileDescriptor.getInt$();
            }
            FileDescriptor fileDescriptor7 = fileDescriptor2;
            FileDescriptor fileDescriptor8 = fileDescriptor;
            int forkAndSpecialize = Zygote.forkAndSpecialize(arguments.uid, arguments.gid, arguments.gids, arguments.runtimeFlags, iArr2, arguments.mountExternal, arguments.seInfo, arguments.niceName, iArr4, iArr, arguments.startChildZygote, arguments.instructionSet, arguments.appDataDir);
            if (forkAndSpecialize == 0) {
                try {
                    zygoteServer.setForkChild();
                    zygoteServer.closeServerSocket();
                    IoUtils.closeQuietly(fileDescriptor8);
                    try {
                        fileDescriptor3 = fileDescriptor7;
                        try {
                            Runnable handleChildProc = handleChildProc(arguments, ancillaryFileDescriptors, fileDescriptor3, arguments.startChildZygote);
                            IoUtils.closeQuietly(fileDescriptor3);
                            IoUtils.closeQuietly((FileDescriptor) null);
                            return handleChildProc;
                        } catch (Throwable th) {
                            th = th;
                            fileDescriptor8 = null;
                            IoUtils.closeQuietly(fileDescriptor3);
                            IoUtils.closeQuietly(fileDescriptor8);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        fileDescriptor3 = fileDescriptor7;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    fileDescriptor3 = fileDescriptor7;
                    IoUtils.closeQuietly(fileDescriptor3);
                    IoUtils.closeQuietly(fileDescriptor8);
                    throw th;
                }
            } else {
                fileDescriptor3 = fileDescriptor7;
                try {
                    IoUtils.closeQuietly(fileDescriptor3);
                } catch (Throwable th4) {
                    th = th4;
                    IoUtils.closeQuietly(fileDescriptor3);
                    IoUtils.closeQuietly(fileDescriptor8);
                    throw th;
                }
                try {
                    handleParentProc(forkAndSpecialize, ancillaryFileDescriptors, fileDescriptor8);
                    IoUtils.closeQuietly((FileDescriptor) null);
                    IoUtils.closeQuietly(fileDescriptor8);
                    return null;
                } catch (Throwable th5) {
                    th = th5;
                    fileDescriptor7 = null;
                    fileDescriptor3 = fileDescriptor7;
                    IoUtils.closeQuietly(fileDescriptor3);
                    IoUtils.closeQuietly(fileDescriptor8);
                    throw th;
                }
            }
        } catch (IOException e2) {
            throw new IllegalStateException("IOException on command socket", e2);
        }
    }

    private void handleAbiListQuery() {
        try {
            byte[] bytes = this.abiList.getBytes(StandardCharsets.US_ASCII);
            this.mSocketOutStream.writeInt(bytes.length);
            this.mSocketOutStream.write(bytes);
        } catch (IOException e) {
            throw new IllegalStateException("Error writing to command socket", e);
        }
    }

    private void handlePreload() {
        try {
            if (isPreloadComplete()) {
                this.mSocketOutStream.writeInt(1);
            } else {
                preload();
                this.mSocketOutStream.writeInt(0);
            }
        } catch (IOException e) {
            throw new IllegalStateException("Error writing to command socket", e);
        }
    }

    private void handleApiBlacklistExemptions(String[] strArr) {
        try {
            ZygoteInit.setApiBlacklistExemptions(strArr);
            this.mSocketOutStream.writeInt(0);
        } catch (IOException e) {
            throw new IllegalStateException("Error writing to command socket", e);
        }
    }

    private void handleHiddenApiAccessLogSampleRate(int i) {
        try {
            ZygoteInit.setHiddenApiAccessLogSampleRate(i);
            this.mSocketOutStream.writeInt(0);
        } catch (IOException e) {
            throw new IllegalStateException("Error writing to command socket", e);
        }
    }

    protected void preload() {
        ZygoteInit.lazyPreload();
    }

    protected boolean isPreloadComplete() {
        return ZygoteInit.isPreloadComplete();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public DataOutputStream getSocketOutputStream() {
        return this.mSocketOutStream;
    }

    protected void handlePreloadPackage(String str, String str2, String str3, String str4) {
        throw new RuntimeException("Zyogte does not support package preloading");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void closeSocket() {
        try {
            this.mSocket.close();
        } catch (IOException e) {
            Log.e(TAG, "Exception while closing command socket in parent", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isClosedByPeer() {
        return this.isEof;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class Arguments {
        boolean abiListQuery;
        String[] apiBlacklistExemptions;
        String appDataDir;
        boolean capabilitiesSpecified;
        long effectiveCapabilities;
        boolean gidSpecified;
        int[] gids;
        String instructionSet;
        String invokeWith;
        String niceName;
        long permittedCapabilities;
        boolean preloadDefault;
        String preloadPackage;
        String preloadPackageCacheKey;
        String preloadPackageLibFileName;
        String preloadPackageLibs;
        String[] remainingArgs;
        ArrayList<int[]> rlimits;
        int runtimeFlags;
        String seInfo;
        boolean seInfoSpecified;
        boolean startChildZygote;
        int targetSdkVersion;
        boolean targetSdkVersionSpecified;
        boolean uidSpecified;
        int uid = 0;
        int gid = 0;
        int mountExternal = 0;
        int hiddenApiAccessLogSampleRate = -1;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Arguments(String[] strArr) throws IllegalArgumentException {
            parseArgs(strArr);
        }

        /* JADX WARN: Code restructure failed: missing block: B:167:0x02c6, code lost:
        
            if (r10.abiListQuery == false) goto L140;
         */
        /* JADX WARN: Code restructure failed: missing block: B:169:0x02ca, code lost:
        
            if ((r11.length - r2) > 0) goto L138;
         */
        /* JADX WARN: Code restructure failed: missing block: B:171:0x02d4, code lost:
        
            throw new java.lang.IllegalArgumentException("Unexpected arguments after --query-abi-list.");
         */
        /* JADX WARN: Code restructure failed: missing block: B:173:0x0314, code lost:
        
            if (r10.startChildZygote == false) goto L164;
         */
        /* JADX WARN: Code restructure failed: missing block: B:174:0x0316, code lost:
        
            r10 = r10.remainingArgs;
            r11 = r10.length;
            r2 = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:175:0x031a, code lost:
        
            if (r2 >= r11) goto L204;
         */
        /* JADX WARN: Code restructure failed: missing block: B:177:0x0324, code lost:
        
            if (r10[r2].startsWith(com.android.internal.os.Zygote.CHILD_ZYGOTE_SOCKET_NAME_ARG) == false) goto L159;
         */
        /* JADX WARN: Code restructure failed: missing block: B:178:0x0328, code lost:
        
            r2 = r2 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:180:0x0326, code lost:
        
            r0 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:181:0x032b, code lost:
        
            if (r0 == false) goto L162;
         */
        /* JADX WARN: Code restructure failed: missing block: B:183:0x0335, code lost:
        
            throw new java.lang.IllegalArgumentException("--start-child-zygote specified without --zygote-socket=");
         */
        /* JADX WARN: Code restructure failed: missing block: B:184:?, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:186:0x0336, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:188:0x02d7, code lost:
        
            if (r10.preloadPackage == null) goto L147;
         */
        /* JADX WARN: Code restructure failed: missing block: B:190:0x02db, code lost:
        
            if ((r11.length - r2) > 0) goto L145;
         */
        /* JADX WARN: Code restructure failed: missing block: B:192:0x02e5, code lost:
        
            throw new java.lang.IllegalArgumentException("Unexpected arguments after --preload-package.");
         */
        /* JADX WARN: Code restructure failed: missing block: B:193:0x02e6, code lost:
        
            if (r4 == false) goto L152;
         */
        /* JADX WARN: Code restructure failed: missing block: B:194:0x02e8, code lost:
        
            if (r3 == false) goto L150;
         */
        /* JADX WARN: Code restructure failed: missing block: B:195:0x02ea, code lost:
        
            r10.remainingArgs = new java.lang.String[r11.length - r2];
            java.lang.System.arraycopy(r11, r2, r10.remainingArgs, 0, r10.remainingArgs.length);
         */
        /* JADX WARN: Code restructure failed: missing block: B:197:0x0311, code lost:
        
            throw new java.lang.IllegalArgumentException("Unexpected argument : " + r11[r2]);
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private void parseArgs(String[] strArr) throws IllegalArgumentException {
            boolean z = false;
            int i = 0;
            boolean z2 = false;
            boolean z3 = true;
            while (true) {
                if (i >= strArr.length) {
                    break;
                }
                String str = strArr[i];
                if (str.equals("--")) {
                    i++;
                    break;
                }
                if (str.startsWith("--setuid=")) {
                    if (this.uidSpecified) {
                        throw new IllegalArgumentException("Duplicate arg specified");
                    }
                    this.uidSpecified = true;
                    this.uid = Integer.parseInt(str.substring(str.indexOf(61) + 1));
                } else if (str.startsWith("--setgid=")) {
                    if (this.gidSpecified) {
                        throw new IllegalArgumentException("Duplicate arg specified");
                    }
                    this.gidSpecified = true;
                    this.gid = Integer.parseInt(str.substring(str.indexOf(61) + 1));
                } else if (str.startsWith("--target-sdk-version=")) {
                    if (this.targetSdkVersionSpecified) {
                        throw new IllegalArgumentException("Duplicate target-sdk-version specified");
                    }
                    this.targetSdkVersionSpecified = true;
                    this.targetSdkVersion = Integer.parseInt(str.substring(str.indexOf(61) + 1));
                } else if (str.equals("--runtime-args")) {
                    z2 = true;
                } else if (str.startsWith("--runtime-flags=")) {
                    this.runtimeFlags = Integer.parseInt(str.substring(str.indexOf(61) + 1));
                } else if (str.startsWith("--seinfo=")) {
                    if (this.seInfoSpecified) {
                        throw new IllegalArgumentException("Duplicate arg specified");
                    }
                    this.seInfoSpecified = true;
                    this.seInfo = str.substring(str.indexOf(61) + 1);
                } else if (str.startsWith("--capabilities=")) {
                    if (this.capabilitiesSpecified) {
                        throw new IllegalArgumentException("Duplicate arg specified");
                    }
                    this.capabilitiesSpecified = true;
                    String[] split = str.substring(str.indexOf(61) + 1).split(",", 2);
                    if (split.length == 1) {
                        this.effectiveCapabilities = Long.decode(split[0]).longValue();
                        this.permittedCapabilities = this.effectiveCapabilities;
                    } else {
                        this.permittedCapabilities = Long.decode(split[0]).longValue();
                        this.effectiveCapabilities = Long.decode(split[1]).longValue();
                    }
                } else if (str.startsWith("--rlimit=")) {
                    String[] split2 = str.substring(str.indexOf(61) + 1).split(",");
                    if (split2.length != 3) {
                        throw new IllegalArgumentException("--rlimit= should have 3 comma-delimited ints");
                    }
                    int[] iArr = new int[split2.length];
                    for (int i2 = 0; i2 < split2.length; i2++) {
                        iArr[i2] = Integer.parseInt(split2[i2]);
                    }
                    if (this.rlimits == null) {
                        this.rlimits = new ArrayList<>();
                    }
                    this.rlimits.add(iArr);
                } else if (str.startsWith("--setgroups=")) {
                    if (this.gids != null) {
                        throw new IllegalArgumentException("Duplicate arg specified");
                    }
                    String[] split3 = str.substring(str.indexOf(61) + 1).split(",");
                    this.gids = new int[split3.length];
                    for (int length = split3.length - 1; length >= 0; length--) {
                        this.gids[length] = Integer.parseInt(split3[length]);
                    }
                } else if (str.equals("--invoke-with")) {
                    if (this.invokeWith != null) {
                        throw new IllegalArgumentException("Duplicate arg specified");
                    }
                    i++;
                    try {
                        this.invokeWith = strArr[i];
                    } catch (IndexOutOfBoundsException unused) {
                        throw new IllegalArgumentException("--invoke-with requires argument");
                    }
                } else if (str.startsWith("--nice-name=")) {
                    if (this.niceName != null) {
                        throw new IllegalArgumentException("Duplicate arg specified");
                    }
                    this.niceName = str.substring(str.indexOf(61) + 1);
                } else if (str.equals("--mount-external-default")) {
                    this.mountExternal = 1;
                } else if (str.equals("--mount-external-read")) {
                    this.mountExternal = 2;
                } else if (str.equals("--mount-external-write")) {
                    this.mountExternal = 3;
                } else if (str.equals("--query-abi-list")) {
                    this.abiListQuery = true;
                } else if (str.startsWith("--instruction-set=")) {
                    this.instructionSet = str.substring(str.indexOf(61) + 1);
                } else if (str.startsWith("--app-data-dir=")) {
                    this.appDataDir = str.substring(str.indexOf(61) + 1);
                } else if (str.equals("--preload-package")) {
                    int i3 = i + 1;
                    this.preloadPackage = strArr[i3];
                    int i4 = i3 + 1;
                    this.preloadPackageLibs = strArr[i4];
                    int i5 = i4 + 1;
                    this.preloadPackageLibFileName = strArr[i5];
                    i = i5 + 1;
                    this.preloadPackageCacheKey = strArr[i];
                } else {
                    if (str.equals("--preload-default")) {
                        this.preloadDefault = true;
                    } else if (str.equals("--start-child-zygote")) {
                        this.startChildZygote = true;
                    } else if (str.equals("--set-api-blacklist-exemptions")) {
                        this.apiBlacklistExemptions = (String[]) Arrays.copyOfRange(strArr, i + 1, strArr.length);
                        i = strArr.length;
                    } else {
                        if (!str.startsWith("--hidden-api-log-sampling-rate=")) {
                            break;
                        }
                        String substring = str.substring(str.indexOf(61) + 1);
                        try {
                            this.hiddenApiAccessLogSampleRate = Integer.parseInt(substring);
                        } catch (NumberFormatException e) {
                            throw new IllegalArgumentException("Invalid log sampling rate: " + substring, e);
                        }
                    }
                    z3 = false;
                }
                i++;
            }
        }
    }

    private String[] readArgumentList() throws IOException {
        try {
            String readLine = this.mSocketReader.readLine();
            if (readLine == null) {
                return null;
            }
            int parseInt = Integer.parseInt(readLine);
            if (parseInt > 1024) {
                throw new IOException("max arg count exceeded");
            }
            String[] strArr = new String[parseInt];
            for (int i = 0; i < parseInt; i++) {
                strArr[i] = this.mSocketReader.readLine();
                if (strArr[i] == null) {
                    throw new IOException("truncated request");
                }
            }
            return strArr;
        } catch (NumberFormatException unused) {
            Log.e(TAG, "invalid Zygote wire format: non-int at argc");
            throw new IOException("invalid wire format");
        }
    }

    private static void applyUidSecurityPolicy(Arguments arguments, Credentials credentials) throws ZygoteSecurityException {
        if (credentials.getUid() == 1000) {
            if ((FactoryTest.getMode() == 0) && arguments.uidSpecified && arguments.uid < 1000) {
                throw new ZygoteSecurityException("System UID may not launch process with UID < 1000");
            }
        }
        if (!arguments.uidSpecified) {
            arguments.uid = credentials.getUid();
            arguments.uidSpecified = true;
        }
        if (arguments.gidSpecified) {
            return;
        }
        arguments.gid = credentials.getGid();
        arguments.gidSpecified = true;
    }

    public static void applyDebuggerSystemProperty(Arguments arguments) {
        if (RoSystemProperties.DEBUGGABLE) {
            arguments.runtimeFlags |= 1;
        }
    }

    private static void applyInvokeWithSecurityPolicy(Arguments arguments, Credentials credentials) throws ZygoteSecurityException {
        int uid = credentials.getUid();
        if (arguments.invokeWith != null && uid != 0 && (arguments.runtimeFlags & 1) == 0) {
            throw new ZygoteSecurityException("Peer is permitted to specify anexplicit invoke-with wrapper command only for debuggableapplications.");
        }
    }

    public static void applyInvokeWithSystemProperty(Arguments arguments) {
        if (arguments.invokeWith != null || arguments.niceName == null) {
            return;
        }
        arguments.invokeWith = SystemProperties.get("wrap." + arguments.niceName);
        if (arguments.invokeWith == null || arguments.invokeWith.length() != 0) {
            return;
        }
        arguments.invokeWith = null;
    }

    private Runnable handleChildProc(Arguments arguments, FileDescriptor[] fileDescriptorArr, FileDescriptor fileDescriptor, boolean z) {
        closeSocket();
        if (fileDescriptorArr != null) {
            try {
                Os.dup2(fileDescriptorArr[0], OsConstants.STDIN_FILENO);
                Os.dup2(fileDescriptorArr[1], OsConstants.STDOUT_FILENO);
                Os.dup2(fileDescriptorArr[2], OsConstants.STDERR_FILENO);
                for (FileDescriptor fileDescriptor2 : fileDescriptorArr) {
                    IoUtils.closeQuietly(fileDescriptor2);
                }
            } catch (ErrnoException e) {
                Log.e(TAG, "Error reopening stdio", e);
            }
        }
        if (arguments.niceName != null) {
            Process.setArgV0(arguments.niceName);
        }
        Trace.traceEnd(64L);
        if (arguments.invokeWith != null) {
            WrapperInit.execApplication(arguments.invokeWith, arguments.niceName, arguments.targetSdkVersion, VMRuntime.getCurrentInstructionSet(), fileDescriptor, arguments.remainingArgs);
            throw new IllegalStateException("WrapperInit.execApplication unexpectedly returned");
        }
        if (!z) {
            return ZygoteInit.zygoteInit(arguments.targetSdkVersion, arguments.remainingArgs, null);
        }
        return ZygoteInit.childZygoteInit(arguments.targetSdkVersion, arguments.remainingArgs, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00b1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void handleParentProc(int i, FileDescriptor[] fileDescriptorArr, FileDescriptor fileDescriptor) {
        int i2;
        int i3 = i;
        if (i3 > 0) {
            setChildPgid(i);
        }
        boolean z = false;
        if (fileDescriptorArr != null) {
            for (FileDescriptor fileDescriptor2 : fileDescriptorArr) {
                IoUtils.closeQuietly(fileDescriptor2);
            }
        }
        if (fileDescriptor != null && i3 > 0) {
            int i4 = -1;
            try {
                StructPollfd[] structPollfdArr = {new StructPollfd()};
                byte[] bArr = new byte[4];
                long nanoTime = System.nanoTime();
                int i5 = 0;
                int i6 = 30000;
                while (i5 < bArr.length && i6 > 0) {
                    structPollfdArr[0].fd = fileDescriptor;
                    structPollfdArr[0].events = (short) OsConstants.POLLIN;
                    structPollfdArr[0].revents = (short) 0;
                    structPollfdArr[0].userData = null;
                    int poll = Os.poll(structPollfdArr, i6);
                    int nanoTime2 = 30000 - ((int) ((System.nanoTime() - nanoTime) / 1000000));
                    if (poll > 0) {
                        if ((structPollfdArr[0].revents & OsConstants.POLLIN) == 0) {
                            break;
                        }
                        int read = Os.read(fileDescriptor, bArr, i5, 1);
                        if (read < 0) {
                            throw new RuntimeException("Some error");
                        }
                        i5 += read;
                    } else if (poll == 0) {
                        Log.w(TAG, "Timed out waiting for child.");
                    }
                    i6 = nanoTime2;
                }
                i2 = i5 == bArr.length ? new DataInputStream(new ByteArrayInputStream(bArr)).readInt() : -1;
                if (i2 == -1) {
                    try {
                        Log.w(TAG, "Error reading pid from wrapped process, child may have died");
                    } catch (Exception e) {
                        e = e;
                        i4 = i2;
                        Log.w(TAG, "Error reading pid from wrapped process, child may have died", e);
                        i2 = i4;
                        if (i2 > 0) {
                        }
                        this.mSocketOutStream.writeInt(i3);
                        this.mSocketOutStream.writeBoolean(z);
                    }
                }
            } catch (Exception e2) {
                e = e2;
            }
            if (i2 > 0) {
                int i7 = i2;
                while (i7 > 0 && i7 != i3) {
                    i7 = Process.getParentPid(i7);
                }
                if (i7 > 0) {
                    Log.i(TAG, "Wrapped process has pid " + i2);
                    i3 = i2;
                    z = true;
                } else {
                    Log.w(TAG, "Wrapped process reported a pid that is not a child of the process that we forked: childPid=" + i3 + " innerPid=" + i2);
                }
            }
        }
        try {
            this.mSocketOutStream.writeInt(i3);
            this.mSocketOutStream.writeBoolean(z);
        } catch (IOException e3) {
            throw new IllegalStateException("Error writing to command socket", e3);
        }
    }

    private void setChildPgid(int i) {
        try {
            Os.setpgid(i, Os.getpgid(this.peer.getPid()));
        } catch (ErrnoException unused) {
            Log.i(TAG, "Zygote: setpgid failed. This is normal if peer is not in our session");
        }
    }
}
