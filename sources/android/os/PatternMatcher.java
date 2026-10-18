package android.os;

import android.os.Parcelable;
import android.util.proto.ProtoOutputStream;
import android.view.KeyEvent;
import java.util.Arrays;

/* loaded from: /home/user/work/dex/classes2.dex */
public class PatternMatcher implements Parcelable {
    private static final int MAX_PATTERN_STORAGE = 2048;
    private static final int NO_MATCH = -1;
    private static final int PARSED_MODIFIER_ONE_OR_MORE = -8;
    private static final int PARSED_MODIFIER_RANGE_START = -5;
    private static final int PARSED_MODIFIER_RANGE_STOP = -6;
    private static final int PARSED_MODIFIER_ZERO_OR_MORE = -7;
    private static final int PARSED_TOKEN_CHAR_ANY = -4;
    private static final int PARSED_TOKEN_CHAR_SET_INVERSE_START = -2;
    private static final int PARSED_TOKEN_CHAR_SET_START = -1;
    private static final int PARSED_TOKEN_CHAR_SET_STOP = -3;
    public static final int PATTERN_ADVANCED_GLOB = 3;
    public static final int PATTERN_LITERAL = 0;
    public static final int PATTERN_PREFIX = 1;
    public static final int PATTERN_SIMPLE_GLOB = 2;
    private static final String TAG = "PatternMatcher";
    private static final int TOKEN_TYPE_ANY = 1;
    private static final int TOKEN_TYPE_INVERSE_SET = 3;
    private static final int TOKEN_TYPE_LITERAL = 0;
    private static final int TOKEN_TYPE_SET = 2;
    private final int[] mParsedPattern;
    private final String mPattern;
    private final int mType;
    private static final int[] sParsedPatternScratch = new int[2048];
    public static final Parcelable.Creator<PatternMatcher> CREATOR = new Parcelable.Creator<PatternMatcher>() { // from class: android.os.PatternMatcher.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PatternMatcher createFromParcel(Parcel parcel) {
            return new PatternMatcher(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PatternMatcher[] newArray(int i) {
            return new PatternMatcher[i];
        }
    };

    private static boolean isParsedModifier(int i) {
        return i == -8 || i == -7 || i == -6 || i == -5;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public PatternMatcher(String str, int i) {
        this.mPattern = str;
        this.mType = i;
        if (this.mType == 3) {
            this.mParsedPattern = parseAndVerifyAdvancedPattern(str);
        } else {
            this.mParsedPattern = null;
        }
    }

    public final String getPath() {
        return this.mPattern;
    }

    public final int getType() {
        return this.mType;
    }

    public boolean match(String str) {
        return matchPattern(str, this.mPattern, this.mParsedPattern, this.mType);
    }

    public String toString() {
        String str = "? ";
        switch (this.mType) {
            case 0:
                str = "LITERAL: ";
                break;
            case 1:
                str = "PREFIX: ";
                break;
            case 2:
                str = "GLOB: ";
                break;
            case 3:
                str = "ADVANCED: ";
                break;
        }
        return "PatternMatcher{" + str + this.mPattern + "}";
    }

    public void writeToProto(ProtoOutputStream protoOutputStream, long j) {
        long start = protoOutputStream.start(j);
        protoOutputStream.write(1138166333441L, this.mPattern);
        protoOutputStream.write(1159641169922L, this.mType);
        protoOutputStream.end(start);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mPattern);
        parcel.writeInt(this.mType);
        parcel.writeIntArray(this.mParsedPattern);
    }

    public PatternMatcher(Parcel parcel) {
        this.mPattern = parcel.readString();
        this.mType = parcel.readInt();
        this.mParsedPattern = parcel.createIntArray();
    }

    static boolean matchPattern(String str, String str2, int[] iArr, int i) {
        if (str == null) {
            return false;
        }
        if (i == 0) {
            return str2.equals(str);
        }
        if (i == 1) {
            return str.startsWith(str2);
        }
        if (i == 2) {
            return matchGlobPattern(str2, str);
        }
        if (i == 3) {
            return matchAdvancedPattern(iArr, str);
        }
        return false;
    }

    static boolean matchGlobPattern(String str, String str2) {
        int length = str.length();
        if (length <= 0) {
            return str2.length() <= 0;
        }
        int length2 = str2.length();
        int i = 0;
        char charAt = str.charAt(0);
        int i2 = 0;
        while (i2 < length && i < length2) {
            i2++;
            char charAt2 = i2 < length ? str.charAt(i2) : (char) 0;
            boolean z = charAt == '\\';
            if (z) {
                i2++;
                charAt = i2 < length ? str.charAt(i2) : (char) 0;
            } else {
                char c = charAt2;
                charAt2 = charAt;
                charAt = c;
            }
            if (charAt == '*') {
                if (z || charAt2 != '.') {
                    while (str2.charAt(i) == charAt2 && (i = i + 1) < length2) {
                    }
                    i2++;
                    charAt = i2 < length ? str.charAt(i2) : (char) 0;
                } else {
                    if (i2 >= length - 1) {
                        return true;
                    }
                    int i3 = i2 + 1;
                    char charAt3 = str.charAt(i3);
                    if (charAt3 == '\\') {
                        i3++;
                        charAt3 = i3 < length ? str.charAt(i3) : (char) 0;
                    }
                    while (str2.charAt(i) != charAt3 && (i = i + 1) < length2) {
                    }
                    if (i == length2) {
                        return false;
                    }
                    i2 = i3 + 1;
                    charAt = i2 < length ? str.charAt(i2) : (char) 0;
                    i++;
                }
            } else {
                if (charAt2 != '.' && str2.charAt(i) != charAt2) {
                    return false;
                }
                i++;
            }
        }
        if (i2 < length || i < length2) {
            return i2 == length + (-2) && str.charAt(i2) == '.' && str.charAt(i2 + 1) == '*';
        }
        return true;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:13:0x0024. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:15:0x0029. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:29:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0102 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static synchronized int[] parseAndVerifyAdvancedPattern(String str) {
        int[] copyOf;
        int i;
        boolean z;
        int parseInt;
        int i2;
        int i3;
        int i4;
        synchronized (PatternMatcher.class) {
            int length = str.length();
            int i5 = 0;
            int i6 = 0;
            boolean z2 = false;
            boolean z3 = false;
            boolean z4 = false;
            while (i5 < length) {
                if (i6 > 2045) {
                    throw new IllegalArgumentException("Pattern is too large!");
                }
                char charAt = str.charAt(i5);
                if (charAt == '.') {
                    if (!z2) {
                        i = i6 + 1;
                        sParsedPatternScratch[i6] = -4;
                        z = false;
                        if (z2) {
                        }
                        i5++;
                    }
                    i = i6;
                    z = false;
                    if (z2) {
                    }
                    i5++;
                } else if (charAt != '{') {
                    if (charAt != '}') {
                        switch (charAt) {
                            case '*':
                                if (!z2) {
                                    if (i6 == 0 || isParsedModifier(sParsedPatternScratch[i6 - 1])) {
                                        throw new IllegalArgumentException("Modifier must follow a token.");
                                    }
                                    i = i6 + 1;
                                    sParsedPatternScratch[i6] = -7;
                                    z = false;
                                    if (z2) {
                                        if (z4) {
                                            sParsedPatternScratch[i] = charAt;
                                            i6 = i + 1;
                                            z4 = false;
                                        } else {
                                            int i7 = i5 + 2;
                                            if (i7 < length) {
                                                int i8 = i5 + 1;
                                                if (str.charAt(i8) == '-' && str.charAt(i7) != ']') {
                                                    i6 = i + 1;
                                                    sParsedPatternScratch[i] = charAt;
                                                    z4 = true;
                                                    i5 = i8;
                                                }
                                            }
                                            int i9 = i + 1;
                                            sParsedPatternScratch[i] = charAt;
                                            sParsedPatternScratch[i9] = charAt;
                                            i6 = i9 + 1;
                                        }
                                    } else if (z3) {
                                        int indexOf = str.indexOf(KeyEvent.KEYCODE_FORWARD, i5);
                                        if (indexOf < 0) {
                                            throw new IllegalArgumentException("Range not ended with '}'");
                                        }
                                        String substring = str.substring(i5, indexOf);
                                        int indexOf2 = substring.indexOf(44);
                                        if (indexOf2 < 0) {
                                            try {
                                                parseInt = Integer.parseInt(substring);
                                                i2 = parseInt;
                                            } catch (NumberFormatException e) {
                                                throw new IllegalArgumentException("Range number format incorrect", e);
                                            }
                                        } else {
                                            i2 = Integer.parseInt(substring.substring(0, indexOf2));
                                            parseInt = indexOf2 == substring.length() - 1 ? Integer.MAX_VALUE : Integer.parseInt(substring.substring(indexOf2 + 1));
                                        }
                                        if (i2 > parseInt) {
                                            throw new IllegalArgumentException("Range quantifier minimum is greater than maximum");
                                        }
                                        int i10 = i + 1;
                                        sParsedPatternScratch[i] = i2;
                                        sParsedPatternScratch[i10] = parseInt;
                                        i5 = indexOf;
                                        i6 = i10 + 1;
                                        break;
                                    } else if (z) {
                                        sParsedPatternScratch[i] = charAt;
                                        i6 = i + 1;
                                    } else {
                                        i6 = i;
                                    }
                                    i5++;
                                    break;
                                }
                                break;
                            case '+':
                                if (!z2) {
                                    if (i6 == 0 || isParsedModifier(sParsedPatternScratch[i6 - 1])) {
                                        throw new IllegalArgumentException("Modifier must follow a token.");
                                    }
                                    i = i6 + 1;
                                    sParsedPatternScratch[i6] = -8;
                                    z = false;
                                    if (z2) {
                                    }
                                    i5++;
                                    break;
                                }
                                break;
                            default:
                                switch (charAt) {
                                    case '[':
                                        if (!z2) {
                                            int i11 = i5 + 1;
                                            if (str.charAt(i11) == '^') {
                                                i4 = i6 + 1;
                                                sParsedPatternScratch[i6] = -2;
                                                i5 = i11;
                                            } else {
                                                i4 = i6 + 1;
                                                sParsedPatternScratch[i6] = -1;
                                            }
                                            i6 = i4;
                                            i5++;
                                            z2 = true;
                                            break;
                                        } else {
                                            i = i6;
                                            z = true;
                                            if (z2) {
                                            }
                                            i5++;
                                            break;
                                        }
                                        break;
                                    case '\\':
                                        i5++;
                                        if (i5 >= length) {
                                            throw new IllegalArgumentException("Escape found at end of pattern!");
                                        }
                                        charAt = str.charAt(i5);
                                        i = i6;
                                        z = true;
                                        if (z2) {
                                        }
                                        i5++;
                                        break;
                                        break;
                                    case ']':
                                        if (!z2) {
                                            i = i6;
                                            z = true;
                                            if (z2) {
                                            }
                                            i5++;
                                            break;
                                        } else {
                                            int i12 = sParsedPatternScratch[i6 - 1];
                                            if (i12 == -1 || i12 == -2) {
                                                throw new IllegalArgumentException("You must define characters in a set.");
                                            }
                                            int i13 = i6 + 1;
                                            sParsedPatternScratch[i6] = -3;
                                            z = false;
                                            z2 = false;
                                            i = i13;
                                            z4 = false;
                                            if (z2) {
                                            }
                                            i5++;
                                        }
                                        break;
                                    default:
                                        i = i6;
                                        z = true;
                                        if (z2) {
                                        }
                                        i5++;
                                        break;
                                }
                        }
                    } else if (z3) {
                        i3 = i6 + 1;
                        sParsedPatternScratch[i6] = -6;
                        z = false;
                        z3 = false;
                        i = i3;
                        if (z2) {
                        }
                        i5++;
                    }
                    i = i6;
                    z = false;
                    if (z2) {
                    }
                    i5++;
                } else {
                    if (!z2) {
                        if (i6 == 0 || isParsedModifier(sParsedPatternScratch[i6 - 1])) {
                            throw new IllegalArgumentException("Modifier must follow a token.");
                        }
                        i3 = i6 + 1;
                        sParsedPatternScratch[i6] = -5;
                        i5++;
                        z = false;
                        z3 = true;
                        i = i3;
                        if (z2) {
                        }
                        i5++;
                    }
                    i = i6;
                    z = false;
                    if (z2) {
                    }
                    i5++;
                }
            }
            if (z2) {
                throw new IllegalArgumentException("Set was not terminated!");
            }
            copyOf = Arrays.copyOf(sParsedPatternScratch, i6);
        }
        return copyOf;
    }

    static boolean matchAdvancedPattern(int[] iArr, String str) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int matchChars;
        int length = iArr.length;
        int length2 = str.length();
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        while (i8 < length) {
            int i12 = iArr[i8];
            if (i12 != -4) {
                switch (i12) {
                    case -2:
                    case -1:
                        int i13 = i12 == -1 ? 2 : 3;
                        int i14 = i8 + 1;
                        do {
                            i8++;
                            if (i8 < length) {
                            }
                            int i15 = i8 - 1;
                            i = i8 + 1;
                            i2 = i14;
                            i3 = i15;
                            i4 = i13;
                            break;
                        } while (iArr[i8] != -3);
                        int i152 = i8 - 1;
                        i = i8 + 1;
                        i2 = i14;
                        i3 = i152;
                        i4 = i13;
                    default:
                        i2 = i8;
                        i = i8 + 1;
                        i3 = i10;
                        i4 = 0;
                        break;
                }
            } else {
                i = i8 + 1;
                i2 = i9;
                i3 = i10;
                i4 = 1;
            }
            if (i < length) {
                int i16 = iArr[i];
                if (i16 != -5) {
                    switch (i16) {
                        case -8:
                            i5 = i + 1;
                            i7 = Integer.MAX_VALUE;
                            i6 = 1;
                            break;
                        case -7:
                            i5 = i + 1;
                            i7 = Integer.MAX_VALUE;
                            i6 = 0;
                            break;
                    }
                } else {
                    int i17 = i + 1;
                    int i18 = iArr[i17];
                    int i19 = i17 + 1;
                    i5 = i19 + 2;
                    i6 = i18;
                    i7 = iArr[i19];
                }
                if (i6 <= i7 || (matchChars = matchChars(str, i11, length2, i4, i6, i7, iArr, i2, i3)) == -1) {
                    return false;
                }
                i11 += matchChars;
                i9 = i2;
                i10 = i3;
                i8 = i5;
            }
            i5 = i;
            i6 = 1;
            i7 = 1;
            if (i6 <= i7) {
                return false;
            }
            i11 += matchChars;
            i9 = i2;
            i10 = i3;
            i8 = i5;
        }
        return i8 >= length && i11 >= length2;
    }

    private static int matchChars(String str, int i, int i2, int i3, int i4, int i5, int[] iArr, int i6, int i7) {
        int i8 = 0;
        while (i8 < i5 && matchChar(str, i + i8, i2, i3, iArr, i6, i7)) {
            i8++;
        }
        if (i8 < i4) {
            return -1;
        }
        return i8;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0005. Please report as an issue. */
    private static boolean matchChar(String str, int i, int i2, int i3, int[] iArr, int i4, int i5) {
        if (i >= i2) {
            return false;
        }
        switch (i3) {
            case 0:
                return str.charAt(i) == iArr[i4];
            case 1:
                return true;
            case 2:
                while (i4 < i5) {
                    char charAt = str.charAt(i);
                    if (charAt >= iArr[i4] && charAt <= iArr[i4 + 1]) {
                        return true;
                    }
                    i4 += 2;
                }
                return false;
            case 3:
                while (i4 < i5) {
                    char charAt2 = str.charAt(i);
                    if (charAt2 >= iArr[i4] && charAt2 <= iArr[i4 + 1]) {
                        return false;
                    }
                    i4 += 2;
                }
                return true;
            default:
                return false;
        }
    }
}
