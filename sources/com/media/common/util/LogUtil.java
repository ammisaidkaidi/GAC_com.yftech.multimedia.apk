package com.media.common.util;

import android.text.TextUtils;
import android.util.Log;
import com.android.internal.content.NativeLibraryHelper;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Formatter;
import java.util.Locale;

/* loaded from: /home/user/work/dex/classes3.dex */
public class LogUtil {
    public static final String LOG_PATH = "/mnt/udisk";
    public static CustomLogger customLogger = null;
    public static String customTagPrefix = "YFMediaPlayer";
    public static boolean isSaveLog = false;
    private static DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd", Locale.SIMPLIFIED_CHINESE);
    public static boolean allowD = true;
    public static boolean allowE = true;
    public static boolean allowI = true;
    public static boolean allowV = true;
    public static boolean allowW = true;
    public static boolean allowWtf = true;
    private static final ThreadLocal<ReusableFormatter> thread_local_formatter = new ThreadLocal<ReusableFormatter>() { // from class: com.media.common.util.LogUtil.1
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.lang.ThreadLocal
        public ReusableFormatter initialValue() {
            return new ReusableFormatter();
        }
    };

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface CustomLogger {
        void d(String str, String str2);

        void d(String str, String str2, Throwable th);

        void e(String str, String str2);

        void e(String str, String str2, Throwable th);

        void i(String str, String str2);

        void i(String str, String str2, Throwable th);

        void v(String str, String str2);

        void v(String str, String str2, Throwable th);

        void w(String str, String str2);

        void w(String str, String str2, Throwable th);

        void w(String str, Throwable th);

        void wtf(String str, String str2);

        void wtf(String str, String str2, Throwable th);

        void wtf(String str, Throwable th);
    }

    private LogUtil() {
    }

    private static String generateTag(StackTraceElement stackTraceElement) {
        String className = stackTraceElement.getClassName();
        String format = String.format(Locale.getDefault(), "%s.%s(Line:%d)", className.substring(className.lastIndexOf(".") + 1), stackTraceElement.getMethodName(), Integer.valueOf(stackTraceElement.getLineNumber()));
        if (TextUtils.isEmpty(customTagPrefix)) {
            return format;
        }
        return customTagPrefix + ":" + format;
    }

    public static void d(String str) {
        if (allowD) {
            String generateTag = generateTag(getCallerStackTraceElement());
            if (customLogger != null) {
                customLogger.d(generateTag, str);
            } else {
                Log.d(generateTag, str);
            }
        }
    }

    public static void d(String str, Throwable th) {
        if (allowD) {
            String generateTag = generateTag(getCallerStackTraceElement());
            if (customLogger != null) {
                customLogger.d(generateTag, str, th);
            } else {
                Log.d(generateTag, str, th);
            }
        }
    }

    public static void e(String str) {
        if (allowE) {
            String generateTag = generateTag(getCallerStackTraceElement());
            if (customLogger != null) {
                customLogger.e(generateTag, str);
            } else {
                Log.e(generateTag, str);
            }
            if (isSaveLog) {
                point(LOG_PATH, generateTag, str);
            }
        }
    }

    public static void e(Throwable th) {
        if (allowE) {
            String generateTag = generateTag(getCallerStackTraceElement());
            if (customLogger != null) {
                customLogger.e(generateTag, "error", th);
            } else {
                Log.e(generateTag, th.getMessage(), th);
            }
            if (isSaveLog) {
                point(LOG_PATH, generateTag, th.getMessage());
            }
        }
    }

    public static void e(String str, Throwable th) {
        if (allowE) {
            String generateTag = generateTag(getCallerStackTraceElement());
            if (customLogger != null) {
                customLogger.e(generateTag, str, th);
            } else {
                Log.e(generateTag, str, th);
            }
            if (isSaveLog) {
                point(LOG_PATH, generateTag, th.getMessage());
            }
        }
    }

    public static void i(String str) {
        if (allowI) {
            String generateTag = generateTag(getCallerStackTraceElement());
            if (customLogger != null) {
                customLogger.i(generateTag, str);
            } else {
                Log.i(generateTag, str);
            }
        }
    }

    public static void i(String str, Throwable th) {
        if (allowI) {
            String generateTag = generateTag(getCallerStackTraceElement());
            if (customLogger != null) {
                customLogger.i(generateTag, str, th);
            } else {
                Log.i(generateTag, str, th);
            }
        }
    }

    public static void v(String str) {
        if (allowV) {
            String generateTag = generateTag(getCallerStackTraceElement());
            if (customLogger != null) {
                customLogger.v(generateTag, str);
            } else {
                Log.v(generateTag, str);
            }
        }
    }

    public static void v(String str, Throwable th) {
        if (allowV) {
            String generateTag = generateTag(getCallerStackTraceElement());
            if (customLogger != null) {
                customLogger.v(generateTag, str, th);
            } else {
                Log.v(generateTag, str, th);
            }
        }
    }

    public static void w(String str) {
        if (allowW) {
            String generateTag = generateTag(getCallerStackTraceElement());
            if (customLogger != null) {
                customLogger.w(generateTag, str);
            } else {
                Log.w(generateTag, str);
            }
        }
    }

    public static void w(String str, Throwable th) {
        if (allowW) {
            String generateTag = generateTag(getCallerStackTraceElement());
            if (customLogger != null) {
                customLogger.w(generateTag, str, th);
            } else {
                Log.w(generateTag, str, th);
            }
        }
    }

    public static void w(Throwable th) {
        if (allowW) {
            String generateTag = generateTag(getCallerStackTraceElement());
            if (customLogger != null) {
                customLogger.w(generateTag, th);
            } else {
                Log.w(generateTag, th);
            }
        }
    }

    public static void wtf(String str) {
        if (allowWtf) {
            String generateTag = generateTag(getCallerStackTraceElement());
            if (customLogger != null) {
                customLogger.wtf(generateTag, str);
            } else {
                Log.wtf(generateTag, str);
            }
        }
    }

    public static void wtf(String str, Throwable th) {
        if (allowWtf) {
            String generateTag = generateTag(getCallerStackTraceElement());
            if (customLogger != null) {
                customLogger.wtf(generateTag, str, th);
            } else {
                Log.wtf(generateTag, str, th);
            }
        }
    }

    public static void wtf(Throwable th) {
        if (allowWtf) {
            String generateTag = generateTag(getCallerStackTraceElement());
            if (customLogger != null) {
                customLogger.wtf(generateTag, th);
            } else {
                Log.wtf(generateTag, th);
            }
        }
    }

    private static StackTraceElement getCallerStackTraceElement() {
        return Thread.currentThread().getStackTrace()[4];
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0097 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void point(String str, String str2, String str3) {
        BufferedWriter bufferedWriter;
        Throwable th;
        Exception e;
        if (isSDAva()) {
            long currentTimeMillis = System.currentTimeMillis();
            String format = formatter.format(new Date());
            String str4 = str + "/brucelogs/naviservice-log-" + format + NativeLibraryHelper.CLEAR_ABI_OVERRIDE + currentTimeMillis + ".log";
            File file = new File(str4);
            if (!file.exists()) {
                createDipPath(str4);
            }
            try {
                try {
                    bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file, true)));
                    try {
                        try {
                            bufferedWriter.write(format + " " + str2 + " " + str3 + "\r\n");
                            bufferedWriter.close();
                        } catch (Exception e2) {
                            e = e2;
                            e.printStackTrace();
                            if (bufferedWriter != null) {
                                bufferedWriter.close();
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (bufferedWriter != null) {
                            try {
                                bufferedWriter.close();
                            } catch (IOException e3) {
                                e3.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            } catch (Exception e5) {
                bufferedWriter = null;
                e = e5;
            } catch (Throwable th3) {
                bufferedWriter = null;
                th = th3;
                if (bufferedWriter != null) {
                }
                throw th;
            }
        }
    }

    public static void createDipPath(String str) {
        String substring = str.substring(0, str.lastIndexOf("/"));
        File file = new File(str);
        File file2 = new File(substring);
        if (file.exists()) {
            return;
        }
        file2.mkdirs();
        try {
            file.createNewFile();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class ReusableFormatter {
        private StringBuilder builder = new StringBuilder();
        private Formatter formatter = new Formatter(this.builder);

        public String format(String str, Object... objArr) {
            this.formatter.format(str, objArr);
            String sb = this.builder.toString();
            this.builder.setLength(0);
            return sb;
        }
    }

    public static String format(String str, Object... objArr) {
        return thread_local_formatter.get().format(str, objArr);
    }

    private static boolean isSDAva() {
        return new File(LOG_PATH).exists();
    }
}
