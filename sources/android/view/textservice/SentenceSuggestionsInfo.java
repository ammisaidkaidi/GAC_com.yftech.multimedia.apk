package android.view.textservice;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* loaded from: /home/user/work/dex/classes2.dex */
public final class SentenceSuggestionsInfo implements Parcelable {
    public static final Parcelable.Creator<SentenceSuggestionsInfo> CREATOR = new Parcelable.Creator<SentenceSuggestionsInfo>() { // from class: android.view.textservice.SentenceSuggestionsInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SentenceSuggestionsInfo createFromParcel(Parcel parcel) {
            return new SentenceSuggestionsInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SentenceSuggestionsInfo[] newArray(int i) {
            return new SentenceSuggestionsInfo[i];
        }
    };
    private final int[] mLengths;
    private final int[] mOffsets;
    private final SuggestionsInfo[] mSuggestionsInfos;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public SentenceSuggestionsInfo(SuggestionsInfo[] suggestionsInfoArr, int[] iArr, int[] iArr2) {
        if (suggestionsInfoArr == null || iArr == null || iArr2 == null) {
            throw new NullPointerException();
        }
        if (suggestionsInfoArr.length != iArr.length || iArr.length != iArr2.length) {
            throw new IllegalArgumentException();
        }
        int length = suggestionsInfoArr.length;
        this.mSuggestionsInfos = (SuggestionsInfo[]) Arrays.copyOf(suggestionsInfoArr, length);
        this.mOffsets = Arrays.copyOf(iArr, length);
        this.mLengths = Arrays.copyOf(iArr2, length);
    }

    public SentenceSuggestionsInfo(Parcel parcel) {
        this.mSuggestionsInfos = new SuggestionsInfo[parcel.readInt()];
        parcel.readTypedArray(this.mSuggestionsInfos, SuggestionsInfo.CREATOR);
        this.mOffsets = new int[this.mSuggestionsInfos.length];
        parcel.readIntArray(this.mOffsets);
        this.mLengths = new int[this.mSuggestionsInfos.length];
        parcel.readIntArray(this.mLengths);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mSuggestionsInfos.length);
        parcel.writeTypedArray(this.mSuggestionsInfos, 0);
        parcel.writeIntArray(this.mOffsets);
        parcel.writeIntArray(this.mLengths);
    }

    public int getSuggestionsCount() {
        return this.mSuggestionsInfos.length;
    }

    public SuggestionsInfo getSuggestionsInfoAt(int i) {
        if (i < 0 || i >= this.mSuggestionsInfos.length) {
            return null;
        }
        return this.mSuggestionsInfos[i];
    }

    public int getOffsetAt(int i) {
        if (i < 0 || i >= this.mOffsets.length) {
            return -1;
        }
        return this.mOffsets[i];
    }

    public int getLengthAt(int i) {
        if (i < 0 || i >= this.mLengths.length) {
            return -1;
        }
        return this.mLengths[i];
    }
}
