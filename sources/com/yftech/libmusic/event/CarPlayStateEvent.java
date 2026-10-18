package com.yftech.libmusic.event;

import androidx.annotation.NonNull;

/* loaded from: /home/user/work/dex/classes4.dex */
public class CarPlayStateEvent {
    public int status;

    public CarPlayStateEvent(int i) {
        this.status = i;
    }

    @NonNull
    public String toString() {
        return "status=" + this.status;
    }
}
