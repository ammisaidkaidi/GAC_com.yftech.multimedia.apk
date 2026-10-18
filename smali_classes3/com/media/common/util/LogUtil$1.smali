.class final Lcom/media/common/util/LogUtil$1;
.super Ljava/lang/ThreadLocal;
.source "LogUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/media/common/util/LogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lcom/media/common/util/LogUtil$ReusableFormatter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 386
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lcom/media/common/util/LogUtil$ReusableFormatter;
    .locals 0

    .line 388
    new-instance p0, Lcom/media/common/util/LogUtil$ReusableFormatter;

    invoke-direct {p0}, Lcom/media/common/util/LogUtil$ReusableFormatter;-><init>()V

    return-object p0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 0

    .line 386
    invoke-virtual {p0}, Lcom/media/common/util/LogUtil$1;->initialValue()Lcom/media/common/util/LogUtil$ReusableFormatter;

    move-result-object p0

    return-object p0
.end method
