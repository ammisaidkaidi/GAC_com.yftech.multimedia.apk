package android.util;

import android.view.textclassifier.TextClassifier;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Locale;

/* loaded from: /home/user/work/dex/classes2.dex */
public class DebugUtils {
    public static boolean isObjectSelected(Object obj) {
        Method declaredMethod;
        String str = System.getenv("ANDROID_OBJECT_FILTER");
        if (str == null || str.length() <= 0) {
            return false;
        }
        String[] split = str.split("@");
        if (!obj.getClass().getSimpleName().matches(split[0])) {
            return false;
        }
        boolean z = false;
        for (int i = 1; i < split.length; i++) {
            String[] split2 = split[i].split("=");
            Class<?> cls = obj.getClass();
            Class<?> cls2 = cls;
            while (true) {
                try {
                    declaredMethod = cls2.getDeclaredMethod("get" + split2[0].substring(0, 1).toUpperCase(Locale.ROOT) + split2[0].substring(1), (Class[]) null);
                    Class<? super Object> superclass = cls.getSuperclass();
                    if (superclass == null || declaredMethod != null) {
                        break;
                    }
                    cls2 = superclass;
                } catch (IllegalAccessException e) {
                    e.printStackTrace();
                } catch (NoSuchMethodException e2) {
                    e2.printStackTrace();
                } catch (InvocationTargetException e3) {
                    e3.printStackTrace();
                }
            }
            if (declaredMethod != null) {
                Object invoke = declaredMethod.invoke(obj, (Object[]) null);
                z |= (invoke != null ? invoke.toString() : "null").matches(split2[1]);
            }
        }
        return z;
    }

    public static void buildShortClassTag(Object obj, StringBuilder sb) {
        int lastIndexOf;
        if (obj == null) {
            sb.append("null");
            return;
        }
        String simpleName = obj.getClass().getSimpleName();
        if ((simpleName == null || simpleName.isEmpty()) && (lastIndexOf = (simpleName = obj.getClass().getName()).lastIndexOf(46)) > 0) {
            simpleName = simpleName.substring(lastIndexOf + 1);
        }
        sb.append(simpleName);
        sb.append('{');
        sb.append(Integer.toHexString(System.identityHashCode(obj)));
    }

    public static void printSizeValue(PrintWriter printWriter, long j) {
        String format;
        float f = (float) j;
        String str = TextClassifier.TYPE_UNKNOWN;
        if (f > 900.0f) {
            str = "KB";
            f /= 1024.0f;
        }
        if (f > 900.0f) {
            str = "MB";
            f /= 1024.0f;
        }
        if (f > 900.0f) {
            str = "GB";
            f /= 1024.0f;
        }
        if (f > 900.0f) {
            str = "TB";
            f /= 1024.0f;
        }
        if (f > 900.0f) {
            str = "PB";
            f /= 1024.0f;
        }
        if (f < 1.0f) {
            format = String.format("%.2f", Float.valueOf(f));
        } else if (f < 10.0f) {
            format = String.format("%.1f", Float.valueOf(f));
        } else if (f < 100.0f) {
            format = String.format("%.0f", Float.valueOf(f));
        } else {
            format = String.format("%.0f", Float.valueOf(f));
        }
        printWriter.print(format);
        printWriter.print(str);
    }

    public static String sizeValueToString(long j, StringBuilder sb) {
        String format;
        if (sb == null) {
            sb = new StringBuilder(32);
        }
        float f = (float) j;
        String str = TextClassifier.TYPE_UNKNOWN;
        if (f > 900.0f) {
            str = "KB";
            f /= 1024.0f;
        }
        if (f > 900.0f) {
            str = "MB";
            f /= 1024.0f;
        }
        if (f > 900.0f) {
            str = "GB";
            f /= 1024.0f;
        }
        if (f > 900.0f) {
            str = "TB";
            f /= 1024.0f;
        }
        if (f > 900.0f) {
            str = "PB";
            f /= 1024.0f;
        }
        if (f < 1.0f) {
            format = String.format("%.2f", Float.valueOf(f));
        } else if (f < 10.0f) {
            format = String.format("%.1f", Float.valueOf(f));
        } else if (f < 100.0f) {
            format = String.format("%.0f", Float.valueOf(f));
        } else {
            format = String.format("%.0f", Float.valueOf(f));
        }
        sb.append(format);
        sb.append(str);
        return sb.toString();
    }

    public static String valueToString(Class<?> cls, String str, int i) {
        for (Field field : cls.getDeclaredFields()) {
            int modifiers = field.getModifiers();
            if (Modifier.isStatic(modifiers) && Modifier.isFinal(modifiers) && field.getType().equals(Integer.TYPE) && field.getName().startsWith(str)) {
                try {
                    if (i == field.getInt(null)) {
                        return constNameWithoutPrefix(str, field);
                    }
                    continue;
                } catch (IllegalAccessException unused) {
                    continue;
                }
            }
        }
        return Integer.toString(i);
    }

    public static String flagsToString(Class<?> cls, String str, int i) {
        StringBuilder sb = new StringBuilder();
        boolean z = i == 0;
        for (Field field : cls.getDeclaredFields()) {
            int modifiers = field.getModifiers();
            if (Modifier.isStatic(modifiers) && Modifier.isFinal(modifiers) && field.getType().equals(Integer.TYPE) && field.getName().startsWith(str)) {
                try {
                    int i2 = field.getInt(null);
                    if (i2 == 0 && z) {
                        return constNameWithoutPrefix(str, field);
                    }
                    if ((i & i2) != 0) {
                        i &= ~i2;
                        sb.append(constNameWithoutPrefix(str, field));
                        sb.append('|');
                    }
                } catch (IllegalAccessException unused) {
                    continue;
                }
            }
        }
        if (i != 0 || sb.length() == 0) {
            sb.append(Integer.toHexString(i));
        } else {
            sb.deleteCharAt(sb.length() - 1);
        }
        return sb.toString();
    }

    private static String constNameWithoutPrefix(String str, Field field) {
        return field.getName().substring(str.length());
    }
}
