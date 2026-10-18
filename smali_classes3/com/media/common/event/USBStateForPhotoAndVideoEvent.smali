.class public Lcom/media/common/event/USBStateForPhotoAndVideoEvent;
.super Ljava/lang/Object;
.source "USBStateForPhotoAndVideoEvent.java"


# instance fields
.field public isUsbExists:Z

.field public usbIndex:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/media/common/event/USBStateForPhotoAndVideoEvent;->usbIndex:I

    .line 18
    iput-boolean p2, p0, Lcom/media/common/event/USBStateForPhotoAndVideoEvent;->isUsbExists:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "usbIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/media/common/event/USBStateForPhotoAndVideoEvent;->usbIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isUsbExists="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/media/common/event/USBStateForPhotoAndVideoEvent;->isUsbExists:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
