package com.media.common.ui.widget.zoomable;

import android.view.GestureDetector;
import android.view.MotionEvent;
import com.facebook.infer.annotation.Nullsafe;
import java.util.ArrayList;
import java.util.List;

@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: /home/user/work/dex/classes3.dex */
public class MultiGestureListener extends GestureDetector.SimpleOnGestureListener {
    private final List<GestureDetector.SimpleOnGestureListener> mListeners = new ArrayList();

    public synchronized void addListener(GestureDetector.SimpleOnGestureListener simpleOnGestureListener) {
        this.mListeners.add(simpleOnGestureListener);
    }

    public synchronized void removeListener(GestureDetector.SimpleOnGestureListener simpleOnGestureListener) {
        this.mListeners.remove(simpleOnGestureListener);
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public synchronized boolean onSingleTapUp(MotionEvent motionEvent) {
        int size = this.mListeners.size();
        for (int i = 0; i < size; i++) {
            if (this.mListeners.get(i).onSingleTapUp(motionEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public synchronized void onLongPress(MotionEvent motionEvent) {
        int size = this.mListeners.size();
        for (int i = 0; i < size; i++) {
            this.mListeners.get(i).onLongPress(motionEvent);
        }
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public synchronized boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        int size = this.mListeners.size();
        for (int i = 0; i < size; i++) {
            if (this.mListeners.get(i).onScroll(motionEvent, motionEvent2, f, f2)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public synchronized boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        int size = this.mListeners.size();
        for (int i = 0; i < size; i++) {
            if (this.mListeners.get(i).onFling(motionEvent, motionEvent2, f, f2)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public synchronized void onShowPress(MotionEvent motionEvent) {
        int size = this.mListeners.size();
        for (int i = 0; i < size; i++) {
            this.mListeners.get(i).onShowPress(motionEvent);
        }
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public synchronized boolean onDown(MotionEvent motionEvent) {
        int size = this.mListeners.size();
        for (int i = 0; i < size; i++) {
            if (this.mListeners.get(i).onDown(motionEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public synchronized boolean onDoubleTap(MotionEvent motionEvent) {
        int size = this.mListeners.size();
        for (int i = 0; i < size; i++) {
            if (this.mListeners.get(i).onDoubleTap(motionEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public synchronized boolean onDoubleTapEvent(MotionEvent motionEvent) {
        int size = this.mListeners.size();
        for (int i = 0; i < size; i++) {
            if (this.mListeners.get(i).onDoubleTapEvent(motionEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public synchronized boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        int size = this.mListeners.size();
        for (int i = 0; i < size; i++) {
            if (this.mListeners.get(i).onSingleTapConfirmed(motionEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnContextClickListener
    public synchronized boolean onContextClick(MotionEvent motionEvent) {
        int size = this.mListeners.size();
        for (int i = 0; i < size; i++) {
            if (this.mListeners.get(i).onContextClick(motionEvent)) {
                return true;
            }
        }
        return false;
    }
}
