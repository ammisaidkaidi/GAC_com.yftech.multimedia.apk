.class public Landroid/media/audiopolicy/AudioMix;
.super Ljava/lang/Object;
.source "AudioMix.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiopolicy/AudioMix$Builder;,
        Landroid/media/audiopolicy/AudioMix$RouteFlags;
    }
.end annotation


# static fields
.field private static final CALLBACK_FLAGS_ALL:I = 0x1

.field public static final CALLBACK_FLAG_NOTIFY_ACTIVITY:I = 0x1

.field public static final MIX_STATE_DISABLED:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final MIX_STATE_IDLE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final MIX_STATE_MIXING:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final MIX_TYPE_INVALID:I = -0x1

.field public static final MIX_TYPE_PLAYERS:I = 0x0

.field public static final MIX_TYPE_RECORDERS:I = 0x1

.field public static final ROUTE_FLAG_LOOP_BACK:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ROUTE_FLAG_RENDER:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final ROUTE_FLAG_SUPPORTED:I = 0x3


# instance fields
.field mCallbackFlags:I

.field mDeviceAddress:Ljava/lang/String;

.field final mDeviceSystemType:I

.field private mFormat:Landroid/media/AudioFormat;

.field mMixState:I

.field private mMixType:I

.field private mRouteFlags:I

.field private mRule:Landroid/media/audiopolicy/AudioMixingRule;


# direct methods
.method private constructor <init>(Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/AudioFormat;IIILjava/lang/String;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Landroid/media/audiopolicy/AudioMix;->mMixType:I

    .line 42
    iput v0, p0, Landroid/media/audiopolicy/AudioMix;->mMixState:I

    .line 54
    iput-object p1, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    .line 55
    iput-object p2, p0, Landroid/media/audiopolicy/AudioMix;->mFormat:Landroid/media/AudioFormat;

    .line 56
    iput p3, p0, Landroid/media/audiopolicy/AudioMix;->mRouteFlags:I

    .line 57
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMixingRule;->getTargetMixType()I

    move-result p1

    iput p1, p0, Landroid/media/audiopolicy/AudioMix;->mMixType:I

    .line 58
    iput p4, p0, Landroid/media/audiopolicy/AudioMix;->mCallbackFlags:I

    .line 59
    iput p5, p0, Landroid/media/audiopolicy/AudioMix;->mDeviceSystemType:I

    if-nez p6, :cond_0

    .line 60
    new-instance p6, Ljava/lang/String;

    const-string p1, ""

    invoke-direct {p6, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_0
    iput-object p6, p0, Landroid/media/audiopolicy/AudioMix;->mDeviceAddress:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/AudioFormat;IIILjava/lang/String;Landroid/media/audiopolicy/AudioMix$1;)V
    .locals 0

    .line 34
    invoke-direct/range {p0 .. p6}, Landroid/media/audiopolicy/AudioMix;-><init>(Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/AudioFormat;IIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 173
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 175
    :cond_1
    check-cast p1, Landroid/media/audiopolicy/AudioMix;

    .line 176
    iget v2, p0, Landroid/media/audiopolicy/AudioMix;->mRouteFlags:I

    iget v3, p1, Landroid/media/audiopolicy/AudioMix;->mRouteFlags:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    iget-object v3, p1, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/media/audiopolicy/AudioMix;->mMixType:I

    iget v3, p1, Landroid/media/audiopolicy/AudioMix;->mMixType:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Landroid/media/audiopolicy/AudioMix;->mFormat:Landroid/media/AudioFormat;

    iget-object p1, p1, Landroid/media/audiopolicy/AudioMix;->mFormat:Landroid/media/AudioFormat;

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method getFormat()Landroid/media/AudioFormat;
    .locals 0

    .line 143
    iget-object p0, p0, Landroid/media/audiopolicy/AudioMix;->mFormat:Landroid/media/AudioFormat;

    return-object p0
.end method

.method public getMixState()I
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 134
    iget p0, p0, Landroid/media/audiopolicy/AudioMix;->mMixState:I

    return p0
.end method

.method public getMixType()I
    .locals 0

    .line 152
    iget p0, p0, Landroid/media/audiopolicy/AudioMix;->mMixType:I

    return p0
.end method

.method public getRegistration()Ljava/lang/String;
    .locals 0

    .line 161
    iget-object p0, p0, Landroid/media/audiopolicy/AudioMix;->mDeviceAddress:Ljava/lang/String;

    return-object p0
.end method

.method getRouteFlags()I
    .locals 0

    .line 139
    iget p0, p0, Landroid/media/audiopolicy/AudioMix;->mRouteFlags:I

    return p0
.end method

.method getRule()Landroid/media/audiopolicy/AudioMixingRule;
    .locals 0

    .line 147
    iget-object p0, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    .line 185
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/audiopolicy/AudioMix;->mRouteFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/audiopolicy/AudioMix;->mMixType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/media/audiopolicy/AudioMix;->mFormat:Landroid/media/AudioFormat;

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isAffectingUsage(I)Z
    .locals 0

    .line 166
    iget-object p0, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    invoke-virtual {p0, p1}, Landroid/media/audiopolicy/AudioMixingRule;->isAffectingUsage(I)Z

    move-result p0

    return p0
.end method

.method setRegistration(Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Landroid/media/audiopolicy/AudioMix;->mDeviceAddress:Ljava/lang/String;

    return-void
.end method
