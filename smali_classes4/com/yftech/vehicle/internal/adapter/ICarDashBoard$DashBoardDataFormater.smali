.class public Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;
.super Ljava/lang/Object;
.source "ICarDashBoard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDashBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DashBoardDataFormater"
.end annotation


# static fields
.field static instance:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;

.field static mAbsInfo:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;


# instance fields
.field TAG:Ljava/lang/String;

.field mDashBoardType:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;


# direct methods
.method private constructor <init>(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;)V
    .locals 1

    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DashBoardDataFormater"

    .line 608
    iput-object v0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->TAG:Ljava/lang/String;

    .line 613
    iput-object p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->mDashBoardType:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    return-void
.end method

.method public static get(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;)Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;
    .locals 1

    .line 616
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->instance:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;

    if-nez v0, :cond_0

    .line 617
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;

    invoke-direct {v0, p0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;-><init>(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->instance:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;

    .line 619
    :cond_0
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->instance:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;

    return-object p0
.end method

.method private getDashBoardSourceFormatInfo(ILcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;)Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;
    .locals 0

    if-nez p2, :cond_0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 754
    :sswitch_0
    new-instance p2, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;

    invoke-direct {p2, p1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;-><init>(I)V

    const-string p0, "--"

    .line 755
    iput-object p0, p2, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->title:Ljava/lang/String;

    const-string p0, "--"

    .line 756
    iput-object p0, p2, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->artist:Ljava/lang/String;

    goto :goto_0

    .line 760
    :sswitch_1
    new-instance p2, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;

    invoke-direct {p2}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;-><init>()V

    :cond_0
    :goto_0
    return-object p2

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x5 -> :sswitch_0
        0x9 -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getDashBoardInfoDataByteArray(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;)[B
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 776
    iget-object v0, v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->TAG:Ljava/lang/String;

    const-string v1, "formartMediaInfoDataBytes() info is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 780
    :cond_0
    :try_start_0
    iget-object v0, v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " info:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;->MCU_CA1105:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    iget-object v4, v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->mDashBoardType:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    invoke-virtual {v0, v4}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 784
    invoke-virtual/range {p1 .. p1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;->getDashBoardSource()I

    move-result v0

    const/16 v4, 0x9

    const/4 v8, 0x6

    const/4 v12, 0x2

    const/4 v13, 0x4

    const/4 v15, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_22

    .line 789
    :sswitch_0
    instance-of v0, v2, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;

    if-nez v0, :cond_1

    .line 790
    iget-object v0, v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->TAG:Ljava/lang/String;

    const-string v2, "formartDashBoardInfoDataBytes() USB  AbsDashBoardInfo is not MediaInfo"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 793
    :cond_1
    move-object v0, v2

    check-cast v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;

    .line 794
    iget-object v5, v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->title:Ljava/lang/String;

    if-eqz v5, :cond_13

    iget-object v5, v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->artist:Ljava/lang/String;

    if-nez v5, :cond_2

    goto/16 :goto_c

    .line 799
    :cond_2
    sget-object v5, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->mAbsInfo:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;

    if-eqz v5, :cond_5

    sget-object v5, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->mAbsInfo:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;

    instance-of v5, v5, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;

    if-nez v5, :cond_3

    goto :goto_0

    .line 803
    :cond_3
    sget-object v5, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->mAbsInfo:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;

    check-cast v5, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;

    .line 804
    invoke-virtual {v5, v0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->isInfoDiff(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 805
    invoke-virtual {v5, v0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->setInfoDiff(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;)V

    goto :goto_1

    :cond_4
    move v5, v15

    goto :goto_2

    .line 800
    :cond_5
    :goto_0
    new-instance v5, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;

    invoke-virtual {v0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->getDashBoardSource()I

    move-result v10

    invoke-direct {v5, v10}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;-><init>(I)V

    sput-object v5, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->mAbsInfo:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;

    :goto_1
    const/4 v5, 0x1

    .line 809
    :goto_2
    iget-object v10, v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "formartDashBoardInfoDataBytes() isMediaUpdate ="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",so return byte [] null\uff01"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_6

    return-object v3

    .line 814
    :cond_6
    iget-object v6, v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->title:Ljava/lang/String;

    .line 815
    iget-object v7, v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->artist:Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 816
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    move v10, v0

    goto :goto_3

    :cond_7
    move v10, v15

    :goto_3
    if-eqz v7, :cond_8

    .line 817
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_4

    :cond_8
    move v0, v15

    :goto_4
    add-int/lit8 v3, v0, 0x2

    const/16 v0, 0x14

    const/16 v9, 0x12

    if-le v3, v0, :cond_9

    .line 825
    :try_start_1
    invoke-virtual {v7, v15, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_7

    :catch_0
    move-exception v0

    :goto_5
    move-object v4, v6

    goto :goto_a

    :cond_9
    sub-int/2addr v0, v3

    .line 827
    div-int/2addr v0, v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v7

    move v7, v15

    :goto_6
    if-ge v7, v0, :cond_a

    .line 829
    :try_start_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v7, v7, 0x1

    move-object v4, v11

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v7, v4

    goto :goto_5

    :cond_a
    move-object v7, v4

    :goto_7
    if-eqz v7, :cond_b

    .line 833
    :try_start_3
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    goto :goto_8

    :cond_b
    move v0, v15

    :goto_8
    add-int/lit8 v3, v0, 0x2

    if-le v10, v9, :cond_d

    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "..."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v4, :cond_c

    .line 838
    :try_start_4
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_a

    :cond_c
    move v0, v15

    :goto_9
    move v10, v0

    goto :goto_b

    :cond_d
    move-object v4, v6

    goto :goto_b

    .line 841
    :goto_a
    :try_start_5
    iget-object v6, v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->TAG:Ljava/lang/String;

    const-string v9, "getDashBoardInfoDataByteArray()  Exception "

    invoke-static {v6, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 843
    :goto_b
    iget-object v0, v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "formartDashBoardInfoDataBytes() USB MediaInfo.mTitle="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",mArtist="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v10, 0xa

    add-int/2addr v0, v8

    add-int/2addr v0, v3

    add-int/2addr v0, v13

    const/4 v6, 0x3

    add-int v11, v6, v0

    .line 846
    new-array v6, v11, [B

    .line 847
    iget-object v9, v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->mDashBoardType:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    invoke-virtual {v9}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;->ordinal()I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v6, v15

    const/4 v9, 0x1

    .line 848
    aput-byte v12, v6, v9

    int-to-byte v0, v0

    .line 849
    aput-byte v0, v6, v12

    int-to-byte v0, v5

    const/4 v5, 0x3

    .line 850
    aput-byte v0, v6, v5

    .line 851
    aput-byte v15, v6, v13

    const/4 v5, 0x5

    .line 852
    aput-byte v13, v6, v5

    .line 853
    invoke-virtual/range {p1 .. p1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;->getDashBoardSource()I

    move-result v0

    if-ne v0, v5, :cond_e

    .line 854
    aput-byte v5, v6, v5

    .line 856
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;->getDashBoardSource()I

    move-result v0

    const/16 v9, 0xc

    if-ne v0, v9, :cond_f

    const/16 v0, 0x12

    .line 857
    aput-byte v0, v6, v5

    .line 859
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;->getDashBoardSource()I

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_10

    const/16 v0, 0xf

    .line 860
    aput-byte v0, v6, v5

    :cond_10
    const/4 v2, 0x1

    .line 862
    aput-byte v2, v6, v8

    const/4 v2, 0x7

    .line 863
    aput-byte v15, v6, v2

    const/16 v2, 0x8

    .line 864
    aput-byte v15, v6, v2

    const/16 v2, 0x9

    .line 865
    aput-byte v15, v6, v2

    const/16 v2, 0xa

    .line 866
    aput-byte v15, v6, v2

    const/16 v2, 0xb

    .line 867
    aput-byte v13, v6, v2

    const/16 v0, 0xc

    int-to-byte v2, v10

    .line 868
    aput-byte v2, v6, v0

    if-eqz v10, :cond_11

    .line 870
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const/16 v4, 0xd

    invoke-static {v2, v15, v6, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_11
    add-int/2addr v0, v10

    add-int/lit8 v2, v0, 0x1

    const/4 v4, 0x1

    .line 874
    aput-byte v4, v6, v2

    add-int/lit8 v2, v0, 0x2

    .line 875
    aput-byte v4, v6, v2

    add-int/lit8 v2, v0, 0x3

    .line 876
    aput-byte v4, v6, v2

    add-int/lit8 v2, v0, 0x4

    .line 877
    aput-byte v12, v6, v2

    add-int/lit8 v2, v0, 0x5

    .line 878
    aput-byte v13, v6, v2

    add-int/lit8 v2, v0, 0x6

    .line 879
    aput-byte v15, v6, v2

    add-int/lit8 v2, v0, 0x7

    .line 881
    aput-byte v15, v6, v2

    add-int/lit8 v2, v0, 0x8

    .line 882
    aput-byte v15, v6, v2

    add-int/lit8 v2, v0, 0x9

    .line 883
    aput-byte v13, v6, v2

    add-int/lit8 v2, v0, 0xa

    int-to-byte v4, v3

    .line 884
    aput-byte v4, v6, v2

    if-eqz v3, :cond_12

    if-eq v3, v12, :cond_12

    .line 886
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const/16 v4, 0xb

    add-int/2addr v0, v4

    sub-int/2addr v3, v12

    invoke-static {v2, v15, v6, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_12
    move-object v3, v6

    goto/16 :goto_23

    .line 795
    :cond_13
    :goto_c
    iget-object v0, v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->TAG:Ljava/lang/String;

    const-string v2, "formartDashBoardInfoDataBytes() USB MediaInfo.title is null or AbsDashBoardInfo is not MediaInfo"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2

    .line 996
    :sswitch_1
    instance-of v0, v2, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;

    if-nez v0, :cond_14

    .line 997
    iget-object v0, v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->TAG:Ljava/lang/String;

    const-string v2, "formartDashBoardInfoDataBytes() BT BtInfo is null or AbsDashBoardInfo is not BtInfo"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2

    .line 1000
    :cond_14
    move-object v0, v2

    check-cast v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;

    .line 1001
    iget-object v2, v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mBtCallNumber:Ljava/lang/String;

    .line 1002
    iget-object v3, v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mBtName:Ljava/lang/String;

    if-eqz v2, :cond_15

    const-string v4, ""

    .line 1003
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 1004
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_15
    if-eqz v2, :cond_16

    .line 1006
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    goto :goto_d

    :cond_16
    new-array v4, v15, [B

    :goto_d
    if-eqz v4, :cond_17

    .line 1007
    array-length v5, v4

    goto :goto_e

    :cond_17
    move v5, v15

    :goto_e
    const/16 v6, 0x32

    if-lt v5, v6, :cond_1a

    .line 1009
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x15

    invoke-virtual {v2, v15, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "... "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 1010
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    goto :goto_f

    :cond_18
    new-array v2, v15, [B

    :goto_f
    move-object v4, v2

    if-eqz v4, :cond_19

    .line 1011
    array-length v2, v4

    move v5, v2

    goto :goto_10

    :cond_19
    move v5, v15

    :cond_1a
    :goto_10
    if-eqz v3, :cond_1f

    const-string v2, ""

    .line 1013
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1014
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 1015
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    goto :goto_11

    :cond_1b
    new-array v3, v15, [B

    :goto_11
    move-object v4, v3

    if-eqz v4, :cond_1c

    .line 1016
    array-length v3, v4

    move v5, v3

    goto :goto_12

    :cond_1c
    move v5, v15

    :goto_12
    const/16 v3, 0x32

    if-lt v5, v3, :cond_1f

    .line 1018
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x15

    invoke-virtual {v2, v15, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "... "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 1019
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    goto :goto_13

    :cond_1d
    new-array v2, v15, [B

    :goto_13
    move-object v4, v2

    if-eqz v4, :cond_1e

    .line 1020
    array-length v2, v4

    move v5, v2

    goto :goto_14

    :cond_1e
    move v5, v15

    :cond_1f
    :goto_14
    add-int/lit8 v2, v5, 0x4

    .line 1025
    iget-object v3, v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "callStrLen= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x3

    add-int v11, v3, v2

    .line 1026
    new-array v3, v11, [B

    .line 1027
    iget-object v6, v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->mDashBoardType:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    invoke-virtual {v6}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;->ordinal()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v3, v15

    const/4 v6, 0x1

    .line 1028
    aput-byte v13, v3, v6

    int-to-byte v2, v2

    .line 1029
    aput-byte v2, v3, v12

    .line 1033
    iget-byte v2, v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mPhoneSourceType:B

    if-eqz v2, :cond_21

    iget-byte v2, v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mPhoneSourceType:B

    if-ne v2, v6, :cond_20

    goto :goto_15

    .line 1052
    :cond_20
    iget-byte v2, v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mBtStatus:B

    packed-switch v2, :pswitch_data_0

    goto :goto_16

    :pswitch_0
    const/4 v2, 0x3

    const/16 v17, 0x8

    goto :goto_18

    :pswitch_1
    const/4 v2, 0x3

    const/16 v17, 0x1

    goto :goto_18

    .line 1034
    :cond_21
    :goto_15
    iget-byte v2, v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mBtStatus:B

    packed-switch v2, :pswitch_data_1

    :goto_16
    :pswitch_2
    const/4 v2, 0x3

    const/16 v17, 0x3

    goto :goto_18

    :pswitch_3
    move/from16 v17, v12

    goto :goto_17

    :pswitch_4
    move/from16 v17, v13

    :goto_17
    const/4 v2, 0x3

    goto :goto_18

    :pswitch_5
    const/4 v2, 0x3

    const/16 v17, 0xb

    .line 1068
    :goto_18
    aput-byte v17, v3, v2

    .line 1069
    iget-boolean v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mIsMute:Z

    int-to-byte v0, v0

    aput-byte v0, v3, v13

    const/4 v2, 0x5

    .line 1070
    aput-byte v13, v3, v2

    int-to-byte v0, v5

    .line 1071
    aput-byte v0, v3, v8

    if-lez v5, :cond_2e

    const/4 v2, 0x7

    .line 1073
    invoke-static {v4, v15, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_23

    .line 891
    :sswitch_2
    instance-of v0, v2, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;

    if-nez v0, :cond_22

    .line 892
    iget-object v0, v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->TAG:Ljava/lang/String;

    const-string v2, "formartDashBoardInfoDataBytes() AbsDashBoardInfo is not RadioInfo"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2

    .line 895
    :cond_22
    move-object v0, v2

    check-cast v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;

    .line 898
    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->mAbsInfo:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;

    if-eqz v2, :cond_25

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->mAbsInfo:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;

    instance-of v2, v2, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;

    if-nez v2, :cond_23

    goto :goto_19

    .line 902
    :cond_23
    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->mAbsInfo:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;

    check-cast v2, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;

    .line 903
    invoke-virtual {v2, v0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->isInfoDiff(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 904
    invoke-virtual {v2, v0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->setInfoDiff(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;)V

    goto :goto_1a

    :cond_24
    move v2, v15

    goto :goto_1b

    .line 899
    :cond_25
    :goto_19
    new-instance v2, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;

    invoke-direct {v2}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;-><init>()V

    sput-object v2, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->mAbsInfo:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;

    :goto_1a
    const/4 v2, 0x1

    .line 908
    :goto_1b
    iget-object v3, v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "formartDashBoardInfoDataBytes() isRadioUpdate ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x11

    const/16 v4, 0x14

    .line 912
    new-array v4, v4, [B

    .line 913
    iget-object v5, v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->mDashBoardType:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    invoke-virtual {v5}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;->ordinal()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v4, v15

    const/4 v5, 0x1

    const/4 v6, 0x3

    aput-byte v6, v4, v5

    int-to-byte v3, v3

    aput-byte v3, v4, v12

    int-to-byte v2, v2

    aput-byte v2, v4, v6

    aput-byte v15, v4, v13

    .line 920
    iget-byte v2, v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->mBandType:B

    packed-switch v2, :pswitch_data_2

    :pswitch_6
    move v2, v15

    goto :goto_1c

    :pswitch_7
    const/4 v2, 0x1

    :goto_1c
    const/16 v3, 0x10

    if-eqz v2, :cond_26

    const/4 v5, 0x5

    aput-byte v3, v4, v5

    const/4 v6, 0x1

    goto :goto_1d

    :cond_26
    const/4 v5, 0x5

    const/4 v6, 0x1

    aput-byte v6, v4, v5

    :goto_1d
    aput-byte v6, v4, v8

    .line 941
    iget-boolean v5, v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->isPrefebIndex:Z

    if-eqz v5, :cond_27

    const/4 v5, 0x7

    aput-byte v6, v4, v5

    .line 943
    iget-byte v5, v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->mPrefebIndex:B

    const/16 v6, 0x8

    aput-byte v5, v4, v6

    goto :goto_1e

    :cond_27
    const/4 v5, 0x7

    const/16 v6, 0x8

    aput-byte v15, v4, v5

    aput-byte v15, v4, v6

    :goto_1e
    const v5, 0x186a0

    if-eqz v2, :cond_2a

    .line 954
    iget v6, v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->mFrequency:I

    rem-int/2addr v6, v5

    div-int/lit16 v6, v6, 0x3e8

    .line 955
    iget v7, v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->mFrequency:I

    rem-int/2addr v7, v5

    div-int/lit8 v7, v7, 0x64

    const/16 v8, 0xa

    rem-int/2addr v7, v8

    if-nez v6, :cond_28

    const/16 v6, 0xf0

    if-nez v7, :cond_29

    const/16 v7, 0xf

    goto :goto_1f

    :cond_28
    shl-int/2addr v6, v13

    :cond_29
    :goto_1f
    or-int/2addr v6, v7

    .line 965
    iget v7, v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->mFrequency:I

    rem-int/2addr v7, v5

    rem-int/lit8 v7, v7, 0x64

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 966
    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->mFrequency:I

    rem-int/lit16 v0, v0, 0x2710

    const/16 v7, 0xa

    rem-int/2addr v0, v7

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v7, 0xa

    goto :goto_20

    .line 970
    :cond_2a
    iget v6, v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->mFrequency:I

    const v7, 0xf4240

    rem-int/2addr v6, v7

    div-int/2addr v6, v5

    if-nez v6, :cond_2b

    const/16 v6, 0xf

    :cond_2b
    or-int/lit16 v6, v6, 0xf0

    .line 975
    iget v5, v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->mFrequency:I

    const v7, 0xf4240

    rem-int/2addr v5, v7

    div-int/lit16 v5, v5, 0x3e8

    rem-int/lit8 v5, v5, 0x64

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 976
    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->mFrequency:I

    const v7, 0xf4240

    rem-int/2addr v0, v7

    div-int/lit8 v0, v0, 0x64

    const/16 v7, 0xa

    rem-int/2addr v0, v7

    add-int/2addr v0, v7

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    :goto_20
    int-to-byte v6, v6

    const/16 v8, 0x9

    aput-byte v6, v4, v8

    int-to-byte v5, v5

    aput-byte v5, v4, v7

    int-to-byte v0, v0

    const/16 v5, 0xb

    aput-byte v0, v4, v5

    const/16 v0, 0xc

    const/16 v5, -0x10

    aput-byte v5, v4, v0

    if-eqz v2, :cond_2c

    const/16 v0, 0xd

    aput-byte v12, v4, v0

    goto :goto_21

    :cond_2c
    const/16 v0, 0xd

    const/4 v2, 0x1

    aput-byte v2, v4, v0

    :goto_21
    const/16 v0, 0xe

    aput-byte v13, v4, v0

    const/16 v0, 0xf

    aput-byte v15, v4, v0

    aput-byte v15, v4, v3

    const/16 v0, 0x11

    aput-byte v15, v4, v0

    const/16 v0, 0x12

    aput-byte v13, v4, v0

    const/16 v0, 0x13

    aput-byte v15, v4, v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-object v3, v4

    goto :goto_23

    :cond_2d
    :goto_22
    const/4 v3, 0x0

    :cond_2e
    :goto_23
    return-object v3

    :catch_3
    move-exception v0

    .line 1080
    iget-object v1, v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "formartDashBoardInfoDataBytes() Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x4 -> :sswitch_1
        0x5 -> :sswitch_0
        0x9 -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public getDashBoardItemUnitByteArray(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$SetItemUnitInfo;)[B
    .locals 6

    const/16 v0, 0xc

    const/4 v1, 0x0

    .line 1093
    :try_start_0
    new-array v0, v0, [B

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x5

    aput-byte v4, v0, v3

    const/4 v3, 0x4

    aput-byte v3, v0, v2

    const/4 v2, 0x2

    .line 1100
    iget v5, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$SetItemUnitInfo;->mUnitFuelConsumption:I

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    const/4 v2, 0x3

    .line 1101
    iget v5, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$SetItemUnitInfo;->mUnitTemperature:I

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    .line 1102
    iget v2, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$SetItemUnitInfo;->mUnitPressure:I

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    .line 1103
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$SetItemUnitInfo;->mUnitDistance:I

    int-to-byte p1, p1

    aput-byte p1, v0, v4

    .line 1104
    iget-object p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/yftech/vehicle/internal/utils/StringFormart;->byte2hex([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 1107
    iget-object p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->TAG:Ljava/lang/String;

    const-string v0, "setDashBoardItemUnit()  Exception "

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public getDashBoardLanguageByteArray(I)[B
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1121
    :try_start_0
    iget-object p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->TAG:Ljava/lang/String;

    const-string v1, "setDashBoardLanguage() language ==0 unknown ! "

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/16 v1, 0xc

    .line 1124
    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x6

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    aput-byte v2, v1, v2

    const/4 v4, 0x2

    if-eq p1, v2, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    aput-byte v3, v1, v4

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x5

    aput-byte p1, v1, v4

    goto :goto_0

    :cond_1
    aput-byte v2, v1, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    .line 1142
    :goto_1
    iget-object p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->TAG:Ljava/lang/String;

    const-string v1, "setDashBoardLanguage()  Exception "

    invoke-static {p0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDashBoardMsgDataByteArray(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardMsg;)[B
    .locals 9

    if-nez p1, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->TAG:Ljava/lang/String;

    const-string v1, "getDashBoardMsgDataByteArray() msg is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    :cond_0
    :try_start_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;->MCU_CA1105:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    iget-object v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->mDashBoardType:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    invoke-virtual {v0, v1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xa

    .line 1155
    new-array v0, v0, [B

    .line 1157
    iget-object v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->mDashBoardType:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    invoke-virtual {v1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;->ordinal()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/16 v1, -0x20

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    const/4 v1, 0x2

    aput-byte v3, v0, v1

    .line 1161
    instance-of v1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardMsgAudio;

    const/16 v3, 0x9

    const/4 v4, 0x6

    const/4 v5, 0x3

    const/4 v6, 0x5

    const/16 v7, 0x8

    const/4 v8, 0x4

    if-eqz v1, :cond_6

    aput-byte v7, v0, v5

    aput-byte v6, v0, v8

    aput-byte v2, v0, v6

    const/16 v1, 0x13

    aput-byte v1, v0, v4

    .line 1168
    check-cast p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardMsgAudio;

    .line 1169
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardMsgAudio;->audioState:I

    const/4 v1, 0x7

    if-eqz p1, :cond_5

    const/16 v4, 0x26

    if-eq p1, v4, :cond_4

    const/16 v4, 0x29

    if-eq p1, v4, :cond_3

    const/16 v4, 0x37

    if-eq p1, v4, :cond_2

    const/16 v4, 0x3a

    if-eq p1, v4, :cond_1

    const/4 p1, -0x1

    aput-byte p1, v0, v1

    goto :goto_0

    :cond_1
    aput-byte v4, v0, v1

    goto :goto_0

    :cond_2
    aput-byte v4, v0, v1

    goto :goto_0

    :cond_3
    aput-byte v4, v0, v1

    goto :goto_0

    :cond_4
    aput-byte v4, v0, v1

    goto :goto_0

    :cond_5
    aput-byte v2, v0, v4

    aput-byte v2, v0, v1

    :goto_0
    aput-byte v8, v0, v7

    aput-byte v2, v0, v3

    goto :goto_1

    .line 1192
    :cond_6
    instance-of v1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardMsgVoice;

    if-eqz v1, :cond_7

    .line 1194
    check-cast p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardMsgVoice;

    aput-byte v3, v0, v5

    aput-byte v8, v0, v8

    .line 1197
    iget-byte p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardMsgVoice;->voiceAction:B

    aput-byte p1, v0, v6

    aput-byte v7, v0, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_1
    return-object v0

    :catch_0
    move-exception p1

    .line 1205
    iget-object p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->TAG:Ljava/lang/String;

    const-string v0, "getDashBoardMsgDataByteArray()  Exception "

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDashBoardSourceDataByteArray(ILcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;)[B
    .locals 3

    if-nez p2, :cond_0

    .line 695
    iget-object v0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->TAG:Ljava/lang/String;

    const-string v1, "getDashBoardSourceDataByteArray() info is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 699
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->getDashBoardSourceFormatInfo(ILcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;)Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;

    move-result-object p2

    .line 701
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;->MCU_CA1105:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    iget-object v2, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->mDashBoardType:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    invoke-virtual {v1, v2}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sparse-switch p1, :sswitch_data_0

    const/16 p1, 0x14

    const/16 p2, 0x17

    .line 727
    new-array p2, p2, [B

    goto :goto_0

    .line 713
    :sswitch_0
    instance-of p1, p2, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;

    if-eqz p1, :cond_1

    .line 714
    check-cast p2, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;

    const-string p1, "--"

    .line 715
    iput-object p1, p2, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->title:Ljava/lang/String;

    const-string p1, "--"

    .line 716
    iput-object p1, p2, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->artist:Ljava/lang/String;

    .line 717
    invoke-virtual {p0, p2}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->getDashBoardInfoDataByteArray(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;)[B

    move-result-object p1

    goto :goto_1

    .line 709
    :sswitch_1
    invoke-virtual {p0, p2}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->getDashBoardInfoDataByteArray(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;)[B

    move-result-object p1

    goto :goto_1

    :goto_0
    const/4 v1, 0x0

    .line 728
    iget-object v2, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->mDashBoardType:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    invoke-virtual {v2}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput-byte v2, p2, v1

    int-to-byte p1, p1

    aput-byte p1, p2, v2

    .line 731
    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->mAbsInfo:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p2

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    return-object p1

    :catch_0
    move-exception p1

    .line 737
    iget-object p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->TAG:Ljava/lang/String;

    const-string p2, "getDashBoardSourceDataByteArray() Exception "

    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0x9 -> :sswitch_1
        0xc -> :sswitch_0
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public isSendMediaInfoOnly()Z
    .locals 1

    .line 623
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;->MCU_CA1105:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    iget-object p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardDataFormater;->mDashBoardType:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardType;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
