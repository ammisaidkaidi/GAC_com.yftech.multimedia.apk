.class public Lcom/yftech/vehicle/internal/adapter/ICarKey$CarKeyEvent;
.super Ljava/lang/Object;
.source "ICarKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CarKeyEvent"
.end annotation


# static fields
.field public static final ACTION_KNOB_BACKWARD:I = 0x4

.field public static final ACTION_KNOB_FORWARD:I = 0x3

.field public static final ACTION_LONG_PRESS:I = 0x2

.field public static final ACTION_PRESS:I = 0x0

.field public static final ACTION_RELEASED:I = 0x1

.field public static final KEYCODE_BACK:I = 0x11

.field public static final KEYCODE_CAN_AC_WIND_SPEED_DOWN:I = 0x41

.field public static final KEYCODE_CAN_AC_WIND_SPEED_UP:I = 0x40

.field public static final KEYCODE_CUSTOM_MULTIPLEX:I = 0x80

.field public static final KEYCODE_CUSTOM_RADAR:I = 0x81

.field public static final KEYCODE_DOWN:I = 0x21

.field public static final KEYCODE_ENTER:I = 0xa

.field public static final KEYCODE_HOME:I = 0x12

.field public static final KEYCODE_LEFT:I = 0x22

.field public static final KEYCODE_LEFT_DOWN:I = 0x25

.field public static final KEYCODE_LEFT_UP:I = 0x24

.field public static final KEYCODE_MEDIA:I = 0x15

.field public static final KEYCODE_MENU:I = 0x10

.field public static final KEYCODE_MODE:I = 0x5

.field public static final KEYCODE_MUTE:I = 0xb

.field public static final KEYCODE_NAVI:I = 0x14

.field public static final KEYCODE_NONE:I = 0x0

.field public static final KEYCODE_PHONE:I = 0x9

.field public static final KEYCODE_PHONE_ACCEPT:I = 0x7

.field public static final KEYCODE_PHONE_CANCEL:I = 0x8

.field public static final KEYCODE_POWER:I = 0x16

.field public static final KEYCODE_RADIO:I = 0x13

.field public static final KEYCODE_RIGHT:I = 0x23

.field public static final KEYCODE_RIGHT_DOWN:I = 0x27

.field public static final KEYCODE_RIGHT_UP:I = 0x26

.field public static final KEYCODE_SEEK_DOWN:I = 0x1

.field public static final KEYCODE_SEEK_UP:I = 0x2

.field public static final KEYCODE_UP:I = 0x20

.field public static final KEYCODE_VOICE:I = 0x6

.field public static final KEYCODE_VOLUME_DOWN:I = 0x4

.field public static final KEYCODE_VOLUME_UP:I = 0x3

.field public static final KEYCODE_WECHAT:I = 0x17


# instance fields
.field public final action:I

.field public final keyCode:I

.field public final stepNum:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput p2, p0, Lcom/yftech/vehicle/internal/adapter/ICarKey$CarKeyEvent;->action:I

    .line 110
    iput p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarKey$CarKeyEvent;->keyCode:I

    .line 111
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarKey$CarKeyEvent;->stepNum:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarKey$CarKeyEvent;
    .locals 3

    .line 115
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarKey$CarKeyEvent;

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, p0, 0xff

    shr-int/lit8 p0, p0, 0x10

    and-int/lit16 p0, p0, 0xff

    invoke-direct {v0, v1, v2, p0}, Lcom/yftech/vehicle/internal/adapter/ICarKey$CarKeyEvent;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarKeyEvent{action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarKey$CarKeyEvent;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", keyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarKey$CarKeyEvent;->keyCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", stepNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarKey$CarKeyEvent;->stepNum:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
