package android.media;

/* loaded from: /home/user/work/dex/classes.dex */
class AudioHandle {
    private final int mId;

    AudioHandle(int i) {
        this.mId = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int id() {
        return this.mId;
    }

    public boolean equals(Object obj) {
        return obj != null && (obj instanceof AudioHandle) && this.mId == ((AudioHandle) obj).id();
    }

    public int hashCode() {
        return this.mId;
    }

    public String toString() {
        return Integer.toString(this.mId);
    }
}
