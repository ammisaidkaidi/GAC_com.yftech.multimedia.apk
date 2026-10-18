.class public final Landroid/media/AudioAttributes;
.super Ljava/lang/Object;
.source "AudioAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioAttributes$AttributeContentType;,
        Landroid/media/AudioAttributes$AttributeUsage;,
        Landroid/media/AudioAttributes$Builder;
    }
.end annotation


# static fields
.field private static final ALL_PARCEL_FLAGS:I = 0x1

.field private static ATC_AOSP_ENHANCEMENT_AUDIO:Z = false

.field private static ATC_SOURCE_MAX:I = 0x0

.field private static final ATTR_PARCEL_IS_NULL_BUNDLE:I = -0x7b9

.field private static final ATTR_PARCEL_IS_VALID_BUNDLE:I = 0x7bc

.field public static final CONTENT_TYPE_ADAS:I = 0x8

.field public static final CONTENT_TYPE_ALTERNATE:I = 0xc

.field public static final CONTENT_TYPE_AUXIN:I = 0xa

.field public static final CONTENT_TYPE_BACKCAR:I = 0x6

.field public static final CONTENT_TYPE_GIS:I = 0x5

.field public static final CONTENT_TYPE_MOVIE:I = 0x3

.field public static final CONTENT_TYPE_MUSIC:I = 0x2

.field public static final CONTENT_TYPE_RDS:I = 0x7

.field public static final CONTENT_TYPE_SMIX:I = 0x9

.field public static final CONTENT_TYPE_SONIFICATION:I = 0x4

.field public static final CONTENT_TYPE_SPEECH:I = 0x1

.field public static final CONTENT_TYPE_UNKNOWN:I = 0x0

.field public static final CONTENT_TYPE_VOICE_ASSISTANT:I = 0xb

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLAG_ALL:I = 0x3ff

.field private static final FLAG_ALL_PUBLIC:I = 0x111

.field public static final FLAG_AUDIBILITY_ENFORCED:I = 0x1

.field public static final FLAG_BEACON:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FLAG_BYPASS_INTERRUPTION_POLICY:I = 0x40
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FLAG_BYPASS_MUTE:I = 0x80
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FLAG_DEEP_BUFFER:I = 0x200

.field public static final FLAG_HW_AV_SYNC:I = 0x10

.field public static final FLAG_HW_HOTWORD:I = 0x20
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FLAG_LOW_LATENCY:I = 0x100

.field public static final FLAG_SCO:I = 0x4

.field public static final FLAG_SECURE:I = 0x2

.field public static final FLATTEN_TAGS:I = 0x1

.field public static final SDK_USAGES:[I

.field public static final SUPPRESSIBLE_ALARM:I = 0x4

.field public static final SUPPRESSIBLE_CALL:I = 0x2

.field public static final SUPPRESSIBLE_MEDIA:I = 0x5

.field public static final SUPPRESSIBLE_NEVER:I = 0x3

.field public static final SUPPRESSIBLE_NOTIFICATION:I = 0x1

.field public static final SUPPRESSIBLE_SYSTEM:I = 0x6

.field public static final SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

.field private static final TAG:Ljava/lang/String; = "AudioAttributes"

.field public static final USAGE_A2DP:I = 0x1b

.field public static final USAGE_ADAS:I = 0x14

.field public static final USAGE_ALARM:I = 0x4

.field public static final USAGE_ALTERNATE:I = 0x18

.field public static final USAGE_ASSISTANCE_ACCESSIBILITY:I = 0xb

.field public static final USAGE_ASSISTANCE_NAVIGATION_GUIDANCE:I = 0xc

.field public static final USAGE_ASSISTANCE_SONIFICATION:I = 0xd

.field public static final USAGE_ASSISTANT:I = 0x10

.field public static final USAGE_AUX:I = 0x25

.field public static final USAGE_AUXIN:I = 0x16

.field public static final USAGE_BACKCAR:I = 0x12

.field public static final USAGE_BEEP:I = 0x20

.field public static final USAGE_CARLIFE:I = 0x29

.field public static final USAGE_CARPLAY:I = 0x28

.field public static final USAGE_CAR_ALARM:I = 0x2d

.field public static final USAGE_CLUSTER:I = 0x34

.field public static final USAGE_DSP:I = 0x2c

.field public static final USAGE_DVR:I = 0x24

.field public static final USAGE_GAME:I = 0xe

.field public static final USAGE_GIS:I = 0x11

.field public static final USAGE_HDMI:I = 0x2a

.field public static final USAGE_MEDIA:I = 0x1

.field public static final USAGE_NAVI:I = 0x1f

.field public static final USAGE_NAVI_CARLIFE:I = 0x2f

.field public static final USAGE_NAVI_CARPLAY:I = 0x2e

.field public static final USAGE_NOTIFICATION:I = 0x5

.field public static final USAGE_NOTIFICATION_COMMUNICATION_DELAYED:I = 0x9

.field public static final USAGE_NOTIFICATION_COMMUNICATION_INSTANT:I = 0x8

.field public static final USAGE_NOTIFICATION_COMMUNICATION_REQUEST:I = 0x7

.field public static final USAGE_NOTIFICATION_EVENT:I = 0xa

.field public static final USAGE_NOTIFICATION_RINGTONE:I = 0x6

.field public static final USAGE_PHONE:I = 0x1c

.field public static final USAGE_PHONE_CARLIFE:I = 0x33

.field public static final USAGE_PHONE_CARPLAY:I = 0x32

.field public static final USAGE_RADAR:I = 0x23

.field public static final USAGE_RADIO:I = 0x1a

.field public static final USAGE_RDS:I = 0x13

.field public static final USAGE_SCREEN:I = 0x27

.field public static final USAGE_SMIX:I = 0x15

.field public static final USAGE_STANDBY:I = 0x26

.field public static final USAGE_SVC:I = 0x2b

.field public static final USAGE_TBOX:I = 0x1e

.field public static final USAGE_TBOX_B:I = 0x35

.field public static final USAGE_TBOX_E:I = 0x1e

.field public static final USAGE_TBOX_I:I = 0x36

.field public static final USAGE_UNKNOWN:I = 0x0

.field public static final USAGE_VIDEO:I = 0x19

.field public static final USAGE_VIRTUAL_SOURCE:I = 0xf

.field public static final USAGE_VOICE:I = 0x21

.field public static final USAGE_VOICE_ASSISTANT:I = 0x17

.field public static final USAGE_VOICE_CARLIFE:I = 0x31

.field public static final USAGE_VOICE_CARPLAY:I = 0x30

.field public static final USAGE_VOICE_COMMUNICATION:I = 0x2

.field public static final USAGE_VOICE_COMMUNICATION_SIGNALLING:I = 0x3

.field public static final USAGE_VOIP:I = 0x1d

.field public static final USAGE_WARNING:I = 0x37

.field public static final USAGE_WECHAT:I = 0x22

.field private static final YF_CUSTOM_BASE_TYPE:I = 0x19


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mContentType:I

.field private mFlags:I

.field private mFormattedTags:Ljava/lang/String;

.field private mSource:I

.field private mTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUsage:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string/jumbo v0, "ro.atc.aosp_enhancement_audio"

    const/4 v1, 0x0

    .line 72
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/media/AudioAttributes;->ATC_AOSP_ENHANCEMENT_AUDIO:Z

    const/16 v0, 0xe

    .line 73
    sput v0, Landroid/media/AudioAttributes;->ATC_SOURCE_MAX:I

    .line 386
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v2, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    .line 387
    sget-object v2, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 388
    sget-object v2, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/4 v5, 0x2

    const/4 v6, 0x6

    invoke-virtual {v2, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 389
    sget-object v2, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/4 v7, 0x7

    invoke-virtual {v2, v7, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 390
    sget-object v2, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v7, 0x8

    invoke-virtual {v2, v7, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 391
    sget-object v2, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v7, 0x9

    invoke-virtual {v2, v7, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 392
    sget-object v2, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v7, 0xa

    invoke-virtual {v2, v7, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 393
    sget-object v2, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/4 v7, 0x3

    const/16 v8, 0xb

    invoke-virtual {v2, v8, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 394
    sget-object v2, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 395
    sget-object v2, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/4 v5, 0x4

    invoke-virtual {v2, v5, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 396
    sget-object v2, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 397
    sget-object v2, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 398
    sget-object v2, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 399
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 401
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 402
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v7, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 403
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 410
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/media/AudioAttributes;->SDK_USAGES:[I

    .line 1111
    new-instance v0, Landroid/media/AudioAttributes$1;

    invoke-direct {v0}, Landroid/media/AudioAttributes$1;-><init>()V

    sput-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x10
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 522
    iput v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    .line 523
    iput v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    const/4 v1, -0x1

    .line 524
    iput v1, p0, Landroid/media/AudioAttributes;->mSource:I

    .line 525
    iput v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioAttributes$1;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Landroid/media/AudioAttributes;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 1082
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 522
    iput v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    .line 523
    iput v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    const/4 v1, -0x1

    .line 524
    iput v1, p0, Landroid/media/AudioAttributes;->mSource:I

    .line 525
    iput v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    .line 1083
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes;->mUsage:I

    .line 1084
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes;->mContentType:I

    .line 1085
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes;->mSource:I

    .line 1086
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes;->mFlags:I

    .line 1087
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    move v0, v2

    .line 1088
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 1090
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    .line 1091
    iget-object v0, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    iget-object v1, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1093
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 1094
    array-length v1, v0

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    .line 1095
    iget-object v2, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const-string v0, ";"

    .line 1097
    iget-object v1, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    .line 1099
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/16 v1, -0x7b9

    if-eq v0, v1, :cond_4

    const/16 v1, 0x7bc

    if-eq v0, v1, :cond_3

    const-string p0, "AudioAttributes"

    const-string p1, "Illegal value unmarshalling AudioAttributes, can\'t initialize bundle"

    .line 1107
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1104
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 1101
    iput-object p1, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    :goto_2
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/AudioAttributes$1;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Landroid/media/AudioAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$000(Landroid/media/AudioAttributes;)I
    .locals 0

    .line 70
    iget p0, p0, Landroid/media/AudioAttributes;->mUsage:I

    return p0
.end method

.method static synthetic access$002(Landroid/media/AudioAttributes;I)I
    .locals 0

    .line 70
    iput p1, p0, Landroid/media/AudioAttributes;->mUsage:I

    return p1
.end method

.method static synthetic access$100(Landroid/media/AudioAttributes;)I
    .locals 0

    .line 70
    iget p0, p0, Landroid/media/AudioAttributes;->mContentType:I

    return p0
.end method

.method static synthetic access$1000()I
    .locals 1

    .line 70
    sget v0, Landroid/media/AudioAttributes;->ATC_SOURCE_MAX:I

    return v0
.end method

.method static synthetic access$102(Landroid/media/AudioAttributes;I)I
    .locals 0

    .line 70
    iput p1, p0, Landroid/media/AudioAttributes;->mContentType:I

    return p1
.end method

.method static synthetic access$200(Landroid/media/AudioAttributes;)I
    .locals 0

    .line 70
    iget p0, p0, Landroid/media/AudioAttributes;->mFlags:I

    return p0
.end method

.method static synthetic access$202(Landroid/media/AudioAttributes;I)I
    .locals 0

    .line 70
    iput p1, p0, Landroid/media/AudioAttributes;->mFlags:I

    return p1
.end method

.method static synthetic access$300(Landroid/media/AudioAttributes;)Ljava/util/HashSet;
    .locals 0

    .line 70
    iget-object p0, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$302(Landroid/media/AudioAttributes;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0

    .line 70
    iput-object p1, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    return-object p1
.end method

.method static synthetic access$502(Landroid/media/AudioAttributes;I)I
    .locals 0

    .line 70
    iput p1, p0, Landroid/media/AudioAttributes;->mSource:I

    return p1
.end method

.method static synthetic access$602(Landroid/media/AudioAttributes;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 70
    iput-object p1, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Landroid/media/AudioAttributes;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 70
    iput-object p1, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$800(I)I
    .locals 0

    .line 70
    invoke-static {p0}, Landroid/media/AudioAttributes;->usageForStreamType(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$900()Z
    .locals 1

    .line 70
    sget-boolean v0, Landroid/media/AudioAttributes;->ATC_AOSP_ENHANCEMENT_AUDIO:Z

    return v0
.end method

.method public static getVolumeControlStream(Landroid/media/AudioAttributes;)I
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 1380
    invoke-static {v0, p0}, Landroid/media/AudioAttributes;->toVolumeStreamType(ZLandroid/media/AudioAttributes;)I

    move-result p0

    return p0

    .line 1378
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid null audio attributes"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toLegacyStreamType(Landroid/media/AudioAttributes;)I
    .locals 1

    const/4 v0, 0x0

    .line 1392
    invoke-static {v0, p0}, Landroid/media/AudioAttributes;->toVolumeStreamType(ZLandroid/media/AudioAttributes;)I

    move-result p0

    return p0
.end method

.method private static toVolumeStreamType(ZLandroid/media/AudioAttributes;)I
    .locals 6

    .line 1397
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    :goto_0
    return v1

    .line 1401
    :cond_1
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v0

    const/4 v2, 0x4

    and-int/2addr v0, v2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x6

    :goto_1
    return v3

    .line 1407
    :cond_3
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    const/16 v4, 0x12

    const/4 v5, 0x3

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    if-nez p0, :cond_5

    return v5

    :pswitch_1
    const/16 p0, 0x30

    return p0

    :pswitch_2
    const/16 p0, 0x2f

    return p0

    :pswitch_3
    const/16 p0, 0x2e

    return p0

    :pswitch_4
    const/16 p0, 0x2d

    return p0

    :pswitch_5
    const/16 p0, 0x2c

    return p0

    :pswitch_6
    const/16 p0, 0x2b

    return p0

    :pswitch_7
    const/16 p0, 0x2a

    return p0

    :pswitch_8
    const/16 p0, 0x29

    return p0

    :pswitch_9
    const/16 p0, 0x28

    return p0

    :pswitch_a
    const/16 p0, 0x27

    return p0

    :pswitch_b
    const/16 p0, 0x26

    return p0

    :pswitch_c
    const/16 p0, 0x25

    return p0

    :pswitch_d
    const/16 p0, 0x24

    return p0

    :pswitch_e
    const/16 p0, 0x23

    return p0

    :pswitch_f
    const/16 p0, 0x22

    return p0

    :pswitch_10
    const/16 p0, 0x21

    return p0

    :pswitch_11
    const/16 p0, 0x20

    return p0

    :pswitch_12
    const/16 p0, 0x1f

    return p0

    :pswitch_13
    const/16 p0, 0x1e

    return p0

    :pswitch_14
    const/16 p0, 0x1d

    return p0

    :pswitch_15
    const/16 p0, 0x1c

    return p0

    :pswitch_16
    const/16 p0, 0x1b

    return p0

    :pswitch_17
    const/16 p0, 0x1a

    return p0

    :pswitch_18
    const/16 p0, 0x19

    return p0

    :pswitch_19
    const/16 p0, 0x18

    return p0

    :pswitch_1a
    const/16 p0, 0x17

    return p0

    :pswitch_1b
    const/16 p0, 0x16

    return p0

    :pswitch_1c
    const/16 p0, 0x15

    return p0

    :pswitch_1d
    const/16 p0, 0x14

    return p0

    :pswitch_1e
    const/16 p0, 0x13

    return p0

    :pswitch_1f
    return v4

    :pswitch_20
    return v4

    :pswitch_21
    const/16 p0, 0x11

    return p0

    :pswitch_22
    const/16 p0, 0x10

    return p0

    :pswitch_23
    const/16 p0, 0xf

    return p0

    :pswitch_24
    const/16 p0, 0xe

    return p0

    :pswitch_25
    const/16 p0, 0xd

    return p0

    :pswitch_26
    const/16 p0, 0xc

    return p0

    :pswitch_27
    const/16 p0, 0xb

    return p0

    :pswitch_28
    return v1

    :pswitch_29
    const/16 p0, 0xa

    return p0

    :pswitch_2a
    const/4 p0, 0x2

    return p0

    :pswitch_2b
    const/4 p0, 0x5

    return p0

    :pswitch_2c
    return v2

    :pswitch_2d
    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    const/16 v3, 0x8

    :goto_2
    return v3

    :pswitch_2e
    return v3

    :pswitch_2f
    return v5

    :pswitch_30
    return v5

    .line 1519
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown usage value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in audio attributes"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_29
        :pswitch_2f
        :pswitch_28
        :pswitch_2f
        :pswitch_0
        :pswitch_2f
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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
    .end packed-switch
.end method

.method private static usageForStreamType(I)I
    .locals 2

    const/16 v0, 0xb

    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x37

    return p0

    :pswitch_1
    const/16 p0, 0x36

    return p0

    :pswitch_2
    const/16 p0, 0x35

    return p0

    :pswitch_3
    const/16 p0, 0x34

    return p0

    :pswitch_4
    const/16 p0, 0x33

    return p0

    :pswitch_5
    const/16 p0, 0x32

    return p0

    :pswitch_6
    const/16 p0, 0x31

    return p0

    :pswitch_7
    const/16 p0, 0x30

    return p0

    :pswitch_8
    const/16 p0, 0x2f

    return p0

    :pswitch_9
    const/16 p0, 0x2e

    return p0

    :pswitch_a
    const/16 p0, 0x2d

    return p0

    :pswitch_b
    const/16 p0, 0x2c

    return p0

    :pswitch_c
    const/16 p0, 0x2b

    return p0

    :pswitch_d
    const/16 p0, 0x2a

    return p0

    :pswitch_e
    const/16 p0, 0x29

    return p0

    :pswitch_f
    const/16 p0, 0x28

    return p0

    :pswitch_10
    const/16 p0, 0x27

    return p0

    :pswitch_11
    const/16 p0, 0x26

    return p0

    :pswitch_12
    const/16 p0, 0x25

    return p0

    :pswitch_13
    const/16 p0, 0x24

    return p0

    :pswitch_14
    const/16 p0, 0x23

    return p0

    :pswitch_15
    const/16 p0, 0x22

    return p0

    :pswitch_16
    const/16 p0, 0x21

    return p0

    :pswitch_17
    const/16 p0, 0x20

    return p0

    :pswitch_18
    const/16 p0, 0x1f

    return p0

    :pswitch_19
    const/16 p0, 0x1e

    return p0

    :pswitch_1a
    const/16 p0, 0x1d

    return p0

    :pswitch_1b
    const/16 p0, 0x1c

    return p0

    :pswitch_1c
    const/16 p0, 0x1b

    return p0

    :pswitch_1d
    const/16 p0, 0x1a

    return p0

    :pswitch_1e
    const/16 p0, 0x18

    return p0

    :pswitch_1f
    const/16 p0, 0x17

    return p0

    :pswitch_20
    const/16 p0, 0x16

    return p0

    :pswitch_21
    const/16 p0, 0x15

    return p0

    :pswitch_22
    const/16 p0, 0x14

    return p0

    :pswitch_23
    const/16 p0, 0x13

    return p0

    :pswitch_24
    const/16 p0, 0x12

    return p0

    :pswitch_25
    const/16 p0, 0x11

    return p0

    :pswitch_26
    return v0

    :pswitch_27
    return v0

    :pswitch_28
    const/4 p0, 0x3

    return p0

    :pswitch_29
    return v1

    :pswitch_2a
    const/4 p0, 0x5

    return p0

    :pswitch_2b
    const/4 p0, 0x4

    return p0

    :pswitch_2c
    const/4 p0, 0x1

    return p0

    :pswitch_2d
    const/4 p0, 0x6

    return p0

    :pswitch_2e
    const/16 p0, 0xd

    return p0

    :pswitch_2f
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_2e
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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

.method public static usageToString(I)Ljava/lang/String;
    .locals 3

    packed-switch p0, :pswitch_data_0

    .line 1216
    :pswitch_0
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown usage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1214
    :pswitch_1
    new-instance p0, Ljava/lang/String;

    const-string v0, "USAGE_ASSISTANT"

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 1212
    :pswitch_2
    new-instance p0, Ljava/lang/String;

    const-string v0, "USAGE_GAME"

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 1210
    :pswitch_3
    new-instance p0, Ljava/lang/String;

    const-string v0, "USAGE_ASSISTANCE_SONIFICATION"

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 1208
    :pswitch_4
    new-instance p0, Ljava/lang/String;

    const-string v0, "USAGE_ASSISTANCE_NAVIGATION_GUIDANCE"

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 1206
    :pswitch_5
    new-instance p0, Ljava/lang/String;

    const-string v0, "USAGE_ASSISTANCE_ACCESSIBILITY"

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 1204
    :pswitch_6
    new-instance p0, Ljava/lang/String;

    const-string v0, "USAGE_NOTIFICATION_EVENT"

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 1202
    :pswitch_7
    new-instance p0, Ljava/lang/String;

    const-string v0, "USAGE_NOTIFICATION_COMMUNICATION_DELAYED"

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 1200
    :pswitch_8
    new-instance p0, Ljava/lang/String;

    const-string v0, "USAGE_NOTIFICATION_COMMUNICATION_INSTANT"

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 1198
    :pswitch_9
    new-instance p0, Ljava/lang/String;

    const-string v0, "USAGE_NOTIFICATION_COMMUNICATION_REQUEST"

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 1196
    :pswitch_a
    new-instance p0, Ljava/lang/String;

    const-string v0, "USAGE_NOTIFICATION_RINGTONE"

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 1194
    :pswitch_b
    new-instance p0, Ljava/lang/String;

    const-string v0, "USAGE_NOTIFICATION"

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 1192
    :pswitch_c
    new-instance p0, Ljava/lang/String;

    const-string v0, "USAGE_ALARM"

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 1190
    :pswitch_d
    new-instance p0, Ljava/lang/String;

    const-string v0, "USAGE_VOICE_COMMUNICATION_SIGNALLING"

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 1188
    :pswitch_e
    new-instance p0, Ljava/lang/String;

    const-string v0, "USAGE_VOICE_COMMUNICATION"

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 1186
    :pswitch_f
    new-instance p0, Ljava/lang/String;

    const-string v0, "USAGE_MEDIA"

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 1184
    :pswitch_10
    new-instance p0, Ljava/lang/String;

    const-string v0, "USAGE_UNKNOWN"

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
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
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public contentTypeToString()Ljava/lang/String;
    .locals 3

    .line 1222
    iget v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    packed-switch v0, :pswitch_data_0

    .line 1229
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown content type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/media/AudioAttributes;->mContentType:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1228
    :pswitch_0
    new-instance p0, Ljava/lang/String;

    const-string v0, "CONTENT_TYPE_SONIFICATION"

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 1227
    :pswitch_1
    new-instance p0, Ljava/lang/String;

    const-string v0, "CONTENT_TYPE_MOVIE"

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 1226
    :pswitch_2
    new-instance p0, Ljava/lang/String;

    const-string v0, "CONTENT_TYPE_MUSIC"

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 1225
    :pswitch_3
    new-instance p0, Ljava/lang/String;

    const-string v0, "CONTENT_TYPE_SPEECH"

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 1224
    :pswitch_4
    new-instance p0, Ljava/lang/String;

    const-string v0, "CONTENT_TYPE_UNKNOWN"

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1129
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1131
    :cond_1
    check-cast p1, Landroid/media/AudioAttributes;

    .line 1133
    iget v2, p0, Landroid/media/AudioAttributes;->mContentType:I

    iget v3, p1, Landroid/media/AudioAttributes;->mContentType:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/media/AudioAttributes;->mFlags:I

    iget v3, p1, Landroid/media/AudioAttributes;->mFlags:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/media/AudioAttributes;->mSource:I

    iget v3, p1, Landroid/media/AudioAttributes;->mSource:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/media/AudioAttributes;->mUsage:I

    iget v3, p1, Landroid/media/AudioAttributes;->mUsage:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    iget-object p1, p1, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    .line 1138
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAllFlags()I
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 577
    iget p0, p0, Landroid/media/AudioAttributes;->mFlags:I

    and-int/lit16 p0, p0, 0x3ff

    return p0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 587
    iget-object v0, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 588
    iget-object p0, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    return-object p0

    .line 590
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    iget-object p0, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getCapturePreset()I
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 557
    iget p0, p0, Landroid/media/AudioAttributes;->mSource:I

    return p0
.end method

.method public getContentType()I
    .locals 0

    .line 538
    iget p0, p0, Landroid/media/AudioAttributes;->mContentType:I

    return p0
.end method

.method public getFlags()I
    .locals 0

    .line 566
    iget p0, p0, Landroid/media/AudioAttributes;->mFlags:I

    and-int/lit16 p0, p0, 0x111

    return p0
.end method

.method public getTags()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 600
    iget-object p0, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getUsage()I
    .locals 0

    .line 546
    iget p0, p0, Landroid/media/AudioAttributes;->mUsage:I

    return p0
.end method

.method public getVolumeControlStream()I
    .locals 1

    const/4 v0, 0x1

    .line 1359
    invoke-static {v0, p0}, Landroid/media/AudioAttributes;->toVolumeStreamType(ZLandroid/media/AudioAttributes;)I

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    .line 1143
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/AudioAttributes;->mContentType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioAttributes;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioAttributes;->mSource:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioAttributes;->mUsage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    const/4 v1, 0x5

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1148
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioAttributes: usage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->usageToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " content="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->contentTypeToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/AudioAttributes;->mFlags:I

    .line 1151
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " tags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " bundle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    iget-object v2, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    if-nez v2, :cond_0

    const-string/jumbo p0, "null"

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public usageToString()Ljava/lang/String;
    .locals 0

    .line 1177
    iget p0, p0, Landroid/media/AudioAttributes;->mUsage:I

    invoke-static {p0}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1062
    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1063
    iget v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1064
    iget v0, p0, Landroid/media/AudioAttributes;->mSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1065
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    and-int/2addr p2, v0

    .line 1066
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    if-nez p2, :cond_0

    .line 1068
    iget-object p2, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    .line 1069
    iget-object v0, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1070
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    .line 1072
    iget-object p2, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1074
    :cond_1
    :goto_0
    iget-object p2, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    if-nez p2, :cond_2

    const/16 p0, -0x7b9

    .line 1075
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_2
    const/16 p2, 0x7bc

    .line 1077
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1078
    iget-object p0, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    :goto_1
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5

    .line 1158
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 1160
    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    const-wide v1, 0x10e00000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1161
    iget v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    const-wide v1, 0x10e00000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1162
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    const-wide v1, 0x10500000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1164
    iget-object p0, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 1165
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_0

    const-wide v3, 0x20900000004L

    .line 1167
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1172
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
