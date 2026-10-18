.class public Lcom/media/common/event/MediaDataCallbackForScanStatusChangedEvent;
.super Ljava/lang/Object;
.source "MediaDataCallbackForScanStatusChangedEvent.java"


# instance fields
.field public isScanner:Z

.field public usbIndex:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/media/common/event/MediaDataCallbackForScanStatusChangedEvent;->usbIndex:I

    .line 19
    iput-boolean p2, p0, Lcom/media/common/event/MediaDataCallbackForScanStatusChangedEvent;->isScanner:Z

    return-void
.end method
