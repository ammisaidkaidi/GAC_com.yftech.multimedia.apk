.class public Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardMsgAudio;
.super Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardMsg;
.source "ICarDashBoard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDashBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DashBoardMsgAudio"
.end annotation


# static fields
.field public static final AUDIO_STATE_LOADING_AUDIO_FILE_LIST:B = 0x37t

.field public static final AUDIO_STATE_NO_AUDIO_FILE:B = 0x29t

.field public static final AUDIO_STATE_NO_DEVICES_CONNECTED:B = 0x3at

.field public static final AUDIO_STATE_NO_DISPLAY:B = 0x0t

.field public static final AUDIO_STATE_UNPLAYABLE_FILE:B = 0x26t


# instance fields
.field public audioState:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1236
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardMsg;-><init>()V

    return-void
.end method
