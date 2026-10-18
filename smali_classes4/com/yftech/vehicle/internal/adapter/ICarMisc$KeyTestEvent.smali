.class public Lcom/yftech/vehicle/internal/adapter/ICarMisc$KeyTestEvent;
.super Ljava/lang/Object;
.source "ICarMisc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyTestEvent"
.end annotation


# static fields
.field public static final ACTION_LONG_PRESS:I = 0x3

.field public static final ACTION_LONG_RELEASED:I = 0x2

.field public static final ACTION_PRESS:I = 0x1

.field public static final ACTION_RELEASED:I = 0x0

.field public static final KEYCODE_AM_FM:I = 0x2

.field public static final KEYCODE_BACK:I = 0xf

.field public static final KEYCODE_DISPLAY:I = 0x13

.field public static final KEYCODE_EJECT:I = 0x1

.field public static final KEYCODE_FM_ROLLING:I = 0x10

.field public static final KEYCODE_MENU:I = 0x7

.field public static final KEYCODE_MODE:I = 0x8

.field public static final KEYCODE_MUTE:I = 0xe

.field public static final KEYCODE_NAVI:I = 0xc

.field public static final KEYCODE_NEXT:I = 0x3

.field public static final KEYCODE_NONE:I = -0x1

.field public static final KEYCODE_PHONE:I = 0xa

.field public static final KEYCODE_POWER:I = 0x0

.field public static final KEYCODE_PREVIOUS:I = 0x4

.field public static final KEYCODE_RANDOM:I = 0x6

.field public static final KEYCODE_REPEAT:I = 0x5

.field public static final KEYCODE_RESEVE:I = 0x9

.field public static final KEYCODE_SELECT:I = 0x11

.field public static final KEYCODE_SET:I = 0xd

.field public static final KEYCODE_VOLUME:I = 0x12

.field public static final KEYCODE_VR:I = 0xb


# instance fields
.field public final action:I

.field public final keyCode:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput p2, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$KeyTestEvent;->action:I

    .line 256
    iput p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$KeyTestEvent;->keyCode:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarMisc$KeyTestEvent;
    .locals 2

    .line 260
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$KeyTestEvent;

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 p0, p0, 0xff

    invoke-direct {v0, v1, p0}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$KeyTestEvent;-><init>(II)V

    return-object v0
.end method
