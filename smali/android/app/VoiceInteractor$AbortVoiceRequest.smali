.class public Landroid/app/VoiceInteractor$AbortVoiceRequest;
.super Landroid/app/VoiceInteractor$Request;
.source "VoiceInteractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/VoiceInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AbortVoiceRequest"
.end annotation


# instance fields
.field final mExtras:Landroid/os/Bundle;

.field final mPrompt:Landroid/app/VoiceInteractor$Prompt;


# direct methods
.method public constructor <init>(Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)V
    .locals 0

    .line 673
    invoke-direct {p0}, Landroid/app/VoiceInteractor$Request;-><init>()V

    .line 674
    iput-object p1, p0, Landroid/app/VoiceInteractor$AbortVoiceRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    .line 675
    iput-object p2, p0, Landroid/app/VoiceInteractor$AbortVoiceRequest;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/os/Bundle;)V
    .locals 1

    .line 685
    invoke-direct {p0}, Landroid/app/VoiceInteractor$Request;-><init>()V

    if-eqz p1, :cond_0

    .line 686
    new-instance v0, Landroid/app/VoiceInteractor$Prompt;

    invoke-direct {v0, p1}, Landroid/app/VoiceInteractor$Prompt;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/app/VoiceInteractor$AbortVoiceRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    .line 687
    iput-object p2, p0, Landroid/app/VoiceInteractor$AbortVoiceRequest;->mExtras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 694
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/VoiceInteractor$Request;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 695
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "mPrompt="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/app/VoiceInteractor$AbortVoiceRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 696
    iget-object p2, p0, Landroid/app/VoiceInteractor$AbortVoiceRequest;->mExtras:Landroid/os/Bundle;

    if-eqz p2, :cond_0

    .line 697
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p1, "mExtras="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/app/VoiceInteractor$AbortVoiceRequest;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method getRequestTypeName()Ljava/lang/String;
    .locals 0

    const-string p0, "AbortVoice"

    return-object p0
.end method

.method public onAbortResult(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method submit(Lcom/android/internal/app/IVoiceInteractor;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 707
    iget-object v0, p0, Landroid/app/VoiceInteractor$AbortVoiceRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    iget-object p0, p0, Landroid/app/VoiceInteractor$AbortVoiceRequest;->mExtras:Landroid/os/Bundle;

    invoke-interface {p1, p2, p3, v0, p0}, Lcom/android/internal/app/IVoiceInteractor;->startAbortVoice(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;

    move-result-object p0

    return-object p0
.end method
