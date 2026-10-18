.class public interface abstract Lcom/yftech/vehicle/internal/adapter/IBaseApi;
.super Ljava/lang/Object;
.source "IBaseApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;,
        Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;,
        Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    }
.end annotation


# static fields
.field public static final BUTTON_ACTION_PRESS:B = 0x1t

.field public static final BUTTON_ACTION_RELEASE:B = 0x0t

.field public static final STATE_DISABLED:B = 0x0t

.field public static final STATE_ENABLED:B = 0x1t

.field public static final SWITCH_TURN_OFF:B = 0x1t

.field public static final SWITCH_TURN_ON:B = 0x2t
