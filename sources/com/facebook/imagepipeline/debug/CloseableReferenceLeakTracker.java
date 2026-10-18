package com.facebook.imagepipeline.debug;

import com.facebook.common.references.SharedReference;
import javax.annotation.Nullable;

/* loaded from: /home/user/work/dex/classes3.dex */
public interface CloseableReferenceLeakTracker {

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface Listener {
        void onCloseableReferenceLeak(SharedReference<Object> sharedReference, @Nullable Throwable th);
    }

    boolean isSet();

    void setListener(@Nullable Listener listener);

    void trackCloseableReferenceLeak(SharedReference<Object> sharedReference, @Nullable Throwable th);
}
