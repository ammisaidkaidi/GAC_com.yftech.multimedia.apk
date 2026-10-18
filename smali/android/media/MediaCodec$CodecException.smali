.class public final Landroid/media/MediaCodec$CodecException;
.super Ljava/lang/IllegalStateException;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CodecException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodec$CodecException$ReasonCode;
    }
.end annotation


# static fields
.field private static final ACTION_RECOVERABLE:I = 0x2

.field private static final ACTION_TRANSIENT:I = 0x1

.field public static final ERROR_INSUFFICIENT_RESOURCE:I = 0x44c

.field public static final ERROR_RECLAIMED:I = 0x44d


# instance fields
.field private final mActionCode:I

.field private final mDiagnosticInfo:Ljava/lang/String;

.field private final mErrorCode:I


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .locals 1

    .line 2141
    invoke-direct {p0, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2142
    iput p1, p0, Landroid/media/MediaCodec$CodecException;->mErrorCode:I

    .line 2143
    iput p2, p0, Landroid/media/MediaCodec$CodecException;->mActionCode:I

    if-gez p1, :cond_0

    const-string/jumbo p2, "neg_"

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 2147
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "android.media.MediaCodec.error_"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2148
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaCodec$CodecException;->mDiagnosticInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDiagnosticInfo()Ljava/lang/String;
    .locals 0

    .line 2183
    iget-object p0, p0, Landroid/media/MediaCodec$CodecException;->mDiagnosticInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getErrorCode()I
    .locals 0

    .line 2173
    iget p0, p0, Landroid/media/MediaCodec$CodecException;->mErrorCode:I

    return p0
.end method

.method public isRecoverable()Z
    .locals 1

    .line 2166
    iget p0, p0, Landroid/media/MediaCodec$CodecException;->mActionCode:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTransient()Z
    .locals 1

    .line 2157
    iget p0, p0, Landroid/media/MediaCodec$CodecException;->mActionCode:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
