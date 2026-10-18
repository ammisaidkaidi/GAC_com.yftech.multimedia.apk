package android.media;

/* compiled from: WebVttRenderer.java */
/* loaded from: /home/user/work/dex/classes.dex */
class TextTrackCueSpan {
    boolean mEnabled;
    String mText;
    long mTimestampMs;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TextTrackCueSpan(String str, long j) {
        this.mTimestampMs = j;
        this.mText = str;
        this.mEnabled = this.mTimestampMs < 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof TextTrackCueSpan)) {
            return false;
        }
        TextTrackCueSpan textTrackCueSpan = (TextTrackCueSpan) obj;
        return this.mTimestampMs == textTrackCueSpan.mTimestampMs && this.mText.equals(textTrackCueSpan.mText);
    }
}
