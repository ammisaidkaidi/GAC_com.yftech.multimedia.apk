.class Landroid/speech/SpeechRecognizer$InternalListener$1;
.super Landroid/os/Handler;
.source "SpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/SpeechRecognizer$InternalListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/SpeechRecognizer$InternalListener;


# direct methods
.method constructor <init>(Landroid/speech/SpeechRecognizer$InternalListener;)V
    .locals 0

    .line 433
    iput-object p1, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 436
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 439
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 465
    :pswitch_0
    iget-object p0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-static {p0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object p0

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, v0, p1}, Landroid/speech/RecognitionListener;->onEvent(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 462
    :pswitch_1
    iget-object p0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-static {p0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {p0, p1}, Landroid/speech/RecognitionListener;->onRmsChanged(F)V

    goto :goto_0

    .line 459
    :pswitch_2
    iget-object p0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-static {p0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Landroid/speech/RecognitionListener;->onPartialResults(Landroid/os/Bundle;)V

    goto :goto_0

    .line 456
    :pswitch_3
    iget-object p0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-static {p0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Landroid/speech/RecognitionListener;->onResults(Landroid/os/Bundle;)V

    goto :goto_0

    .line 453
    :pswitch_4
    iget-object p0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-static {p0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Landroid/speech/RecognitionListener;->onReadyForSpeech(Landroid/os/Bundle;)V

    goto :goto_0

    .line 450
    :pswitch_5
    iget-object p0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-static {p0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Landroid/speech/RecognitionListener;->onError(I)V

    goto :goto_0

    .line 447
    :pswitch_6
    iget-object p0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-static {p0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object p0

    invoke-interface {p0}, Landroid/speech/RecognitionListener;->onEndOfSpeech()V

    goto :goto_0

    .line 444
    :pswitch_7
    iget-object p0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-static {p0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    invoke-interface {p0, p1}, Landroid/speech/RecognitionListener;->onBufferReceived([B)V

    goto :goto_0

    .line 441
    :pswitch_8
    iget-object p0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-static {p0}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object p0

    invoke-interface {p0}, Landroid/speech/RecognitionListener;->onBeginningOfSpeech()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
