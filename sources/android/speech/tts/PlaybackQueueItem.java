package android.speech.tts;

import android.speech.tts.TextToSpeechService;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes2.dex */
public abstract class PlaybackQueueItem implements Runnable {
    private final Object mCallerIdentity;
    private final TextToSpeechService.UtteranceProgressDispatcher mDispatcher;

    @Override // java.lang.Runnable
    public abstract void run();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void stop(int i);

    /* JADX INFO: Access modifiers changed from: package-private */
    public PlaybackQueueItem(TextToSpeechService.UtteranceProgressDispatcher utteranceProgressDispatcher, Object obj) {
        this.mDispatcher = utteranceProgressDispatcher;
        this.mCallerIdentity = obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object getCallerIdentity() {
        return this.mCallerIdentity;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public TextToSpeechService.UtteranceProgressDispatcher getDispatcher() {
        return this.mDispatcher;
    }
}
