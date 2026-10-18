package android.media.update;

import android.os.Bundle;

/* loaded from: /home/user/work/dex/classes.dex */
public interface SessionToken2Provider {
    boolean equals_impl(Object obj);

    String getId_imp();

    String getPackageName_impl();

    int getType_impl();

    int getUid_impl();

    int hashCode_impl();

    Bundle toBundle_impl();

    String toString_impl();
}
