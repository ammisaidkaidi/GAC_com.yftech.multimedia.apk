.class public final Lcom/android/internal/app/ColorDisplayController;
.super Ljava/lang/Object;
.source "ColorDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ColorDisplayController$Callback;,
        Lcom/android/internal/app/ColorDisplayController$ColorMode;,
        Lcom/android/internal/app/ColorDisplayController$AutoMode;
    }
.end annotation


# static fields
.field public static final AUTO_MODE_CUSTOM:I = 0x1

.field public static final AUTO_MODE_DISABLED:I = 0x0

.field public static final AUTO_MODE_TWILIGHT:I = 0x2

.field public static final COLOR_MODE_AUTOMATIC:I = 0x3

.field public static final COLOR_MODE_BOOSTED:I = 0x1

.field public static final COLOR_MODE_NATURAL:I = 0x0

.field public static final COLOR_MODE_SATURATED:I = 0x2

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ColorDisplayController"


# instance fields
.field private mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 121
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/ColorDisplayController;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    .line 126
    iput p2, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    .line 128
    new-instance p1, Lcom/android/internal/app/ColorDisplayController$1;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Lcom/android/internal/app/ColorDisplayController$1;-><init>(Lcom/android/internal/app/ColorDisplayController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/internal/app/ColorDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ColorDisplayController;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/internal/app/ColorDisplayController;->onSettingChanged(Ljava/lang/String;)V

    return-void
.end method

.method private getCurrentColorModeFromSystemProperties()I
    .locals 2

    const-string p0, "persist.sys.sf.native_mode"

    const/4 v0, 0x0

    .line 370
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    const-string p0, "1.0"

    const-string v1, "persist.sys.sf.color_saturation"

    .line 372
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_0
    const/4 v1, 0x2

    if-ne p0, v0, :cond_1

    return v1

    :cond_1
    if-ne p0, v1, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_0

    .line 555
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 557
    :cond_0
    iget-object p0, p0, Lcom/android/internal/app/ColorDisplayController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object p0
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 1

    .line 564
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1120083

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private isColorModeAvailable(I)Z
    .locals 4

    .line 384
    iget-object p0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1070013

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 387
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private onSettingChanged(Ljava/lang/String;)V
    .locals 2

    .line 489
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    .line 490
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "night_display_custom_start_time"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "display_color_mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_2
    const-string v1, "night_display_activated"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_3
    const-string v1, "accessibility_display_inversion_enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_4
    const-string v1, "accessibility_display_daltonizer_enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_5
    const-string v1, "night_display_color_temperature"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_6
    const-string v1, "night_display_custom_end_time"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_7
    const-string v1, "night_display_auto_mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 511
    :pswitch_0
    iget-object p1, p0, Lcom/android/internal/app/ColorDisplayController;->mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->getAccessibilityTransformActivated()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/internal/app/ColorDisplayController$Callback;->onAccessibilityTransformChanged(Z)V

    goto :goto_1

    .line 507
    :pswitch_1
    iget-object p1, p0, Lcom/android/internal/app/ColorDisplayController;->mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->getColorMode()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/internal/app/ColorDisplayController$Callback;->onDisplayColorModeChanged(I)V

    goto :goto_1

    .line 504
    :pswitch_2
    iget-object p1, p0, Lcom/android/internal/app/ColorDisplayController;->mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->getColorTemperature()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/internal/app/ColorDisplayController$Callback;->onColorTemperatureChanged(I)V

    goto :goto_1

    .line 501
    :pswitch_3
    iget-object p1, p0, Lcom/android/internal/app/ColorDisplayController;->mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->getCustomEndTime()Ljava/time/LocalTime;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/internal/app/ColorDisplayController$Callback;->onCustomEndTimeChanged(Ljava/time/LocalTime;)V

    goto :goto_1

    .line 498
    :pswitch_4
    iget-object p1, p0, Lcom/android/internal/app/ColorDisplayController;->mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->getCustomStartTime()Ljava/time/LocalTime;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/internal/app/ColorDisplayController$Callback;->onCustomStartTimeChanged(Ljava/time/LocalTime;)V

    goto :goto_1

    .line 495
    :pswitch_5
    iget-object p1, p0, Lcom/android/internal/app/ColorDisplayController;->mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/internal/app/ColorDisplayController$Callback;->onAutoModeChanged(I)V

    goto :goto_1

    .line 492
    :pswitch_6
    iget-object p1, p0, Lcom/android/internal/app/ColorDisplayController;->mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/internal/app/ColorDisplayController$Callback;->onActivated(Z)V

    :cond_1
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x797bb571 -> :sswitch_7
        -0x6900ebe5 -> :sswitch_6
        -0x39c8c50c -> :sswitch_5
        -0x28f198ce -> :sswitch_4
        -0x20db1ad9 -> :sswitch_3
        0x2fb0ca2d -> :sswitch_2
        0x5d15789c -> :sswitch_1
        0x5e128274 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getAccessibilityTransformActivated()Z
    .locals 4

    .line 476
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_inversion_enabled"

    .line 477
    iget v2, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    const/4 v3, 0x0

    .line 478
    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const-string v1, "accessibility_display_daltonizer_enabled"

    iget p0, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    .line 480
    invoke-static {v0, v1, v3, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2
.end method

.method public getAutoMode()I
    .locals 4

    .line 194
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "night_display_auto_mode"

    iget v2, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    const/4 v3, -0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 200
    iget-object p0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e002d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 p0, 0x1

    if-eq v0, p0, :cond_1

    const/4 p0, 0x2

    if-eq v0, p0, :cond_1

    const-string p0, "ColorDisplayController"

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid autoMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public getAutoModeRaw()I
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "night_display_auto_mode"

    iget p0, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public getColorMode()I
    .locals 6

    .line 400
    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->getAccessibilityTransformActivated()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    .line 401
    invoke-direct {p0, v2}, Lcom/android/internal/app/ColorDisplayController;->isColorModeAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 403
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/internal/app/ColorDisplayController;->isColorModeAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "display_color_mode"

    iget v4, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    const/4 v5, -0x1

    invoke-static {v0, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 413
    invoke-direct {p0}, Lcom/android/internal/app/ColorDisplayController;->getCurrentColorModeFromSystemProperties()I

    move-result v0

    .line 418
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/internal/app/ColorDisplayController;->isColorModeAvailable(I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_6

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    .line 419
    invoke-direct {p0, v4}, Lcom/android/internal/app/ColorDisplayController;->isColorModeAvailable(I)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_4

    .line 422
    invoke-direct {p0, v1}, Lcom/android/internal/app/ColorDisplayController;->isColorModeAvailable(I)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    if-ne v0, v1, :cond_5

    .line 425
    invoke-direct {p0, v2}, Lcom/android/internal/app/ColorDisplayController;->isColorModeAvailable(I)Z

    move-result p0

    if-eqz p0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v5

    :cond_6
    :goto_0
    return v0
.end method

.method public getColorTemperature()I
    .locals 4

    .line 333
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "night_display_color_temperature"

    iget v2, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    const/4 v3, -0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->getDefaultColorTemperature()I

    move-result v0

    .line 342
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->getMinimumColorTemperature()I

    move-result v1

    .line 343
    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->getMaximumColorTemperature()I

    move-result p0

    if-ge v0, v1, :cond_1

    move p0, v1

    goto :goto_0

    :cond_1
    if-le v0, p0, :cond_2

    goto :goto_0

    :cond_2
    move p0, v0

    :goto_0
    return p0
.end method

.method public getCustomEndTime()Ljava/time/LocalTime;
    .locals 4

    .line 296
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "night_display_custom_end_time"

    iget v2, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    const/4 v3, -0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 303
    iget-object p0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e002e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 307
    :cond_0
    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0
.end method

.method public getCustomStartTime()Ljava/time/LocalTime;
    .locals 4

    .line 258
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "night_display_custom_start_time"

    iget v2, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    const/4 v3, -0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 265
    iget-object p0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e002f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 269
    :cond_0
    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultColorTemperature()I
    .locals 1

    .line 468
    iget-object p0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e0071

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public getLastActivatedTime()Ljava/time/LocalDateTime;
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "night_display_last_activated_time"

    .line 172
    iget p0, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 176
    :try_start_0
    invoke-static {p0}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object v0
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 181
    :catch_0
    :try_start_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    .line 182
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    .line 180
    invoke-static {p0, v0}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p0
    :try_end_1
    .catch Ljava/time/DateTimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMaximumColorTemperature()I
    .locals 1

    .line 460
    iget-object p0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e0072

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public getMinimumColorTemperature()I
    .locals 1

    .line 452
    iget-object p0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e0073

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public isActivated()Z
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "night_display_activated"

    iget p0, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    return v0
.end method

.method public setActivated(Z)Z
    .locals 4

    .line 156
    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "night_display_last_activated_time"

    .line 159
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    .line 157
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "night_display_activated"

    .line 163
    iget p0, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    .line 162
    invoke-static {v0, v1, p1, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public setAutoMode(I)Z
    .locals 4

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid autoMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 238
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 239
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "night_display_last_activated_time"

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 243
    invoke-direct {p0}, Lcom/android/internal/app/ColorDisplayController;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x51d

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x4

    .line 245
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 246
    invoke-virtual {v1, p1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 243
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 249
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "night_display_auto_mode"

    iget p0, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    invoke-static {v0, v1, p1, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public setColorMode(I)V
    .locals 2

    .line 441
    invoke-direct {p0, p1}, Lcom/android/internal/app/ColorDisplayController;->isColorModeAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_color_mode"

    iget p0, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    invoke-static {v0, v1, p1, p0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    .line 442
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid colorMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setColorTemperature(I)Z
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "night_display_color_temperature"

    iget p0, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    invoke-static {v0, v1, p1, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public setCustomEndTime(Ljava/time/LocalTime;)Z
    .locals 3

    if-eqz p1, :cond_0

    .line 321
    invoke-direct {p0}, Lcom/android/internal/app/ColorDisplayController;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x51e

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x4

    .line 323
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    const/4 v2, 0x1

    .line 324
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 321
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 325
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "night_display_custom_end_time"

    .line 326
    invoke-virtual {p1}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    iget p0, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    .line 325
    invoke-static {v0, v1, p1, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0

    .line 319
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "endTime cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCustomStartTime(Ljava/time/LocalTime;)Z
    .locals 3

    if-eqz p1, :cond_0

    .line 283
    invoke-direct {p0}, Lcom/android/internal/app/ColorDisplayController;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x51e

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x4

    .line 285
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    const/4 v2, 0x0

    .line 286
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 283
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 287
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "night_display_custom_start_time"

    .line 288
    invoke-virtual {p1}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    iget p0, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    .line 287
    invoke-static {v0, v1, p1, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0

    .line 281
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "startTime cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V
    .locals 4

    .line 521
    iget-object v0, p0, Lcom/android/internal/app/ColorDisplayController;->mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

    if-eq v0, p1, :cond_1

    .line 523
    iput-object p1, p0, Lcom/android/internal/app/ColorDisplayController;->mCallback:Lcom/android/internal/app/ColorDisplayController$Callback;

    if-nez p1, :cond_0

    .line 527
    iget-object p1, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/app/ColorDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 530
    iget-object p1, p0, Lcom/android/internal/app/ColorDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "night_display_activated"

    .line 531
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ColorDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v2, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v0, "night_display_auto_mode"

    .line 533
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ColorDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v2, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v0, "night_display_custom_start_time"

    .line 535
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ColorDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v2, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v0, "night_display_custom_end_time"

    .line 537
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ColorDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v2, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v0, "night_display_color_temperature"

    .line 539
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ColorDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v2, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v0, "display_color_mode"

    .line 541
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ColorDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v2, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v0, "accessibility_display_inversion_enabled"

    .line 544
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ColorDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget v2, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    .line 543
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v0, "accessibility_display_daltonizer_enabled"

    .line 547
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ColorDisplayController;->mContentObserver:Landroid/database/ContentObserver;

    iget p0, p0, Lcom/android/internal/app/ColorDisplayController;->mUserId:I

    .line 546
    invoke-virtual {p1, v0, v3, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_1
    :goto_0
    return-void
.end method
