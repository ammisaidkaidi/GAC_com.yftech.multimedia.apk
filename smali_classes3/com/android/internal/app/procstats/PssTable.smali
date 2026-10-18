.class public Lcom/android/internal/app/procstats/PssTable;
.super Lcom/android/internal/app/procstats/SparseMappingTable$Table;
.source "PssTable.java"


# direct methods
.method public constructor <init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/app/procstats/SparseMappingTable$Table;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    return-void
.end method


# virtual methods
.method public mergeStats(IIJJJJJJJJJ)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    move-wide/from16 v10, p11

    move-wide/from16 v12, p13

    move/from16 v14, p1

    int-to-byte v14, v14

    const/16 v15, 0xa

    .line 70
    invoke-virtual {v0, v14, v15}, Lcom/android/internal/app/procstats/PssTable;->getOrAddKey(BI)I

    move-result v14

    const/4 v15, 0x0

    .line 71
    invoke-virtual {v0, v14, v15}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v12

    const-wide/16 v16, 0x0

    cmp-long v16, v12, v16

    const/4 v15, 0x1

    if-nez v16, :cond_0

    int-to-long v12, v1

    const/4 v1, 0x0

    .line 73
    invoke-virtual {v0, v14, v1, v12, v13}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    .line 74
    invoke-virtual {v0, v14, v15, v2, v3}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    const/4 v1, 0x2

    .line 75
    invoke-virtual {v0, v14, v1, v4, v5}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    const/4 v1, 0x3

    .line 76
    invoke-virtual {v0, v14, v1, v6, v7}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    const/4 v1, 0x4

    .line 77
    invoke-virtual {v0, v14, v1, v8, v9}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    const/4 v1, 0x5

    .line 78
    invoke-virtual {v0, v14, v1, v10, v11}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    const/4 v1, 0x6

    move-wide/from16 v12, p13

    .line 79
    invoke-virtual {v0, v14, v1, v12, v13}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    move-wide/from16 v1, p15

    const/4 v3, 0x7

    .line 80
    invoke-virtual {v0, v14, v3, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    move-wide/from16 v1, p17

    const/16 v3, 0x8

    .line 81
    invoke-virtual {v0, v14, v3, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    move-wide/from16 v1, p19

    const/16 v3, 0x9

    .line 82
    invoke-virtual {v0, v14, v3, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    goto/16 :goto_0

    :cond_0
    int-to-long v10, v1

    add-long/2addr v10, v12

    const/4 v8, 0x0

    .line 84
    invoke-virtual {v0, v14, v8, v10, v11}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    .line 88
    invoke-virtual {v0, v14, v15}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v8

    cmp-long v8, v8, v2

    if-lez v8, :cond_1

    .line 90
    invoke-virtual {v0, v14, v15, v2, v3}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    :cond_1
    const/4 v2, 0x2

    .line 93
    invoke-virtual {v0, v14, v2}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v8

    long-to-double v8, v8

    long-to-double v12, v12

    mul-double/2addr v8, v12

    long-to-double v3, v4

    move-wide/from16 v18, v12

    int-to-double v12, v1

    mul-double/2addr v3, v12

    add-double/2addr v8, v3

    long-to-double v3, v10

    div-double/2addr v8, v3

    double-to-long v8, v8

    .line 94
    invoke-virtual {v0, v14, v2, v8, v9}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    const/4 v1, 0x3

    .line 97
    invoke-virtual {v0, v14, v1}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v8

    cmp-long v2, v8, v6

    if-gez v2, :cond_2

    .line 99
    invoke-virtual {v0, v14, v1, v6, v7}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    :cond_2
    const/4 v1, 0x4

    .line 102
    invoke-virtual {v0, v14, v1}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v5

    move-wide/from16 v7, p9

    cmp-long v2, v5, v7

    if-lez v2, :cond_3

    .line 104
    invoke-virtual {v0, v14, v1, v7, v8}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    :cond_3
    const/4 v1, 0x5

    .line 107
    invoke-virtual {v0, v14, v1}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v5

    long-to-double v5, v5

    mul-double v5, v5, v18

    move-wide/from16 v9, p11

    long-to-double v9, v9

    mul-double/2addr v9, v12

    add-double/2addr v5, v9

    div-double/2addr v5, v3

    double-to-long v5, v5

    .line 108
    invoke-virtual {v0, v14, v1, v5, v6}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    const/4 v1, 0x6

    .line 111
    invoke-virtual {v0, v14, v1}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v5

    move-wide/from16 v11, p13

    cmp-long v2, v5, v11

    if-gez v2, :cond_4

    .line 113
    invoke-virtual {v0, v14, v1, v11, v12}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    :cond_4
    const/4 v1, 0x7

    .line 116
    invoke-virtual {v0, v14, v1}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v5

    cmp-long v2, v5, v7

    if-lez v2, :cond_5

    .line 118
    invoke-virtual {v0, v14, v1, v7, v8}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    :cond_5
    const/16 v1, 0x8

    .line 121
    invoke-virtual {v0, v14, v1}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v5

    long-to-double v5, v5

    mul-double v5, v5, v18

    add-double/2addr v5, v9

    div-double/2addr v5, v3

    double-to-long v2, v5

    .line 122
    invoke-virtual {v0, v14, v1, v2, v3}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    const/16 v1, 0x9

    .line 125
    invoke-virtual {v0, v14, v1}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v2

    cmp-long v2, v2, v11

    if-gez v2, :cond_6

    .line 127
    invoke-virtual {v0, v14, v1, v11, v12}, Lcom/android/internal/app/procstats/PssTable;->setValue(IIJ)V

    :cond_6
    :goto_0
    return-void
.end method

.method public mergeStats(Lcom/android/internal/app/procstats/PssTable;)V
    .locals 26

    move-object/from16 v0, p1

    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 49
    invoke-virtual {v0, v3}, Lcom/android/internal/app/procstats/PssTable;->getKeyAt(I)I

    move-result v4

    .line 50
    invoke-static {v4}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v6

    .line 51
    invoke-virtual {v0, v4, v2}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v7

    long-to-int v7, v7

    const/4 v5, 0x1

    .line 52
    invoke-virtual {v0, v4, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v8

    const/4 v5, 0x2

    .line 53
    invoke-virtual {v0, v4, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v10

    const/4 v5, 0x3

    .line 54
    invoke-virtual {v0, v4, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v12

    const/4 v5, 0x4

    .line 55
    invoke-virtual {v0, v4, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v14

    const/4 v5, 0x5

    .line 56
    invoke-virtual {v0, v4, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v16

    const/4 v5, 0x6

    .line 57
    invoke-virtual {v0, v4, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v18

    const/4 v5, 0x7

    .line 58
    invoke-virtual {v0, v4, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v20

    const/16 v5, 0x8

    .line 59
    invoke-virtual {v0, v4, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v22

    const/16 v5, 0x9

    .line 60
    invoke-virtual {v0, v4, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v24

    move-object/from16 v5, p0

    .line 51
    invoke-virtual/range {v5 .. v25}, Lcom/android/internal/app/procstats/PssTable;->mergeStats(IIJJJJJJJJJ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
