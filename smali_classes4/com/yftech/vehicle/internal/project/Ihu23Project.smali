.class public Lcom/yftech/vehicle/internal/project/Ihu23Project;
.super Ljava/lang/Object;
.source "Ihu23Project.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;,
        Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formartChargeInfoByteArray(Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;)[B
    .locals 3

    const/16 v0, 0x14

    .line 139
    new-array v0, v0, [B

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/16 v2, -0x68

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    aput-byte v1, v0, v1

    const/4 v1, 0x2

    .line 145
    iget v2, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStartMon:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    .line 146
    iget v2, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStartDay:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    .line 147
    iget v2, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStartHour:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    .line 148
    iget v2, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStartMin:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    .line 149
    iget v2, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStopMon:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    .line 150
    iget v2, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStopDay:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    .line 151
    iget v2, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStopHour:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    .line 152
    iget v2, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStopMin:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    .line 153
    iget-object v2, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookChrgMode:Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;

    iget v2, v2, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;->value:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    .line 154
    iget-boolean v2, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->repeatBookChrgDay1:Z

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    .line 155
    iget-boolean v2, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->repeatBookChrgDay2:Z

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    .line 156
    iget-boolean v2, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->repeatBookChrgDay3:Z

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    .line 157
    iget-boolean v2, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->repeatBookChrgDay4:Z

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    .line 158
    iget-boolean v2, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->repeatBookChrgDay5:Z

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    .line 159
    iget-boolean v2, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->repeatBookChrgDay6:Z

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    .line 160
    iget-boolean v2, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->repeatBookChrgDay7:Z

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 161
    iget v1, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStartYear:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_1

    .line 162
    iget v1, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStartYear:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStartYear:I

    .line 164
    :cond_1
    iget v1, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStopYear:I

    if-lt v1, v2, :cond_2

    .line 165
    iget v1, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStopYear:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStopYear:I

    :cond_2
    const/16 v1, 0x12

    .line 167
    iget v2, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStartYear:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    .line 168
    iget p0, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStopYear:I

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    return-object v0
.end method
