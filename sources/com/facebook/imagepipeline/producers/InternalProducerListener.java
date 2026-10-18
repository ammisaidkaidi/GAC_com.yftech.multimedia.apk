package com.facebook.imagepipeline.producers;

import com.facebook.infer.annotation.Nullsafe;
import java.util.Map;
import javax.annotation.Nullable;

@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: /home/user/work/dex/classes3.dex */
public class InternalProducerListener implements ProducerListener2 {
    private final ProducerListener mProducerListener;

    @Nullable
    private final ProducerListener2 mProducerListener2;

    public InternalProducerListener(ProducerListener producerListener, @Nullable ProducerListener2 producerListener2) {
        this.mProducerListener = producerListener;
        this.mProducerListener2 = producerListener2;
    }

    public ProducerListener getProducerListener() {
        return this.mProducerListener;
    }

    @Nullable
    public ProducerListener2 getProducerListener2() {
        return this.mProducerListener2;
    }

    @Override // com.facebook.imagepipeline.producers.ProducerListener2
    public void onProducerStart(ProducerContext producerContext, String str) {
        if (this.mProducerListener != null) {
            this.mProducerListener.onProducerStart(producerContext.getId(), str);
        }
        if (this.mProducerListener2 != null) {
            this.mProducerListener2.onProducerStart(producerContext, str);
        }
    }

    @Override // com.facebook.imagepipeline.producers.ProducerListener2
    public void onProducerEvent(ProducerContext producerContext, String str, String str2) {
        if (this.mProducerListener != null) {
            this.mProducerListener.onProducerEvent(producerContext.getId(), str, str2);
        }
        if (this.mProducerListener2 != null) {
            this.mProducerListener2.onProducerEvent(producerContext, str, str2);
        }
    }

    @Override // com.facebook.imagepipeline.producers.ProducerListener2
    public void onProducerFinishWithSuccess(ProducerContext producerContext, String str, @Nullable Map<String, String> map) {
        if (this.mProducerListener != null) {
            this.mProducerListener.onProducerFinishWithSuccess(producerContext.getId(), str, map);
        }
        if (this.mProducerListener2 != null) {
            this.mProducerListener2.onProducerFinishWithSuccess(producerContext, str, map);
        }
    }

    @Override // com.facebook.imagepipeline.producers.ProducerListener2
    public void onProducerFinishWithFailure(ProducerContext producerContext, String str, Throwable th, @Nullable Map<String, String> map) {
        if (this.mProducerListener != null) {
            this.mProducerListener.onProducerFinishWithFailure(producerContext.getId(), str, th, map);
        }
        if (this.mProducerListener2 != null) {
            this.mProducerListener2.onProducerFinishWithFailure(producerContext, str, th, map);
        }
    }

    @Override // com.facebook.imagepipeline.producers.ProducerListener2
    public void onProducerFinishWithCancellation(ProducerContext producerContext, String str, @Nullable Map<String, String> map) {
        if (this.mProducerListener != null) {
            this.mProducerListener.onProducerFinishWithCancellation(producerContext.getId(), str, map);
        }
        if (this.mProducerListener2 != null) {
            this.mProducerListener2.onProducerFinishWithCancellation(producerContext, str, map);
        }
    }

    @Override // com.facebook.imagepipeline.producers.ProducerListener2
    public void onUltimateProducerReached(ProducerContext producerContext, String str, boolean z) {
        if (this.mProducerListener != null) {
            this.mProducerListener.onUltimateProducerReached(producerContext.getId(), str, z);
        }
        if (this.mProducerListener2 != null) {
            this.mProducerListener2.onUltimateProducerReached(producerContext, str, z);
        }
    }

    @Override // com.facebook.imagepipeline.producers.ProducerListener2
    public boolean requiresExtraMap(ProducerContext producerContext, String str) {
        boolean requiresExtraMap = this.mProducerListener != null ? this.mProducerListener.requiresExtraMap(producerContext.getId()) : false;
        return (requiresExtraMap || this.mProducerListener2 == null) ? requiresExtraMap : this.mProducerListener2.requiresExtraMap(producerContext, str);
    }
}
