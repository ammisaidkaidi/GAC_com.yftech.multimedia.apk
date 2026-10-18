.class public interface abstract Lcom/yftech/vehicle/internal/adapter/ICarDevice;
.super Ljava/lang/Object;
.source "ICarDevice.java"

# interfaces
.implements Lcom/yftech/vehicle/internal/adapter/IBaseApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/vehicle/internal/adapter/ICarDevice$BsvFunctionCmd;,
        Lcom/yftech/vehicle/internal/adapter/ICarDevice$PASBackParkDisplayState;,
        Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;,
        Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;,
        Lcom/yftech/vehicle/internal/adapter/ICarDevice$RecorderEnterCmd;
    }
.end annotation


# static fields
.field public static final APA_BUTTON_SETTING:I = 0x206

.field public static final BSV_BUTTON_SETTING:I = 0x217

.field public static final BSV_DISPLAY_STATE:I = 0x214

.field public static final BSV_DISPLAY_SWITCH:I = 0x212

.field public static final BSV_FUNCTION_CMD_SETTING:I = 0x213

.field public static final PAA_MODE_SETTING:I = 0x205

.field public static final PAS_BACKPARK_DISPLAY_STATE:I = 0x209

.field public static final RECORDER_DISPLAY_STATE:I = 0x198

.field public static final RECORDER_ENTER_CMD_SETTING:I = 0x19a

.field public static final RECORDER_RECORD_STATE:I = 0x199

.field public static final SVM_BUTTON_SETTING:I = 0x134

.field public static final SVM_FUNCTION_CMD_SETTING:I = 0x19b
