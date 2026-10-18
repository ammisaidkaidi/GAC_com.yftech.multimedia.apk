package android.media;

import android.media.AudioRouting;
import android.os.Handler;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public class NativeRoutingEventHandlerDelegate {
    private AudioRouting mAudioRouting;
    private Handler mHandler;
    private AudioRouting.OnRoutingChangedListener mOnRoutingChangedListener;

    /* JADX INFO: Access modifiers changed from: package-private */
    public NativeRoutingEventHandlerDelegate(AudioRouting audioRouting, AudioRouting.OnRoutingChangedListener onRoutingChangedListener, Handler handler) {
        this.mAudioRouting = audioRouting;
        this.mOnRoutingChangedListener = onRoutingChangedListener;
        this.mHandler = handler;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void notifyClient() {
        if (this.mHandler != null) {
            this.mHandler.post(new Runnable() { // from class: android.media.NativeRoutingEventHandlerDelegate.1
                @Override // java.lang.Runnable
                public void run() {
                    if (NativeRoutingEventHandlerDelegate.this.mOnRoutingChangedListener != null) {
                        NativeRoutingEventHandlerDelegate.this.mOnRoutingChangedListener.onRoutingChanged(NativeRoutingEventHandlerDelegate.this.mAudioRouting);
                    }
                }
            });
        }
    }
}
