.class public Landroid/hardware/biometrics/BiometricPrompt;
.super Ljava/lang/Object;
.source "BiometricPrompt.java"

# interfaces
.implements Landroid/hardware/biometrics/BiometricAuthenticator;
.implements Landroid/hardware/biometrics/BiometricConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;,
        Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;,
        Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;,
        Landroid/hardware/biometrics/BiometricPrompt$Builder;,
        Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;
    }
.end annotation


# static fields
.field public static final DISMISSED_REASON_NEGATIVE:I = 0x2

.field public static final DISMISSED_REASON_POSITIVE:I = 0x1

.field public static final DISMISSED_REASON_USER_CANCEL:I = 0x3

.field public static final HIDE_DIALOG_DELAY:I = 0x7d0

.field public static final KEY_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final KEY_NEGATIVE_TEXT:Ljava/lang/String; = "negative_text"

.field public static final KEY_POSITIVE_TEXT:Ljava/lang/String; = "positive_text"

.field public static final KEY_SUBTITLE:Ljava/lang/String; = "subtitle"

.field public static final KEY_TITLE:Ljava/lang/String; = "title"


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field mDialogReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mNegativeButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPositiveButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;)V
    .locals 1

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$1;

    invoke-direct {v0, p0}, Landroid/hardware/biometrics/BiometricPrompt$1;-><init>(Landroid/hardware/biometrics/BiometricPrompt;)V

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mDialogReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    .line 234
    iput-object p2, p0, Landroid/hardware/biometrics/BiometricPrompt;->mBundle:Landroid/os/Bundle;

    .line 235
    iput-object p3, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPositiveButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    .line 236
    iput-object p4, p0, Landroid/hardware/biometrics/BiometricPrompt;->mNegativeButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    .line 237
    const-class p2, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p2, p0, Landroid/hardware/biometrics/BiometricPrompt;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 238
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;Landroid/hardware/biometrics/BiometricPrompt$1;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/biometrics/BiometricPrompt;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;)V

    return-void
.end method

.method static synthetic access$100(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;
    .locals 0

    .line 41
    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPositiveButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    return-object p0
.end method

.method static synthetic access$200(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;
    .locals 0

    .line 41
    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mNegativeButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    return-object p0
.end method

.method private handlePreAuthenticationErrors(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;Ljava/util/concurrent/Executor;)Z
    .locals 2

    .line 472
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/16 v0, 0xc

    .line 473
    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt;->sendError(ILandroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;Ljava/util/concurrent/Executor;)V

    return v1

    .line 476
    :cond_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 477
    invoke-direct {p0, v1, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt;->sendError(ILandroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;Ljava/util/concurrent/Executor;)V

    return v1

    .line 480
    :cond_1
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0xb

    .line 481
    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt;->sendError(ILandroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;Ljava/util/concurrent/Executor;)V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$sendError$0(Landroid/hardware/biometrics/BiometricPrompt;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)V
    .locals 1

    .line 490
    iget-object p0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method private sendError(ILandroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 489
    new-instance v0, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$HqBGXtBUWNc-v8NoHYsj2gLfaRw;

    invoke-direct {v0, p0, p2, p1}, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$HqBGXtBUWNc-v8NoHYsj2gLfaRw;-><init>(Landroid/hardware/biometrics/BiometricPrompt;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public authenticate(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V
    .locals 8

    .line 432
    invoke-direct {p0, p4, p3}, Landroid/hardware/biometrics/BiometricPrompt;->handlePreAuthenticationErrors(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;Ljava/util/concurrent/Executor;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 435
    :cond_0
    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v4, p0, Landroid/hardware/biometrics/BiometricPrompt;->mBundle:Landroid/os/Bundle;

    iget-object v6, p0, Landroid/hardware/biometrics/BiometricPrompt;->mDialogReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/biometrics/CryptoObject;Landroid/os/CancellationSignal;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/IBiometricPromptReceiver;Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;)V

    return-void
.end method

.method public authenticate(Landroid/hardware/biometrics/CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;)V
    .locals 1

    .line 381
    instance-of v0, p4, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    if-eqz v0, :cond_0

    .line 384
    check-cast p4, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/hardware/biometrics/BiometricPrompt;->authenticate(Landroid/hardware/biometrics/CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;)V

    return-void

    .line 382
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Callback cannot be casted"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public authenticate(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;)V
    .locals 1

    .line 398
    instance-of v0, p3, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    if-eqz v0, :cond_0

    .line 401
    check-cast p3, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/biometrics/BiometricPrompt;->authenticate(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    return-void

    .line 399
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Callback cannot be casted"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public authenticate(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V
    .locals 7

    .line 464
    invoke-direct {p0, p3, p2}, Landroid/hardware/biometrics/BiometricPrompt;->handlePreAuthenticationErrors(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;Ljava/util/concurrent/Executor;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 467
    :cond_0
    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v3, p0, Landroid/hardware/biometrics/BiometricPrompt;->mBundle:Landroid/os/Bundle;

    iget-object v5, p0, Landroid/hardware/biometrics/BiometricPrompt;->mDialogReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/os/CancellationSignal;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/IBiometricPromptReceiver;Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;)V

    return-void
.end method
