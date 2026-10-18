.class public Lcom/yftech/car/widget/media/video/VideoPlayer$ErrorCode;
.super Ljava/lang/Object;
.source "VideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/video/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorCode"
.end annotation


# static fields
.field public static final FILE_NO_EXISTS:I = 0x2

.field public static final FORMAT_IS_NOT_SUPPORTED:I = 0x0

.field public static final PREPARE_ASYNC_ILLEGAL_STATE:I = 0x3

.field public static final RESOURCES_ARE_OCCUPIED:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
