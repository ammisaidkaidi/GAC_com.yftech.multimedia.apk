.class public final Lcom/yftech/car/widget/media/photo/photoview/log/LogManager;
.super Ljava/lang/Object;
.source "LogManager.java"


# static fields
.field private static logger:Lcom/yftech/car/widget/media/photo/photoview/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/yftech/car/widget/media/photo/photoview/log/LoggerDefault;

    invoke-direct {v0}, Lcom/yftech/car/widget/media/photo/photoview/log/LoggerDefault;-><init>()V

    sput-object v0, Lcom/yftech/car/widget/media/photo/photoview/log/LogManager;->logger:Lcom/yftech/car/widget/media/photo/photoview/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogger()Lcom/yftech/car/widget/media/photo/photoview/log/Logger;
    .locals 1

    .line 32
    sget-object v0, Lcom/yftech/car/widget/media/photo/photoview/log/LogManager;->logger:Lcom/yftech/car/widget/media/photo/photoview/log/Logger;

    return-object v0
.end method

.method public static setLogger(Lcom/yftech/car/widget/media/photo/photoview/log/Logger;)V
    .locals 0

    .line 28
    sput-object p0, Lcom/yftech/car/widget/media/photo/photoview/log/LogManager;->logger:Lcom/yftech/car/widget/media/photo/photoview/log/Logger;

    return-void
.end method
