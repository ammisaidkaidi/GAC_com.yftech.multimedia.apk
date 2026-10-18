.class public Landroid/media/AudioSystem;
.super Ljava/lang/Object;
.source "AudioSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioSystem$AudioRecordingCallback;,
        Landroid/media/AudioSystem$DynamicPolicyCallback;,
        Landroid/media/AudioSystem$ErrorCallback;
    }
.end annotation


# static fields
.field public static final AUDIO_HW_SYNC_INVALID:I = 0x0

.field public static final AUDIO_SESSION_ALLOCATE:I = 0x0

.field public static final AUDIO_STATUS_ERROR:I = 0x1

.field public static final AUDIO_STATUS_OK:I = 0x0

.field public static final AUDIO_STATUS_SERVER_DIED:I = 0x64

.field public static final AUD_NAVIGATION_TYPE:I = 0x1

.field public static final BAD_VALUE:I = -0x2

.field public static final DEAD_OBJECT:I = -0x6

.field public static final DEFAULT_MUTE_STREAMS_AFFECTED:I = 0x50b2e

.field public static DEFAULT_STREAM_VOLUME:[I = null

.field public static final DEVICE_ALL_HDMI_SYSTEM_AUDIO_AND_SPEAKER:I = 0x2c0002

.field public static final DEVICE_BIT_DEFAULT:I = 0x40000000

.field public static final DEVICE_BIT_IN:I = -0x80000000

.field public static final DEVICE_IN_ALL:I = -0x3ce00001

.field public static final DEVICE_IN_ALL_SCO:I = -0x7ffffff8

.field public static final DEVICE_IN_ALL_USB:I = -0x7dffe800

.field public static final DEVICE_IN_AMBIENT:I = -0x7ffffffe

.field public static final DEVICE_IN_AMBIENT_NAME:Ljava/lang/String; = "ambient"

.field public static final DEVICE_IN_ANLG_DOCK_HEADSET:I = -0x7ffffe00

.field public static final DEVICE_IN_ANLG_DOCK_HEADSET_NAME:Ljava/lang/String; = "analog_dock"

.field public static final DEVICE_IN_AUX_DIGITAL:I = -0x7fffffe0

.field public static final DEVICE_IN_AUX_DIGITAL_NAME:Ljava/lang/String; = "aux_digital"

.field public static final DEVICE_IN_BACK_MIC:I = -0x7fffff80

.field public static final DEVICE_IN_BACK_MIC_NAME:Ljava/lang/String; = "back_mic"

.field public static final DEVICE_IN_BLUETOOTH_A2DP:I = -0x7ffe0000

.field public static final DEVICE_IN_BLUETOOTH_A2DP_NAME:Ljava/lang/String; = "bt_a2dp"

.field public static final DEVICE_IN_BLUETOOTH_SCO_HEADSET:I = -0x7ffffff8

.field public static final DEVICE_IN_BLUETOOTH_SCO_HEADSET_NAME:Ljava/lang/String; = "bt_sco_hs"

.field public static final DEVICE_IN_BUILTIN_MIC:I = -0x7ffffffc

.field public static final DEVICE_IN_BUILTIN_MIC_NAME:Ljava/lang/String; = "mic"

.field public static final DEVICE_IN_BUS:I = -0x7ff00000

.field public static final DEVICE_IN_BUS_NAME:Ljava/lang/String; = "bus"

.field public static final DEVICE_IN_COMMUNICATION:I = -0x7fffffff

.field public static final DEVICE_IN_COMMUNICATION_NAME:Ljava/lang/String; = "communication"

.field public static final DEVICE_IN_DEFAULT:I = -0x40000000

.field public static final DEVICE_IN_DGTL_DOCK_HEADSET:I = -0x7ffffc00

.field public static final DEVICE_IN_DGTL_DOCK_HEADSET_NAME:Ljava/lang/String; = "digital_dock"

.field public static final DEVICE_IN_FM_TUNER:I = -0x7fffe000

.field public static final DEVICE_IN_FM_TUNER_NAME:Ljava/lang/String; = "fm_tuner"

.field public static final DEVICE_IN_HDMI:I = -0x7fffffe0

.field public static final DEVICE_IN_IP:I = -0x7ff80000

.field public static final DEVICE_IN_IP_NAME:Ljava/lang/String; = "ip"

.field public static final DEVICE_IN_LINE:I = -0x7fff8000

.field public static final DEVICE_IN_LINE_NAME:Ljava/lang/String; = "line"

.field public static final DEVICE_IN_LOOPBACK:I = -0x7ffc0000

.field public static final DEVICE_IN_LOOPBACK_NAME:Ljava/lang/String; = "loopback"

.field public static final DEVICE_IN_PROXY:I = -0x7f000000

.field public static final DEVICE_IN_PROXY_NAME:Ljava/lang/String; = "proxy"

.field public static final DEVICE_IN_REMOTE_SUBMIX:I = -0x7fffff00

.field public static final DEVICE_IN_REMOTE_SUBMIX_NAME:Ljava/lang/String; = "remote_submix"

.field public static final DEVICE_IN_SPDIF:I = -0x7fff0000

.field public static final DEVICE_IN_SPDIF_NAME:Ljava/lang/String; = "spdif"

.field public static final DEVICE_IN_TELEPHONY_RX:I = -0x7fffffc0

.field public static final DEVICE_IN_TELEPHONY_RX_NAME:Ljava/lang/String; = "telephony_rx"

.field public static final DEVICE_IN_TV_TUNER:I = -0x7fffc000

.field public static final DEVICE_IN_TV_TUNER_NAME:Ljava/lang/String; = "tv_tuner"

.field public static final DEVICE_IN_USB_ACCESSORY:I = -0x7ffff800

.field public static final DEVICE_IN_USB_ACCESSORY_NAME:Ljava/lang/String; = "usb_accessory"

.field public static final DEVICE_IN_USB_DEVICE:I = -0x7ffff000

.field public static final DEVICE_IN_USB_DEVICE_NAME:Ljava/lang/String; = "usb_device"

.field public static final DEVICE_IN_USB_HEADSET:I = -0x7e000000

.field public static final DEVICE_IN_USB_HEADSET_NAME:Ljava/lang/String; = "usb_headset"

.field public static final DEVICE_IN_VOICE_CALL:I = -0x7fffffc0

.field public static final DEVICE_IN_WIRED_HEADSET:I = -0x7ffffff0

.field public static final DEVICE_IN_WIRED_HEADSET_NAME:Ljava/lang/String; = "headset"

.field public static final DEVICE_NONE:I = 0x0

.field public static final DEVICE_OUT_ALL:I = 0x4fffffff

.field public static final DEVICE_OUT_ALL_A2DP:I = 0x380

.field public static final DEVICE_OUT_ALL_HDMI_SYSTEM_AUDIO:I = 0x2c0000

.field public static final DEVICE_OUT_ALL_SCO:I = 0x70

.field public static final DEVICE_OUT_ALL_USB:I = 0x4006000

.field public static final DEVICE_OUT_ANLG_DOCK_HEADSET:I = 0x800

.field public static final DEVICE_OUT_ANLG_DOCK_HEADSET_NAME:Ljava/lang/String; = "analog_dock"

.field public static final DEVICE_OUT_AUX_DIGITAL:I = 0x400

.field public static final DEVICE_OUT_AUX_DIGITAL_NAME:Ljava/lang/String; = "aux_digital"

.field public static final DEVICE_OUT_AUX_LINE:I = 0x200000

.field public static final DEVICE_OUT_AUX_LINE_NAME:Ljava/lang/String; = "aux_line"

.field public static final DEVICE_OUT_BLUETOOTH_A2DP:I = 0x80

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES:I = 0x100

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES_NAME:Ljava/lang/String; = "bt_a2dp_hp"

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_NAME:Ljava/lang/String; = "bt_a2dp"

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER:I = 0x200

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER_NAME:Ljava/lang/String; = "bt_a2dp_spk"

.field public static final DEVICE_OUT_BLUETOOTH_SCO:I = 0x10

.field public static final DEVICE_OUT_BLUETOOTH_SCO_CARKIT:I = 0x40

.field public static final DEVICE_OUT_BLUETOOTH_SCO_CARKIT_NAME:Ljava/lang/String; = "bt_sco_carkit"

.field public static final DEVICE_OUT_BLUETOOTH_SCO_HEADSET:I = 0x20

.field public static final DEVICE_OUT_BLUETOOTH_SCO_HEADSET_NAME:Ljava/lang/String; = "bt_sco_hs"

.field public static final DEVICE_OUT_BLUETOOTH_SCO_NAME:Ljava/lang/String; = "bt_sco"

.field public static final DEVICE_OUT_BUS:I = 0x1000000

.field public static final DEVICE_OUT_BUS_NAME:Ljava/lang/String; = "bus"

.field public static final DEVICE_OUT_DEFAULT:I = 0x40000000

.field public static final DEVICE_OUT_DGTL_DOCK_HEADSET:I = 0x1000

.field public static final DEVICE_OUT_DGTL_DOCK_HEADSET_NAME:Ljava/lang/String; = "digital_dock"

.field public static final DEVICE_OUT_EARPIECE:I = 0x1

.field public static final DEVICE_OUT_EARPIECE_NAME:Ljava/lang/String; = "earpiece"

.field public static final DEVICE_OUT_FM:I = 0x100000

.field public static final DEVICE_OUT_FM_NAME:Ljava/lang/String; = "fm_transmitter"

.field public static final DEVICE_OUT_HDMI:I = 0x400

.field public static final DEVICE_OUT_HDMI_ARC:I = 0x40000

.field public static final DEVICE_OUT_HDMI_ARC_NAME:Ljava/lang/String; = "hmdi_arc"

.field public static final DEVICE_OUT_HDMI_NAME:Ljava/lang/String; = "hdmi"

.field public static final DEVICE_OUT_HEARING_AID:I = 0x8000000

.field public static final DEVICE_OUT_HEARING_AID_NAME:Ljava/lang/String; = "hearing_aid_out"

.field public static final DEVICE_OUT_IP:I = 0x800000

.field public static final DEVICE_OUT_IP_NAME:Ljava/lang/String; = "ip"

.field public static final DEVICE_OUT_LINE:I = 0x20000

.field public static final DEVICE_OUT_LINE_NAME:Ljava/lang/String; = "line"

.field public static final DEVICE_OUT_PROXY:I = 0x2000000

.field public static final DEVICE_OUT_PROXY_NAME:Ljava/lang/String; = "proxy"

.field public static final DEVICE_OUT_REMOTE_SUBMIX:I = 0x8000

.field public static final DEVICE_OUT_REMOTE_SUBMIX_NAME:Ljava/lang/String; = "remote_submix"

.field public static final DEVICE_OUT_SPDIF:I = 0x80000

.field public static final DEVICE_OUT_SPDIF_NAME:Ljava/lang/String; = "spdif"

.field public static final DEVICE_OUT_SPEAKER:I = 0x2

.field public static final DEVICE_OUT_SPEAKER_NAME:Ljava/lang/String; = "speaker"

.field public static final DEVICE_OUT_SPEAKER_SAFE:I = 0x400000

.field public static final DEVICE_OUT_SPEAKER_SAFE_NAME:Ljava/lang/String; = "speaker_safe"

.field public static final DEVICE_OUT_TELEPHONY_TX:I = 0x10000

.field public static final DEVICE_OUT_TELEPHONY_TX_NAME:Ljava/lang/String; = "telephony_tx"

.field public static final DEVICE_OUT_USB_ACCESSORY:I = 0x2000

.field public static final DEVICE_OUT_USB_ACCESSORY_NAME:Ljava/lang/String; = "usb_accessory"

.field public static final DEVICE_OUT_USB_DEVICE:I = 0x4000

.field public static final DEVICE_OUT_USB_DEVICE_NAME:Ljava/lang/String; = "usb_device"

.field public static final DEVICE_OUT_USB_HEADSET:I = 0x4000000

.field public static final DEVICE_OUT_USB_HEADSET_NAME:Ljava/lang/String; = "usb_headset"

.field public static final DEVICE_OUT_WIRED_HEADPHONE:I = 0x8

.field public static final DEVICE_OUT_WIRED_HEADPHONE_NAME:Ljava/lang/String; = "headphone"

.field public static final DEVICE_OUT_WIRED_HEADSET:I = 0x4

.field public static final DEVICE_OUT_WIRED_HEADSET_NAME:Ljava/lang/String; = "headset"

.field public static final DEVICE_STATE_AVAILABLE:I = 0x1

.field public static final DEVICE_STATE_UNAVAILABLE:I = 0x0

.field private static final DYNAMIC_POLICY_EVENT_MIX_STATE_UPDATE:I = 0x0

.field public static final ERROR:I = -0x1

.field public static final FORCE_ANALOG_DOCK:I = 0x8

.field public static final FORCE_BT_A2DP:I = 0x4

.field public static final FORCE_BT_CAR_DOCK:I = 0x6

.field public static final FORCE_BT_DESK_DOCK:I = 0x7

.field public static final FORCE_BT_SCO:I = 0x3

.field public static final FORCE_DEFAULT:I = 0x0

.field public static final FORCE_DIGITAL_DOCK:I = 0x9

.field public static final FORCE_ENCODED_SURROUND_ALWAYS:I = 0xe

.field public static final FORCE_ENCODED_SURROUND_MANUAL:I = 0xf

.field public static final FORCE_ENCODED_SURROUND_NEVER:I = 0xd

.field public static final FORCE_HDMI_SYSTEM_AUDIO_ENFORCED:I = 0xc

.field public static final FORCE_HEADPHONES:I = 0x2

.field public static final FORCE_NONE:I = 0x0

.field public static final FORCE_NO_BT_A2DP:I = 0xa

.field public static final FORCE_SPEAKER:I = 0x1

.field public static final FORCE_SYSTEM_ENFORCED:I = 0xb

.field public static final FORCE_WIRED_ACCESSORY:I = 0x5

.field public static final FOR_COMMUNICATION:I = 0x0

.field public static final FOR_DOCK:I = 0x3

.field public static final FOR_ENCODED_SURROUND:I = 0x6

.field public static final FOR_HDMI_SYSTEM_AUDIO:I = 0x5

.field public static final FOR_MEDIA:I = 0x1

.field public static final FOR_RECORD:I = 0x2

.field public static final FOR_SYSTEM:I = 0x4

.field public static final FOR_VIBRATE_RINGING:I = 0x7

.field public static final INVALID_OPERATION:I = -0x3

.field public static final IN_BT_COMM_FOCUS_ID:Ljava/lang/String; = "AudioFocus_For_BT_Ring_And_Calls"

.field public static final IN_VOICE_COMM_FOCUS_ID:Ljava/lang/String; = "AudioFocus_For_Phone_Ring_And_Calls"

.field public static final MODE_CURRENT:I = -0x1

.field public static final MODE_INVALID:I = -0x2

.field public static final MODE_IN_CALL:I = 0x2

.field public static final MODE_IN_COMMUNICATION:I = 0x3

.field public static final MODE_IN_CUSTOM_COMMUNICATION:I = 0x7e3

.field public static final MODE_IN_CUSTOM_VOICE_RECOGNITION:I = 0x7e4

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_RINGTONE:I = 0x1

.field static final NATIVE_EVENT_ROUTING_CHANGE:I = 0x3e8

.field public static final NO_INIT:I = -0x5

.field private static final NUM_DEVICE_STATES:I = 0x1

.field public static final NUM_FORCE_CONFIG:I = 0x10

.field private static final NUM_FORCE_USE:I = 0x8

.field public static final NUM_MODES:I = 0x7e5

.field public static final NUM_STREAMS:I = 0x5

.field private static final NUM_STREAM_TYPES:I = 0x31

.field public static final PERMISSION_DENIED:I = -0x4

.field public static final PHONE_STATE_INCALL:I = 0x2

.field public static final PHONE_STATE_OFFCALL:I = 0x0

.field public static final PHONE_STATE_RINGING:I = 0x1

.field public static final PLATFORM_DEFAULT:I = 0x0

.field public static final PLATFORM_TELEVISION:I = 0x2

.field public static final PLATFORM_VOICE:I = 0x1

.field public static final PLAY_SOUND_DELAY:I = 0x12c

.field public static final ROUTE_ALL:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH_A2DP:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH_SCO:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_EARPIECE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_HEADSET:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_SPEAKER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STREAM_A2DP:I = 0x14

.field public static final STREAM_ACCESSIBILITY:I = 0xa

.field public static final STREAM_ADAS:I = 0xe

.field public static final STREAM_ALARM:I = 0x4

.field public static final STREAM_ALTERNATE:I = 0x12

.field public static final STREAM_AUX:I = 0x1e

.field public static final STREAM_AUXIN:I = 0x10

.field public static final STREAM_BACKCAR:I = 0xc

.field public static final STREAM_BEEP:I = 0x19

.field public static final STREAM_BLUETOOTH_SCO:I = 0x6

.field public static final STREAM_CARLIFE:I = 0x22

.field public static final STREAM_CARPLAY:I = 0x21

.field public static final STREAM_CAR_ALARM:I = 0x26

.field public static final STREAM_CLUSTER:I = 0x2d

.field public static final STREAM_DEFAULT:I = -0x1

.field public static final STREAM_DSP:I = 0x25

.field public static final STREAM_DTMF:I = 0x8

.field public static final STREAM_DVR:I = 0x1d

.field public static final STREAM_GIS:I = 0xb

.field public static final STREAM_HDMI:I = 0x23

.field public static final STREAM_LAST:I = 0x31

.field public static final STREAM_MUSIC:I = 0x3

.field public static final STREAM_NAMES:[Ljava/lang/String;

.field public static final STREAM_NAVI:I = 0x18

.field public static final STREAM_NAVI_CARLIFE:I = 0x28

.field public static final STREAM_NAVI_CARPLAY:I = 0x27

.field public static final STREAM_NOTIFICATION:I = 0x5

.field public static final STREAM_PHONE:I = 0x15

.field public static final STREAM_PHONE_CARLIFE:I = 0x2c

.field public static final STREAM_PHONE_CARPLAY:I = 0x2b

.field public static final STREAM_RADAR:I = 0x1c

.field public static final STREAM_RADIO:I = 0x13

.field public static final STREAM_RDS:I = 0xd

.field public static final STREAM_RING:I = 0x2

.field public static final STREAM_SCREEN:I = 0x20

.field public static final STREAM_SMIX:I = 0xf

.field public static final STREAM_STANDBY:I = 0x1f

.field public static final STREAM_SVC:I = 0x24

.field public static final STREAM_SYSTEM:I = 0x1

.field public static final STREAM_SYSTEM_ENFORCED:I = 0x7

.field public static final STREAM_TBOX:I = 0x17

.field public static final STREAM_TBOX_B:I = 0x2e

.field public static final STREAM_TBOX_E:I = 0x17

.field public static final STREAM_TBOX_I:I = 0x2f

.field public static final STREAM_TTS:I = 0x9

.field public static final STREAM_VIDEO:I = 0x12

.field public static final STREAM_VOICE:I = 0x1a

.field public static final STREAM_VOICE_ASSISTANT:I = 0x11

.field public static final STREAM_VOICE_CALL:I = 0x0

.field public static final STREAM_VOICE_CARLIFE:I = 0x2a

.field public static final STREAM_VOICE_CARPLAY:I = 0x29

.field public static final STREAM_VOIP:I = 0x16

.field public static final STREAM_WARNING:I = 0x30

.field public static final STREAM_WECHAT:I = 0x1b

.field public static final SUCCESS:I = 0x0

.field public static final SYNC_EVENT_NONE:I = 0x0

.field public static final SYNC_EVENT_PRESENTATION_COMPLETE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AudioSystem"

.field public static final WOULD_BLOCK:I = -0x7

.field private static final YF_CUSTOM_BASE_TYPE:I = 0x12

.field private static mErrorCallback:Landroid/media/AudioSystem$ErrorCallback;

.field private static sDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

.field private static sRecordingCallback:Landroid/media/AudioSystem$AudioRecordingCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 49

    const-string v0, "STREAM_VOICE_CALL"

    const-string v1, "STREAM_SYSTEM"

    const-string v2, "STREAM_RING"

    const-string v3, "STREAM_MUSIC"

    const-string v4, "STREAM_ALARM"

    const-string v5, "STREAM_NOTIFICATION"

    const-string v6, "STREAM_BLUETOOTH_SCO"

    const-string v7, "STREAM_SYSTEM_ENFORCED"

    const-string v8, "STREAM_DTMF"

    const-string v9, "STREAM_TTS"

    const-string v10, "STREAM_ACCESSIBILITY"

    const-string v11, "STREAM_GIS"

    const-string v12, "STREAM_BACKCAR"

    const-string v13, "STREAM_RDS"

    const-string v14, "STREAM_ADAS"

    const-string v15, "STREAM_SMIX"

    const-string v16, "STREAM_AUXIN"

    const-string v17, "STREAM_VOICE_ASSISTANT"

    const-string v18, "STREAM_ALTERNATE"

    const-string v19, "STREAM_RADIO"

    const-string v20, "STREAM_A2DP"

    const-string v21, "STREAM_PHONE"

    const-string v22, "STREAM_VOIP"

    const-string v23, "STREAM_TBOX"

    const-string v24, "STREAM_NAVI"

    const-string v25, "STREAM_BEEP"

    const-string v26, "STREAM_VOICE"

    const-string v27, "STREAM_WECHAT"

    const-string v28, "STREAM_RADAR"

    const-string v29, "STREAM_DVR"

    const-string v30, "STREAM_AUX"

    const-string v31, "STREAM_STANDBY"

    const-string v32, "STREAM_SCREEN"

    const-string v33, "STREAM_CARPLAY"

    const-string v34, "STREAM_CARLIFE"

    const-string v35, "STREAM_HDMI"

    const-string v36, "STREAM_SVC"

    const-string v37, "STREAM_DSP"

    const-string v38, "STREAM_CAR_ALARM"

    const-string v39, "STREAM_NAVI_CARPLAY"

    const-string v40, "STREAM_NAVI_CARLIFE"

    const-string v41, "STREAM_VOICE_CARPLAY"

    const-string v42, "STREAM_VOICE_CARLIFE"

    const-string v43, "STREAM_PHONE_CARPLAY"

    const-string v44, "STREAM_PHONE_CARLIFE"

    const-string v45, "STREAM_CLUSTER"

    const-string v46, "STREAM_TBOX_B"

    const-string v47, "STREAM_TBOX_I"

    const-string v48, "STREAM_WARNING"

    .line 206
    filled-new-array/range {v0 .. v48}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    const/16 v0, 0x31

    .line 1078
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    return-void

    :array_0
    .array-data 4
        0xc
        0xc
        0xc
        0xc
        0x8
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xa
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native checkAudioFlinger()I
.end method

.method public static native createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I
.end method

.method public static deviceStateToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown state ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "DEVICE_STATE_AVAILABLE"

    return-object p0

    :pswitch_1
    const-string p0, "DEVICE_STATE_UNAVAILABLE"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static dynamicPolicyCallbackFromNative(ILjava/lang/String;I)V
    .locals 2

    .line 459
    const-class v0, Landroid/media/AudioSystem;

    monitor-enter v0

    .line 460
    :try_start_0
    sget-object v1, Landroid/media/AudioSystem;->sDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    if-eqz v1, :cond_0

    .line 461
    sget-object v1, Landroid/media/AudioSystem;->sDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 463
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    if-eqz p0, :cond_1

    const-string p1, "AudioSystem"

    .line 470
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dynamicPolicyCallbackFromNative: unknown event "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 467
    :cond_1
    invoke-interface {v1, p1, p2}, Landroid/media/AudioSystem$DynamicPolicyCallback;->onDynamicPolicyMixStateUpdate(Ljava/lang/String;I)V

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    .line 463
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static errorCallbackFromNative(I)V
    .locals 2

    .line 424
    const-class v0, Landroid/media/AudioSystem;

    monitor-enter v0

    .line 425
    :try_start_0
    sget-object v1, Landroid/media/AudioSystem;->mErrorCallback:Landroid/media/AudioSystem$ErrorCallback;

    if-eqz v1, :cond_0

    .line 426
    sget-object v1, Landroid/media/AudioSystem;->mErrorCallback:Landroid/media/AudioSystem$ErrorCallback;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 428
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 430
    invoke-interface {v1, p0}, Landroid/media/AudioSystem$ErrorCallback;->onError(I)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 428
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static forceUseConfigToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown config ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "FORCE_ENCODED_SURROUND_MANUAL"

    return-object p0

    :pswitch_1
    const-string p0, "FORCE_ENCODED_SURROUND_ALWAYS"

    return-object p0

    :pswitch_2
    const-string p0, "FORCE_ENCODED_SURROUND_NEVER"

    return-object p0

    :pswitch_3
    const-string p0, "FORCE_HDMI_SYSTEM_AUDIO_ENFORCED"

    return-object p0

    :pswitch_4
    const-string p0, "FORCE_SYSTEM_ENFORCED"

    return-object p0

    :pswitch_5
    const-string p0, "FORCE_NO_BT_A2DP"

    return-object p0

    :pswitch_6
    const-string p0, "FORCE_DIGITAL_DOCK"

    return-object p0

    :pswitch_7
    const-string p0, "FORCE_ANALOG_DOCK"

    return-object p0

    :pswitch_8
    const-string p0, "FORCE_BT_DESK_DOCK"

    return-object p0

    :pswitch_9
    const-string p0, "FORCE_BT_CAR_DOCK"

    return-object p0

    :pswitch_a
    const-string p0, "FORCE_WIRED_ACCESSORY"

    return-object p0

    :pswitch_b
    const-string p0, "FORCE_BT_A2DP"

    return-object p0

    :pswitch_c
    const-string p0, "FORCE_BT_SCO"

    return-object p0

    :pswitch_d
    const-string p0, "FORCE_HEADPHONES"

    return-object p0

    :pswitch_e
    const-string p0, "FORCE_SPEAKER"

    return-object p0

    :pswitch_f
    const-string p0, "FORCE_NONE"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static forceUseUsageToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown usage ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "FOR_VIBRATE_RINGING"

    return-object p0

    :pswitch_1
    const-string p0, "FOR_ENCODED_SURROUND"

    return-object p0

    :pswitch_2
    const-string p0, "FOR_HDMI_SYSTEM_AUDIO"

    return-object p0

    :pswitch_3
    const-string p0, "FOR_SYSTEM"

    return-object p0

    :pswitch_4
    const-string p0, "FOR_DOCK"

    return-object p0

    :pswitch_5
    const-string p0, "FOR_RECORD"

    return-object p0

    :pswitch_6
    const-string p0, "FOR_MEDIA"

    return-object p0

    :pswitch_7
    const-string p0, "FOR_COMMUNICATION"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static native getAudioHwSyncForSession(I)I
.end method

.method public static getDefaultStreamVolume(I)I
    .locals 1

    .line 1074
    sget-object v0, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aget p0, v0, p0

    return p0
.end method

.method public static native getDeviceConnectionState(ILjava/lang/String;)I
.end method

.method public static native getDevicesForStream(I)I
.end method

.method public static native getForceUse(I)I
.end method

.method public static getInputDeviceName(I)Ljava/lang/String;
    .locals 0

    sparse-switch p0, :sswitch_data_0

    .line 875
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_0
    const-string/jumbo p0, "usb_headset"

    return-object p0

    :sswitch_1
    const-string/jumbo p0, "proxy"

    return-object p0

    :sswitch_2
    const-string p0, "bus"

    return-object p0

    :sswitch_3
    const-string p0, "ip"

    return-object p0

    :sswitch_4
    const-string p0, "loopback"

    return-object p0

    :sswitch_5
    const-string p0, "bt_a2dp"

    return-object p0

    :sswitch_6
    const-string/jumbo p0, "spdif"

    return-object p0

    :sswitch_7
    const-string p0, "line"

    return-object p0

    :sswitch_8
    const-string/jumbo p0, "tv_tuner"

    return-object p0

    :sswitch_9
    const-string p0, "fm_tuner"

    return-object p0

    :sswitch_a
    const-string/jumbo p0, "usb_device"

    return-object p0

    :sswitch_b
    const-string/jumbo p0, "usb_accessory"

    return-object p0

    :sswitch_c
    const-string p0, "digital_dock"

    return-object p0

    :sswitch_d
    const-string p0, "analog_dock"

    return-object p0

    :sswitch_e
    const-string/jumbo p0, "remote_submix"

    return-object p0

    :sswitch_f
    const-string p0, "back_mic"

    return-object p0

    :sswitch_10
    const-string/jumbo p0, "telephony_rx"

    return-object p0

    :sswitch_11
    const-string p0, "aux_digital"

    return-object p0

    :sswitch_12
    const-string p0, "headset"

    return-object p0

    :sswitch_13
    const-string p0, "bt_sco_hs"

    return-object p0

    :sswitch_14
    const-string/jumbo p0, "mic"

    return-object p0

    :sswitch_15
    const-string p0, "ambient"

    return-object p0

    :sswitch_16
    const-string p0, "communication"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7fffffff -> :sswitch_16
        -0x7ffffffe -> :sswitch_15
        -0x7ffffffc -> :sswitch_14
        -0x7ffffff8 -> :sswitch_13
        -0x7ffffff0 -> :sswitch_12
        -0x7fffffe0 -> :sswitch_11
        -0x7fffffc0 -> :sswitch_10
        -0x7fffff80 -> :sswitch_f
        -0x7fffff00 -> :sswitch_e
        -0x7ffffe00 -> :sswitch_d
        -0x7ffffc00 -> :sswitch_c
        -0x7ffff800 -> :sswitch_b
        -0x7ffff000 -> :sswitch_a
        -0x7fffe000 -> :sswitch_9
        -0x7fffc000 -> :sswitch_8
        -0x7fff8000 -> :sswitch_7
        -0x7fff0000 -> :sswitch_6
        -0x7ffe0000 -> :sswitch_5
        -0x7ffc0000 -> :sswitch_4
        -0x7ff80000 -> :sswitch_3
        -0x7ff00000 -> :sswitch_2
        -0x7f000000 -> :sswitch_1
        -0x7e000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static native getMasterMono()Z
.end method

.method public static native getMasterMute()Z
.end method

.method public static native getMasterVolume()F
.end method

.method public static native getMicrophones(Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/MicrophoneInfo;",
            ">;)I"
        }
    .end annotation
.end method

.method public static final getNumStreamTypes()I
    .locals 1

    const/16 v0, 0x31

    return v0
.end method

.method public static getOutputDeviceName(I)Ljava/lang/String;
    .locals 0

    sparse-switch p0, :sswitch_data_0

    .line 820
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_0
    const-string p0, "hearing_aid_out"

    return-object p0

    :sswitch_1
    const-string/jumbo p0, "usb_headset"

    return-object p0

    :sswitch_2
    const-string/jumbo p0, "proxy"

    return-object p0

    :sswitch_3
    const-string p0, "bus"

    return-object p0

    :sswitch_4
    const-string p0, "ip"

    return-object p0

    :sswitch_5
    const-string/jumbo p0, "speaker_safe"

    return-object p0

    :sswitch_6
    const-string p0, "aux_line"

    return-object p0

    :sswitch_7
    const-string p0, "fm_transmitter"

    return-object p0

    :sswitch_8
    const-string/jumbo p0, "spdif"

    return-object p0

    :sswitch_9
    const-string p0, "hmdi_arc"

    return-object p0

    :sswitch_a
    const-string p0, "line"

    return-object p0

    :sswitch_b
    const-string/jumbo p0, "telephony_tx"

    return-object p0

    :sswitch_c
    const-string/jumbo p0, "remote_submix"

    return-object p0

    :sswitch_d
    const-string/jumbo p0, "usb_device"

    return-object p0

    :sswitch_e
    const-string/jumbo p0, "usb_accessory"

    return-object p0

    :sswitch_f
    const-string p0, "digital_dock"

    return-object p0

    :sswitch_10
    const-string p0, "analog_dock"

    return-object p0

    :sswitch_11
    const-string p0, "hdmi"

    return-object p0

    :sswitch_12
    const-string p0, "bt_a2dp_spk"

    return-object p0

    :sswitch_13
    const-string p0, "bt_a2dp_hp"

    return-object p0

    :sswitch_14
    const-string p0, "bt_a2dp"

    return-object p0

    :sswitch_15
    const-string p0, "bt_sco_carkit"

    return-object p0

    :sswitch_16
    const-string p0, "bt_sco_hs"

    return-object p0

    :sswitch_17
    const-string p0, "bt_sco"

    return-object p0

    :sswitch_18
    const-string p0, "headphone"

    return-object p0

    :sswitch_19
    const-string p0, "headset"

    return-object p0

    :sswitch_1a
    const-string/jumbo p0, "speaker"

    return-object p0

    :sswitch_1b
    const-string p0, "earpiece"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1b
        0x2 -> :sswitch_1a
        0x4 -> :sswitch_19
        0x8 -> :sswitch_18
        0x10 -> :sswitch_17
        0x20 -> :sswitch_16
        0x40 -> :sswitch_15
        0x80 -> :sswitch_14
        0x100 -> :sswitch_13
        0x200 -> :sswitch_12
        0x400 -> :sswitch_11
        0x800 -> :sswitch_10
        0x1000 -> :sswitch_f
        0x2000 -> :sswitch_e
        0x4000 -> :sswitch_d
        0x8000 -> :sswitch_c
        0x10000 -> :sswitch_b
        0x20000 -> :sswitch_a
        0x40000 -> :sswitch_9
        0x80000 -> :sswitch_8
        0x100000 -> :sswitch_7
        0x200000 -> :sswitch_6
        0x400000 -> :sswitch_5
        0x800000 -> :sswitch_4
        0x1000000 -> :sswitch_3
        0x2000000 -> :sswitch_2
        0x4000000 -> :sswitch_1
        0x8000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static native getOutputLatency(I)I
.end method

.method public static native getParameters(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getPlatformType(Landroid/content/Context;)I
    .locals 2

    .line 1153
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1155
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.software.leanback"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static native getPrimaryOutputFrameCount()I
.end method

.method public static native getPrimaryOutputSamplingRate()I
.end method

.method public static native getStreamVolumeDB(III)F
.end method

.method public static native getStreamVolumeIndex(II)I
.end method

.method public static native getSurroundFormats(Ljava/util/Map;Z)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;Z)I"
        }
    .end annotation
.end method

.method public static getValueForVibrateSetting(III)I
    .locals 2

    mul-int/lit8 p1, p1, 0x2

    const/4 v0, 0x3

    shl-int v1, v0, p1

    not-int v1, v1

    and-int/2addr p0, v1

    and-int/2addr p2, v0

    shl-int p1, p2, p1

    or-int/2addr p0, p1

    return p0
.end method

.method public static native handleDeviceConfigChange(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static native initStreamVolume(III)I
.end method

.method public static native isMicrophoneMuted()Z
.end method

.method public static native isNaviProcType()I
.end method

.method static isOffloadSupported(Landroid/media/AudioFormat;)Z
    .locals 3

    .line 1025
    invoke-virtual {p0}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v1

    .line 1026
    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v2

    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result p0

    .line 1025
    invoke-static {v0, v1, v2, p0}, Landroid/media/AudioSystem;->native_is_offload_supported(IIII)Z

    move-result p0

    return p0
.end method

.method public static isSingleVolume(Landroid/content/Context;)Z
    .locals 2

    .line 1167
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1169
    invoke-static {p0}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    move-result p0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static native isSourceActive(I)Z
.end method

.method public static native isStreamActive(II)Z
.end method

.method public static native isStreamActiveRemotely(II)Z
.end method

.method public static native listAudioPatches(Ljava/util/ArrayList;[I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPatch;",
            ">;[I)I"
        }
    .end annotation
.end method

.method public static native listAudioPorts(Ljava/util/ArrayList;[I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPort;",
            ">;[I)I"
        }
    .end annotation
.end method

.method public static modeToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown mode ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "MODE_IN_CUSTOM_VOICE_RECOGNITION"

    return-object p0

    :pswitch_1
    const-string p0, "MODE_IN_CUSTOM_COMMUNICATION"

    return-object p0

    :pswitch_2
    const-string p0, "MODE_IN_COMMUNICATION"

    return-object p0

    :pswitch_3
    const-string p0, "MODE_IN_CALL"

    return-object p0

    :pswitch_4
    const-string p0, "MODE_RINGTONE"

    return-object p0

    :pswitch_5
    const-string p0, "MODE_NORMAL"

    return-object p0

    :pswitch_6
    const-string p0, "MODE_CURRENT"

    return-object p0

    :pswitch_7
    const-string p0, "MODE_INVALID"

    return-object p0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7e3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static native muteMicrophone(Z)I
.end method

.method private static native native_is_offload_supported(IIII)Z
.end method

.method private static final native native_register_dynamic_policy_callback()V
.end method

.method private static final native native_register_recording_callback()V
.end method

.method public static native newAudioPlayerId()I
.end method

.method public static native newAudioSessionId()I
.end method

.method private static recordingCallbackFromNative(IIII[I)V
    .locals 8

    .line 523
    const-class v0, Landroid/media/AudioSystem;

    monitor-enter v0

    .line 524
    :try_start_0
    sget-object v1, Landroid/media/AudioSystem;->sRecordingCallback:Landroid/media/AudioSystem$AudioRecordingCallback;

    .line 525
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const-string v7, ""

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    .line 528
    invoke-interface/range {v1 .. v7}, Landroid/media/AudioSystem$AudioRecordingCallback;->onRecordingConfigurationChanged(IIII[ILjava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 525
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static native registerPolicyMixes(Ljava/util/ArrayList;Z)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/audiopolicy/AudioMix;",
            ">;Z)I"
        }
    .end annotation
.end method

.method public static native releaseAudioPatch(Landroid/media/AudioPatch;)I
.end method

.method public static native setAudioPortConfig(Landroid/media/AudioPortConfig;)I
.end method

.method public static native setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static setDynamicPolicyCallback(Landroid/media/AudioSystem$DynamicPolicyCallback;)V
    .locals 1

    .line 450
    const-class v0, Landroid/media/AudioSystem;

    monitor-enter v0

    .line 451
    :try_start_0
    sput-object p0, Landroid/media/AudioSystem;->sDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    .line 452
    invoke-static {}, Landroid/media/AudioSystem;->native_register_dynamic_policy_callback()V

    .line 453
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V
    .locals 2

    .line 413
    const-class v0, Landroid/media/AudioSystem;

    monitor-enter v0

    .line 414
    :try_start_0
    sput-object p0, Landroid/media/AudioSystem;->mErrorCallback:Landroid/media/AudioSystem$ErrorCallback;

    if-eqz p0, :cond_0

    .line 416
    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    move-result v1

    invoke-interface {p0, v1}, Landroid/media/AudioSystem$ErrorCallback;->onError(I)V

    .line 418
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static native setForceUse(II)I
.end method

.method public static native setLowRamDevice(ZJ)I
.end method

.method public static native setMasterMono(Z)I
.end method

.method public static native setMasterMute(Z)I
.end method

.method public static native setMasterVolume(F)I
.end method

.method public static native setParameters(Ljava/lang/String;)I
.end method

.method public static native setPhoneState(I)I
.end method

.method public static setRecordingCallback(Landroid/media/AudioSystem$AudioRecordingCallback;)V
    .locals 1

    .line 505
    const-class v0, Landroid/media/AudioSystem;

    monitor-enter v0

    .line 506
    :try_start_0
    sput-object p0, Landroid/media/AudioSystem;->sRecordingCallback:Landroid/media/AudioSystem$AudioRecordingCallback;

    .line 507
    invoke-static {}, Landroid/media/AudioSystem;->native_register_recording_callback()V

    .line 508
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static native setStreamVolumeDB(IFI)I
.end method

.method public static native setStreamVolumeIndex(III)I
.end method

.method public static native setSurroundFormatEnabled(IZ)I
.end method

.method public static streamToString(I)Ljava/lang/String;
    .locals 2

    if-ltz p0, :cond_0

    .line 1132
    sget-object v0, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_1

    const-string p0, "USE_DEFAULT_STREAM_TYPE"

    return-object p0

    .line 1134
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_STREAM_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static native systemReady()I
.end method
