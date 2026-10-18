.class public Lcom/yftech/vehicle/sdk/CarBspManager;
.super Lcom/yftech/vehicle/internal/BaseApiManager;
.source "CarBspManager.java"

# interfaces
.implements Lcom/yftech/vehicle/internal/adapter/ICarBsp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/vehicle/sdk/CarBspManager$CarBspListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarBspManager"

.field private static sMe:Lcom/yftech/vehicle/sdk/CarBspManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/BaseApiManager;-><init>()V

    return-void
.end method

.method public static declared-synchronized get()Lcom/yftech/vehicle/sdk/CarBspManager;
    .locals 2

    const-class v0, Lcom/yftech/vehicle/sdk/CarBspManager;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/yftech/vehicle/sdk/CarBspManager;->sMe:Lcom/yftech/vehicle/sdk/CarBspManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yftech/vehicle/sdk/CarBspManager;->sMe:Lcom/yftech/vehicle/sdk/CarBspManager;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/yftech/vehicle/sdk/CarBspManager;

    invoke-direct {v1}, Lcom/yftech/vehicle/sdk/CarBspManager;-><init>()V

    sput-object v1, Lcom/yftech/vehicle/sdk/CarBspManager;->sMe:Lcom/yftech/vehicle/sdk/CarBspManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getDisplayDtcInfo()Lcom/yftech/vehicle/internal/adapter/ICarBsp$DisplayDtc;
    .locals 1

    const/16 v0, 0x26f5

    .line 48
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarBspManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarBsp$DisplayDtc;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarBsp$DisplayDtc;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayLightBarEnable()Z
    .locals 1

    const/16 v0, 0x26de

    .line 144
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarBspManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDisplayLightBarLevel()I
    .locals 1

    const/16 v0, 0x26df

    .line 127
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarBspManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public isDisplayConnected()Z
    .locals 1

    const/16 v0, 0x26eb

    .line 98
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarBspManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public queryBspInfoCmd(B)Z
    .locals 1

    const/16 v0, 0x26f6

    .line 40
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarBspManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public registerListener(Lcom/yftech/vehicle/sdk/CarBspManager$CarBspListener;)V
    .locals 0

    .line 151
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarBspManager;->registerReceiver(Ljava/lang/Object;)V

    return-void
.end method

.method public setBspAMPMute(Z)Z
    .locals 1

    const/16 v0, 0x26ea

    .line 107
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarBspManager;->setSignalValue(IZ)Z

    move-result p0

    return p0
.end method

.method public setDisplayCreateDate(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "ddMMyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 83
    :try_start_1
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v2, "ddMMyy"

    invoke-direct {p1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "CarBspManager"

    .line 84
    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/yftech/vehicle/internal/utils/StringFormart;->byte2hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x26ec

    .line 85
    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/yftech/vehicle/sdk/CarBspManager;->setSignalValue(I[B)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "CarBspManager"

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplayCreateDate() error \u2014> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_1
    move-exception p0

    const-string v1, "CarBspManager"

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDisplayCreateDate() SimpleDateFormat.parse([ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ]) error \uff0cis not ddMMyy \u2014> "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    :goto_0
    const-string p0, "CarBspManager"

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplayCreateDate()  dateString is null or length!=6 error ,date ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setDisplayLightBarEnable(Z)Z
    .locals 1

    const/16 v0, 0x26de

    .line 136
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarBspManager;->setSignalValue(IZ)Z

    move-result p0

    return p0
.end method

.method public setDisplayLightBarLevel(I)Z
    .locals 1

    const/16 v0, 0x26df

    .line 118
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarBspManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setDisplaySnInfo(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "CarBspManager"

    .line 59
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/yftech/vehicle/internal/utils/StringFormart;->byte2hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x26ed

    .line 61
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarBspManager;->setSignalValue(I[B)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const-string p0, "CarBspManager"

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDisplaySnInfo()  sn.length!=10 error ,sn ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public unregisterListener(Lcom/yftech/vehicle/sdk/CarBspManager$CarBspListener;)V
    .locals 0

    .line 158
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarBspManager;->unregisterReceiver(Ljava/lang/Object;)V

    return-void
.end method
