.class abstract Landroid/speech/tts/PlaybackQueueItem;
.super Ljava/lang/Object;
.source "PlaybackQueueItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mCallerIdentity:Ljava/lang/Object;

.field private final mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Landroid/speech/tts/PlaybackQueueItem;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    .line 14
    iput-object p2, p0, Landroid/speech/tts/PlaybackQueueItem;->mCallerIdentity:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method getCallerIdentity()Ljava/lang/Object;
    .locals 0

    .line 18
    iget-object p0, p0, Landroid/speech/tts/PlaybackQueueItem;->mCallerIdentity:Ljava/lang/Object;

    return-object p0
.end method

.method protected getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    .locals 0

    .line 22
    iget-object p0, p0, Landroid/speech/tts/PlaybackQueueItem;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    return-object p0
.end method

.method public abstract run()V
.end method

.method abstract stop(I)V
.end method
