package com.media.common.util;

import android.util.Log;

/* loaded from: /home/user/work/dex/classes3.dex */
public class DebugLog {
    private static String className;
    private static int lineNumber;
    private static String methodName;

    public static boolean isDebuggable() {
        return false;
    }

    private static String createLog(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("[");
        stringBuffer.append(methodName);
        stringBuffer.append("()");
        stringBuffer.append(" line:");
        stringBuffer.append(lineNumber);
        stringBuffer.append("] ");
        stringBuffer.append(str);
        return stringBuffer.toString();
    }

    private static void getMethodNames(StackTraceElement[] stackTraceElementArr) {
        className = stackTraceElementArr[1].getFileName().split("\\.")[0];
        methodName = stackTraceElementArr[1].getMethodName();
        lineNumber = stackTraceElementArr[1].getLineNumber();
    }

    public static void e(String str) {
        if (isDebuggable()) {
            getMethodNames(new Throwable().getStackTrace());
            Log.e(className, createLog(str));
        }
    }

    public static void i(String str) {
        if (isDebuggable()) {
            getMethodNames(new Throwable().getStackTrace());
            Log.i(className, createLog(str));
        }
    }

    public static void d(String str) {
        if (isDebuggable()) {
            getMethodNames(new Throwable().getStackTrace());
            Log.d(className, createLog(str));
        }
    }

    public static void v(String str) {
        if (isDebuggable()) {
            getMethodNames(new Throwable().getStackTrace());
            Log.v(className, createLog(str));
        }
    }

    public static void w(String str) {
        if (isDebuggable()) {
            getMethodNames(new Throwable().getStackTrace());
            Log.w(className, createLog(str));
        }
    }

    public static void wtf(String str) {
        if (isDebuggable()) {
            getMethodNames(new Throwable().getStackTrace());
            Log.wtf(className, createLog(str));
        }
    }
}
