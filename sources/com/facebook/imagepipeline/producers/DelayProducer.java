package com.facebook.imagepipeline.producers;

import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.image.CloseableImage;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: /home/user/work/dex/classes3.dex */
public class DelayProducer implements Producer<CloseableReference<CloseableImage>> {

    @Nullable
    private final ScheduledExecutorService mBackgroundTasksExecutor;
    private final Producer<CloseableReference<CloseableImage>> mInputProducer;

    public DelayProducer(Producer<CloseableReference<CloseableImage>> producer, @Nullable ScheduledExecutorService scheduledExecutorService) {
        this.mInputProducer = producer;
        this.mBackgroundTasksExecutor = scheduledExecutorService;
    }

    @Override // com.facebook.imagepipeline.producers.Producer
    public void produceResults(final Consumer<CloseableReference<CloseableImage>> consumer, final ProducerContext producerContext) {
        ImageRequest imageRequest = producerContext.getImageRequest();
        if (this.mBackgroundTasksExecutor != null) {
            this.mBackgroundTasksExecutor.schedule(new Runnable() { // from class: com.facebook.imagepipeline.producers.DelayProducer.1
                @Override // java.lang.Runnable
                public void run() {
                    DelayProducer.this.mInputProducer.produceResults(consumer, producerContext);
                }
            }, imageRequest.getDelayMs(), TimeUnit.MILLISECONDS);
        } else {
            this.mInputProducer.produceResults(consumer, producerContext);
        }
    }
}
