.class public Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;
.super Ljava/lang/Object;
.source "Ihu23Project.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/project/Ihu23Project;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChargeInfo"
.end annotation


# instance fields
.field public bookChrgMode:Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;

.field public bookChrgStartRemainingDay:I

.field public bookChrgStartRemainingHour:I

.field public bookChrgStartRemainingMin:I

.field public bookStartDay:I

.field public bookStartHour:I

.field public bookStartMin:I

.field public bookStartMon:I

.field public bookStartYear:I

.field public bookStopDay:I

.field public bookStopHour:I

.field public bookStopMin:I

.field public bookStopMon:I

.field public bookStopYear:I

.field public repeatBookChrgDay1:Z

.field public repeatBookChrgDay2:Z

.field public repeatBookChrgDay3:Z

.field public repeatBookChrgDay4:Z

.field public repeatBookChrgDay5:Z

.field public repeatBookChrgDay6:Z

.field public repeatBookChrgDay7:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;

    iput-object v0, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookChrgMode:Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;

    return-void
.end method

.method public constructor <init>(IIIIIIIIIILcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;ZZZZZZZ)V
    .locals 2

    move-object v0, p0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v1, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;

    iput-object v1, v0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookChrgMode:Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;

    move v1, p1

    .line 85
    iput v1, v0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStartYear:I

    move v1, p2

    .line 86
    iput v1, v0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStopYear:I

    move v1, p3

    .line 87
    iput v1, v0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStartMon:I

    move v1, p4

    .line 88
    iput v1, v0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStartDay:I

    move v1, p5

    .line 89
    iput v1, v0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStartHour:I

    move v1, p6

    .line 90
    iput v1, v0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStartMin:I

    move v1, p7

    .line 91
    iput v1, v0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStopMon:I

    move v1, p8

    .line 92
    iput v1, v0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStopDay:I

    move v1, p9

    .line 93
    iput v1, v0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStopHour:I

    move v1, p10

    .line 94
    iput v1, v0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStopMin:I

    move-object v1, p11

    .line 95
    iput-object v1, v0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookChrgMode:Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;

    move v1, p12

    .line 96
    iput-boolean v1, v0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->repeatBookChrgDay1:Z

    move v1, p13

    .line 97
    iput-boolean v1, v0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->repeatBookChrgDay2:Z

    move/from16 v1, p14

    .line 98
    iput-boolean v1, v0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->repeatBookChrgDay3:Z

    move/from16 v1, p15

    .line 99
    iput-boolean v1, v0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->repeatBookChrgDay4:Z

    move/from16 v1, p16

    .line 100
    iput-boolean v1, v0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->repeatBookChrgDay5:Z

    move/from16 v1, p17

    .line 101
    iput-boolean v1, v0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->repeatBookChrgDay6:Z

    move/from16 v1, p18

    .line 102
    iput-boolean v1, v0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->repeatBookChrgDay7:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChargeInfo{bookChrgStartRemainingDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookChrgStartRemainingDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bookChrgStartRemainingHour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookChrgStartRemainingHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bookChrgStartRemainingMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookChrgStartRemainingMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bookStartYear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStartYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bookStopYear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStopYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bookStartMon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStartMon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bookStartDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStartDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bookStartHour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStartHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bookStartMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStartMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bookStopMon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStopMon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bookStopDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStopDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bookStopHour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStopHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bookStopMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookStopMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bookChrgMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->bookChrgMode:Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", repeatBookChrgDay1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->repeatBookChrgDay1:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", repeatBookChrgDay2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->repeatBookChrgDay2:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", repeatBookChrgDay3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->repeatBookChrgDay3:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", repeatBookChrgDay4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->repeatBookChrgDay4:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", repeatBookChrgDay5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->repeatBookChrgDay5:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", repeatBookChrgDay6="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->repeatBookChrgDay6:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", repeatBookChrgDay7="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeInfo;->repeatBookChrgDay7:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
