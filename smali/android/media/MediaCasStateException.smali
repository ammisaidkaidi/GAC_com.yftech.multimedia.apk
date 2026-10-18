.class public Landroid/media/MediaCasStateException;
.super Ljava/lang/IllegalStateException;
.source "MediaCasStateException.java"


# instance fields
.field private final mDiagnosticInfo:Ljava/lang/String;

.field private final mErrorCode:I


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    iput p1, p0, Landroid/media/MediaCasStateException;->mErrorCode:I

    .line 34
    iput-object p3, p0, Landroid/media/MediaCasStateException;->mDiagnosticInfo:Ljava/lang/String;

    return-void
.end method

.method static throwExceptionIfNeeded(I)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-static {p0, v0}, Landroid/media/MediaCasStateException;->throwExceptionIfNeeded(ILjava/lang/String;)V

    return-void
.end method

.method static throwExceptionIfNeeded(ILjava/lang/String;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "Unknown CAS state exception"

    goto :goto_0

    :pswitch_1
    const-string v0, "General CAS error"

    goto :goto_0

    :pswitch_2
    const-string v0, "Decrypt error"

    goto :goto_0

    :pswitch_3
    const-string v0, "Not initialized"

    goto :goto_0

    :pswitch_4
    const-string v0, "Tamper detected"

    goto :goto_0

    :pswitch_5
    const-string v0, "Insufficient output protection"

    goto :goto_0

    :pswitch_6
    const-string v0, "Invalid CAS state"

    goto :goto_0

    :pswitch_7
    const-string v0, "Unsupported scheme or data format"

    goto :goto_0

    :pswitch_8
    const-string v0, "Session not opened"

    goto :goto_0

    :pswitch_9
    const-string v0, "License expired"

    goto :goto_0

    :pswitch_a
    const-string v0, "No license"

    .line 85
    :goto_0
    new-instance v1, Landroid/media/MediaCasStateException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    .line 86
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "%s (err=%d)"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, p1, v0}, Landroid/media/MediaCasStateException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getDiagnosticInfo()Ljava/lang/String;
    .locals 0

    .line 106
    iget-object p0, p0, Landroid/media/MediaCasStateException;->mDiagnosticInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getErrorCode()I
    .locals 0

    .line 95
    iget p0, p0, Landroid/media/MediaCasStateException;->mErrorCode:I

    return p0
.end method
