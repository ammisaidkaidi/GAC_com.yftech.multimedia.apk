.class public final Landroid/os/BatteryStats$LevelStepTracker;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LevelStepTracker"
.end annotation


# instance fields
.field public mLastStepTime:J

.field public mNumStepDurations:I

.field public final mStepDurations:[J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1041
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 1037
    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 1042
    new-array p1, p1, [J

    iput-object p1, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    return-void
.end method

.method public constructor <init>(I[J)V
    .locals 2

    .line 1045
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 1037
    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 1046
    iput p1, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 1047
    new-array v0, p1, [J

    iput-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    .line 1048
    iget-object p0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    const/4 v0, 0x0

    invoke-static {p2, v0, p0, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private appendHex(JILjava/lang/StringBuilder;)V
    .locals 4

    const/4 p0, 0x0

    :goto_0
    if-ltz p3, :cond_2

    shr-long v0, p1, p3

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 p3, p3, -0x4

    if-nez p0, :cond_0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    if-ltz v0, :cond_1

    const/16 v1, 0x9

    if-gt v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    .line 1080
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x61

    add-int/lit8 v0, v0, -0xa

    int-to-char v0, v0

    .line 1082
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public addLevelSteps(IJJ)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p4

    .line 1284
    iget v4, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 1285
    iget-wide v5, v0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-ltz v7, :cond_2

    if-lez v1, :cond_2

    .line 1287
    iget-object v7, v0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    sub-long v5, v2, v5

    const/4 v8, 0x0

    move-wide v9, v5

    move v5, v8

    :goto_0
    if-ge v5, v1, :cond_1

    .line 1290
    array-length v6, v7

    const/4 v11, 0x1

    sub-int/2addr v6, v11

    invoke-static {v7, v8, v7, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v6, v1, v5

    int-to-long v11, v6

    .line 1291
    div-long v11, v9, v11

    sub-long/2addr v9, v11

    const-wide v13, 0xffffffffffL

    cmp-long v6, v11, v13

    if-lez v6, :cond_0

    goto :goto_1

    :cond_0
    move-wide v13, v11

    :goto_1
    or-long v13, v13, p2

    .line 1296
    aput-wide v13, v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v4, v1

    .line 1299
    array-length v1, v7

    if-le v4, v1, :cond_2

    .line 1300
    array-length v4, v7

    .line 1303
    :cond_2
    iput v4, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 1304
    iput-wide v2, v0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    return-void
.end method

.method public clearTime()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 1202
    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    return-void
.end method

.method public computeTimeEstimate(JJ[I)J
    .locals 18

    move-object/from16 v0, p0

    .line 1248
    iget-object v2, v0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    .line 1249
    iget v0, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    const-wide/16 v3, -0x1

    if-gtz v0, :cond_0

    return-wide v3

    :cond_0
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-wide v10, v5

    move v8, v7

    move v9, v8

    :goto_0
    if-ge v8, v0, :cond_2

    .line 1256
    aget-wide v12, v2, v8

    const-wide/high16 v14, 0xff000000000000L

    and-long/2addr v12, v14

    const/16 v14, 0x30

    shr-long/2addr v12, v14

    .line 1258
    aget-wide v14, v2, v8

    const-wide/high16 v16, -0x100000000000000L

    and-long v14, v14, v16

    const/16 v16, 0x38

    shr-long v14, v14, v16

    and-long v14, v14, p1

    cmp-long v14, v14, v5

    if-nez v14, :cond_1

    and-long v12, v12, p1

    cmp-long v12, v12, p3

    if-nez v12, :cond_1

    add-int/lit8 v9, v9, 0x1

    .line 1266
    aget-wide v12, v2, v8

    const-wide v16, 0xffffffffffL

    and-long v12, v12, v16

    add-long/2addr v10, v12

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    if-gtz v9, :cond_3

    return-wide v3

    :cond_3
    if-eqz p5, :cond_4

    .line 1275
    aput v9, p5, v7

    :cond_4
    int-to-long v0, v9

    .line 1280
    div-long/2addr v10, v0

    const-wide/16 v0, 0x64

    mul-long/2addr v10, v0

    return-wide v10
.end method

.method public computeTimePerLevel()J
    .locals 8

    .line 1206
    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    .line 1207
    iget p0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-gtz p0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p0, :cond_1

    .line 1215
    aget-wide v4, v0, v3

    const-wide v6, 0xffffffffffL

    and-long/2addr v4, v6

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    int-to-long v3, p0

    .line 1217
    div-long/2addr v1, v3

    return-wide v1
.end method

.method public decodeEntryAt(ILjava/lang/String;)V
    .locals 20

    move-object/from16 v0, p2

    .line 1127
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-wide v5, v2

    :goto_0
    const/16 v7, 0x2d

    if-ge v4, v1, :cond_0

    .line 1131
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v7, :cond_0

    add-int/lit8 v4, v4, 0x1

    sparse-switch v8, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-wide/high16 v7, 0x3000000000000L

    or-long/2addr v5, v7

    goto :goto_0

    :sswitch_1
    const-wide/high16 v7, 0x4000000000000L

    or-long/2addr v5, v7

    goto :goto_0

    :sswitch_2
    const-wide/high16 v7, 0x1000000000000L

    or-long/2addr v5, v7

    goto :goto_0

    :sswitch_3
    const-wide/high16 v7, 0x8000000000000L

    or-long/2addr v5, v7

    goto :goto_0

    :sswitch_4
    or-long/2addr v5, v2

    goto :goto_0

    :sswitch_5
    const-wide/high16 v7, 0x2000000000000L

    or-long/2addr v5, v7

    goto :goto_0

    :sswitch_6
    const-wide/high16 v7, 0x300000000000000L    # 3.13151306251402E-294

    or-long/2addr v5, v7

    goto :goto_0

    :sswitch_7
    const-wide/high16 v7, 0x400000000000000L

    or-long/2addr v5, v7

    goto :goto_0

    :sswitch_8
    const-wide/high16 v7, 0x100000000000000L

    or-long/2addr v5, v7

    goto :goto_0

    :sswitch_9
    const-wide/high16 v7, 0x800000000000000L

    or-long/2addr v5, v7

    goto :goto_0

    :sswitch_a
    or-long/2addr v5, v2

    goto :goto_0

    :sswitch_b
    const-wide/high16 v7, 0x200000000000000L

    or-long/2addr v5, v7

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    move-wide v8, v2

    :goto_1
    const/16 v10, 0x46

    const/16 v11, 0x66

    const/16 v12, 0x39

    const/4 v13, 0x4

    const/16 v14, 0x41

    const/16 v15, 0x61

    const/16 v2, 0x30

    if-ge v4, v1, :cond_4

    .line 1168
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v7, :cond_4

    add-int/lit8 v4, v4, 0x1

    shl-long/2addr v8, v13

    if-lt v3, v2, :cond_2

    if-gt v3, v12, :cond_2

    add-int/lit8 v3, v3, -0x30

    int-to-long v2, v3

    add-long/2addr v8, v2

    :cond_1
    :goto_2
    const-wide/16 v2, 0x0

    goto :goto_1

    :cond_2
    if-lt v3, v15, :cond_3

    if-gt v3, v11, :cond_3

    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0xa

    int-to-long v2, v3

    add-long/2addr v8, v2

    goto :goto_2

    :cond_3
    if-lt v3, v14, :cond_1

    if-gt v3, v10, :cond_1

    add-int/lit8 v3, v3, -0x41

    add-int/lit8 v3, v3, 0xa

    int-to-long v2, v3

    add-long/2addr v8, v2

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    const/16 v3, 0x28

    shl-long/2addr v8, v3

    const-wide v18, 0xff0000000000L

    and-long v8, v8, v18

    or-long/2addr v5, v8

    const-wide/16 v16, 0x0

    :cond_5
    :goto_3
    if-ge v4, v1, :cond_8

    .line 1182
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v7, :cond_8

    add-int/lit8 v4, v4, 0x1

    shl-long v16, v16, v13

    if-lt v3, v2, :cond_6

    if-gt v3, v12, :cond_6

    add-int/lit8 v3, v3, -0x30

    int-to-long v8, v3

    add-long v16, v16, v8

    goto :goto_3

    :cond_6
    if-lt v3, v15, :cond_7

    if-gt v3, v11, :cond_7

    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0xa

    int-to-long v8, v3

    add-long v16, v16, v8

    goto :goto_3

    :cond_7
    if-lt v3, v14, :cond_5

    if-gt v3, v10, :cond_5

    add-int/lit8 v3, v3, -0x41

    add-int/lit8 v3, v3, 0xa

    int-to-long v8, v3

    add-long v16, v16, v8

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    .line 1193
    iget-object v0, v0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    const-wide v1, 0xffffffffffL

    and-long v1, v16, v1

    or-long/2addr v1, v5

    aput-wide v1, v0, p1

    return-void

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_b
        0x46 -> :sswitch_a
        0x49 -> :sswitch_9
        0x4f -> :sswitch_8
        0x50 -> :sswitch_7
        0x5a -> :sswitch_6
        0x64 -> :sswitch_5
        0x66 -> :sswitch_4
        0x69 -> :sswitch_3
        0x6f -> :sswitch_2
        0x70 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method public encodeEntryAt(ILjava/lang/StringBuilder;)V
    .locals 7

    .line 1088
    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v1, v0, p1

    const-wide v3, 0xffffffffffL

    and-long/2addr v3, v1

    const-wide v5, 0xff0000000000L

    and-long/2addr v5, v1

    const/16 p1, 0x28

    shr-long/2addr v5, p1

    long-to-int p1, v5

    const-wide/high16 v5, 0xff000000000000L

    and-long/2addr v5, v1

    const/16 v0, 0x30

    shr-long/2addr v5, v0

    long-to-int v0, v5

    const-wide/high16 v5, -0x100000000000000L

    and-long/2addr v1, v5

    const/16 v5, 0x38

    shr-long/2addr v1, v5

    long-to-int v1, v1

    and-int/lit8 v2, v0, 0x3

    add-int/lit8 v2, v2, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v2, 0x7a

    .line 1100
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    const/16 v2, 0x64

    .line 1099
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    const/16 v2, 0x6f

    .line 1098
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_3
    const/16 v2, 0x66

    .line 1097
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_0

    const/16 v2, 0x70

    .line 1103
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    const/16 v0, 0x69

    .line 1106
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    and-int/lit8 v0, v1, 0x3

    add-int/lit8 v0, v0, 0x1

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    :pswitch_4
    const/16 v0, 0x5a

    .line 1112
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_5
    const/16 v0, 0x44

    .line 1111
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_6
    const/16 v0, 0x4f

    .line 1110
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_7
    const/16 v0, 0x46

    .line 1109
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    and-int/lit8 v0, v1, 0x4

    if-eqz v0, :cond_2

    const/16 v0, 0x50

    .line 1115
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 v0, v1, 0x8

    if-eqz v0, :cond_3

    const/16 v0, 0x49

    .line 1118
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    const/16 v0, 0x2d

    .line 1120
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-long v1, p1

    const/4 p1, 0x4

    .line 1121
    invoke-direct {p0, v1, v2, p1, p2}, Landroid/os/BatteryStats$LevelStepTracker;->appendHex(JILjava/lang/StringBuilder;)V

    .line 1122
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p1, 0x24

    .line 1123
    invoke-direct {p0, v3, v4, p1, p2}, Landroid/os/BatteryStats$LevelStepTracker;->appendHex(JILjava/lang/StringBuilder;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public getDurationAt(I)J
    .locals 2

    .line 1052
    iget-object p0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, p0, p1

    const-wide p0, 0xffffffffffL

    and-long/2addr p0, v0

    return-wide p0
.end method

.method public getInitModeAt(I)I
    .locals 2

    .line 1061
    iget-object p0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, p0, p1

    const-wide/high16 p0, 0xff000000000000L

    and-long/2addr p0, v0

    const/16 v0, 0x30

    shr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public getLevelAt(I)I
    .locals 2

    .line 1056
    iget-object p0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, p0, p1

    const-wide p0, 0xff0000000000L

    and-long/2addr p0, v0

    const/16 v0, 0x28

    shr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public getModModeAt(I)I
    .locals 2

    .line 1066
    iget-object p0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, p0, p1

    const-wide/high16 p0, -0x100000000000000L

    and-long/2addr p0, v0

    const/16 v0, 0x38

    shr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public init()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 1197
    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    const/4 v0, 0x0

    .line 1198
    iput v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5

    .line 1308
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1309
    iget-object v1, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    array-length v1, v1

    if-gt v0, v1, :cond_1

    .line 1312
    iput v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1314
    iget-object v2, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 1310
    :cond_1
    new-instance p0, Landroid/os/ParcelFormatException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "more step durations than available: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 5

    .line 1319
    iget v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 1320
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1322
    iget-object v2, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v3, v2, v1

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
