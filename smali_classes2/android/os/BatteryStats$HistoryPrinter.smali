.class public Landroid/os/BatteryStats$HistoryPrinter;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistoryPrinter"
.end annotation


# instance fields
.field lastTime:J

.field oldChargeMAh:I

.field oldHealth:I

.field oldLevel:I

.field oldPlug:I

.field oldState:I

.field oldState2:I

.field oldStatus:I

.field oldTemp:I

.field oldVolt:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6089
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6090
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    .line 6091
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    const/4 v0, -0x1

    .line 6092
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    .line 6093
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    .line 6094
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    .line 6095
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    .line 6096
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    .line 6097
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    .line 6098
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    const-wide/16 v0, -0x1

    .line 6099
    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    return-void
.end method

.method private printNextItem(Landroid/os/BatteryStats$HistoryItem;JZZ)Ljava/lang/String;
    .locals 9

    .line 6128
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x9

    const/16 v8, 0x2c

    if-nez p4, :cond_0

    const-string v0, "  "

    .line 6130
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6131
    iget-wide v0, p1, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long/2addr v0, p2

    const/16 p2, 0x13

    invoke-static {v0, v1, v6, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;I)V

    const-string p2, " ("

    .line 6133
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6134
    iget p2, p1, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") "

    .line 6135
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 6137
    :cond_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "h"

    .line 6138
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6139
    iget-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 6140
    iget-wide v0, p1, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long/2addr v0, p2

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6142
    :cond_1
    iget-wide p2, p1, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    sub-long/2addr p2, v0

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6144
    :goto_0
    iget-wide p2, p1, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide p2, p0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    .line 6146
    :goto_1
    iget-byte p2, p1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 p3, 0x4

    if-ne p2, p3, :cond_3

    if-eqz p4, :cond_2

    const-string p1, ":"

    .line 6148
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string p1, "START\n"

    .line 6150
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6151
    invoke-virtual {p0}, Landroid/os/BatteryStats$HistoryPrinter;->reset()V

    goto/16 :goto_27

    .line 6152
    :cond_3
    iget-byte p2, p1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v0, 0x5

    const/4 v1, 0x7

    if-eq p2, v0, :cond_46

    iget-byte p2, p1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-ne p2, v1, :cond_4

    goto/16 :goto_26

    .line 6171
    :cond_4
    iget-byte p2, p1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/16 v0, 0x8

    if-ne p2, v0, :cond_6

    if-eqz p4, :cond_5

    const-string p0, ":"

    .line 6173
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string p0, "SHUTDOWN\n"

    .line 6175
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_27

    .line 6176
    :cond_6
    iget-byte p2, p1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v0, 0x6

    if-ne p2, v0, :cond_8

    if-eqz p4, :cond_7

    const-string p0, ":"

    .line 6178
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string p0, "*OVERFLOW*\n"

    .line 6180
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_27

    :cond_8
    const/16 p2, 0xa

    if-nez p4, :cond_13

    .line 6183
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-ge v0, p2, :cond_9

    const-string v0, "00"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 6184
    :cond_9
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    const/16 v1, 0x64

    if-ge v0, v1, :cond_a

    const-string v0, "0"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6185
    :cond_a
    :goto_2
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_14

    const-string p5, " "

    .line 6187
    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6188
    iget p5, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    if-gez p5, :cond_b

    goto :goto_3

    .line 6189
    :cond_b
    iget p5, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v0, 0x10

    if-ge p5, v0, :cond_c

    const-string p5, "0000000"

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 6190
    :cond_c
    iget p5, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v0, 0x100

    if-ge p5, v0, :cond_d

    const-string p5, "000000"

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 6191
    :cond_d
    iget p5, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v0, 0x1000

    if-ge p5, v0, :cond_e

    const-string p5, "00000"

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 6192
    :cond_e
    iget p5, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v0, 0x10000

    if-ge p5, v0, :cond_f

    const-string p5, "0000"

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 6193
    :cond_f
    iget p5, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v0, 0x100000

    if-ge p5, v0, :cond_10

    const-string p5, "000"

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 6194
    :cond_10
    iget p5, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v0, 0x1000000

    if-ge p5, v0, :cond_11

    const-string p5, "00"

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 6195
    :cond_11
    iget p5, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v0, 0x10000000

    if-ge p5, v0, :cond_12

    const-string p5, "0"

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6196
    :cond_12
    :goto_3
    iget p5, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-static {p5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 6199
    :cond_13
    iget p5, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-eq p5, v0, :cond_14

    .line 6200
    iget-byte p5, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput p5, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    const-string p5, ",Bl="

    .line 6201
    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p5, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6204
    :cond_14
    :goto_4
    iget p5, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    if-eq p5, v0, :cond_1b

    .line 6205
    iget-byte p5, p1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iput p5, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    if-eqz p4, :cond_15

    const-string p5, ",Bs="

    goto :goto_5

    :cond_15
    const-string p5, " status="

    .line 6206
    :goto_5
    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6207
    iget p5, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    packed-switch p5, :pswitch_data_0

    .line 6224
    iget p5, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_b

    :pswitch_0
    if-eqz p4, :cond_16

    const-string p5, "f"

    goto :goto_6

    :cond_16
    const-string p5, "full"

    .line 6221
    :goto_6
    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :pswitch_1
    if-eqz p4, :cond_17

    const-string p5, "n"

    goto :goto_7

    :cond_17
    const-string p5, "not-charging"

    .line 6218
    :goto_7
    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :pswitch_2
    if-eqz p4, :cond_18

    const-string p5, "d"

    goto :goto_8

    :cond_18
    const-string p5, "discharging"

    .line 6215
    :goto_8
    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :pswitch_3
    if-eqz p4, :cond_19

    const-string p5, "c"

    goto :goto_9

    :cond_19
    const-string p5, "charging"

    .line 6212
    :goto_9
    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :pswitch_4
    if-eqz p4, :cond_1a

    const-string p5, "?"

    goto :goto_a

    :cond_1a
    const-string/jumbo p5, "unknown"

    .line 6209
    :goto_a
    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6228
    :cond_1b
    :goto_b
    iget p5, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    if-eq p5, v0, :cond_24

    .line 6229
    iget-byte p5, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iput p5, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    if-eqz p4, :cond_1c

    const-string p5, ",Bh="

    goto :goto_c

    :cond_1c
    const-string p5, " health="

    .line 6230
    :goto_c
    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6231
    iget p5, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    packed-switch p5, :pswitch_data_1

    .line 6254
    iget p5, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_14

    :pswitch_5
    if-eqz p4, :cond_1d

    const-string p5, "c"

    goto :goto_d

    :cond_1d
    const-string p5, "cold"

    .line 6251
    :goto_d
    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    :pswitch_6
    if-eqz p4, :cond_1e

    const-string p5, "f"

    goto :goto_e

    :cond_1e
    const-string p5, "failure"

    .line 6248
    :goto_e
    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    :pswitch_7
    if-eqz p4, :cond_1f

    const-string/jumbo p5, "v"

    goto :goto_f

    :cond_1f
    const-string p5, "over-voltage"

    .line 6245
    :goto_f
    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    :pswitch_8
    if-eqz p4, :cond_20

    const-string p5, "d"

    goto :goto_10

    :cond_20
    const-string p5, "dead"

    .line 6242
    :goto_10
    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    :pswitch_9
    if-eqz p4, :cond_21

    const-string p5, "h"

    goto :goto_11

    :cond_21
    const-string p5, "overheat"

    .line 6239
    :goto_11
    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    :pswitch_a
    if-eqz p4, :cond_22

    const-string p5, "g"

    goto :goto_12

    :cond_22
    const-string p5, "good"

    .line 6236
    :goto_12
    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    :pswitch_b
    if-eqz p4, :cond_23

    const-string p5, "?"

    goto :goto_13

    :cond_23
    const-string/jumbo p5, "unknown"

    .line 6233
    :goto_13
    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6258
    :cond_24
    :goto_14
    iget p5, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    if-eq p5, v0, :cond_2b

    .line 6259
    iget-byte p5, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iput p5, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    if-eqz p4, :cond_25

    const-string p5, ",Bp="

    goto :goto_15

    :cond_25
    const-string p5, " plug="

    .line 6260
    :goto_15
    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6261
    iget p5, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    if-eq p5, p3, :cond_29

    packed-switch p5, :pswitch_data_2

    .line 6275
    iget p3, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1a

    :pswitch_c
    if-eqz p4, :cond_26

    const-string/jumbo p3, "u"

    goto :goto_16

    :cond_26
    const-string/jumbo p3, "usb"

    .line 6269
    :goto_16
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    :pswitch_d
    if-eqz p4, :cond_27

    const-string p3, "a"

    goto :goto_17

    :cond_27
    const-string p3, "ac"

    .line 6266
    :goto_17
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    :pswitch_e
    if-eqz p4, :cond_28

    const-string p3, "n"

    goto :goto_18

    :cond_28
    const-string p3, "none"

    .line 6263
    :goto_18
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    :cond_29
    if-eqz p4, :cond_2a

    const-string/jumbo p3, "w"

    goto :goto_19

    :cond_2a
    const-string/jumbo p3, "wireless"

    .line 6272
    :goto_19
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6279
    :cond_2b
    :goto_1a
    iget p3, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    iget-short p5, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    if-eq p3, p5, :cond_2d

    .line 6280
    iget-short p3, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    iput p3, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    if-eqz p4, :cond_2c

    const-string p3, ",Bt="

    goto :goto_1b

    :cond_2c
    const-string p3, " temp="

    .line 6281
    :goto_1b
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6282
    iget p3, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6284
    :cond_2d
    iget p3, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    iget-char p5, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    if-eq p3, p5, :cond_2f

    .line 6285
    iget-char p3, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    iput p3, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    if-eqz p4, :cond_2e

    const-string p3, ",Bv="

    goto :goto_1c

    :cond_2e
    const-string p3, " volt="

    .line 6286
    :goto_1c
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6287
    iget p3, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6289
    :cond_2f
    iget p3, p1, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    div-int/lit16 p3, p3, 0x3e8

    .line 6290
    iget p5, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    if-eq p5, p3, :cond_31

    .line 6291
    iput p3, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    if-eqz p4, :cond_30

    const-string p3, ",Bcc="

    goto :goto_1d

    :cond_30
    const-string p3, " charge="

    .line 6292
    :goto_1d
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6293
    iget p3, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6295
    :cond_31
    iget v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    iget v2, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget-object v3, p1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    sget-object v4, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    xor-int/lit8 v5, p4, 0x1

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Landroid/os/BatteryStats;->printBitDescriptions(Ljava/lang/StringBuilder;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V

    .line 6297
    iget v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    iget v2, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/4 v3, 0x0

    sget-object v4, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    xor-int/lit8 v5, p4, 0x1

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Landroid/os/BatteryStats;->printBitDescriptions(Ljava/lang/StringBuilder;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V

    .line 6299
    iget-object p3, p1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz p3, :cond_33

    if-eqz p4, :cond_32

    const-string p3, ",wr="

    .line 6301
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6302
    iget-object p3, p1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget p3, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1e

    :cond_32
    const-string p3, " wake_reason="

    .line 6304
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6305
    iget-object p3, p1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget p3, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ":\""

    .line 6306
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6307
    iget-object p3, p1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object p3, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\""

    .line 6308
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6311
    :cond_33
    :goto_1e
    iget p3, p1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz p3, :cond_3b

    if-eqz p4, :cond_34

    const-string p3, ","

    goto :goto_1f

    :cond_34
    const-string p3, " "

    .line 6312
    :goto_1f
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6313
    iget p3, p1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const p5, 0x8000

    and-int/2addr p3, p5

    if-eqz p3, :cond_35

    const-string p3, "+"

    .line 6314
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 6315
    :cond_35
    iget p3, p1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    and-int/lit16 p3, p3, 0x4000

    if-eqz p3, :cond_36

    const-string p3, "-"

    .line 6316
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_36
    :goto_20
    if-eqz p4, :cond_37

    .line 6318
    sget-object p3, Landroid/os/BatteryStats;->HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

    goto :goto_21

    .line 6319
    :cond_37
    sget-object p3, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    .line 6320
    :goto_21
    iget p5, p1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const v0, -0xc001

    and-int/2addr p5, v0

    if-ltz p5, :cond_38

    .line 6322
    array-length v0, p3

    if-ge p5, v0, :cond_38

    .line 6323
    aget-object p3, p3, p5

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    :cond_38
    if-eqz p4, :cond_39

    const-string p3, "Ev"

    goto :goto_22

    :cond_39
    const-string p3, "event"

    .line 6325
    :goto_22
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6326
    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_23
    const-string p3, "="

    .line 6328
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_3a

    .line 6330
    iget-object p3, p1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget p3, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 6332
    :cond_3a
    sget-object p3, Landroid/os/BatteryStats;->HISTORY_EVENT_INT_FORMATTERS:[Landroid/os/BatteryStats$IntToString;

    aget-object p3, p3, p5

    iget-object p5, p1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget p5, p5, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 6333
    invoke-interface {p3, p5}, Landroid/os/BatteryStats$IntToString;->applyAsString(I)Ljava/lang/String;

    move-result-object p3

    .line 6332
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":\""

    .line 6334
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6335
    iget-object p3, p1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object p3, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\""

    .line 6336
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3b
    :goto_24
    const-string p3, "\n"

    .line 6339
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6340
    iget-object p3, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    if-eqz p3, :cond_45

    if-nez p4, :cond_40

    const-string p3, "                 Details: cpu="

    .line 6342
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6343
    iget-object p3, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p3, p3, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "u+"

    .line 6344
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6345
    iget-object p3, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p3, p3, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "s"

    .line 6346
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6347
    iget-object p3, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p3, p3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    if-ltz p3, :cond_3e

    const-string p3, " ("

    .line 6348
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6349
    iget-object p3, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p3, p3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    iget-object p4, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p4, p4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iget-object p5, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p5, p5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    invoke-direct {p0, v6, p3, p4, p5}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/lang/StringBuilder;III)V

    .line 6351
    iget-object p3, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p3, p3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    if-ltz p3, :cond_3c

    const-string p3, ", "

    .line 6352
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6353
    iget-object p3, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p3, p3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iget-object p4, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p4, p4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iget-object p5, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p5, p5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    invoke-direct {p0, v6, p3, p4, p5}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/lang/StringBuilder;III)V

    .line 6356
    :cond_3c
    iget-object p3, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p3, p3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    if-ltz p3, :cond_3d

    const-string p3, ", "

    .line 6357
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6358
    iget-object p3, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p3, p3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    iget-object p4, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p4, p4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iget-object p5, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p5, p5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    invoke-direct {p0, v6, p3, p4, p5}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/lang/StringBuilder;III)V

    :cond_3d
    const/16 p3, 0x29

    .line 6361
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3e
    const-string p3, "\n"

    .line 6363
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "                          /proc/stat="

    .line 6364
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6365
    iget-object p3, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p3, p3, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " usr, "

    .line 6366
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6367
    iget-object p3, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p3, p3, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " sys, "

    .line 6368
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6369
    iget-object p3, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p3, p3, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " io, "

    .line 6370
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6371
    iget-object p3, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p3, p3, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " irq, "

    .line 6372
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6373
    iget-object p3, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p3, p3, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " sirq, "

    .line 6374
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6375
    iget-object p3, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p3, p3, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " idle"

    .line 6376
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6377
    iget-object p3, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p3, p3, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    iget-object p4, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p4, p4, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    add-int/2addr p3, p4

    iget-object p4, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p4, p4, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    add-int/2addr p3, p4

    iget-object p4, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p4, p4, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    add-int/2addr p3, p4

    iget-object p4, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p4, p4, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    add-int/2addr p3, p4

    .line 6380
    iget-object p4, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p4, p4, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    add-int/2addr p4, p3

    if-lez p4, :cond_3f

    const-string p5, " ("

    .line 6382
    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float p3, p3

    int-to-float p5, p4

    div-float/2addr p3, p5

    const/high16 p5, 0x42c80000    # 100.0f

    mul-float/2addr p3, p5

    const-string p5, "%.1f%%"

    const/4 v0, 0x1

    .line 6384
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    aput-object p3, v0, v1

    invoke-static {p5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " of "

    .line 6385
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6386
    new-instance p3, Ljava/lang/StringBuilder;

    const/16 p5, 0x40

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(I)V

    mul-int/2addr p4, p2

    int-to-long p4, p4

    .line 6387
    invoke-static {p3, p4, p5}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 6388
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    .line 6389
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3f
    const-string p2, ", PlatformIdleStat "

    .line 6391
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6392
    iget-object p2, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object p2, p2, Landroid/os/BatteryStats$HistoryStepDetails;->statPlatformIdleState:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    .line 6393
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", SubsystemPowerState "

    .line 6395
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6396
    iget-object p2, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object p2, p2, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    .line 6397
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_25

    .line 6399
    :cond_40
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "h"

    .line 6400
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",0,Dcpu="

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6401
    iget-object p2, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p2, p2, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ":"

    .line 6402
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6403
    iget-object p2, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p2, p2, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6404
    iget-object p2, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p2, p2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    if-ltz p2, :cond_42

    .line 6405
    iget-object p2, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p2, p2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    iget-object p3, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p3, p3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iget-object p4, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p4, p4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    invoke-direct {p0, v6, p2, p3, p4}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/lang/StringBuilder;III)V

    .line 6407
    iget-object p2, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p2, p2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    if-ltz p2, :cond_41

    .line 6408
    iget-object p2, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p2, p2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iget-object p3, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p3, p3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iget-object p4, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p4, p4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    invoke-direct {p0, v6, p2, p3, p4}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/lang/StringBuilder;III)V

    .line 6411
    :cond_41
    iget-object p2, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p2, p2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    if-ltz p2, :cond_42

    .line 6412
    iget-object p2, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p2, p2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    iget-object p3, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p3, p3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iget-object p4, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p4, p4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    invoke-direct {p0, v6, p2, p3, p4}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/lang/StringBuilder;III)V

    :cond_42
    const-string p2, "\n"

    .line 6416
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6417
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "h"

    .line 6418
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",0,Dpst="

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6419
    iget-object p2, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p2, p2, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6420
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6421
    iget-object p2, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p2, p2, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6422
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6423
    iget-object p2, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p2, p2, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6424
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6425
    iget-object p2, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p2, p2, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6426
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6427
    iget-object p2, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p2, p2, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6428
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6429
    iget-object p2, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget p2, p2, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6430
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6431
    iget-object p2, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object p2, p2, Landroid/os/BatteryStats$HistoryStepDetails;->statPlatformIdleState:Ljava/lang/String;

    if-eqz p2, :cond_43

    .line 6432
    iget-object p2, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object p2, p2, Landroid/os/BatteryStats$HistoryStepDetails;->statPlatformIdleState:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6433
    iget-object p2, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object p2, p2, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    if-eqz p2, :cond_43

    .line 6434
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6438
    :cond_43
    iget-object p2, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object p2, p2, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    if-eqz p2, :cond_44

    .line 6439
    iget-object p2, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object p2, p2, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_44
    const-string p2, "\n"

    .line 6441
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6444
    :cond_45
    :goto_25
    iget p2, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    iput p2, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    .line 6445
    iget p1, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iput p1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    goto :goto_27

    :cond_46
    :goto_26
    if-eqz p4, :cond_47

    const-string p2, ":"

    .line 6155
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6157
    :cond_47
    iget-byte p2, p1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-ne p2, v1, :cond_48

    const-string p2, "RESET:"

    .line 6158
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6159
    invoke-virtual {p0}, Landroid/os/BatteryStats$HistoryPrinter;->reset()V

    :cond_48
    const-string p0, "TIME:"

    .line 6161
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_49

    .line 6163
    iget-wide p0, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-virtual {v6, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    .line 6164
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    :cond_49
    const-string p0, " "

    .line 6166
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "yyyy-MM-dd-HH-mm-ss"

    .line 6167
    iget-wide p1, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-static {p0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    .line 6168
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6167
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    .line 6169
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6448
    :goto_27
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method private printStepCpuUidCheckinDetails(Ljava/lang/StringBuilder;III)V
    .locals 0

    const/16 p0, 0x2f

    .line 6462
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6463
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    .line 6464
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6465
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    .line 6466
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6467
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method private printStepCpuUidDetails(Ljava/lang/StringBuilder;III)V
    .locals 0

    .line 6452
    invoke-static {p1, p2}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    const-string p0, "="

    .line 6453
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6454
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "u+"

    .line 6455
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6456
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "s"

    .line 6457
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V
    .locals 6

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move v5, p5

    .line 6120
    invoke-direct/range {v0 .. v5}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/os/BatteryStats$HistoryItem;JZZ)Ljava/lang/String;

    move-result-object p0

    const-string p2, "\n"

    .line 6121
    invoke-virtual {p0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p2, p0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    aget-object p4, p0, p3

    const-wide v0, 0x20900000006L

    .line 6122
    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move v4, p5

    move v5, p6

    .line 6114
    invoke-direct/range {v0 .. v5}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/os/BatteryStats$HistoryItem;JZZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    .line 6102
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    const/4 v0, -0x1

    .line 6103
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    .line 6104
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    .line 6105
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    .line 6106
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    .line 6107
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    .line 6108
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    .line 6109
    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    return-void
.end method
