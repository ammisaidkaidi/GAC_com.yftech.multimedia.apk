package android.app.slice;

import android.app.PendingIntent;
import android.app.RemoteInput;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Pair;
import android.widget.RemoteViews;
import com.android.internal.util.ArrayUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public final class SliceItem implements Parcelable {
    public static final Parcelable.Creator<SliceItem> CREATOR = new Parcelable.Creator<SliceItem>() { // from class: android.app.slice.SliceItem.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SliceItem createFromParcel(Parcel parcel) {
            return new SliceItem(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SliceItem[] newArray(int i) {
            return new SliceItem[i];
        }
    };
    public static final String FORMAT_ACTION = "action";
    public static final String FORMAT_BUNDLE = "bundle";
    public static final String FORMAT_IMAGE = "image";
    public static final String FORMAT_INT = "int";
    public static final String FORMAT_LONG = "long";
    public static final String FORMAT_REMOTE_INPUT = "input";
    public static final String FORMAT_SLICE = "slice";
    public static final String FORMAT_TEXT = "text";

    @Deprecated
    public static final String FORMAT_TIMESTAMP = "long";
    private static final String TAG = "SliceItem";
    private final String mFormat;
    protected String[] mHints;
    private final Object mObj;
    private final String mSubType;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface SliceType {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public SliceItem(Object obj, String str, String str2, List<String> list) {
        this(obj, str, str2, (String[]) list.toArray(new String[list.size()]));
    }

    public SliceItem(Object obj, String str, String str2, String[] strArr) {
        this.mHints = strArr;
        this.mFormat = str;
        this.mSubType = str2;
        this.mObj = obj;
    }

    public SliceItem(PendingIntent pendingIntent, Slice slice, String str, String str2, String[] strArr) {
        this(new Pair(pendingIntent, slice), str, str2, strArr);
    }

    public List<String> getHints() {
        return Arrays.asList(this.mHints);
    }

    public String getFormat() {
        return this.mFormat;
    }

    public String getSubType() {
        return this.mSubType;
    }

    public CharSequence getText() {
        return (CharSequence) this.mObj;
    }

    public Bundle getBundle() {
        return (Bundle) this.mObj;
    }

    public Icon getIcon() {
        return (Icon) this.mObj;
    }

    public PendingIntent getAction() {
        return (PendingIntent) ((Pair) this.mObj).first;
    }

    public RemoteViews getRemoteView() {
        return (RemoteViews) this.mObj;
    }

    public RemoteInput getRemoteInput() {
        return (RemoteInput) this.mObj;
    }

    public int getInt() {
        return ((Integer) this.mObj).intValue();
    }

    public Slice getSlice() {
        if ("action".equals(getFormat())) {
            return (Slice) ((Pair) this.mObj).second;
        }
        return (Slice) this.mObj;
    }

    public long getLong() {
        return ((Long) this.mObj).longValue();
    }

    @Deprecated
    public long getTimestamp() {
        return ((Long) this.mObj).longValue();
    }

    public boolean hasHint(String str) {
        return ArrayUtils.contains(this.mHints, str);
    }

    public SliceItem(Parcel parcel) {
        this.mHints = parcel.readStringArray();
        this.mFormat = parcel.readString();
        this.mSubType = parcel.readString();
        this.mObj = readObj(this.mFormat, parcel);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeStringArray(this.mHints);
        parcel.writeString(this.mFormat);
        parcel.writeString(this.mSubType);
        writeObj(parcel, i, this.mObj, this.mFormat);
    }

    public boolean hasHints(String[] strArr) {
        if (strArr == null) {
            return true;
        }
        for (String str : strArr) {
            if (!TextUtils.isEmpty(str) && !ArrayUtils.contains(this.mHints, str)) {
                return false;
            }
        }
        return true;
    }

    public boolean hasAnyHints(String[] strArr) {
        if (strArr == null) {
            return false;
        }
        for (String str : strArr) {
            if (ArrayUtils.contains(this.mHints, str)) {
                return true;
            }
        }
        return false;
    }

    private static String getBaseType(String str) {
        int indexOf = str.indexOf(47);
        return indexOf >= 0 ? str.substring(0, indexOf) : str;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static void writeObj(Parcel parcel, int i, Object obj, String str) {
        char c;
        String baseType = getBaseType(str);
        switch (baseType.hashCode()) {
            case -1422950858:
                if (baseType.equals("action")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -1377881982:
                if (baseType.equals(FORMAT_BUNDLE)) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 104431:
                if (baseType.equals(FORMAT_INT)) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 3327612:
                if (baseType.equals("long")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 3556653:
                if (baseType.equals(FORMAT_TEXT)) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 100313435:
                if (baseType.equals(FORMAT_IMAGE)) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 100358090:
                if (baseType.equals("input")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 109526418:
                if (baseType.equals("slice")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
            case 3:
                ((Parcelable) obj).writeToParcel(parcel, i);
                return;
            case 4:
                Pair pair = (Pair) obj;
                ((PendingIntent) pair.first).writeToParcel(parcel, i);
                ((Slice) pair.second).writeToParcel(parcel, i);
                return;
            case 5:
                TextUtils.writeToParcel((CharSequence) obj, parcel, i);
                return;
            case 6:
                parcel.writeInt(((Integer) obj).intValue());
                return;
            case 7:
                parcel.writeLong(((Long) obj).longValue());
                return;
            default:
                return;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static Object readObj(String str, Parcel parcel) {
        char c;
        String baseType = getBaseType(str);
        switch (baseType.hashCode()) {
            case -1422950858:
                if (baseType.equals("action")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -1377881982:
                if (baseType.equals(FORMAT_BUNDLE)) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 104431:
                if (baseType.equals(FORMAT_INT)) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 3327612:
                if (baseType.equals("long")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 3556653:
                if (baseType.equals(FORMAT_TEXT)) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 100313435:
                if (baseType.equals(FORMAT_IMAGE)) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 100358090:
                if (baseType.equals("input")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 109526418:
                if (baseType.equals("slice")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                return Slice.CREATOR.createFromParcel(parcel);
            case 1:
                return TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            case 2:
                return Icon.CREATOR.createFromParcel(parcel);
            case 3:
                return new Pair(PendingIntent.CREATOR.createFromParcel(parcel), Slice.CREATOR.createFromParcel(parcel));
            case 4:
                return Integer.valueOf(parcel.readInt());
            case 5:
                return Long.valueOf(parcel.readLong());
            case 6:
                return RemoteInput.CREATOR.createFromParcel(parcel);
            case 7:
                return Bundle.CREATOR.createFromParcel(parcel);
            default:
                throw new RuntimeException("Unsupported type " + str);
        }
    }
}
