package com.facebook.imagepipeline.producers;

/* loaded from: /home/user/work/dex/classes3.dex */
public interface ThreadHandoffProducerQueue {
    void addToQueueOrExecute(Runnable runnable);

    boolean isQueueing();

    void remove(Runnable runnable);

    void startQueueing();

    void stopQueuing();
}
