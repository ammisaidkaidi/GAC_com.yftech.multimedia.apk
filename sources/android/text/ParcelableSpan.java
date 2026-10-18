package android.text;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /home/user/work/dex/classes2.dex */
public interface ParcelableSpan extends Parcelable {
    int getSpanTypeId();

    int getSpanTypeIdInternal();

    void writeToParcelInternal(Parcel parcel, int i);
}
