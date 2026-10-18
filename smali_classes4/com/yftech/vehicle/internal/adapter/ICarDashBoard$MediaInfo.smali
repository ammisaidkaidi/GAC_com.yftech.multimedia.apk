.class public Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;
.super Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;
.source "ICarDashBoard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDashBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaInfo"
.end annotation


# static fields
.field public static final PLAY_TYPE_ORDER_LIST:B = 0x6t

.field public static final PLAY_TYPE_RANDOM_ALL:B = 0x3t

.field public static final PLAY_TYPE_RANDOM_LIST:B = 0x2t

.field public static final PLAY_TYPE_RANDOM_ONE:B = 0x0t

.field public static final PLAY_TYPE_REPEAT_ALL:B = 0x4t

.field public static final PLAY_TYPE_REPEAT_LIST:B = 0x5t

.field public static final PLAY_TYPE_REPEAT_ONE:B = 0x1t

.field public static final STATUS_PAUSE:B = 0x1t

.field public static final STATUS_PLAY:B = 0x2t

.field public static final STATUS_STOP:B


# instance fields
.field public artist:Ljava/lang/String;

.field public current:I

.field public isMute:Z

.field public playType:I

.field public status:I

.field public title:Ljava/lang/String;

.field public total:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 325
    invoke-direct {p0, p1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;-><init>(I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .line 328
    invoke-direct {p0, p1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;-><init>(I)V

    .line 329
    iput-object p2, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->title:Ljava/lang/String;

    .line 330
    iput-object p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->artist:Ljava/lang/String;

    .line 331
    iput p4, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->current:I

    .line 332
    iput p5, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->total:I

    .line 333
    iput p6, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->status:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIIZ)V
    .locals 0

    .line 337
    invoke-direct {p0, p1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;-><init>(I)V

    .line 338
    iput-object p2, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->title:Ljava/lang/String;

    .line 339
    iput-object p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->artist:Ljava/lang/String;

    .line 340
    iput p4, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->current:I

    .line 341
    iput p5, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->total:I

    .line 342
    iput p6, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->status:I

    .line 343
    iput p7, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->playType:I

    .line 344
    iput-boolean p8, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->isMute:Z

    return-void
.end method


# virtual methods
.method public isInfoDiff(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->getDashBoardSource()I

    move-result v1

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->getDashBoardSource()I

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    .line 354
    :cond_1
    iget-object v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->title:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->title:Ljava/lang/String;

    if-eqz v1, :cond_8

    :cond_2
    iget-object v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->title:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->title:Ljava/lang/String;

    if-nez v1, :cond_8

    :cond_3
    iget-object v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->title:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->title:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->title:Ljava/lang/String;

    iget-object v2, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_4
    iget-object v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->artist:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->artist:Ljava/lang/String;

    if-eqz v1, :cond_8

    :cond_5
    iget-object v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->artist:Ljava/lang/String;

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->artist:Ljava/lang/String;

    if-nez v1, :cond_8

    :cond_6
    iget-object v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->artist:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->artist:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->artist:Ljava/lang/String;

    iget-object p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->artist:Ljava/lang/String;

    .line 355
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_0
    return v0
.end method

.method public setInfoDiff(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;)V
    .locals 1

    .line 358
    iget-object v0, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->title:Ljava/lang/String;

    .line 359
    iget-object v0, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->artist:Ljava/lang/String;

    iput-object v0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->artist:Ljava/lang/String;

    .line 360
    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->getDashBoardSource()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->setDashBoardSource(I)V

    return-void
.end method

.method public toBytes()[B
    .locals 5

    const/16 v0, 0x109

    .line 363
    new-array v1, v0, [B

    .line 364
    iget v2, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->current:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/16 v3, 0x101

    aput-byte v2, v1, v3

    .line 365
    iget v2, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->current:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/16 v3, 0x102

    aput-byte v2, v1, v3

    .line 366
    iget v2, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->total:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/16 v3, 0x105

    aput-byte v2, v1, v3

    .line 367
    iget v2, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->total:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/16 v3, 0x106

    aput-byte v2, v1, v3

    .line 368
    iget v2, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->status:I

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 369
    iget-object v0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->title:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->title:Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    .line 371
    iget-object v3, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->title:Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->artist:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->artist:Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/16 v3, 0x80

    iget-object p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->artist:Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    invoke-static {v0, v2, v1, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaInfo{title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", artist=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->artist:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->current:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->status:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
