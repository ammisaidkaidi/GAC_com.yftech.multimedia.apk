.class public interface abstract Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;
.super Ljava/lang/Object;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/manager/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnRadioControlListener"
.end annotation


# static fields
.field public static final SCAN_STATUS_IDLE:I = 0x0

.field public static final SCAN_STATUS_ING:I = 0x1

.field public static final SCAN_TYPE_IDLE:I = 0x0

.field public static final SCAN_TYPE_ING:I = 0x3

.field public static final SCAN_TYPE_SCAN_ALL:I = 0x4

.field public static final SCAN_TYPE_SEEK_DOWN:I = 0x2

.field public static final SCAN_TYPE_SEEK_PLAY:I = 0x5

.field public static final SCAN_TYPE_SEEK_UP:I = 0x1


# virtual methods
.method public abstract onAudioFocusChange(I)V
.end method

.method public abstract onFavorChange(ILcom/yftech/car/media/radio/entity/DataOfRadio;)V
.end method

.method public abstract onFreqChanage(ILcom/yftech/car/media/radio/entity/DataOfRadio;Lcom/yftech/car/media/radio/entity/DataOfRadio;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onFreqChange(Lcom/yftech/car/media/radio/entity/DataOfRadio;Lcom/yftech/car/media/radio/entity/DataOfRadio;)V
.end method

.method public abstract onPlayPause(Z)V
.end method

.method public abstract onPlaySignalUpdate(Lcom/yftech/car/media/radio/entity/DataOfRadio;I)V
.end method

.method public abstract onRadioMute(Z)V
.end method

.method public abstract onRdsCommonStatusChange(IZ)V
.end method

.method public abstract onRdsCommonStringChange(ILjava/lang/String;)V
.end method

.method public abstract onRdsPiFreqChange(II)V
.end method

.method public abstract onRdsPtyStatusChange(I)V
.end method

.method public abstract onRdsScanStatusChange(Lcom/yftech/car/media/radio/rds/entity/RdsInfo;)V
.end method

.method public abstract onScanFreqSignal(Lcom/yftech/car/media/radio/entity/DataOfRadio;I)V
.end method

.method public abstract onSeekStatusChange(III)V
.end method
