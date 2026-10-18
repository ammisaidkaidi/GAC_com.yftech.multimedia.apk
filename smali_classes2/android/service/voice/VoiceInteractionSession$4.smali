.class Landroid/service/voice/VoiceInteractionSession$4;
.super Ljava/lang/Object;
.source "VoiceInteractionSession.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/voice/VoiceInteractionSession;->doShow(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/voice/VoiceInteractionSession;

.field final synthetic val$showCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;


# direct methods
.method constructor <init>(Landroid/service/voice/VoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V
    .locals 0

    .line 1011
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$4;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iput-object p2, p0, Landroid/service/voice/VoiceInteractionSession$4;->val$showCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 1014
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$4;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v0, v0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1016
    :try_start_0
    iget-object p0, p0, Landroid/service/voice/VoiceInteractionSession$4;->val$showCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    invoke-interface {p0}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;->onShown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "VoiceInteractionSession"

    const-string v1, "Error calling onShown"

    .line 1018
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
