package android.service.autofill;

import android.os.Parcelable;

/* loaded from: /home/user/work/dex/classes2.dex */
public abstract class InternalValidator implements Validator, Parcelable {
    public abstract boolean isValid(ValueFinder valueFinder);
}
