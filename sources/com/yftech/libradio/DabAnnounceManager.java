package com.yftech.libradio;

/* loaded from: /home/user/work/dex/classes4.dex */
public class DabAnnounceManager {
    private static final DabAnnounceManager instance = new DabAnnounceManager();
    private int annotype;
    private boolean isAnnouncePlaying;

    public static DabAnnounceManager getInstance() {
        return instance;
    }

    public boolean isAnnouncePlaying() {
        return this.isAnnouncePlaying;
    }

    public void setAnnouncePlaying(boolean z) {
        this.isAnnouncePlaying = z;
    }

    public int getAnnotype() {
        return this.annotype;
    }

    public void setAnnotype(int i) {
        this.annotype = i;
    }
}
