package com.autochips.aee;

import android.os.SystemProperties;
import android.util.Log;
import java.io.IOException;
import java.io.StringWriter;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: /home/user/work/dex/classes3.dex */
public class ExceptionLog {
    public static final byte AEE_EXCEPTION_JNI = 1;
    public static final byte AEE_WARNING_JNI = 0;
    public static final String TAG = "AES";
    private final String SEND_NON_PROTECTED_BROADCAST = "Sending non-protected broadcast";
    private final String[] protectedBroadcastFilter = {"com.android.systemui.action.FINISH_WIZARD", "android.intent.action.MASTER_CLEAR ", "android.provider.Telephony.SMS_REJECTED", "android.btopp.intent.action.ACCEPT", "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_SENT", "android.intent.action.UMS_DISCONNECTED", "android.intent.action.CALL_EMERGENCY", "com.android.stk.DIALOG_ALARM_TIMEOUT", "com.android.server.action.LOCKDOWN_RESET", "android.telecom.action.TTY_PREFERRED_MODE_CHANGED", "com.autochips.atclogger.ADB_CMD", "com.autochips.log2server.EXCEPTION_HAPPEND", "com.autochips.autounlock", "com.atc.autotest.heartset.stop", "com.atc.fts.ACTION", "com.android.systemui.demo", "permission check ok", "permission check error", "network error"};
    private final String FILE_OBSERVER_NULL_PATH = "Unhandled exception in FileObserver com.android.server.BootReceiver";

    private static native long SFMatter(long j, long j2);

    private static native void WDTMatter(long j);

    private static native boolean getNativeExceptionPidListImpl(int[] iArr);

    private static native void report(String str, String str2, String str3, String str4, String str5, long j);

    private static native void switchFtraceImpl(int i);

    private static native void systemreportImpl(byte b, String str, String str2, String str3, String str4);

    static {
        Log.i(TAG, "load Exception Log jni");
        System.loadLibrary("autochips_exceptionlog");
    }

    public void handle(String str, String str2, String str3) {
        Log.w(TAG, "Exception Log handling...");
        if (str.startsWith("data_app") && !str2.contains("com.android.development") && SystemProperties.getInt("vendor.atc.aee.filter", 1) == 1) {
            Log.w(TAG, "Skipped - do not care third party apk");
            return;
        }
        String[] split = str2.split("\n+");
        Pattern compile = Pattern.compile("^Process:\\s+(.*)");
        Pattern compile2 = Pattern.compile("^Package:\\s+(.*)");
        String str4 = "";
        String str5 = "";
        for (String str6 : split) {
            Matcher matcher = compile.matcher(str6);
            if (matcher.matches()) {
                str4 = matcher.group(1);
            }
            Matcher matcher2 = compile2.matcher(str6);
            if (matcher2.matches()) {
                str5 = str5 + matcher2.group(1) + "\n";
            }
        }
        long parseLong = str3.equals("") ? 0L : Long.parseLong(str3);
        if (str.equals("system_server_wtf") && isSkipSystemWtfReport(str2)) {
            return;
        }
        if (str.contains("wtf") && isSkipATCWtfReport(str2)) {
            return;
        }
        report(str4, str5, str2, "Backtrace of all threads:\n\n", str, parseLong);
    }

    public void systemreport(byte b, String str, String str2, String str3) {
        systemreportImpl(b, str, getThreadStackTrace(), str2, str3);
    }

    public boolean getNativeExceptionPidList(int[] iArr) {
        return getNativeExceptionPidListImpl(iArr);
    }

    public void switchFtrace(int i) {
        switchFtraceImpl(i);
    }

    private static String getThreadStackTrace() {
        StringWriter stringWriter = new StringWriter();
        try {
            Thread currentThread = Thread.currentThread();
            StackTraceElement[] stackTrace = currentThread.getStackTrace();
            StringBuilder sb = new StringBuilder();
            sb.append("\"");
            sb.append(currentThread.getName());
            sb.append("\" ");
            sb.append(currentThread.isDaemon() ? "daemon" : "");
            sb.append(" prio=");
            sb.append(currentThread.getPriority());
            sb.append(" Thread id=");
            sb.append(currentThread.getId());
            sb.append(" ");
            sb.append(currentThread.getState());
            sb.append("\n");
            stringWriter.write(sb.toString());
            for (StackTraceElement stackTraceElement : stackTrace) {
                stringWriter.write("\t" + stackTraceElement + "\n");
            }
            stringWriter.write("\n");
            return stringWriter.toString();
        } catch (IOException unused) {
            return "IOException";
        } catch (OutOfMemoryError unused2) {
            return "java.lang.OutOfMemoryError";
        }
    }

    private static String getAllThreadStackTraces() {
        Map<Thread, StackTraceElement[]> allStackTraces = Thread.getAllStackTraces();
        StringWriter stringWriter = new StringWriter();
        try {
            for (Map.Entry<Thread, StackTraceElement[]> entry : allStackTraces.entrySet()) {
                StackTraceElement[] value = entry.getValue();
                Thread key = entry.getKey();
                StringBuilder sb = new StringBuilder();
                sb.append("\"");
                sb.append(key.getName());
                sb.append("\" ");
                sb.append(key.isDaemon() ? "daemon" : "");
                sb.append(" prio=");
                sb.append(key.getPriority());
                sb.append(" Thread id=");
                sb.append(key.getId());
                sb.append(" ");
                sb.append(key.getState());
                sb.append("\n");
                stringWriter.write(sb.toString());
                for (StackTraceElement stackTraceElement : value) {
                    stringWriter.write("\t" + stackTraceElement + "\n");
                }
                stringWriter.write("\n");
            }
            return stringWriter.toString();
        } catch (IOException unused) {
            return "IOException";
        } catch (OutOfMemoryError unused2) {
            return "java.lang.OutOfMemoryError";
        }
    }

    public void WDTMatterJava(long j) {
        WDTMatter(j);
    }

    public long SFMatterJava(long j, long j2) {
        return SFMatter(j, j2);
    }

    private boolean isSkipSystemWtfReport(String str) {
        return isSkipReportFromProtectedBroadcast(str) || isSkipReportFromNullFilePath(str);
    }

    private boolean isSkipATCWtfReport(String str) {
        if (str.contains("com.android.server.net") || str.contains("com.android.server.pm.PackageManagerService") || str.contains("com.android.settings") || str.contains("com.android.server.AlarmManagerService") || str.contains("com.android.server.am.TaskPersister") || str.contains("com.android.server.am.ActivityManagerService") || str.contains("com.android.server.AppOpsService")) {
            return true;
        }
        Log.w(TAG, "wtf log info is : " + str);
        return false;
    }

    private boolean isSkipReportFromProtectedBroadcast(String str) {
        if (str.contains("Sending non-protected broadcast")) {
            for (int i = 0; i < this.protectedBroadcastFilter.length; i++) {
                if (str.contains(this.protectedBroadcastFilter[i])) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean isSkipReportFromNullFilePath(String str) {
        return str.contains("Unhandled exception in FileObserver com.android.server.BootReceiver");
    }
}
