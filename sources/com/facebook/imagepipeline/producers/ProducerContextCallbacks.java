package com.facebook.imagepipeline.producers;

/* loaded from: /home/user/work/dex/classes3.dex */
public interface ProducerContextCallbacks {
    void onCancellationRequested();

    void onIsIntermediateResultExpectedChanged();

    void onIsPrefetchChanged();

    void onPriorityChanged();
}
