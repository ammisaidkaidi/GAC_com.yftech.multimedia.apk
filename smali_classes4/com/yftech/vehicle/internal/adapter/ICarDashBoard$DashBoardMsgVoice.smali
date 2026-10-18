.class public Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DashBoardMsgVoice;
.super Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardMsg;
.source "ICarDashBoard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDashBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DashBoardMsgVoice"
.end annotation


# static fields
.field public static final VOICE_ACTION_END:B = 0x2t

.field public static final VOICE_ACTION_START:B


# instance fields
.field public voiceAction:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1224
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardMsg;-><init>()V

    return-void
.end method
