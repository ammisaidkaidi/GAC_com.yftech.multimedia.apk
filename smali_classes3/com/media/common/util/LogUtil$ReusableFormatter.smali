.class Lcom/media/common/util/LogUtil$ReusableFormatter;
.super Ljava/lang/Object;
.source "LogUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/media/common/util/LogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReusableFormatter"
.end annotation


# instance fields
.field private builder:Ljava/lang/StringBuilder;

.field private formatter:Ljava/util/Formatter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/media/common/util/LogUtil$ReusableFormatter;->builder:Ljava/lang/StringBuilder;

    .line 375
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/media/common/util/LogUtil$ReusableFormatter;->builder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Lcom/media/common/util/LogUtil$ReusableFormatter;->formatter:Ljava/util/Formatter;

    return-void
.end method


# virtual methods
.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/media/common/util/LogUtil$ReusableFormatter;->formatter:Ljava/util/Formatter;

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 380
    iget-object p1, p0, Lcom/media/common/util/LogUtil$ReusableFormatter;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 381
    iget-object p0, p0, Lcom/media/common/util/LogUtil$ReusableFormatter;->builder:Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    return-object p1
.end method
