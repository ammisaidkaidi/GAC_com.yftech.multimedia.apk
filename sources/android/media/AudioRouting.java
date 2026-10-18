package android.media;

import android.os.Handler;

/* loaded from: /home/user/work/dex/classes.dex */
public interface AudioRouting {

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnRoutingChangedListener {
        void onRoutingChanged(AudioRouting audioRouting);
    }

    void addOnRoutingChangedListener(OnRoutingChangedListener onRoutingChangedListener, Handler handler);

    AudioDeviceInfo getPreferredDevice();

    AudioDeviceInfo getRoutedDevice();

    void removeOnRoutingChangedListener(OnRoutingChangedListener onRoutingChangedListener);

    boolean setPreferredDevice(AudioDeviceInfo audioDeviceInfo);
}
