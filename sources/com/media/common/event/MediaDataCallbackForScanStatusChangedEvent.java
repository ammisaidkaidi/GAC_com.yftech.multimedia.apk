package com.media.common.event;

/* loaded from: /home/user/work/dex/classes3.dex */
public class MediaDataCallbackForScanStatusChangedEvent {
    public boolean isScanner;
    public int usbIndex;

    public MediaDataCallbackForScanStatusChangedEvent(int i, boolean z) {
        this.usbIndex = i;
        this.isScanner = z;
    }
}
