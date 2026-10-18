package android.speech.tts;

import android.os.ConditionVariable;
import android.speech.tts.TextToSpeechService;

/* loaded from: /home/user/work/dex/classes2.dex */
class SilencePlaybackQueueItem extends PlaybackQueueItem {
    private final ConditionVariable mCondVar;
    private final long mSilenceDurationMs;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SilencePlaybackQueueItem(TextToSpeechService.UtteranceProgressDispatcher utteranceProgressDispatcher, Object obj, long j) {
        super(utteranceProgressDispatcher, obj);
        this.mCondVar = new ConditionVariable();
        this.mSilenceDurationMs = j;
    }

    @Override // android.speech.tts.PlaybackQueueItem, java.lang.Runnable
    public void run() {
        getDispatcher().dispatchOnStart();
        if (this.mSilenceDurationMs > 0 ? this.mCondVar.block(this.mSilenceDurationMs) : false) {
            getDispatcher().dispatchOnStop();
        } else {
            getDispatcher().dispatchOnSuccess();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.speech.tts.PlaybackQueueItem
    public void stop(int i) {
        this.mCondVar.open();
    }
}
