package android.util;

import android.provider.SettingsStringUtil;
import android.text.TextUtils;
import java.time.format.DateTimeParseException;

/* loaded from: /home/user/work/dex/classes2.dex */
public class KeyValueListParser {
    private final TextUtils.StringSplitter mSplitter;
    private final ArrayMap<String, String> mValues = new ArrayMap<>();

    public KeyValueListParser(char c) {
        this.mSplitter = new TextUtils.SimpleStringSplitter(c);
    }

    public void setString(String str) throws IllegalArgumentException {
        this.mValues.clear();
        if (str != null) {
            this.mSplitter.setString(str);
            for (String str2 : this.mSplitter) {
                int indexOf = str2.indexOf(61);
                if (indexOf < 0) {
                    this.mValues.clear();
                    throw new IllegalArgumentException("'" + str2 + "' in '" + str + "' is not a valid key-value pair");
                }
                this.mValues.put(str2.substring(0, indexOf).trim(), str2.substring(indexOf + 1).trim());
            }
        }
    }

    public int getInt(String str, int i) {
        String str2 = this.mValues.get(str);
        if (str2 != null) {
            try {
                return Integer.parseInt(str2);
            } catch (NumberFormatException unused) {
            }
        }
        return i;
    }

    public long getLong(String str, long j) {
        String str2 = this.mValues.get(str);
        if (str2 != null) {
            try {
                return Long.parseLong(str2);
            } catch (NumberFormatException unused) {
            }
        }
        return j;
    }

    public float getFloat(String str, float f) {
        String str2 = this.mValues.get(str);
        if (str2 != null) {
            try {
                return Float.parseFloat(str2);
            } catch (NumberFormatException unused) {
            }
        }
        return f;
    }

    public String getString(String str, String str2) {
        String str3 = this.mValues.get(str);
        return str3 != null ? str3 : str2;
    }

    public boolean getBoolean(String str, boolean z) {
        String str2 = this.mValues.get(str);
        if (str2 != null) {
            try {
                return Boolean.parseBoolean(str2);
            } catch (NumberFormatException unused) {
            }
        }
        return z;
    }

    public int[] getIntArray(String str, int[] iArr) {
        String str2 = this.mValues.get(str);
        if (str2 != null) {
            try {
                String[] split = str2.split(SettingsStringUtil.DELIMITER);
                if (split.length > 0) {
                    int[] iArr2 = new int[split.length];
                    for (int i = 0; i < split.length; i++) {
                        iArr2[i] = Integer.parseInt(split[i]);
                    }
                    return iArr2;
                }
            } catch (NumberFormatException unused) {
            }
        }
        return iArr;
    }

    public int size() {
        return this.mValues.size();
    }

    public String keyAt(int i) {
        return this.mValues.keyAt(i);
    }

    public long getDurationMillis(String str, long j) {
        String str2 = this.mValues.get(str);
        if (str2 != null) {
            try {
                if (!str2.startsWith("P") && !str2.startsWith("p")) {
                    return Long.parseLong(str2);
                }
                return java.time.Duration.parse(str2).toMillis();
            } catch (NumberFormatException | DateTimeParseException unused) {
            }
        }
        return j;
    }
}
