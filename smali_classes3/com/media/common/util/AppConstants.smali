.class public Lcom/media/common/util/AppConstants;
.super Ljava/lang/Object;
.source "AppConstants.java"


# static fields
.field public static final ACTION_AVM_SHOW_STATE:Ljava/lang/String; = "com.yftech.avmservice.SHOW_STATE"

.field public static final ACTION_HICAR_SHOW_STATE:Ljava/lang/String; = "com.yftech.hicar.show"

.field public static final ACTION_SCREEN_VIEW:Ljava/lang/String; = "com.systemui.screenview"

.field public static final AIR_CONTROL_KEY:Ljava/lang/String; = "isShow"

.field public static final BACK_CAR_ACTION:Ljava/lang/String; = "com.yftech.avmservice.SHOW_STATE"

.field public static final BACK_CAR_KEY:Ljava/lang/String; = "isShow"

.field public static final BANDS_HZ_HIGH:I = 0x8

.field public static final BANDS_HZ_LOW:I = 0x1

.field public static final BANDS_HZ_MID:I = 0x4

.field public static final BROWSE_IMAGE_FULL_SCREEN_REQUEST:I = 0x3e9

.field public static final BROWSE_IMAGE_REQUEST:I = 0x3e8

.field public static final CLIENT_ID_BT_MUSIC:Ljava/lang/String; = "com.yftech.service.bluetooth.profiles.AvrcpManager"

.field public static final CLIENT_ID_BT_MUSIC_2:Ljava/lang/String; = "com.yftech.service.bluetooth"

.field public static final CLIENT_ID_CARLIFE:Ljava/lang/String; = "carlife"

.field public static final CLIENT_ID_CARPLAY:Ljava/lang/String; = "com.autochips.carplay.resourcemanagerment"

.field public static final CLIENT_ID_HICAR:Ljava/lang/String; = "hicar"

.field public static final CLIENT_ID_RADIO:Ljava/lang/String; = "com.yftech.radio"

.field public static final CLIENT_ID_USB:Ljava/lang/String; = "com.yftech.media.music.service.MusicService"

.field public static final EQ_TYPE_INVALID:I = -0x64

.field public static final Gravity_Lyric_Center:I = 0x0

.field public static final Gravity_Lyric_END:I = 0x2

.field public static final Gravity_Lyric_START:I = 0x1

.field public static final KEY_AIR_CONTROL_SHOW:Ljava/lang/String; = "air_control_show"

.field public static final KEY_IS_SHOW:Ljava/lang/String; = "isShow"

.field public static final KEY_OF_PROPERTIES:Ljava/lang/String; = "com.yftech.multimedia.show_alert_dialog"

.field public static final KEY_SCREEN_VIEW_SHOW:Ljava/lang/String; = "screen_view_show"

.field public static final MUSIC_SOURCE_ENABLE_STATE_CONNECTED:I = 0x0

.field public static final MUSIC_SOURCE_ENABLE_STATE_CONNECTTING:I = 0x1

.field public static final MUSIC_SOURCE_ENABLE_STATE_DISCONNECTED:I = 0x2

.field public static final MUSIC_SOURCE_ENABLE_STATE_USB_MUSIC_FILE_NOT_EXIST:I = 0x3

.field public static final MUSIC_SOURCE_INDEX_OF_USB1:I = 0x0

.field public static final MUSIC_SOURCE_INDEX_OF_USB2:I = 0x1

.field public static final MUSIC_SOURCE_OF_BLUETOOTH:Ljava/lang/String; = "MUSIC_SOURCE_OF_BLUETOOTH"

.field public static final MUSIC_SOURCE_OF_CARLIFE:Ljava/lang/String; = "MUSIC_SOURCE_OF_CARLIFE"

.field public static final MUSIC_SOURCE_OF_CARPLAY:Ljava/lang/String; = "MUSIC_SOURCE_OF_CARPLAY"

.field public static final MUSIC_SOURCE_OF_USB1:Ljava/lang/String; = "MUSIC_SOURCE_OF_USB1"

.field public static final MUSIC_SOURCE_OF_USB2:Ljava/lang/String; = "MUSIC_SOURCE_OF_USB2"

.field public static final RADIO_SCAN_TYPE_ALL:I = 0x3

.field public static final RADIO_SCAN_TYPE_SEEK_DOWN:I = 0x2

.field public static final RADIO_SCAN_TYPE_SEEK_UP:I = 0x1

.field public static final RESULT_CODE_BY_USB_NOT_EXIST:I = 0x8ae

.field public static final RESULT_CODE_BY_VEHICLE_OVERFLOW:I = 0xd05

.field public static final ROBOTOREGULAR_Medium:Ljava/lang/String; = "sans-serif-medium"

.field public static final ROBOTOREGULAR_Normal:Ljava/lang/String; = "sans-serif"

.field public static final Roboto_Medium:Ljava/lang/String; = "sans-serif-medium"

.field public static final STATE_SEARCHING:I = 0x0

.field public static final STATE_SEARCHING_FAIL:I = 0x1

.field public static final STATE_SEARCHING_NONE:I = 0x3

.field public static final STATE_SEARCHING_SUCCESSFUL:I = 0x2

.field public static final SWITCH_AVAILABLE_MUSIC_SOURCE:Z = false

.field public static final SourceHanSansCN_Medium:Ljava/lang/String; = "sourcehan-sans-medium"

.field public static final SourceHanSansCN_Normal:Ljava/lang/String; = "sourcehan-sans"

.field public static final USB1:Ljava/lang/String; = "/storage/udisk1dev1"

.field public static final USB2:Ljava/lang/String; = "/storage/udisk1dev2"

.field public static final VALUE_HIDE:Ljava/lang/String; = "0"

.field public static final VALUE_SHOW:Ljava/lang/String; = "1"

.field public static final VIDEO_WATCHING_REQUEST:I = 0x3e9

.field public static final WALLPAPER_MD5:Ljava/lang/String; = "wallpaper_md5"

.field public static final WALLPAPER_ORIGINAL_PATH:Ljava/lang/String; = "wallpaper_original_path"

.field public static final WallPaperOutputDir:Ljava/lang/String;

.field public static final WallPaperOutputName:Ljava/lang/String; = "Wallpaper.jpg"

.field public static final WallPaperSettingAction:Ljava/lang/String; = "com.yftech.multimedia.action.wallpaper.setting"

.field public static final WallPaperSettingData:Ljava/lang/String; = "com.yftech.multimedia.data.wallpaper.setting"

.field public static recordLastControlTime:J = 0x0L

.field public static final vehicleSpeedLimit:I = 0x1

.field public static final vehicleSpeedResume:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/media/common/util/AppConstants;->WallPaperOutputDir:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
