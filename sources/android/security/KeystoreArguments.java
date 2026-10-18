package android.security;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /home/user/work/dex/classes2.dex */
public class KeystoreArguments implements Parcelable {
    public static final Parcelable.Creator<KeystoreArguments> CREATOR = new Parcelable.Creator<KeystoreArguments>() { // from class: android.security.KeystoreArguments.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public KeystoreArguments createFromParcel(Parcel parcel) {
            return new KeystoreArguments(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public KeystoreArguments[] newArray(int i) {
            return new KeystoreArguments[i];
        }
    };
    public byte[][] args;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public KeystoreArguments() {
        this.args = null;
    }

    public KeystoreArguments(byte[][] bArr) {
        this.args = bArr;
    }

    private KeystoreArguments(Parcel parcel) {
        readFromParcel(parcel);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (this.args == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(this.args.length);
        for (byte[] bArr : this.args) {
            parcel.writeByteArray(bArr);
        }
    }

    private void readFromParcel(Parcel parcel) {
        int readInt = parcel.readInt();
        this.args = new byte[readInt];
        for (int i = 0; i < readInt; i++) {
            this.args[i] = parcel.createByteArray();
        }
    }
}
