package com.facebook.imagepipeline.producers;

import com.facebook.common.executors.StatefulRunnable;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Map;
import javax.annotation.Nullable;

@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: /home/user/work/dex/classes3.dex */
public abstract class StatefulProducerRunnable<T> extends StatefulRunnable<T> {
    private final Consumer<T> mConsumer;
    private final ProducerContext mProducerContext;
    private final ProducerListener2 mProducerListener;
    private final String mProducerName;

    @Override // com.facebook.common.executors.StatefulRunnable
    protected abstract void disposeResult(T t);

    @Nullable
    protected Map<String, String> getExtraMapOnCancellation() {
        return null;
    }

    @Nullable
    protected Map<String, String> getExtraMapOnFailure(Exception exc) {
        return null;
    }

    @Nullable
    protected Map<String, String> getExtraMapOnSuccess(T t) {
        return null;
    }

    public StatefulProducerRunnable(Consumer<T> consumer, ProducerListener2 producerListener2, ProducerContext producerContext, String str) {
        this.mConsumer = consumer;
        this.mProducerListener = producerListener2;
        this.mProducerName = str;
        this.mProducerContext = producerContext;
        this.mProducerListener.onProducerStart(this.mProducerContext, this.mProducerName);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.common.executors.StatefulRunnable
    public void onSuccess(T t) {
        this.mProducerListener.onProducerFinishWithSuccess(this.mProducerContext, this.mProducerName, this.mProducerListener.requiresExtraMap(this.mProducerContext, this.mProducerName) ? getExtraMapOnSuccess(t) : null);
        this.mConsumer.onNewResult(t, 1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.common.executors.StatefulRunnable
    public void onFailure(Exception exc) {
        this.mProducerListener.onProducerFinishWithFailure(this.mProducerContext, this.mProducerName, exc, this.mProducerListener.requiresExtraMap(this.mProducerContext, this.mProducerName) ? getExtraMapOnFailure(exc) : null);
        this.mConsumer.onFailure(exc);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.common.executors.StatefulRunnable
    public void onCancellation() {
        this.mProducerListener.onProducerFinishWithCancellation(this.mProducerContext, this.mProducerName, this.mProducerListener.requiresExtraMap(this.mProducerContext, this.mProducerName) ? getExtraMapOnCancellation() : null);
        this.mConsumer.onCancellation();
    }
}
