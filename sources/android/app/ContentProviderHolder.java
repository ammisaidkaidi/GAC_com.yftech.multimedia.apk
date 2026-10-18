package android.app;

import android.content.ContentProviderNative;
import android.content.IContentProvider;
import android.content.pm.ProviderInfo;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /home/user/work/dex/classes.dex */
public class ContentProviderHolder implements Parcelable {
    public static final Parcelable.Creator<ContentProviderHolder> CREATOR = new Parcelable.Creator<ContentProviderHolder>() { // from class: android.app.ContentProviderHolder.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ContentProviderHolder createFromParcel(Parcel parcel) {
            return new ContentProviderHolder(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ContentProviderHolder[] newArray(int i) {
            return new ContentProviderHolder[i];
        }
    };
    public IBinder connection;
    public final ProviderInfo info;
    public boolean noReleaseNeeded;
    public IContentProvider provider;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ContentProviderHolder(ProviderInfo providerInfo) {
        this.info = providerInfo;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        this.info.writeToParcel(parcel, 0);
        if (this.provider != null) {
            parcel.writeStrongBinder(this.provider.asBinder());
        } else {
            parcel.writeStrongBinder(null);
        }
        parcel.writeStrongBinder(this.connection);
        parcel.writeInt(this.noReleaseNeeded ? 1 : 0);
    }

    private ContentProviderHolder(Parcel parcel) {
        this.info = ProviderInfo.CREATOR.createFromParcel(parcel);
        this.provider = ContentProviderNative.asInterface(parcel.readStrongBinder());
        this.connection = parcel.readStrongBinder();
        this.noReleaseNeeded = parcel.readInt() != 0;
    }
}
