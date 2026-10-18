package com.media.common.ui.widget.zoomable;

import android.graphics.Matrix;
import com.facebook.infer.annotation.Nullsafe;
import com.media.common.ui.widget.zoomable.ZoomableController;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: /home/user/work/dex/classes3.dex */
public class MultiZoomableControllerListener implements ZoomableController.Listener {
    private final List<ZoomableController.Listener> mListeners = new ArrayList();

    @Override // com.media.common.ui.widget.zoomable.ZoomableController.Listener
    public synchronized void onTransformBegin(Matrix matrix) {
        Iterator<ZoomableController.Listener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onTransformBegin(matrix);
        }
    }

    @Override // com.media.common.ui.widget.zoomable.ZoomableController.Listener
    public synchronized void onTransformChanged(Matrix matrix) {
        Iterator<ZoomableController.Listener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onTransformChanged(matrix);
        }
    }

    @Override // com.media.common.ui.widget.zoomable.ZoomableController.Listener
    public synchronized void onTransformEnd(Matrix matrix) {
        Iterator<ZoomableController.Listener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onTransformEnd(matrix);
        }
    }

    public synchronized void addListener(ZoomableController.Listener listener) {
        this.mListeners.add(listener);
    }

    public synchronized void removeListener(ZoomableController.Listener listener) {
        this.mListeners.remove(listener);
    }
}
