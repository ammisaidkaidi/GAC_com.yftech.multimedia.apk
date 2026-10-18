package com.media.common.event;

import androidx.annotation.NonNull;

/* loaded from: /home/user/work/dex/classes3.dex */
public class USBStateEvent {
    public boolean isUsbExists;
    public int usbIndex;

    public USBStateEvent(int i, boolean z) {
        this.usbIndex = i;
        this.isUsbExists = z;
    }

    @NonNull
    public String toString() {
        return "usbIndex=" + this.usbIndex + ", isUsbExists=" + this.isUsbExists;
    }
}
