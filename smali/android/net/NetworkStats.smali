.class public Landroid/net/NetworkStats;
.super Ljava/lang/Object;
.source "NetworkStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkStats$NonMonotonicObserver;,
        Landroid/net/NetworkStats$Entry;
    }
.end annotation


# static fields
.field private static final CLATD_INTERFACE_PREFIX:Ljava/lang/String; = "v4-"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_NETWORK_ALL:I = -0x1

.field public static final DEFAULT_NETWORK_NO:I = 0x0

.field public static final DEFAULT_NETWORK_YES:I = 0x1

.field public static final IFACE_ALL:Ljava/lang/String; = null

.field public static final INTERFACES_ALL:[Ljava/lang/String; = null

.field private static final IPV4V6_HEADER_DELTA:I = 0x14

.field public static final METERED_ALL:I = -0x1

.field public static final METERED_NO:I = 0x0

.field public static final METERED_YES:I = 0x1

.field public static final ROAMING_ALL:I = -0x1

.field public static final ROAMING_NO:I = 0x0

.field public static final ROAMING_YES:I = 0x1

.field public static final SET_ALL:I = -0x1

.field public static final SET_DBG_VPN_IN:I = 0x3e9

.field public static final SET_DBG_VPN_OUT:I = 0x3ea

.field public static final SET_DEBUG_START:I = 0x3e8

.field public static final SET_DEFAULT:I = 0x0

.field public static final SET_FOREGROUND:I = 0x1

.field public static final STATS_PER_IFACE:I = 0x0

.field public static final STATS_PER_UID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NetworkStats"

.field public static final TAG_ALL:I = -0x1

.field public static final TAG_NONE:I = 0x0

.field public static final UID_ALL:I = -0x1


# instance fields
.field private capacity:I

.field private defaultNetwork:[I

.field private elapsedRealtime:J

.field private iface:[Ljava/lang/String;

.field private metered:[I

.field private operations:[J

.field private roaming:[I

.field private rxBytes:[J

.field private rxPackets:[J

.field private set:[I

.field private size:I

.field private tag:[I

.field private txBytes:[J

.field private txPackets:[J

.field private uid:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1088
    new-instance v0, Landroid/net/NetworkStats$1;

    invoke-direct {v0}, Landroid/net/NetworkStats$1;-><init>()V

    sput-object v0, Landroid/net/NetworkStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-wide p1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    const/4 p1, 0x0

    .line 245
    iput p1, p0, Landroid/net/NetworkStats;->size:I

    if-lez p3, :cond_0

    .line 247
    iput p3, p0, Landroid/net/NetworkStats;->capacity:I

    .line 248
    new-array p1, p3, [Ljava/lang/String;

    iput-object p1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 249
    new-array p1, p3, [I

    iput-object p1, p0, Landroid/net/NetworkStats;->uid:[I

    .line 250
    new-array p1, p3, [I

    iput-object p1, p0, Landroid/net/NetworkStats;->set:[I

    .line 251
    new-array p1, p3, [I

    iput-object p1, p0, Landroid/net/NetworkStats;->tag:[I

    .line 252
    new-array p1, p3, [I

    iput-object p1, p0, Landroid/net/NetworkStats;->metered:[I

    .line 253
    new-array p1, p3, [I

    iput-object p1, p0, Landroid/net/NetworkStats;->roaming:[I

    .line 254
    new-array p1, p3, [I

    iput-object p1, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    .line 255
    new-array p1, p3, [J

    iput-object p1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 256
    new-array p1, p3, [J

    iput-object p1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 257
    new-array p1, p3, [J

    iput-object p1, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 258
    new-array p1, p3, [J

    iput-object p1, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 259
    new-array p1, p3, [J

    iput-object p1, p0, Landroid/net/NetworkStats;->operations:[J

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkStats;->clear()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkStats;->size:I

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkStats;->capacity:I

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->metered:[I

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->roaming:[I

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p1

    iput-object p1, p0, Landroid/net/NetworkStats;->operations:[J

    return-void
.end method

.method private addTrafficToApplications(ILjava/lang/String;Ljava/lang/String;Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 9

    .line 1195
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1196
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1197
    iput-object p3, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    const/4 p3, 0x0

    .line 1198
    :goto_0
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    if-ge p3, v2, :cond_6

    .line 1201
    iget-object v2, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-static {v2, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/net/NetworkStats;->uid:[I

    aget v2, v2, p3

    if-eq v2, p1, :cond_5

    .line 1202
    iget-wide v2, p4, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1203
    iget-wide v2, p5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-object v6, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v7, v6, p3

    mul-long/2addr v2, v7

    iget-wide v6, p4, Landroid/net/NetworkStats$Entry;->rxBytes:J

    div-long/2addr v2, v6

    iput-wide v2, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    goto :goto_1

    .line 1205
    :cond_0
    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 1207
    :goto_1
    iget-wide v2, p4, Landroid/net/NetworkStats$Entry;->rxPackets:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 1208
    iget-wide v2, p5, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-object v6, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v7, v6, p3

    mul-long/2addr v2, v7

    iget-wide v6, p4, Landroid/net/NetworkStats$Entry;->rxPackets:J

    div-long/2addr v2, v6

    iput-wide v2, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    goto :goto_2

    .line 1210
    :cond_1
    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 1212
    :goto_2
    iget-wide v2, p4, Landroid/net/NetworkStats$Entry;->txBytes:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 1213
    iget-wide v2, p5, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-object v6, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v7, v6, p3

    mul-long/2addr v2, v7

    iget-wide v6, p4, Landroid/net/NetworkStats$Entry;->txBytes:J

    div-long/2addr v2, v6

    iput-wide v2, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    goto :goto_3

    .line 1215
    :cond_2
    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 1217
    :goto_3
    iget-wide v2, p4, Landroid/net/NetworkStats$Entry;->txPackets:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 1218
    iget-wide v2, p5, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-object v6, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v7, v6, p3

    mul-long/2addr v2, v7

    iget-wide v6, p4, Landroid/net/NetworkStats$Entry;->txPackets:J

    div-long/2addr v2, v6

    iput-wide v2, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    goto :goto_4

    .line 1220
    :cond_3
    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1222
    :goto_4
    iget-wide v2, p4, Landroid/net/NetworkStats$Entry;->operations:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 1223
    iget-wide v2, p5, Landroid/net/NetworkStats$Entry;->operations:J

    iget-object v4, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v5, v4, p3

    mul-long/2addr v2, v5

    iget-wide v4, p4, Landroid/net/NetworkStats$Entry;->operations:J

    div-long/2addr v2, v4

    iput-wide v2, v1, Landroid/net/NetworkStats$Entry;->operations:J

    goto :goto_5

    .line 1226
    :cond_4
    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->operations:J

    .line 1228
    :goto_5
    iget-object v2, p0, Landroid/net/NetworkStats;->uid:[I

    aget v2, v2, p3

    iput v2, v1, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1229
    iget-object v2, p0, Landroid/net/NetworkStats;->tag:[I

    aget v2, v2, p3

    iput v2, v1, Landroid/net/NetworkStats$Entry;->tag:I

    .line 1230
    iget-object v2, p0, Landroid/net/NetworkStats;->set:[I

    aget v2, v2, p3

    iput v2, v1, Landroid/net/NetworkStats$Entry;->set:I

    .line 1231
    iget-object v2, p0, Landroid/net/NetworkStats;->metered:[I

    aget v2, v2, p3

    iput v2, v1, Landroid/net/NetworkStats$Entry;->metered:I

    .line 1232
    iget-object v2, p0, Landroid/net/NetworkStats;->roaming:[I

    aget v2, v2, p3

    iput v2, v1, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 1233
    iget-object v2, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    aget v2, v2, p3

    iput v2, v1, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    .line 1234
    invoke-virtual {p0, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 1235
    iget-object v2, p0, Landroid/net/NetworkStats;->tag:[I

    aget v2, v2, p3

    if-nez v2, :cond_5

    .line 1236
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats$Entry;->add(Landroid/net/NetworkStats$Entry;)V

    const/16 v2, 0x3e9

    .line 1238
    iput v2, v1, Landroid/net/NetworkStats$Entry;->set:I

    .line 1239
    invoke-virtual {p0, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    :cond_5
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    :cond_6
    return-object v0
.end method

.method public static apply464xlatAdjustments(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Ljava/util/Map;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 789
    new-instance v1, Landroid/net/NetworkStats;

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v2

    const-wide/16 v3, 0x0

    invoke-direct {v1, v3, v4, v2}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 793
    new-instance v2, Landroid/net/NetworkStats$Entry;

    move-object v5, v2

    sget-object v6, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    invoke-direct/range {v5 .. v22}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 795
    :goto_0
    iget v5, v0, Landroid/net/NetworkStats;->size:I

    if-ge v4, v5, :cond_3

    .line 796
    invoke-virtual {v0, v4, v3}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v3

    .line 797
    iget-object v5, v3, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v3, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    const-string/jumbo v6, "v4-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 800
    :cond_0
    iget-object v5, v3, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    move-object/from16 v6, p2

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_1

    goto :goto_2

    .line 805
    :cond_1
    iput-object v5, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 806
    iget-wide v7, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v9, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const-wide/16 v11, 0x14

    mul-long/2addr v9, v11

    add-long/2addr v7, v9

    neg-long v7, v7

    iput-wide v7, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 807
    iget-wide v7, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v9, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    mul-long/2addr v9, v11

    add-long/2addr v7, v9

    neg-long v7, v7

    iput-wide v7, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 808
    iget-wide v7, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    neg-long v7, v7

    iput-wide v7, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 809
    iget-wide v7, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    neg-long v7, v7

    iput-wide v7, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 810
    invoke-virtual {v1, v2}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 816
    iget-wide v7, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v9, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    mul-long/2addr v9, v11

    add-long/2addr v7, v9

    iput-wide v7, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 817
    iget-wide v7, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v9, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    mul-long/2addr v9, v11

    add-long/2addr v7, v9

    iput-wide v7, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 818
    invoke-direct {v0, v4, v3}, Landroid/net/NetworkStats;->setValues(ILandroid/net/NetworkStats$Entry;)V

    goto :goto_2

    :cond_2
    :goto_1
    move-object/from16 v6, p2

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v3, p0

    .line 821
    invoke-virtual {v3, v1}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    return-void
.end method

.method private deductTrafficFromVpnApp(ILjava/lang/String;Landroid/net/NetworkStats$Entry;)V
    .locals 10

    .line 1248
    iput p1, p3, Landroid/net/NetworkStats$Entry;->uid:I

    const/16 v0, 0x3ea

    .line 1249
    iput v0, p3, Landroid/net/NetworkStats$Entry;->set:I

    const/4 v0, 0x0

    .line 1250
    iput v0, p3, Landroid/net/NetworkStats$Entry;->tag:I

    .line 1251
    iput-object p2, p3, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    const/4 v0, -0x1

    .line 1252
    iput v0, p3, Landroid/net/NetworkStats$Entry;->metered:I

    .line 1253
    iput v0, p3, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 1254
    iput v0, p3, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    .line 1255
    invoke-virtual {p0, p3}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p2

    move v3, p1

    .line 1264
    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;IIIIII)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1267
    invoke-static {v1, p0, p3}, Landroid/net/NetworkStats;->tunSubtract(ILandroid/net/NetworkStats;Landroid/net/NetworkStats$Entry;)V

    :cond_0
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p2

    move v4, p1

    .line 1270
    invoke-virtual/range {v2 .. v9}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;IIIIII)I

    move-result p1

    if-eq p1, v0, :cond_1

    .line 1273
    invoke-static {p1, p0, p3}, Landroid/net/NetworkStats;->tunSubtract(ILandroid/net/NetworkStats;Landroid/net/NetworkStats$Entry;)V

    :cond_1
    return-void
.end method

.method public static defaultNetworkToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "YES"

    return-object p0

    :pswitch_1
    const-string p0, "NO"

    return-object p0

    :pswitch_2
    const-string p0, "ALL"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats$Entry;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;IZ)",
            "Landroid/net/NetworkStats$Entry;"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 626
    :cond_0
    new-instance p1, Landroid/net/NetworkStats$Entry;

    invoke-direct {p1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 628
    :goto_0
    sget-object v0, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v0, p1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 629
    iput p3, p1, Landroid/net/NetworkStats$Entry;->uid:I

    const/4 v0, -0x1

    .line 630
    iput v0, p1, Landroid/net/NetworkStats$Entry;->set:I

    const/4 v1, 0x0

    .line 631
    iput v1, p1, Landroid/net/NetworkStats$Entry;->tag:I

    .line 632
    iput v0, p1, Landroid/net/NetworkStats$Entry;->metered:I

    .line 633
    iput v0, p1, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 634
    iput v0, p1, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    const-wide/16 v2, 0x0

    .line 635
    iput-wide v2, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 636
    iput-wide v2, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 637
    iput-wide v2, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 638
    iput-wide v2, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 639
    iput-wide v2, p1, Landroid/net/NetworkStats$Entry;->operations:J

    move v2, v1

    .line 641
    :goto_1
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v3, :cond_7

    const/4 v3, 0x1

    if-eq p3, v0, :cond_2

    .line 642
    iget-object v4, p0, Landroid/net/NetworkStats;->uid:[I

    aget v4, v4, v2

    if-ne p3, v4, :cond_1

    goto :goto_2

    :cond_1
    move v4, v1

    goto :goto_3

    :cond_2
    :goto_2
    move v4, v3

    :goto_3
    if-eqz p2, :cond_4

    .line 643
    iget-object v5, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_4

    :cond_3
    move v3, v1

    :cond_4
    :goto_4
    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    .line 647
    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v2

    if-eqz v3, :cond_5

    if-nez p4, :cond_5

    goto :goto_5

    .line 649
    :cond_5
    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-object v5, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v6, v5, v2

    add-long/2addr v3, v6

    iput-wide v3, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 650
    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-object v5, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v6, v5, v2

    add-long/2addr v3, v6

    iput-wide v3, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 651
    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-object v5, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v6, v5, v2

    add-long/2addr v3, v6

    iput-wide v3, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 652
    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-object v5, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v6, v5, v2

    add-long/2addr v3, v6

    iput-wide v3, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 653
    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->operations:J

    iget-object v5, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v6, v5, v2

    add-long/2addr v3, v6

    iput-wide v3, p1, Landroid/net/NetworkStats$Entry;->operations:J

    :cond_6
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    return-object p1
.end method

.method public static meteredToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "YES"

    return-object p0

    :pswitch_1
    const-string p0, "NO"

    return-object p0

    :pswitch_2
    const-string p0, "ALL"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static roamingToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "YES"

    return-object p0

    :pswitch_1
    const-string p0, "NO"

    return-object p0

    :pswitch_2
    const-string p0, "ALL"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setMatches(II)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    const/16 p0, 0x3e8

    if-ge p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setToCheckinString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const-string/jumbo p0, "unk"

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "vpnout"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "vpnin"

    return-object p0

    :pswitch_2
    const-string p0, "fg"

    return-object p0

    :pswitch_3
    const-string p0, "def"

    return-object p0

    :pswitch_4
    const-string p0, "all"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "DBG_VPN_OUT"

    return-object p0

    :pswitch_1
    const-string p0, "DBG_VPN_IN"

    return-object p0

    :pswitch_2
    const-string p0, "FOREGROUND"

    return-object p0

    :pswitch_3
    const-string p0, "DEFAULT"

    return-object p0

    :pswitch_4
    const-string p0, "ALL"

    return-object p0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setValues(ILandroid/net/NetworkStats$Entry;)V
    .locals 3

    .line 385
    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    iget-object v1, p2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    aput-object v1, v0, p1

    .line 386
    iget-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    iget v1, p2, Landroid/net/NetworkStats$Entry;->uid:I

    aput v1, v0, p1

    .line 387
    iget-object v0, p0, Landroid/net/NetworkStats;->set:[I

    iget v1, p2, Landroid/net/NetworkStats$Entry;->set:I

    aput v1, v0, p1

    .line 388
    iget-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    iget v1, p2, Landroid/net/NetworkStats$Entry;->tag:I

    aput v1, v0, p1

    .line 389
    iget-object v0, p0, Landroid/net/NetworkStats;->metered:[I

    iget v1, p2, Landroid/net/NetworkStats$Entry;->metered:I

    aput v1, v0, p1

    .line 390
    iget-object v0, p0, Landroid/net/NetworkStats;->roaming:[I

    iget v1, p2, Landroid/net/NetworkStats$Entry;->roaming:I

    aput v1, v0, p1

    .line 391
    iget-object v0, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    iget v1, p2, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    aput v1, v0, p1

    .line 392
    iget-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    iget-wide v1, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    aput-wide v1, v0, p1

    .line 393
    iget-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    iget-wide v1, p2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    aput-wide v1, v0, p1

    .line 394
    iget-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    iget-wide v1, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    aput-wide v1, v0, p1

    .line 395
    iget-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    iget-wide v1, p2, Landroid/net/NetworkStats$Entry;->txPackets:J

    aput-wide v1, v0, p1

    .line 396
    iget-object p0, p0, Landroid/net/NetworkStats;->operations:[J

    iget-wide v0, p2, Landroid/net/NetworkStats$Entry;->operations:J

    aput-wide v0, p0, p1

    return-void
.end method

.method public static subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats$NonMonotonicObserver<",
            "TC;>;TC;)",
            "Landroid/net/NetworkStats;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 689
    invoke-static {p0, p1, p2, p3, v0}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0
.end method

.method public static subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats$NonMonotonicObserver<",
            "TC;>;TC;",
            "Landroid/net/NetworkStats;",
            ")",
            "Landroid/net/NetworkStats;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v15, p1

    move-object/from16 v7, p4

    .line 706
    iget-wide v0, v6, Landroid/net/NetworkStats;->elapsedRealtime:J

    iget-wide v2, v15, Landroid/net/NetworkStats;->elapsedRealtime:J

    sub-long/2addr v0, v2

    const-wide/16 v13, 0x0

    cmp-long v2, v0, v13

    if-gez v2, :cond_1

    if-eqz p2, :cond_0

    const/4 v2, -0x1

    const/4 v4, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    .line 709
    invoke-interface/range {v0 .. v5}, Landroid/net/NetworkStats$NonMonotonicObserver;->foundNonMonotonic(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;ILjava/lang/Object;)V

    :cond_0
    move-wide v0, v13

    .line 715
    :cond_1
    new-instance v5, Landroid/net/NetworkStats$Entry;

    invoke-direct {v5}, Landroid/net/NetworkStats$Entry;-><init>()V

    const/4 v2, 0x0

    if-eqz v7, :cond_2

    .line 717
    iget v3, v7, Landroid/net/NetworkStats;->capacity:I

    iget v4, v6, Landroid/net/NetworkStats;->size:I

    if-lt v3, v4, :cond_2

    .line 719
    iput v2, v7, Landroid/net/NetworkStats;->size:I

    .line 720
    iput-wide v0, v7, Landroid/net/NetworkStats;->elapsedRealtime:J

    move-object v4, v7

    goto :goto_0

    .line 722
    :cond_2
    new-instance v3, Landroid/net/NetworkStats;

    iget v4, v6, Landroid/net/NetworkStats;->size:I

    invoke-direct {v3, v0, v1, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    move-object v4, v3

    :goto_0
    move v3, v2

    .line 724
    :goto_1
    iget v0, v6, Landroid/net/NetworkStats;->size:I

    if-ge v3, v0, :cond_6

    .line 725
    iget-object v0, v6, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v0, v0, v3

    iput-object v0, v5, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 726
    iget-object v0, v6, Landroid/net/NetworkStats;->uid:[I

    aget v0, v0, v3

    iput v0, v5, Landroid/net/NetworkStats$Entry;->uid:I

    .line 727
    iget-object v0, v6, Landroid/net/NetworkStats;->set:[I

    aget v0, v0, v3

    iput v0, v5, Landroid/net/NetworkStats$Entry;->set:I

    .line 728
    iget-object v0, v6, Landroid/net/NetworkStats;->tag:[I

    aget v0, v0, v3

    iput v0, v5, Landroid/net/NetworkStats$Entry;->tag:I

    .line 729
    iget-object v0, v6, Landroid/net/NetworkStats;->metered:[I

    aget v0, v0, v3

    iput v0, v5, Landroid/net/NetworkStats$Entry;->metered:I

    .line 730
    iget-object v0, v6, Landroid/net/NetworkStats;->roaming:[I

    aget v0, v0, v3

    iput v0, v5, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 731
    iget-object v0, v6, Landroid/net/NetworkStats;->defaultNetwork:[I

    aget v0, v0, v3

    iput v0, v5, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    .line 732
    iget-object v0, v6, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v1, v0, v3

    iput-wide v1, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 733
    iget-object v0, v6, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v1, v0, v3

    iput-wide v1, v5, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 734
    iget-object v0, v6, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v1, v0, v3

    iput-wide v1, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 735
    iget-object v0, v6, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v1, v0, v3

    iput-wide v1, v5, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 736
    iget-object v0, v6, Landroid/net/NetworkStats;->operations:[J

    aget-wide v1, v0, v3

    iput-wide v1, v5, Landroid/net/NetworkStats$Entry;->operations:J

    .line 739
    iget-object v8, v5, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget v9, v5, Landroid/net/NetworkStats$Entry;->uid:I

    iget v10, v5, Landroid/net/NetworkStats$Entry;->set:I

    iget v11, v5, Landroid/net/NetworkStats$Entry;->tag:I

    iget v12, v5, Landroid/net/NetworkStats$Entry;->metered:I

    iget v0, v5, Landroid/net/NetworkStats$Entry;->roaming:I

    iget v1, v5, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    move-object/from16 v7, p1

    move v13, v0

    move v14, v1

    move-object v2, v15

    move v15, v3

    invoke-virtual/range {v7 .. v15}, Landroid/net/NetworkStats;->findIndexHinted(Ljava/lang/String;IIIIIII)I

    move-result v7

    const/4 v0, -0x1

    if-eq v7, v0, :cond_3

    .line 743
    iget-wide v0, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-object v8, v2, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v9, v8, v7

    sub-long/2addr v0, v9

    iput-wide v0, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 744
    iget-wide v0, v5, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-object v8, v2, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v9, v8, v7

    sub-long/2addr v0, v9

    iput-wide v0, v5, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 745
    iget-wide v0, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-object v8, v2, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v9, v8, v7

    sub-long/2addr v0, v9

    iput-wide v0, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 746
    iget-wide v0, v5, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-object v8, v2, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v9, v8, v7

    sub-long/2addr v0, v9

    iput-wide v0, v5, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 747
    iget-wide v0, v5, Landroid/net/NetworkStats$Entry;->operations:J

    iget-object v8, v2, Landroid/net/NetworkStats;->operations:[J

    aget-wide v9, v8, v7

    sub-long/2addr v0, v9

    iput-wide v0, v5, Landroid/net/NetworkStats$Entry;->operations:J

    .line 750
    :cond_3
    invoke-virtual {v5}, Landroid/net/NetworkStats$Entry;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p2, :cond_4

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move v2, v3

    move v8, v3

    move-object/from16 v3, p1

    move-object v9, v4

    move v4, v7

    move-object v7, v5

    move-object/from16 v5, p3

    .line 752
    invoke-interface/range {v0 .. v5}, Landroid/net/NetworkStats$NonMonotonicObserver;->foundNonMonotonic(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;ILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    move v8, v3

    move-object v9, v4

    move-object v7, v5

    .line 754
    :goto_2
    iget-wide v0, v7, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v7, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 755
    iget-wide v0, v7, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v7, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 756
    iget-wide v0, v7, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v7, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 757
    iget-wide v0, v7, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v7, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 758
    iget-wide v0, v7, Landroid/net/NetworkStats$Entry;->operations:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v7, Landroid/net/NetworkStats$Entry;->operations:J

    goto :goto_3

    :cond_5
    move v8, v3

    move-object v9, v4

    move-object v7, v5

    const-wide/16 v2, 0x0

    .line 761
    :goto_3
    invoke-virtual {v9, v7}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    add-int/lit8 v0, v8, 0x1

    move-object/from16 v15, p1

    move-wide v13, v2

    move-object v5, v7

    move-object v4, v9

    move v3, v0

    goto/16 :goto_1

    :cond_6
    move-object v9, v4

    return-object v9
.end method

.method public static tagToString(I)Ljava/lang/String;
    .locals 2

    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private tunAdjustmentInit(ILjava/lang/String;Ljava/lang/String;Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)V
    .locals 4

    .line 1159
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    const/4 v1, 0x0

    .line 1160
    :goto_0
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v2, :cond_4

    .line 1161
    invoke-virtual {p0, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    .line 1162
    iget v2, v0, Landroid/net/NetworkStats$Entry;->uid:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 1165
    iget v2, v0, Landroid/net/NetworkStats$Entry;->set:I

    const/16 v3, 0x3e9

    if-eq v2, v3, :cond_2

    iget v2, v0, Landroid/net/NetworkStats$Entry;->set:I

    const/16 v3, 0x3ea

    if-eq v2, v3, :cond_2

    .line 1170
    iget v2, v0, Landroid/net/NetworkStats$Entry;->uid:I

    if-ne v2, p1, :cond_0

    iget v2, v0, Landroid/net/NetworkStats$Entry;->tag:I

    if-nez v2, :cond_0

    iget-object v2, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 1171
    invoke-static {p3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1172
    invoke-virtual {p5, v0}, Landroid/net/NetworkStats$Entry;->add(Landroid/net/NetworkStats$Entry;)V

    .line 1175
    :cond_0
    iget v2, v0, Landroid/net/NetworkStats$Entry;->uid:I

    if-eq v2, p1, :cond_1

    iget v2, v0, Landroid/net/NetworkStats$Entry;->tag:I

    if-nez v2, :cond_1

    iget-object v2, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 1176
    invoke-static {p2, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1178
    invoke-virtual {p4, v0}, Landroid/net/NetworkStats$Entry;->add(Landroid/net/NetworkStats$Entry;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1166
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot adjust VPN accounting on a NetworkStats containing SET_DBG_VPN_*"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1163
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot adjust VPN accounting on an iface aggregated NetworkStats."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-void
.end method

.method private static tunGetPool(Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 5

    .line 1184
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1185
    iget-wide v1, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 1186
    iget-wide v1, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 1187
    iget-wide v1, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 1188
    iget-wide v1, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-wide v3, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1189
    iget-wide v1, p0, Landroid/net/NetworkStats$Entry;->operations:J

    iget-wide p0, p1, Landroid/net/NetworkStats$Entry;->operations:J

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    iput-wide p0, v0, Landroid/net/NetworkStats$Entry;->operations:J

    return-object v0
.end method

.method private static tunSubtract(ILandroid/net/NetworkStats;Landroid/net/NetworkStats$Entry;)V
    .locals 5

    .line 1278
    iget-object v0, p1, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v1, v0, p0

    iget-wide v3, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 1279
    iget-object v2, p1, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v3, v2, p0

    sub-long/2addr v3, v0

    aput-wide v3, v2, p0

    .line 1280
    iget-wide v2, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    sub-long/2addr v2, v0

    iput-wide v2, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 1282
    iget-object v0, p1, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v1, v0, p0

    iget-wide v3, p2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 1283
    iget-object v2, p1, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v3, v2, p0

    sub-long/2addr v3, v0

    aput-wide v3, v2, p0

    .line 1284
    iget-wide v2, p2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    sub-long/2addr v2, v0

    iput-wide v2, p2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 1286
    iget-object v0, p1, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v1, v0, p0

    iget-wide v3, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 1287
    iget-object v2, p1, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v3, v2, p0

    sub-long/2addr v3, v0

    aput-wide v3, v2, p0

    .line 1288
    iget-wide v2, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    sub-long/2addr v2, v0

    iput-wide v2, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 1290
    iget-object v0, p1, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v1, v0, p0

    iget-wide v3, p2, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 1291
    iget-object p1, p1, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, p1, p0

    sub-long/2addr v2, v0

    aput-wide v2, p1, p0

    .line 1292
    iget-wide p0, p2, Landroid/net/NetworkStats$Entry;->txPackets:J

    sub-long/2addr p0, v0

    iput-wide p0, p2, Landroid/net/NetworkStats$Entry;->txPackets:J

    return-void
.end method


# virtual methods
.method public addIfaceValues(Ljava/lang/String;JJJJ)Landroid/net/NetworkStats;
    .locals 15
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v13, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    .line 336
    invoke-virtual/range {v0 .. v14}, Landroid/net/NetworkStats;->addValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    .locals 2

    .line 361
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    iget v1, p0, Landroid/net/NetworkStats;->capacity:I

    if-lt v0, v1, :cond_0

    .line 362
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    .line 363
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 364
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    .line 365
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->set:[I

    .line 366
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    .line 367
    iget-object v1, p0, Landroid/net/NetworkStats;->metered:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->metered:[I

    .line 368
    iget-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    .line 369
    iget-object v1, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    .line 370
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 371
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 372
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 373
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 374
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    .line 375
    iput v0, p0, Landroid/net/NetworkStats;->capacity:I

    .line 378
    :cond_0
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    invoke-direct {p0, v0, p1}, Landroid/net/NetworkStats;->setValues(ILandroid/net/NetworkStats$Entry;)V

    .line 379
    iget p1, p0, Landroid/net/NetworkStats;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/net/NetworkStats;->size:I

    return-object p0
.end method

.method public addValues(Ljava/lang/String;IIIIIIJJJJJ)Landroid/net/NetworkStats;
    .locals 19
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move-wide/from16 v16, p16

    .line 351
    new-instance v0, Landroid/net/NetworkStats$Entry;

    move-object/from16 v18, v0

    invoke-direct/range {v0 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public addValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;
    .locals 16
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 343
    new-instance v15, Landroid/net/NetworkStats$Entry;

    move-object v0, v15

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    invoke-direct/range {v0 .. v14}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public apply464xlatAdjustments(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 833
    invoke-static {p0, p0, p1}, Landroid/net/NetworkStats;->apply464xlatAdjustments(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Ljava/util/Map;)V

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 318
    iput v0, p0, Landroid/net/NetworkStats;->capacity:I

    .line 319
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 320
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    .line 321
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    .line 322
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    .line 323
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->metered:[I

    .line 324
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->roaming:[I

    .line 325
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    .line 326
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 327
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 328
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 329
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 330
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    return-void
.end method

.method public clone()Landroid/net/NetworkStats;
    .locals 4

    .line 305
    new-instance v0, Landroid/net/NetworkStats;

    iget-wide v1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    iget v3, p0, Landroid/net/NetworkStats;->size:I

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 307
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v3, :cond_0

    .line 308
    invoke-virtual {p0, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 309
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Landroid/net/NetworkStats;->clone()Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0
.end method

.method public combineAllValues(Landroid/net/NetworkStats;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 484
    :goto_0
    iget v2, p1, Landroid/net/NetworkStats;->size:I

    if-ge v1, v2, :cond_0

    .line 485
    invoke-virtual {p1, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 486
    invoke-virtual {p0, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    .locals 8

    .line 464
    iget-object v1, p1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget v2, p1, Landroid/net/NetworkStats$Entry;->uid:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->set:I

    iget v4, p1, Landroid/net/NetworkStats$Entry;->tag:I

    iget v5, p1, Landroid/net/NetworkStats$Entry;->metered:I

    iget v6, p1, Landroid/net/NetworkStats$Entry;->roaming:I

    iget v7, p1, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;IIIIII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 468
    invoke-virtual {p0, p1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    goto :goto_0

    .line 470
    :cond_0
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 471
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 472
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 473
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 474
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v1, v0

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->operations:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    :goto_0
    return-object p0
.end method

.method public combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;
    .locals 16

    .line 454
    new-instance v15, Landroid/net/NetworkStats$Entry;

    move-object v0, v15

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    invoke-direct/range {v0 .. v14}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public combineValues(Ljava/lang/String;IIJJJJJ)Landroid/net/NetworkStats;
    .locals 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-wide/from16 v13, p12

    .line 447
    invoke-virtual/range {v0 .. v14}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4

    .line 950
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "NetworkStats: elapsedRealtime="

    .line 951
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const/4 v0, 0x0

    .line 952
    :goto_0
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v1, :cond_0

    .line 953
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  ["

    .line 954
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, "]"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " iface="

    .line 955
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " uid="

    .line 956
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " set="

    .line 957
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " tag="

    .line 958
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " metered="

    .line 959
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->metered:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/net/NetworkStats;->meteredToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " roaming="

    .line 960
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/net/NetworkStats;->roamingToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " defaultNetwork="

    .line 961
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/net/NetworkStats;->defaultNetworkToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " rxBytes="

    .line 962
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const-string v1, " rxPackets="

    .line 963
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const-string v1, " txBytes="

    .line 964
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const-string v1, " txPackets="

    .line 965
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const-string v1, " operations="

    .line 966
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method public filter(I[Ljava/lang/String;I)V
    .locals 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    if-ne p3, v0, :cond_0

    .line 926
    sget-object v1, Landroid/net/NetworkStats;->INTERFACES_ALL:[Ljava/lang/String;

    if-ne p2, v1, :cond_0

    return-void

    .line 930
    :cond_0
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    const/4 v2, 0x0

    move-object v3, v1

    move v1, v2

    move v4, v1

    .line 932
    :goto_0
    iget v5, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v5, :cond_6

    .line 933
    invoke-virtual {p0, v1, v3}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v3

    if-eq p1, v0, :cond_1

    .line 934
    iget v5, v3, Landroid/net/NetworkStats$Entry;->uid:I

    if-ne p1, v5, :cond_3

    :cond_1
    if-eq p3, v0, :cond_2

    iget v5, v3, Landroid/net/NetworkStats$Entry;->tag:I

    if-ne p3, v5, :cond_3

    :cond_2
    sget-object v5, Landroid/net/NetworkStats;->INTERFACES_ALL:[Ljava/lang/String;

    if-eq p2, v5, :cond_4

    iget-object v5, v3, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 938
    invoke-static {p2, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move v5, v2

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_5

    .line 941
    invoke-direct {p0, v4, v3}, Landroid/net/NetworkStats;->setValues(ILandroid/net/NetworkStats$Entry;)V

    add-int/lit8 v4, v4, 0x1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 946
    :cond_6
    iput v4, p0, Landroid/net/NetworkStats;->size:I

    return-void
.end method

.method public findIndex(Ljava/lang/String;IIIIII)I
    .locals 2

    const/4 v0, 0x0

    .line 495
    :goto_0
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v1, :cond_1

    .line 496
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, v0

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, v0

    if-ne p3, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, v0

    if-ne p4, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->metered:[I

    aget v1, v1, v0

    if-ne p5, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    aget v1, v1, v0

    if-ne p6, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    aget v1, v1, v0

    if-ne p7, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 499
    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public findIndexHinted(Ljava/lang/String;IIIIIII)I
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 513
    :goto_0
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v1, :cond_2

    .line 514
    div-int/lit8 v1, v0, 0x2

    .line 518
    rem-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_0

    add-int/2addr v1, p8

    .line 519
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    rem-int/2addr v1, v2

    goto :goto_1

    .line 521
    :cond_0
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    add-int/2addr v2, p8

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    iget v1, p0, Landroid/net/NetworkStats;->size:I

    rem-int v1, v2, v1

    .line 524
    :goto_1
    iget-object v2, p0, Landroid/net/NetworkStats;->uid:[I

    aget v2, v2, v1

    if-ne p2, v2, :cond_1

    iget-object v2, p0, Landroid/net/NetworkStats;->set:[I

    aget v2, v2, v1

    if-ne p3, v2, :cond_1

    iget-object v2, p0, Landroid/net/NetworkStats;->tag:[I

    aget v2, v2, v1

    if-ne p4, v2, :cond_1

    iget-object v2, p0, Landroid/net/NetworkStats;->metered:[I

    aget v2, v2, v1

    if-ne p5, v2, :cond_1

    iget-object v2, p0, Landroid/net/NetworkStats;->roaming:[I

    aget v2, v2, v1

    if-ne p6, v2, :cond_1

    iget-object v2, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    aget v2, v2, v1

    if-ne p7, v2, :cond_1

    iget-object v2, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 527
    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public getElapsedRealtime()J
    .locals 2

    .line 420
    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    return-wide v0
.end method

.method public getElapsedRealtimeAge()J
    .locals 4

    .line 432
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 594
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object p0

    return-object p0
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;I)Landroid/net/NetworkStats$Entry;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 602
    invoke-direct {p0, p1, v0, p2, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object p0

    return-object p0
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;)Landroid/net/NetworkStats$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats$Entry;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/NetworkStats$Entry;"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 610
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object p0

    return-object p0
.end method

.method public getTotalBytes()J
    .locals 4

    const/4 v0, 0x0

    .line 586
    invoke-virtual {p0, v0}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object p0

    .line 587
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalIncludingTags(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 614
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object p0

    return-object p0
.end method

.method public getTotalPackets()J
    .locals 8

    .line 664
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x0

    :goto_0
    if-ltz v0, :cond_0

    .line 665
    iget-object v3, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v4, v3, v0

    iget-object v3, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v6, v3, v0

    add-long/2addr v4, v6

    add-long/2addr v1, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public getUniqueIfaces()[Ljava/lang/String;
    .locals 5

    .line 555
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 556
    iget-object p0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 557
    sget-object v4, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    .line 558
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 561
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getUniqueUids()[I
    .locals 6

    .line 568
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 569
    iget-object p0, p0, Landroid/net/NetworkStats;->uid:[I

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget v4, p0, v3

    const/4 v5, 0x1

    .line 570
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 573
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result p0

    .line 574
    new-array v1, p0, [I

    :goto_1
    if-ge v2, p0, :cond_1

    .line 576
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 3

    if-eqz p2, :cond_0

    goto :goto_0

    .line 403
    :cond_0
    new-instance p2, Landroid/net/NetworkStats$Entry;

    invoke-direct {p2}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 404
    :goto_0
    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v0, v0, p1

    iput-object v0, p2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 405
    iget-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    aget v0, v0, p1

    iput v0, p2, Landroid/net/NetworkStats$Entry;->uid:I

    .line 406
    iget-object v0, p0, Landroid/net/NetworkStats;->set:[I

    aget v0, v0, p1

    iput v0, p2, Landroid/net/NetworkStats$Entry;->set:I

    .line 407
    iget-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    aget v0, v0, p1

    iput v0, p2, Landroid/net/NetworkStats$Entry;->tag:I

    .line 408
    iget-object v0, p0, Landroid/net/NetworkStats;->metered:[I

    aget v0, v0, p1

    iput v0, p2, Landroid/net/NetworkStats$Entry;->metered:I

    .line 409
    iget-object v0, p0, Landroid/net/NetworkStats;->roaming:[I

    aget v0, v0, p1

    iput v0, p2, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 410
    iget-object v0, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    aget v0, v0, p1

    iput v0, p2, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    .line 411
    iget-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v1, v0, p1

    iput-wide v1, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 412
    iget-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v1, v0, p1

    iput-wide v1, p2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 413
    iget-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v1, v0, p1

    iput-wide v1, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 414
    iget-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v1, v0, p1

    iput-wide v1, p2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 415
    iget-object p0, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v0, p0, p1

    iput-wide v0, p2, Landroid/net/NetworkStats$Entry;->operations:J

    return-object p2
.end method

.method public groupedByIface()Landroid/net/NetworkStats;
    .locals 6

    .line 841
    new-instance v0, Landroid/net/NetworkStats;

    iget-wide v1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 843
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    const/4 v2, -0x1

    .line 844
    iput v2, v1, Landroid/net/NetworkStats$Entry;->uid:I

    .line 845
    iput v2, v1, Landroid/net/NetworkStats$Entry;->set:I

    const/4 v3, 0x0

    .line 846
    iput v3, v1, Landroid/net/NetworkStats$Entry;->tag:I

    .line 847
    iput v2, v1, Landroid/net/NetworkStats$Entry;->metered:I

    .line 848
    iput v2, v1, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 849
    iput v2, v1, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    const-wide/16 v4, 0x0

    .line 850
    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->operations:J

    .line 852
    :goto_0
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    if-ge v3, v2, :cond_1

    .line 854
    iget-object v2, p0, Landroid/net/NetworkStats;->tag:[I

    aget v2, v2, v3

    if-eqz v2, :cond_0

    goto :goto_1

    .line 856
    :cond_0
    iget-object v2, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v2, v2, v3

    iput-object v2, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 857
    iget-object v2, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v4, v2, v3

    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 858
    iget-object v2, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v4, v2, v3

    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 859
    iget-object v2, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v4, v2, v3

    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 860
    iget-object v2, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v4, v2, v3

    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 861
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public groupedByUid()Landroid/net/NetworkStats;
    .locals 6

    .line 872
    new-instance v0, Landroid/net/NetworkStats;

    iget-wide v1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 874
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 875
    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v2, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    const/4 v2, -0x1

    .line 876
    iput v2, v1, Landroid/net/NetworkStats$Entry;->set:I

    const/4 v3, 0x0

    .line 877
    iput v3, v1, Landroid/net/NetworkStats$Entry;->tag:I

    .line 878
    iput v2, v1, Landroid/net/NetworkStats$Entry;->metered:I

    .line 879
    iput v2, v1, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 880
    iput v2, v1, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    .line 882
    :goto_0
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    if-ge v3, v2, :cond_1

    .line 884
    iget-object v2, p0, Landroid/net/NetworkStats;->tag:[I

    aget v2, v2, v3

    if-eqz v2, :cond_0

    goto :goto_1

    .line 886
    :cond_0
    iget-object v2, p0, Landroid/net/NetworkStats;->uid:[I

    aget v2, v2, v3

    iput v2, v1, Landroid/net/NetworkStats$Entry;->uid:I

    .line 887
    iget-object v2, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v4, v2, v3

    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 888
    iget-object v2, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v4, v2, v3

    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 889
    iget-object v2, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v4, v2, v3

    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 890
    iget-object v2, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v4, v2, v3

    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 891
    iget-object v2, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v4, v2, v3

    iput-wide v4, v1, Landroid/net/NetworkStats$Entry;->operations:J

    .line 892
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public internalSize()I
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 441
    iget p0, p0, Landroid/net/NetworkStats;->capacity:I

    return p0
.end method

.method public migrateTun(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .line 1125
    new-instance v6, Landroid/net/NetworkStats$Entry;

    invoke-direct {v6}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1126
    new-instance v7, Landroid/net/NetworkStats$Entry;

    invoke-direct {v7}, Landroid/net/NetworkStats$Entry;-><init>()V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v6

    move-object v5, v7

    .line 1128
    invoke-direct/range {v0 .. v5}, Landroid/net/NetworkStats;->tunAdjustmentInit(ILjava/lang/String;Ljava/lang/String;Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)V

    .line 1133
    invoke-static {v6, v7}, Landroid/net/NetworkStats;->tunGetPool(Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v5

    .line 1134
    invoke-virtual {v5}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_0

    return v7

    :cond_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v6

    .line 1138
    invoke-direct/range {v0 .. v5}, Landroid/net/NetworkStats;->addTrafficToApplications(ILjava/lang/String;Ljava/lang/String;Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object p2

    .line 1139
    invoke-direct {p0, p1, p3, p2}, Landroid/net/NetworkStats;->deductTrafficFromVpnApp(ILjava/lang/String;Landroid/net/NetworkStats$Entry;)V

    .line 1141
    invoke-virtual {p2}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "NetworkStats"

    .line 1142
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to deduct underlying network traffic from VPN package. Moved="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1
    return v7
.end method

.method public setElapsedRealtime(J)V
    .locals 0

    .line 424
    iput-wide p1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    return-void
.end method

.method public size()I
    .locals 0

    .line 436
    iget p0, p0, Landroid/net/NetworkStats;->size:I

    return p0
.end method

.method public spliceOperationsFrom(Landroid/net/NetworkStats;)V
    .locals 10

    const/4 v0, 0x0

    .line 540
    :goto_0
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v1, :cond_1

    .line 541
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v3, v1, v0

    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v4, v1, v0

    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v5, v1, v0

    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v6, v1, v0

    iget-object v1, p0, Landroid/net/NetworkStats;->metered:[I

    aget v7, v1, v0

    iget-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    aget v8, v1, v0

    iget-object v1, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    aget v9, v1, v0

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;IIIIII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 544
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    goto :goto_1

    .line 546
    :cond_0
    iget-object v2, p0, Landroid/net/NetworkStats;->operations:[J

    iget-object v3, p1, Landroid/net/NetworkStats;->operations:[J

    aget-wide v4, v3, v1

    aput-wide v4, v2, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 1

    const/4 v0, 0x0

    .line 676
    invoke-static {p0, p1, v0, v0}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1078
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    const-string v1, ""

    .line 1079
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1, v2}, Landroid/net/NetworkStats;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1080
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public withoutUids([I)Landroid/net/NetworkStats;
    .locals 4

    .line 903
    new-instance v0, Landroid/net/NetworkStats;

    iget-wide v1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 905
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    const/4 v2, 0x0

    .line 906
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v3, :cond_1

    .line 907
    invoke-virtual {p0, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 908
    iget v3, v1, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {p1, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 909
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 286
    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 287
    iget p2, p0, Landroid/net/NetworkStats;->size:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    iget p2, p0, Landroid/net/NetworkStats;->capacity:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    iget-object p2, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 290
    iget-object p2, p0, Landroid/net/NetworkStats;->uid:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 291
    iget-object p2, p0, Landroid/net/NetworkStats;->set:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 292
    iget-object p2, p0, Landroid/net/NetworkStats;->tag:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 293
    iget-object p2, p0, Landroid/net/NetworkStats;->metered:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 294
    iget-object p2, p0, Landroid/net/NetworkStats;->roaming:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 295
    iget-object p2, p0, Landroid/net/NetworkStats;->defaultNetwork:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 296
    iget-object p2, p0, Landroid/net/NetworkStats;->rxBytes:[J

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 297
    iget-object p2, p0, Landroid/net/NetworkStats;->rxPackets:[J

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 298
    iget-object p2, p0, Landroid/net/NetworkStats;->txBytes:[J

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 299
    iget-object p2, p0, Landroid/net/NetworkStats;->txPackets:[J

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 300
    iget-object p0, p0, Landroid/net/NetworkStats;->operations:[J

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeLongArray([J)V

    return-void
.end method
