.class Landroid/speech/tts/TtsEngines$EngineInfoComparator;
.super Ljava/lang/Object;
.source "TtsEngines.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TtsEngines;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EngineInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/speech/tts/TextToSpeech$EngineInfo;",
        ">;"
    }
.end annotation


# static fields
.field static INSTANCE:Landroid/speech/tts/TtsEngines$EngineInfoComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 298
    new-instance v0, Landroid/speech/tts/TtsEngines$EngineInfoComparator;

    invoke-direct {v0}, Landroid/speech/tts/TtsEngines$EngineInfoComparator;-><init>()V

    sput-object v0, Landroid/speech/tts/TtsEngines$EngineInfoComparator;->INSTANCE:Landroid/speech/tts/TtsEngines$EngineInfoComparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/speech/tts/TextToSpeech$EngineInfo;Landroid/speech/tts/TextToSpeech$EngineInfo;)I
    .locals 0

    .line 307
    iget-boolean p0, p1, Landroid/speech/tts/TextToSpeech$EngineInfo;->system:Z

    if-eqz p0, :cond_0

    iget-boolean p0, p2, Landroid/speech/tts/TextToSpeech$EngineInfo;->system:Z

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 309
    :cond_0
    iget-boolean p0, p2, Landroid/speech/tts/TextToSpeech$EngineInfo;->system:Z

    if-eqz p0, :cond_1

    iget-boolean p0, p1, Landroid/speech/tts/TextToSpeech$EngineInfo;->system:Z

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 317
    :cond_1
    iget p0, p2, Landroid/speech/tts/TextToSpeech$EngineInfo;->priority:I

    iget p1, p1, Landroid/speech/tts/TextToSpeech$EngineInfo;->priority:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 295
    check-cast p1, Landroid/speech/tts/TextToSpeech$EngineInfo;

    check-cast p2, Landroid/speech/tts/TextToSpeech$EngineInfo;

    invoke-virtual {p0, p1, p2}, Landroid/speech/tts/TtsEngines$EngineInfoComparator;->compare(Landroid/speech/tts/TextToSpeech$EngineInfo;Landroid/speech/tts/TextToSpeech$EngineInfo;)I

    move-result p0

    return p0
.end method
