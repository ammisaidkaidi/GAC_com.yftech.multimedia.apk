.class Landroid/hardware/biometrics/BiometricPrompt$1;
.super Landroid/hardware/biometrics/IBiometricPromptReceiver$Stub;
.source "BiometricPrompt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/BiometricPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/biometrics/BiometricPrompt;


# direct methods
.method constructor <init>(Landroid/hardware/biometrics/BiometricPrompt;)V
    .locals 0

    .line 216
    iput-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricPromptReceiver$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onDialogDismissed$0(Landroid/hardware/biometrics/BiometricPrompt$1;)V
    .locals 2

    .line 222
    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {p0}, Landroid/hardware/biometrics/BiometricPrompt;->access$100(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;->listener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-interface {p0, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$onDialogDismissed$1(Landroid/hardware/biometrics/BiometricPrompt$1;)V
    .locals 2

    .line 226
    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {p0}, Landroid/hardware/biometrics/BiometricPrompt;->access$200(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;->listener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v0, 0x0

    const/4 v1, -0x2

    invoke-interface {p0, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public onDialogDismissed(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 221
    iget-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {p1}, Landroid/hardware/biometrics/BiometricPrompt;->access$100(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;->executor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$1$C3fuslKNv7eJTZG9_jFRfCo5_Y4;

    invoke-direct {v0, p0}, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$1$C3fuslKNv7eJTZG9_jFRfCo5_Y4;-><init>(Landroid/hardware/biometrics/BiometricPrompt$1;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 225
    iget-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$1;->this$0:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {p1}, Landroid/hardware/biometrics/BiometricPrompt;->access$200(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;->executor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$1$J5PqpiT8xZNiNN1gy9VraVgknaQ;

    invoke-direct {v0, p0}, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$1$J5PqpiT8xZNiNN1gy9VraVgknaQ;-><init>(Landroid/hardware/biometrics/BiometricPrompt$1;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
