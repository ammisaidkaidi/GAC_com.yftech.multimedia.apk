.class Landroid/service/voice/VoiceInteractionService$MyHandler;
.super Landroid/os/Handler;
.source "VoiceInteractionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/voice/VoiceInteractionService;


# direct methods
.method constructor <init>(Landroid/service/voice/VoiceInteractionService;)V
    .locals 0

    .line 103
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionService$MyHandler;->this$0:Landroid/service/voice/VoiceInteractionService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 106
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 120
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 117
    :pswitch_0
    iget-object p0, p0, Landroid/service/voice/VoiceInteractionService$MyHandler;->this$0:Landroid/service/voice/VoiceInteractionService;

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionService;->onLaunchVoiceAssistFromKeyguard()V

    goto :goto_0

    .line 114
    :pswitch_1
    iget-object p0, p0, Landroid/service/voice/VoiceInteractionService$MyHandler;->this$0:Landroid/service/voice/VoiceInteractionService;

    invoke-static {p0}, Landroid/service/voice/VoiceInteractionService;->access$100(Landroid/service/voice/VoiceInteractionService;)V

    goto :goto_0

    .line 111
    :pswitch_2
    iget-object p0, p0, Landroid/service/voice/VoiceInteractionService$MyHandler;->this$0:Landroid/service/voice/VoiceInteractionService;

    invoke-static {p0}, Landroid/service/voice/VoiceInteractionService;->access$000(Landroid/service/voice/VoiceInteractionService;)V

    goto :goto_0

    .line 108
    :pswitch_3
    iget-object p0, p0, Landroid/service/voice/VoiceInteractionService$MyHandler;->this$0:Landroid/service/voice/VoiceInteractionService;

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionService;->onReady()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
