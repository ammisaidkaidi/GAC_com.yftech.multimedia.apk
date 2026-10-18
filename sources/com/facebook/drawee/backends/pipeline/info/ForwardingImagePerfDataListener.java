package com.facebook.drawee.backends.pipeline.info;

import com.facebook.infer.annotation.Nullsafe;
import java.util.Collection;
import java.util.Iterator;

@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: /home/user/work/dex/classes3.dex */
public class ForwardingImagePerfDataListener implements ImagePerfDataListener {
    private final Collection<ImagePerfDataListener> mListeners;

    public ForwardingImagePerfDataListener(Collection<ImagePerfDataListener> collection) {
        this.mListeners = collection;
    }

    @Override // com.facebook.drawee.backends.pipeline.info.ImagePerfDataListener
    public void onImageLoadStatusUpdated(ImagePerfData imagePerfData, int i) {
        Iterator<ImagePerfDataListener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onImageLoadStatusUpdated(imagePerfData, i);
        }
    }

    @Override // com.facebook.drawee.backends.pipeline.info.ImagePerfDataListener
    public void onImageVisibilityUpdated(ImagePerfData imagePerfData, int i) {
        Iterator<ImagePerfDataListener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onImageVisibilityUpdated(imagePerfData, i);
        }
    }
}
