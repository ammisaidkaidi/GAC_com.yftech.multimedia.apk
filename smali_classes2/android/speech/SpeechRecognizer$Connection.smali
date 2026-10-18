.class Landroid/speech/SpeechRecognizer$Connection;
.super Ljava/lang/Object;
.source "SpeechRecognizer.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/SpeechRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connection"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/SpeechRecognizer;


# direct methods
.method private constructor <init>(Landroid/speech/SpeechRecognizer;)V
    .locals 0

    .line 168
    iput-object p1, p0, Landroid/speech/SpeechRecognizer$Connection;->this$0:Landroid/speech/SpeechRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/speech/SpeechRecognizer;Landroid/speech/SpeechRecognizer$1;)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Landroid/speech/SpeechRecognizer$Connection;-><init>(Landroid/speech/SpeechRecognizer;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 172
    iget-object p1, p0, Landroid/speech/SpeechRecognizer$Connection;->this$0:Landroid/speech/SpeechRecognizer;

    invoke-static {p2}, Landroid/speech/IRecognitionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/speech/IRecognitionService;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/speech/SpeechRecognizer;->access$502(Landroid/speech/SpeechRecognizer;Landroid/speech/IRecognitionService;)Landroid/speech/IRecognitionService;

    .line 174
    :goto_0
    iget-object p1, p0, Landroid/speech/SpeechRecognizer$Connection;->this$0:Landroid/speech/SpeechRecognizer;

    invoke-static {p1}, Landroid/speech/SpeechRecognizer;->access$600(Landroid/speech/SpeechRecognizer;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 175
    iget-object p1, p0, Landroid/speech/SpeechRecognizer$Connection;->this$0:Landroid/speech/SpeechRecognizer;

    invoke-static {p1}, Landroid/speech/SpeechRecognizer;->access$700(Landroid/speech/SpeechRecognizer;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Landroid/speech/SpeechRecognizer$Connection;->this$0:Landroid/speech/SpeechRecognizer;

    invoke-static {p2}, Landroid/speech/SpeechRecognizer;->access$600(Landroid/speech/SpeechRecognizer;)Ljava/util/Queue;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Message;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 181
    iget-object p1, p0, Landroid/speech/SpeechRecognizer$Connection;->this$0:Landroid/speech/SpeechRecognizer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/speech/SpeechRecognizer;->access$502(Landroid/speech/SpeechRecognizer;Landroid/speech/IRecognitionService;)Landroid/speech/IRecognitionService;

    .line 182
    iget-object p1, p0, Landroid/speech/SpeechRecognizer$Connection;->this$0:Landroid/speech/SpeechRecognizer;

    invoke-static {p1, v0}, Landroid/speech/SpeechRecognizer;->access$802(Landroid/speech/SpeechRecognizer;Landroid/speech/SpeechRecognizer$Connection;)Landroid/speech/SpeechRecognizer$Connection;

    .line 183
    iget-object p0, p0, Landroid/speech/SpeechRecognizer$Connection;->this$0:Landroid/speech/SpeechRecognizer;

    invoke-static {p0}, Landroid/speech/SpeechRecognizer;->access$600(Landroid/speech/SpeechRecognizer;)Ljava/util/Queue;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Queue;->clear()V

    return-void
.end method
