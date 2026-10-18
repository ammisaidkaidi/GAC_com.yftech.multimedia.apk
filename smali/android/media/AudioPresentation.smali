.class public final Landroid/media/AudioPresentation;
.super Ljava/lang/Object;
.source "AudioPresentation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioPresentation$MasteringIndicationType;
    }
.end annotation


# static fields
.field public static final MASTERED_FOR_3D:I = 0x3

.field public static final MASTERED_FOR_HEADPHONE:I = 0x4

.field public static final MASTERED_FOR_STEREO:I = 0x1

.field public static final MASTERED_FOR_SURROUND:I = 0x2

.field public static final MASTERING_NOT_INDICATED:I


# instance fields
.field private final mAudioDescriptionAvailable:Z

.field private final mDialogueEnhancementAvailable:Z

.field private final mLabels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLanguage:Ljava/lang/String;

.field private final mMasteringIndication:I

.field private final mPresentationId:I

.field private final mProgramId:I

.field private final mSpokenSubtitlesAvailable:Z


# direct methods
.method public constructor <init>(IILjava/util/Map;Ljava/lang/String;IZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "IZZZ)V"
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput p1, p0, Landroid/media/AudioPresentation;->mPresentationId:I

    .line 106
    iput p2, p0, Landroid/media/AudioPresentation;->mProgramId:I

    .line 107
    iput-object p4, p0, Landroid/media/AudioPresentation;->mLanguage:Ljava/lang/String;

    .line 108
    iput p5, p0, Landroid/media/AudioPresentation;->mMasteringIndication:I

    .line 109
    iput-boolean p6, p0, Landroid/media/AudioPresentation;->mAudioDescriptionAvailable:Z

    .line 110
    iput-boolean p7, p0, Landroid/media/AudioPresentation;->mSpokenSubtitlesAvailable:Z

    .line 111
    iput-boolean p8, p0, Landroid/media/AudioPresentation;->mDialogueEnhancementAvailable:Z

    .line 113
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Landroid/media/AudioPresentation;->mLabels:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getLabels()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 143
    iget-object p0, p0, Landroid/media/AudioPresentation;->mLabels:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 144
    new-instance v2, Ljava/util/Locale;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 153
    new-instance v0, Ljava/util/Locale;

    iget-object p0, p0, Landroid/media/AudioPresentation;->mLanguage:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getMasteringIndication()I
    .locals 0

    .line 163
    iget p0, p0, Landroid/media/AudioPresentation;->mMasteringIndication:I

    return p0
.end method

.method public getPresentationId()I
    .locals 0

    .line 123
    iget p0, p0, Landroid/media/AudioPresentation;->mPresentationId:I

    return p0
.end method

.method public getProgramId()I
    .locals 0

    .line 133
    iget p0, p0, Landroid/media/AudioPresentation;->mProgramId:I

    return p0
.end method

.method public hasAudioDescription()Z
    .locals 0

    .line 171
    iget-boolean p0, p0, Landroid/media/AudioPresentation;->mAudioDescriptionAvailable:Z

    return p0
.end method

.method public hasDialogueEnhancement()Z
    .locals 0

    .line 187
    iget-boolean p0, p0, Landroid/media/AudioPresentation;->mDialogueEnhancementAvailable:Z

    return p0
.end method

.method public hasSpokenSubtitles()Z
    .locals 0

    .line 179
    iget-boolean p0, p0, Landroid/media/AudioPresentation;->mSpokenSubtitlesAvailable:Z

    return p0
.end method
