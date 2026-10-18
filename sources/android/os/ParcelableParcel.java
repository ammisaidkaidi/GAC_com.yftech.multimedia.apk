package android.os;

import android.os.Parcelable;
import android.util.MathUtils;

/* loaded from: /home/user/work/dex/classes2.dex */
public class ParcelableParcel implements Parcelable {
    public static final Parcelable.ClassLoaderCreator<ParcelableParcel> CREATOR = new Parcelable.ClassLoaderCreator<ParcelableParcel>() { // from class: android.os.ParcelableParcel.1
        @Override // android.os.Parcelable.Creator
        public ParcelableParcel createFromParcel(Parcel parcel) {
            return new ParcelableParcel(parcel, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.ClassLoaderCreator
        public ParcelableParcel createFromParcel(Parcel parcel, ClassLoader classLoader) {
            return new ParcelableParcel(parcel, classLoader);
        }

        @Override // android.os.Parcelable.Creator
        public ParcelableParcel[] newArray(int i) {
            return new ParcelableParcel[i];
        }
    };
    final ClassLoader mClassLoader;
    final Parcel mParcel = Parcel.obtain();

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ParcelableParcel(ClassLoader classLoader) {
        this.mClassLoader = classLoader;
    }

    public ParcelableParcel(Parcel parcel, ClassLoader classLoader) {
        this.mClassLoader = classLoader;
        int readInt = parcel.readInt();
        if (readInt < 0) {
            throw new IllegalArgumentException("Negative size read from parcel");
        }
        int dataPosition = parcel.dataPosition();
        parcel.setDataPosition(MathUtils.addOrThrow(dataPosition, readInt));
        this.mParcel.appendFrom(parcel, dataPosition, readInt);
    }

    public Parcel getParcel() {
        this.mParcel.setDataPosition(0);
        return this.mParcel;
    }

    public ClassLoader getClassLoader() {
        return this.mClassLoader;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mParcel.dataSize());
        parcel.appendFrom(this.mParcel, 0, this.mParcel.dataSize());
    }
}
