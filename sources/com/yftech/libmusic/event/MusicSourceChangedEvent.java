package com.yftech.libmusic.event;

import androidx.annotation.NonNull;

/* loaded from: /home/user/work/dex/classes4.dex */
public class MusicSourceChangedEvent {
    public String music_source;

    public MusicSourceChangedEvent(String str) {
        this.music_source = str;
    }

    @NonNull
    public String toString() {
        return "music_source=" + this.music_source;
    }
}
