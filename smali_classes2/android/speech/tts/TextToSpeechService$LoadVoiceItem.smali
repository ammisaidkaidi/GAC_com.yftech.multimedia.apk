.class Landroid/speech/tts/TextToSpeechService$LoadVoiceItem;
.super Landroid/speech/tts/TextToSpeechService$SpeechItem;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadVoiceItem"
.end annotation


# instance fields
.field private final mVoiceName:Ljava/lang/String;

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILjava/lang/String;)V
    .locals 0

    .line 1238
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$LoadVoiceItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 1239
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/speech/tts/TextToSpeechService$SpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;II)V

    .line 1240
    iput-object p5, p0, Landroid/speech/tts/TextToSpeechService$LoadVoiceItem;->mVoiceName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected playImpl()V
    .locals 1

    .line 1250
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$LoadVoiceItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    iget-object p0, p0, Landroid/speech/tts/TextToSpeechService$LoadVoiceItem;->mVoiceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/speech/tts/TextToSpeechService;->onLoadVoice(Ljava/lang/String;)I

    return-void
.end method

.method protected stopImpl()V
    .locals 0

    return-void
.end method
