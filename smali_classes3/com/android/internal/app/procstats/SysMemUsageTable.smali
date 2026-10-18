.class public Lcom/android/internal/app/procstats/SysMemUsageTable;
.super Lcom/android/internal/app/procstats/SparseMappingTable$Table;
.source "SysMemUsageTable.java"


# direct methods
.method public constructor <init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    return-void
.end method

.method private dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    .line 177
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, ": "

    .line 178
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    int-to-byte p2, p4

    .line 179
    invoke-virtual {p0, p2, p5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValueForId(BI)J

    move-result-wide p3

    const-wide/16 v0, 0x400

    mul-long/2addr p3, v0

    invoke-static {p1, p3, p4}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string p3, " min, "

    .line 180
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 p3, p5, 0x1

    .line 181
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValueForId(BI)J

    move-result-wide p3

    mul-long/2addr p3, v0

    invoke-static {p1, p3, p4}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string p3, " avg, "

    .line 182
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 p5, p5, 0x2

    .line 183
    invoke-virtual {p0, p2, p5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValueForId(BI)J

    move-result-wide p2

    mul-long/2addr p2, v0

    invoke-static {p1, p2, p3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string p0, " max"

    .line 184
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static mergeSysMemUsage([JI[JI)V
    .locals 19

    add-int/lit8 v1, p1, 0x0

    .line 117
    aget-wide v2, p0, v1

    add-int/lit8 v4, p3, 0x0

    .line 118
    aget-wide v4, p2, v4

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    const/16 v9, 0x10

    const/4 v10, 0x1

    if-nez v8, :cond_0

    .line 120
    aput-wide v4, p0, v1

    :goto_0
    if-ge v10, v9, :cond_3

    add-int v1, p1, v10

    add-int v2, p3, v10

    .line 122
    aget-wide v2, p2, v2

    aput-wide v2, p0, v1

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    cmp-long v6, v4, v6

    if-lez v6, :cond_3

    add-long v6, v2, v4

    .line 125
    aput-wide v6, p0, v1

    :goto_1
    if-ge v10, v9, :cond_3

    add-int v1, p1, v10

    .line 127
    aget-wide v11, p0, v1

    add-int v8, p3, v10

    aget-wide v13, p2, v8

    cmp-long v11, v11, v13

    if-lez v11, :cond_1

    .line 128
    aget-wide v11, p2, v8

    aput-wide v11, p0, v1

    :cond_1
    add-int/lit8 v11, v1, 0x1

    move v15, v10

    .line 130
    aget-wide v9, p0, v11

    long-to-double v9, v9

    move/from16 v16, v1

    long-to-double v0, v2

    mul-double/2addr v9, v0

    add-int/lit8 v0, v8, 0x1

    aget-wide v0, p2, v0

    long-to-double v0, v0

    move-wide/from16 v17, v2

    long-to-double v2, v4

    mul-double/2addr v0, v2

    add-double/2addr v9, v0

    long-to-double v0, v6

    div-double/2addr v9, v0

    double-to-long v0, v9

    aput-wide v0, p0, v11

    add-int/lit8 v1, v16, 0x2

    .line 134
    aget-wide v2, p0, v1

    add-int/lit8 v8, v8, 0x2

    aget-wide v9, p2, v8

    cmp-long v0, v2, v9

    if-gez v0, :cond_2

    .line 135
    aget-wide v2, p2, v8

    aput-wide v2, p0, v1

    :cond_2
    add-int/lit8 v10, v15, 0x3

    move-wide/from16 v2, v17

    const/16 v9, 0x10

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;[I[I)V
    .locals 17

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    const/4 v9, 0x0

    move v11, v9

    const/4 v0, -0x1

    .line 144
    :goto_0
    array-length v1, v7

    if-ge v11, v1, :cond_6

    move v12, v9

    const/4 v1, -0x1

    .line 146
    :goto_1
    array-length v2, v8

    if-ge v12, v2, :cond_5

    .line 147
    aget v2, v7, v11

    .line 148
    aget v3, v8, v12

    add-int v4, v2, v3

    mul-int/lit8 v13, v4, 0xe

    int-to-byte v4, v13

    move-object/from16 v14, p0

    .line 150
    invoke-virtual {v14, v4, v9}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValueForId(BI)J

    move-result-wide v4

    const-wide/16 v15, 0x0

    cmp-long v15, v4, v15

    if-lez v15, :cond_4

    .line 152
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 153
    array-length v15, v7

    const/4 v10, 0x1

    if-le v15, v10, :cond_1

    if-eq v0, v2, :cond_0

    move v0, v2

    goto :goto_2

    :cond_0
    const/4 v0, -0x1

    .line 154
    :goto_2
    invoke-static {v6, v0}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    move v15, v2

    goto :goto_3

    :cond_1
    move v15, v0

    .line 158
    :goto_3
    array-length v0, v8

    if-le v0, v10, :cond_3

    if-eq v1, v3, :cond_2

    move v0, v3

    goto :goto_4

    :cond_2
    const/4 v0, -0x1

    .line 159
    :goto_4
    invoke-static {v6, v0, v9}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    move v10, v3

    goto :goto_5

    :cond_3
    move v10, v1

    :goto_5
    const-string v0, ": "

    .line 163
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v6, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, " samples:"

    .line 165
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  Cached"

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v4, v13

    .line 166
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v3, "  Free"

    const/4 v5, 0x4

    .line 167
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v3, "  ZRam"

    const/4 v5, 0x7

    .line 168
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v3, "  Kernel"

    const/16 v5, 0xa

    .line 169
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v3, "  Native"

    const/16 v5, 0xd

    .line 170
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dumpCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;II)V

    move v1, v10

    move v0, v15

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_5
    move-object/from16 v14, p0

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public getTotalMemUsage()[J
    .locals 6

    const/16 v0, 0x10

    .line 94
    new-array v0, v0, [J

    .line 95
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 97
    invoke-virtual {p0, v3}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyAt(I)I

    move-result v4

    .line 99
    invoke-virtual {p0, v4}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getArrayForKey(I)[J

    move-result-object v5

    .line 100
    invoke-static {v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v4

    .line 102
    invoke-static {v0, v2, v5, v4}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeSysMemUsage([JI[JI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public mergeStats(I[JI)V
    .locals 1

    int-to-byte p1, p1

    const/16 v0, 0x10

    .line 82
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getOrAddKey(BI)I

    move-result p1

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getArrayForKey(I)[J

    move-result-object p0

    .line 85
    invoke-static {p1}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result p1

    .line 87
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeSysMemUsage([JI[JI)V

    return-void
.end method

.method public mergeStats(Lcom/android/internal/app/procstats/SysMemUsageTable;)V
    .locals 5

    .line 62
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 64
    invoke-virtual {p1, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyAt(I)I

    move-result v2

    .line 66
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    .line 67
    invoke-virtual {p1, v2}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getArrayForKey(I)[J

    move-result-object v4

    .line 68
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v2

    .line 70
    invoke-virtual {p0, v3, v4, v2}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeStats(I[JI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
