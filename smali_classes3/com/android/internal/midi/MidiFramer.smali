.class public Lcom/android/internal/midi/MidiFramer;
.super Landroid/media/midi/MidiReceiver;
.source "MidiFramer.java"


# instance fields
.field public TAG:Ljava/lang/String;

.field private mBuffer:[B

.field private mCount:I

.field private mInSysEx:Z

.field private mNeeded:I

.field private mReceiver:Landroid/media/midi/MidiReceiver;

.field private mRunningStatus:B


# direct methods
.method public constructor <init>(Landroid/media/midi/MidiReceiver;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/media/midi/MidiReceiver;-><init>()V

    const-string v0, "MidiFramer"

    .line 36
    iput-object v0, p0, Lcom/android/internal/midi/MidiFramer;->TAG:Ljava/lang/String;

    const/4 v0, 0x3

    .line 38
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    .line 45
    iput-object p1, p0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    return-void
.end method

.method public static formatMidiData([BII)Ljava/lang/String;
    .locals 6

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIDI+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v0

    move v0, v1

    :goto_0
    if-ge v0, p2, :cond_0

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "0x%02X, "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    add-int v5, p1, v0

    aget-byte v5, p0, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method


# virtual methods
.method public onSend([BIIJ)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 62
    iget-boolean v1, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    move/from16 v1, p2

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v3, 0x0

    move/from16 v11, p2

    move v7, v1

    move v4, v3

    move/from16 v1, p3

    :goto_1
    if-ge v4, v1, :cond_9

    .line 65
    aget-byte v5, p1, v11

    and-int/lit16 v6, v5, 0xff

    const/16 v8, 0x80

    const/4 v9, 0x1

    if-lt v6, v8, :cond_6

    const/16 v8, 0xf0

    if-ge v6, v8, :cond_1

    .line 69
    iput-byte v5, v0, Lcom/android/internal/midi/MidiFramer;->mRunningStatus:B

    .line 70
    iput v9, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    .line 71
    invoke-static {v5}, Lcom/android/internal/midi/MidiConstants;->getBytesPerMessage(B)I

    move-result v5

    sub-int/2addr v5, v9

    iput v5, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    goto/16 :goto_3

    :cond_1
    const/16 v10, 0xf8

    if-ge v6, v10, :cond_4

    if-ne v6, v8, :cond_2

    .line 75
    iput-boolean v9, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    move v7, v11

    goto/16 :goto_3

    :cond_2
    const/16 v8, 0xf7

    if-ne v6, v8, :cond_3

    .line 79
    iget-boolean v5, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    if-eqz v5, :cond_8

    .line 80
    iget-object v5, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    sub-int v6, v11, v7

    add-int/lit8 v8, v6, 0x1

    move-object/from16 v6, p1

    move-wide/from16 v9, p4

    invoke-virtual/range {v5 .. v10}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    .line 82
    iput-boolean v3, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    move v7, v2

    goto/16 :goto_3

    .line 86
    :cond_3
    iget-object v6, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    aput-byte v5, v6, v3

    .line 87
    iput-byte v3, v0, Lcom/android/internal/midi/MidiFramer;->mRunningStatus:B

    .line 88
    iput v9, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    .line 89
    invoke-static {v5}, Lcom/android/internal/midi/MidiConstants;->getBytesPerMessage(B)I

    move-result v5

    sub-int/2addr v5, v9

    iput v5, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    goto :goto_3

    .line 93
    :cond_4
    iget-boolean v5, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    if-eqz v5, :cond_5

    .line 94
    iget-object v5, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    sub-int v8, v11, v7

    move-object/from16 v6, p1

    move-wide/from16 v9, p4

    invoke-virtual/range {v5 .. v10}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    add-int/lit8 v5, v11, 0x1

    move v12, v5

    goto :goto_2

    :cond_5
    move v12, v7

    .line 98
    :goto_2
    iget-object v5, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    const/4 v8, 0x1

    move-object/from16 v6, p1

    move v7, v11

    move-wide/from16 v9, p4

    invoke-virtual/range {v5 .. v10}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    move v7, v12

    goto :goto_3

    .line 101
    :cond_6
    iget-boolean v6, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    if-nez v6, :cond_8

    .line 102
    iget-object v6, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    iget v8, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    add-int/lit8 v10, v8, 0x1

    iput v10, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    aput-byte v5, v6, v8

    .line 103
    iget v5, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    sub-int/2addr v5, v9

    iput v5, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    if-nez v5, :cond_8

    .line 104
    iget-byte v5, v0, Lcom/android/internal/midi/MidiFramer;->mRunningStatus:B

    if-eqz v5, :cond_7

    .line 105
    iget-object v5, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    iget-byte v6, v0, Lcom/android/internal/midi/MidiFramer;->mRunningStatus:B

    aput-byte v6, v5, v3

    .line 107
    :cond_7
    iget-object v12, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    iget-object v13, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    const/4 v14, 0x0

    iget v5, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    move v15, v5

    move-wide/from16 v16, p4

    invoke-virtual/range {v12 .. v17}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    .line 108
    iget-object v5, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    aget-byte v5, v5, v3

    invoke-static {v5}, Lcom/android/internal/midi/MidiConstants;->getBytesPerMessage(B)I

    move-result v5

    sub-int/2addr v5, v9

    iput v5, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    .line 109
    iput v9, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    :cond_8
    :goto_3
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_9
    if-ltz v7, :cond_a

    if-ge v7, v11, :cond_a

    .line 118
    iget-object v5, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    sub-int v8, v11, v7

    move-object/from16 v6, p1

    move-wide/from16 v9, p4

    invoke-virtual/range {v5 .. v10}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    :cond_a
    return-void
.end method
