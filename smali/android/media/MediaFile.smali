.class public Landroid/media/MediaFile;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaFile$MediaFileType;
    }
.end annotation


# static fields
.field private static final ATC_AOSP_ENHANCEMENT:Z

.field public static final FILE_TYPE_3GA:I = 0x11

.field public static final FILE_TYPE_3GPP:I = 0x17

.field public static final FILE_TYPE_3GPP2:I = 0x18

.field public static final FILE_TYPE_AAC:I = 0x8

.field public static final FILE_TYPE_AC3:I = 0xe

.field public static final FILE_TYPE_AMR:I = 0x4

.field public static final FILE_TYPE_APE:I = 0x12

.field public static final FILE_TYPE_ARW:I = 0x130

.field public static final FILE_TYPE_ASF:I = 0x1a

.field public static final FILE_TYPE_AVI:I = 0x1d

.field public static final FILE_TYPE_AWB:I = 0x5

.field public static final FILE_TYPE_BMP:I = 0x22

.field public static final FILE_TYPE_CAF:I = 0x14

.field public static final FILE_TYPE_CR2:I = 0x12d

.field public static final FILE_TYPE_DIVX:I = 0xca

.field public static final FILE_TYPE_DNG:I = 0x12c

.field public static final FILE_TYPE_DTS:I = 0xf

.field public static final FILE_TYPE_FL:I = 0x33

.field public static final FILE_TYPE_FLA:I = 0x13

.field public static final FILE_TYPE_FLAC:I = 0xa

.field public static final FILE_TYPE_FLV:I = 0xcd

.field public static final FILE_TYPE_GIF:I = 0x20

.field public static final FILE_TYPE_HEIF:I = 0x25

.field public static final FILE_TYPE_HTML:I = 0x65

.field public static final FILE_TYPE_HTTPLIVE:I = 0x2c

.field public static final FILE_TYPE_IMY:I = 0xd

.field public static final FILE_TYPE_JPEG:I = 0x1f

.field public static final FILE_TYPE_M3U:I = 0x29

.field public static final FILE_TYPE_M4A:I = 0x2

.field public static final FILE_TYPE_M4V:I = 0x16

.field public static final FILE_TYPE_MID:I = 0xb

.field public static final FILE_TYPE_MKA:I = 0x9

.field public static final FILE_TYPE_MKV:I = 0x1b

.field public static final FILE_TYPE_MP2PS:I = 0xc8

.field public static final FILE_TYPE_MP2TS:I = 0x1c

.field public static final FILE_TYPE_MP3:I = 0x1

.field public static final FILE_TYPE_MP4:I = 0x15

.field public static final FILE_TYPE_MPG:I = 0xcb

.field public static final FILE_TYPE_MS_EXCEL:I = 0x69

.field public static final FILE_TYPE_MS_POWERPOINT:I = 0x6a

.field public static final FILE_TYPE_MS_WORD:I = 0x68

.field public static final FILE_TYPE_NEF:I = 0x12e

.field public static final FILE_TYPE_NRW:I = 0x12f

.field public static final FILE_TYPE_OGG:I = 0x7

.field public static final FILE_TYPE_OGM:I = 0xce

.field public static final FILE_TYPE_ORF:I = 0x132

.field public static final FILE_TYPE_PDF:I = 0x66

.field public static final FILE_TYPE_PEF:I = 0x134

.field public static final FILE_TYPE_PLS:I = 0x2a

.field public static final FILE_TYPE_PNG:I = 0x21

.field public static final FILE_TYPE_QT:I = 0xc9

.field public static final FILE_TYPE_RA:I = 0x10

.field public static final FILE_TYPE_RAF:I = 0x133

.field public static final FILE_TYPE_RMVB:I = 0xcc

.field public static final FILE_TYPE_RW2:I = 0x131

.field public static final FILE_TYPE_SMF:I = 0xc

.field public static final FILE_TYPE_SRW:I = 0x135

.field public static final FILE_TYPE_TEXT:I = 0x64

.field public static final FILE_TYPE_WAV:I = 0x3

.field public static final FILE_TYPE_WBMP:I = 0x23

.field public static final FILE_TYPE_WEBM:I = 0x1e

.field public static final FILE_TYPE_WEBP:I = 0x24

.field public static final FILE_TYPE_WMA:I = 0x6

.field public static final FILE_TYPE_WMV:I = 0x19

.field public static final FILE_TYPE_WPL:I = 0x2b

.field public static final FILE_TYPE_XML:I = 0x67

.field public static final FILE_TYPE_ZIP:I = 0x6b

.field private static final FIRST_ATC_AUD_FILE_TYPE:I = 0xe

.field private static final FIRST_ATC_VIDEO_FILE_TYPE:I = 0xca

.field private static final FIRST_AUDIO_FILE_TYPE:I = 0x1

.field private static final FIRST_DRM_FILE_TYPE:I = 0x33

.field private static final FIRST_IMAGE_FILE_TYPE:I = 0x1f

.field private static final FIRST_MIDI_FILE_TYPE:I = 0xb

.field private static final FIRST_PLAYLIST_FILE_TYPE:I = 0x29

.field private static final FIRST_RAW_IMAGE_FILE_TYPE:I = 0x12c

.field private static final FIRST_VIDEO_FILE_TYPE:I = 0x15

.field private static final FIRST_VIDEO_FILE_TYPE2:I = 0xc8

.field private static final LAST_ATC_AUD_FILE_TYPE:I = 0x14

.field private static final LAST_ATC_VIDEO_FILE_TYPE:I = 0xce

.field private static final LAST_AUDIO_FILE_TYPE:I = 0xa

.field private static final LAST_DRM_FILE_TYPE:I = 0x33

.field private static final LAST_IMAGE_FILE_TYPE:I = 0x25

.field private static final LAST_MIDI_FILE_TYPE:I = 0xd

.field private static final LAST_PLAYLIST_FILE_TYPE:I = 0x2c

.field private static final LAST_RAW_IMAGE_FILE_TYPE:I = 0x135

.field private static final LAST_VIDEO_FILE_TYPE:I = 0x1e

.field private static final LAST_VIDEO_FILE_TYPE2:I = 0xc9

.field private static final sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/media/MediaFile$MediaFileType;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFileTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFormatToMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMimeTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string/jumbo v0, "ro.atc.aosp_enhancement"

    const/4 v1, 0x0

    .line 37
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/media/MediaFile;->ATC_AOSP_ENHANCEMENT:Z

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    .line 215
    sget-boolean v0, Landroid/media/MediaFile;->ATC_AOSP_ENHANCEMENT:Z

    const/16 v2, 0xc8

    const/16 v3, 0x15

    const/16 v4, 0x1c

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    const-string v0, "WMA"

    const/4 v6, 0x6

    const-string v7, "audio/x-ms-wma"

    .line 217
    invoke-static {v0, v6, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MP1"

    const-string v6, "audio/mpeg"

    .line 218
    invoke-static {v0, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "PCM"

    const/4 v6, 0x3

    const-string v7, "audio/x-wav"

    .line 219
    invoke-static {v0, v6, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "AC3"

    const/16 v6, 0xe

    const-string v7, "audio/ac3"

    .line 220
    invoke-static {v0, v6, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "EC3"

    const-string v7, "audio/ac3"

    .line 221
    invoke-static {v0, v6, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "RA"

    const/16 v6, 0x10

    const-string v7, "audio/ra"

    .line 222
    invoke-static {v0, v6, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "DTS"

    const/16 v6, 0xf

    const-string v7, "audio/dts"

    .line 223
    invoke-static {v0, v6, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "3GA"

    const/16 v6, 0x11

    const-string v7, "audio/3gpp"

    .line 224
    invoke-static {v0, v6, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MP2"

    const-string v6, "audio/mpeg"

    .line 225
    invoke-static {v0, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "APE"

    const/16 v6, 0x12

    const-string v7, "audio/ape"

    .line 226
    invoke-static {v0, v6, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "FLA"

    const-string v6, "audio/x-flv"

    const/16 v7, 0x13

    .line 227
    invoke-static {v0, v7, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "F4A"

    const-string v6, "audio/x-flv"

    .line 228
    invoke-static {v0, v7, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "F4B"

    const-string v6, "audio/x-flv"

    .line 229
    invoke-static {v0, v7, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "RAM"

    const/16 v6, 0x10

    const-string v7, "audio/ra"

    .line 230
    invoke-static {v0, v6, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "CAF"

    const/16 v6, 0x14

    const-string v7, "audio/alac"

    .line 231
    invoke-static {v0, v6, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "DCF"

    const-string v6, "audio/mpeg"

    .line 232
    invoke-static {v0, v5, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MP4V"

    const-string/jumbo v6, "video/mp4"

    .line 235
    invoke-static {v0, v3, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "DIVX"

    const/16 v6, 0xca

    const-string/jumbo v7, "video/divx"

    .line 236
    invoke-static {v0, v6, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "XVID"

    const-string/jumbo v7, "video/divx"

    .line 237
    invoke-static {v0, v6, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "VOB"

    const-string/jumbo v6, "video/mp2p"

    .line 238
    invoke-static {v0, v2, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "DAT"

    const-string/jumbo v6, "video/mp2p"

    .line 239
    invoke-static {v0, v2, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "M1V"

    const/16 v6, 0xcb

    const-string/jumbo v7, "video/mpeg"

    .line 240
    invoke-static {v0, v6, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "M2V"

    const-string/jumbo v7, "video/mpeg"

    .line 241
    invoke-static {v0, v6, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "RM"

    const/16 v6, 0xcc

    const-string/jumbo v7, "video/rmvb"

    .line 242
    invoke-static {v0, v6, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "RMVB"

    const-string/jumbo v7, "video/rmvb"

    .line 243
    invoke-static {v0, v6, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "HLV"

    const-string/jumbo v6, "video/x-flv"

    const/16 v7, 0xcd

    .line 244
    invoke-static {v0, v7, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "FLV"

    const-string/jumbo v6, "video/x-flv"

    .line 245
    invoke-static {v0, v7, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "F4V"

    const-string/jumbo v6, "video/x-flv"

    .line 246
    invoke-static {v0, v7, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "F4P"

    const-string/jumbo v6, "video/x-flv"

    .line 247
    invoke-static {v0, v7, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "PFV"

    const-string/jumbo v6, "video/x-flv"

    .line 248
    invoke-static {v0, v7, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MTS"

    const-string/jumbo v6, "video/mp2ts"

    .line 250
    invoke-static {v0, v4, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "M2T"

    const-string/jumbo v6, "video/mp2ts"

    .line 251
    invoke-static {v0, v4, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "M2TS"

    const-string/jumbo v6, "video/mp2ts"

    .line 252
    invoke-static {v0, v4, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "OGV"

    const/16 v6, 0xce

    const-string/jumbo v7, "video/ogm"

    .line 253
    invoke-static {v0, v6, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "OGM"

    const-string/jumbo v7, "video/ogm"

    .line 254
    invoke-static {v0, v6, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "QT"

    const/16 v6, 0xc9

    const-string/jumbo v7, "video/quicktime"

    .line 257
    invoke-static {v0, v6, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "TP"

    const-string/jumbo v6, "video/mp2ts"

    .line 258
    invoke-static {v0, v4, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "TRP"

    const-string/jumbo v6, "video/mp2ts"

    .line 259
    invoke-static {v0, v4, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "WMV"

    const/16 v6, 0x19

    const-string/jumbo v7, "video/x-ms-wmv"

    .line 260
    invoke-static {v0, v6, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "ASF"

    const/16 v6, 0x1a

    const-string/jumbo v7, "video/x-ms-asf"

    .line 261
    invoke-static {v0, v6, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    const-string v0, "MP3"

    const-string v6, "audio/mpeg"

    const/16 v7, 0x3009

    .line 264
    invoke-static {v0, v5, v6, v7, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "MPGA"

    const-string v6, "audio/mpeg"

    .line 265
    invoke-static {v0, v5, v6, v7, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "M4A"

    const/4 v6, 0x2

    const-string v7, "audio/mp4"

    const/16 v8, 0x300b

    .line 266
    invoke-static {v0, v6, v7, v8, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "WAV"

    const/4 v6, 0x3

    const-string v7, "audio/x-wav"

    const/16 v9, 0x3008

    .line 267
    invoke-static {v0, v6, v7, v9, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "AMR"

    const/4 v6, 0x4

    const-string v7, "audio/amr"

    .line 268
    invoke-static {v0, v6, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "AWB"

    const/4 v6, 0x5

    const-string v7, "audio/amr-wb"

    .line 269
    invoke-static {v0, v6, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 270
    invoke-static {}, Landroid/media/MediaFile;->isWMAEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WMA"

    const/4 v6, 0x6

    const-string v7, "audio/x-ms-wma"

    const v9, 0xb901

    .line 271
    invoke-static {v0, v6, v7, v9, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    :cond_1
    const-string v0, "OGG"

    const-string v6, "audio/ogg"

    const v7, 0xb902

    const/4 v9, 0x7

    .line 273
    invoke-static {v0, v9, v6, v7, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "OGG"

    const-string v6, "application/ogg"

    .line 274
    invoke-static {v0, v9, v6, v7, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "OGA"

    const-string v6, "application/ogg"

    .line 275
    invoke-static {v0, v9, v6, v7, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "AAC"

    const/16 v6, 0x8

    const-string v7, "audio/aac"

    const v9, 0xb903

    .line 276
    invoke-static {v0, v6, v7, v9, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "AAC"

    const-string v7, "audio/aac-adts"

    .line 277
    invoke-static {v0, v6, v7, v9, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "MKA"

    const/16 v6, 0x9

    const-string v7, "audio/x-matroska"

    .line 278
    invoke-static {v0, v6, v7}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MID"

    const-string v6, "audio/midi"

    const/16 v7, 0xb

    .line 280
    invoke-static {v0, v7, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MIDI"

    const-string v6, "audio/midi"

    .line 281
    invoke-static {v0, v7, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "XMF"

    const-string v6, "audio/midi"

    .line 282
    invoke-static {v0, v7, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "RTTTL"

    const-string v6, "audio/midi"

    .line 283
    invoke-static {v0, v7, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "SMF"

    const/16 v6, 0xc

    const-string v9, "audio/sp-midi"

    .line 284
    invoke-static {v0, v6, v9}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "IMY"

    const/16 v6, 0xd

    const-string v9, "audio/imelody"

    .line 285
    invoke-static {v0, v6, v9}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "RTX"

    const-string v6, "audio/midi"

    .line 286
    invoke-static {v0, v7, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "OTA"

    const-string v6, "audio/midi"

    .line 287
    invoke-static {v0, v7, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MXMF"

    const-string v6, "audio/midi"

    .line 288
    invoke-static {v0, v7, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MPEG"

    const-string/jumbo v6, "video/mpeg"

    .line 290
    invoke-static {v0, v3, v6, v8, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "MPG"

    const-string/jumbo v6, "video/mpeg"

    .line 291
    invoke-static {v0, v3, v6, v8, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "MP4"

    const-string/jumbo v6, "video/mp4"

    .line 292
    invoke-static {v0, v3, v6, v8, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "M4V"

    const/16 v3, 0x16

    const-string/jumbo v6, "video/mp4"

    .line 293
    invoke-static {v0, v3, v6, v8, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "MOV"

    const/16 v3, 0xc9

    const-string/jumbo v6, "video/quicktime"

    .line 294
    invoke-static {v0, v3, v6, v8, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "3GP"

    const/16 v3, 0x17

    const-string/jumbo v6, "video/3gpp"

    const v7, 0xb984

    .line 296
    invoke-static {v0, v3, v6, v7, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "3GPP"

    const-string/jumbo v6, "video/3gpp"

    .line 297
    invoke-static {v0, v3, v6, v7, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "3G2"

    const/16 v3, 0x18

    const-string/jumbo v6, "video/3gpp2"

    .line 298
    invoke-static {v0, v3, v6, v7, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "3GPP2"

    const-string/jumbo v6, "video/3gpp2"

    .line 299
    invoke-static {v0, v3, v6, v7, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "MKV"

    const/16 v3, 0x1b

    const-string/jumbo v6, "video/x-matroska"

    .line 300
    invoke-static {v0, v3, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "WEBM"

    const/16 v3, 0x1e

    const-string/jumbo v6, "video/webm"

    .line 301
    invoke-static {v0, v3, v6}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "TS"

    const-string/jumbo v3, "video/mp2ts"

    .line 302
    invoke-static {v0, v4, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "AVI"

    const/16 v3, 0x1d

    const-string/jumbo v4, "video/avi"

    .line 303
    invoke-static {v0, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 305
    invoke-static {}, Landroid/media/MediaFile;->isWMVEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "WMV"

    const/16 v3, 0x19

    const-string/jumbo v4, "video/x-ms-wmv"

    const v6, 0xb981

    .line 306
    invoke-static {v0, v3, v4, v6, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "ASF"

    const/16 v3, 0x1a

    const-string/jumbo v4, "video/x-ms-asf"

    .line 307
    invoke-static {v0, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    :cond_2
    const-string v0, "JPG"

    const/16 v3, 0x1f

    const-string v4, "image/jpeg"

    const/16 v6, 0x3801

    .line 310
    invoke-static {v0, v3, v4, v6, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "JPEG"

    const-string v4, "image/jpeg"

    .line 311
    invoke-static {v0, v3, v4, v6, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "GIF"

    const/16 v3, 0x20

    const-string v4, "image/gif"

    const/16 v6, 0x3807

    .line 312
    invoke-static {v0, v3, v4, v6, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "PNG"

    const/16 v3, 0x21

    const-string v4, "image/png"

    const/16 v6, 0x380b

    .line 313
    invoke-static {v0, v3, v4, v6, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "BMP"

    const/16 v3, 0x22

    const-string v4, "image/x-ms-bmp"

    const/16 v6, 0x3804

    .line 314
    invoke-static {v0, v3, v4, v6, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "WBMP"

    const/16 v3, 0x23

    const-string v4, "image/vnd.wap.wbmp"

    const/16 v6, 0x3800

    .line 315
    invoke-static {v0, v3, v4, v6, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "WEBP"

    const/16 v3, 0x24

    const-string v4, "image/webp"

    .line 316
    invoke-static {v0, v3, v4, v6, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "HEIC"

    const/16 v3, 0x25

    const-string v4, "image/heif"

    const/16 v7, 0x3812

    .line 317
    invoke-static {v0, v3, v4, v7, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "HEIF"

    const-string v4, "image/heif"

    .line 318
    invoke-static {v0, v3, v4, v7, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "DNG"

    const/16 v3, 0x12c

    const-string v4, "image/x-adobe-dng"

    const/16 v7, 0x3811

    .line 320
    invoke-static {v0, v3, v4, v7, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "CR2"

    const/16 v3, 0x12d

    const-string v4, "image/x-canon-cr2"

    const/16 v7, 0x380d

    .line 321
    invoke-static {v0, v3, v4, v7, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "NEF"

    const/16 v3, 0x12e

    const-string v4, "image/x-nikon-nef"

    const/16 v8, 0x3802

    .line 322
    invoke-static {v0, v3, v4, v8, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "NRW"

    const/16 v3, 0x12f

    const-string v4, "image/x-nikon-nrw"

    .line 323
    invoke-static {v0, v3, v4, v7, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "ARW"

    const/16 v3, 0x130

    const-string v4, "image/x-sony-arw"

    .line 324
    invoke-static {v0, v3, v4, v7, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "RW2"

    const/16 v3, 0x131

    const-string v4, "image/x-panasonic-rw2"

    .line 325
    invoke-static {v0, v3, v4, v7, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "ORF"

    const/16 v3, 0x132

    const-string v4, "image/x-olympus-orf"

    .line 326
    invoke-static {v0, v3, v4, v7, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "RAF"

    const/16 v3, 0x133

    const-string v4, "image/x-fuji-raf"

    .line 327
    invoke-static {v0, v3, v4, v6, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "PEF"

    const/16 v3, 0x134

    const-string v4, "image/x-pentax-pef"

    .line 328
    invoke-static {v0, v3, v4, v7, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "SRW"

    const/16 v3, 0x135

    const-string v4, "image/x-samsung-srw"

    .line 329
    invoke-static {v0, v3, v4, v7, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "M3U"

    const/16 v3, 0x29

    const-string v4, "audio/x-mpegurl"

    const v6, 0xba11

    .line 331
    invoke-static {v0, v3, v4, v6, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "M3U"

    const-string v4, "application/x-mpegurl"

    .line 332
    invoke-static {v0, v3, v4, v6, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "PLS"

    const/16 v3, 0x2a

    const-string v4, "audio/x-scpls"

    const v6, 0xba14

    .line 333
    invoke-static {v0, v3, v4, v6, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "WPL"

    const/16 v3, 0x2b

    const-string v4, "application/vnd.ms-wpl"

    const v6, 0xba10

    .line 334
    invoke-static {v0, v3, v4, v6, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "M3U8"

    const-string v3, "application/vnd.apple.mpegurl"

    const/16 v4, 0x2c

    .line 335
    invoke-static {v0, v4, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "M3U8"

    const-string v3, "audio/mpegurl"

    .line 336
    invoke-static {v0, v4, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "M3U8"

    const-string v3, "audio/x-mpegurl"

    .line 337
    invoke-static {v0, v4, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "FL"

    const/16 v3, 0x33

    const-string v4, "application/x-android-drm-fl"

    .line 339
    invoke-static {v0, v3, v4}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "TXT"

    const/16 v3, 0x64

    const-string/jumbo v4, "text/plain"

    const/16 v6, 0x3004

    .line 341
    invoke-static {v0, v3, v4, v6, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "HTM"

    const/16 v3, 0x65

    const-string/jumbo v4, "text/html"

    const/16 v6, 0x3005

    .line 342
    invoke-static {v0, v3, v4, v6, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "HTML"

    const-string/jumbo v4, "text/html"

    .line 343
    invoke-static {v0, v3, v4, v6, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "PDF"

    const/16 v1, 0x66

    const-string v3, "application/pdf"

    .line 344
    invoke-static {v0, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "DOC"

    const/16 v1, 0x68

    const-string v3, "application/msword"

    const v4, 0xba83

    .line 345
    invoke-static {v0, v1, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "XLS"

    const/16 v1, 0x69

    const-string v3, "application/vnd.ms-excel"

    const v4, 0xba85

    .line 346
    invoke-static {v0, v1, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "PPT"

    const/16 v1, 0x6a

    const-string v3, "application/vnd.ms-powerpoint"

    const v4, 0xba86

    .line 347
    invoke-static {v0, v1, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "FLAC"

    const/16 v1, 0xa

    const-string v3, "audio/flac"

    const v4, 0xb906

    .line 348
    invoke-static {v0, v1, v3, v4, v5}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V

    const-string v0, "ZIP"

    const/16 v1, 0x6b

    const-string v3, "application/zip"

    .line 349
    invoke-static {v0, v1, v3}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MPG"

    const-string/jumbo v1, "video/mp2p"

    .line 350
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MPEG"

    const-string/jumbo v1, "video/mp2p"

    .line 351
    invoke-static {v0, v2, v1}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 175
    sget-object v0, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v1, Landroid/media/MediaFile$MediaFileType;

    invoke-direct {v1, p1, p2}, Landroid/media/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object p0, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static addFileType(Ljava/lang/String;ILjava/lang/String;IZ)V
    .locals 1

    .line 181
    invoke-static {p0, p1, p2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 182
    sget-object p1, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object p0, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    .line 185
    sget-object p0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 186
    sget-object p0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getFileTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2f

    .line 412
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 415
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 416
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/16 v0, 0x2e

    .line 420
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    .line 422
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;
    .locals 2

    const/16 v0, 0x2e

    .line 397
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 400
    :cond_0
    sget-object v1, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/MediaFile$MediaFileType;

    return-object p0
.end method

.method public static getFileTypeForMimeType(Ljava/lang/String;)I
    .locals 1

    .line 428
    sget-object v0, Landroid/media/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 429
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getFormatCode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    if-eqz p1, :cond_0

    .line 439
    sget-object v0, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 441
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/16 p1, 0x2e

    .line 444
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    if-lez p1, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 446
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 447
    sget-object p1, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    .line 449
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    const/16 p0, 0x3000

    return p0
.end method

.method public static getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 433
    invoke-static {p0}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 434
    :cond_0
    iget-object p0, p0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public static getMimeTypeForFormatCode(I)Ljava/lang/String;
    .locals 1

    .line 456
    sget-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static isAudioFileType(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v1, 0xa

    if-le p0, v1, :cond_3

    :cond_0
    const/16 v1, 0xb

    if-lt p0, v1, :cond_1

    const/16 v1, 0xd

    if-le p0, v1, :cond_3

    .line 355
    :cond_1
    sget-boolean v1, Landroid/media/MediaFile;->ATC_AOSP_ENHANCEMENT:Z

    if-eqz v1, :cond_2

    const/16 v1, 0xe

    if-lt p0, v1, :cond_2

    const/16 v1, 0x14

    if-gt p0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method

.method public static isDrmFileType(I)Z
    .locals 1

    const/16 v0, 0x33

    if-lt p0, v0, :cond_0

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isImageFileType(I)Z
    .locals 1

    const/16 v0, 0x1f

    if-lt p0, v0, :cond_0

    const/16 v0, 0x25

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x12c

    if-lt p0, v0, :cond_2

    const/16 v0, 0x135

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMimeTypeMedia(Ljava/lang/String;)Z
    .locals 1

    .line 404
    invoke-static {p0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result p0

    .line 405
    invoke-static {p0}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 406
    invoke-static {p0}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public static isPlayListFileType(I)Z
    .locals 1

    const/16 v0, 0x29

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2c

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isRawImageFileType(I)Z
    .locals 1

    const/16 v0, 0x12c

    if-lt p0, v0, :cond_0

    const/16 v0, 0x135

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVideoFileType(I)Z
    .locals 1

    const/16 v0, 0x15

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1e

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_1

    const/16 v0, 0xc9

    if-le p0, v0, :cond_2

    .line 365
    :cond_1
    sget-boolean v0, Landroid/media/MediaFile;->ATC_AOSP_ENHANCEMENT:Z

    if-eqz v0, :cond_3

    const/16 v0, 0xca

    if-lt p0, v0, :cond_3

    const/16 v0, 0xce

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isWMAEnabled()Z
    .locals 6

    .line 191
    invoke-static {}, Landroid/media/DecoderCapabilities;->getAudioDecoders()Ljava/util/List;

    move-result-object v0

    .line 192
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 194
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/DecoderCapabilities$AudioDecoder;

    .line 195
    sget-object v5, Landroid/media/DecoderCapabilities$AudioDecoder;->AUDIO_DECODER_WMA:Landroid/media/DecoderCapabilities$AudioDecoder;

    if-ne v4, v5, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private static isWMVEnabled()Z
    .locals 6

    .line 203
    invoke-static {}, Landroid/media/DecoderCapabilities;->getVideoDecoders()Ljava/util/List;

    move-result-object v0

    .line 204
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 206
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/DecoderCapabilities$VideoDecoder;

    .line 207
    sget-object v5, Landroid/media/DecoderCapabilities$VideoDecoder;->VIDEO_DECODER_WMV:Landroid/media/DecoderCapabilities$VideoDecoder;

    if-ne v4, v5, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
