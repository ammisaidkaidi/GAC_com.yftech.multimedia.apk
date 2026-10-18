.class public final Landroid/speech/tts/SynthesisRequest;
.super Ljava/lang/Object;
.source "SynthesisRequest.java"


# instance fields
.field private mCallerUid:I

.field private mCountry:Ljava/lang/String;

.field private mLanguage:Ljava/lang/String;

.field private final mParams:Landroid/os/Bundle;

.field private mPitch:I

.field private mSpeechRate:I

.field private final mText:Ljava/lang/CharSequence;

.field private mVariant:Ljava/lang/String;

.field private mVoiceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/os/Bundle;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroid/speech/tts/SynthesisRequest;->mText:Ljava/lang/CharSequence;

    .line 59
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object p1, p0, Landroid/speech/tts/SynthesisRequest;->mParams:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroid/speech/tts/SynthesisRequest;->mText:Ljava/lang/CharSequence;

    .line 53
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object p1, p0, Landroid/speech/tts/SynthesisRequest;->mParams:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getCallerUid()I
    .locals 0

    .line 131
    iget p0, p0, Landroid/speech/tts/SynthesisRequest;->mCallerUid:I

    return p0
.end method

.method public getCharSequenceText()Ljava/lang/CharSequence;
    .locals 0

    .line 75
    iget-object p0, p0, Landroid/speech/tts/SynthesisRequest;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 0

    .line 96
    iget-object p0, p0, Landroid/speech/tts/SynthesisRequest;->mCountry:Ljava/lang/String;

    return-object p0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 0

    .line 89
    iget-object p0, p0, Landroid/speech/tts/SynthesisRequest;->mLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 0

    .line 124
    iget-object p0, p0, Landroid/speech/tts/SynthesisRequest;->mParams:Landroid/os/Bundle;

    return-object p0
.end method

.method public getPitch()I
    .locals 0

    .line 117
    iget p0, p0, Landroid/speech/tts/SynthesisRequest;->mPitch:I

    return p0
.end method

.method public getSpeechRate()I
    .locals 0

    .line 110
    iget p0, p0, Landroid/speech/tts/SynthesisRequest;->mSpeechRate:I

    return p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    iget-object p0, p0, Landroid/speech/tts/SynthesisRequest;->mText:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVariant()Ljava/lang/String;
    .locals 0

    .line 103
    iget-object p0, p0, Landroid/speech/tts/SynthesisRequest;->mVariant:Ljava/lang/String;

    return-object p0
.end method

.method public getVoiceName()Ljava/lang/String;
    .locals 0

    .line 82
    iget-object p0, p0, Landroid/speech/tts/SynthesisRequest;->mVoiceName:Ljava/lang/String;

    return-object p0
.end method

.method setCallerUid(I)V
    .locals 0

    .line 168
    iput p1, p0, Landroid/speech/tts/SynthesisRequest;->mCallerUid:I

    return-void
.end method

.method setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Landroid/speech/tts/SynthesisRequest;->mLanguage:Ljava/lang/String;

    .line 139
    iput-object p2, p0, Landroid/speech/tts/SynthesisRequest;->mCountry:Ljava/lang/String;

    .line 140
    iput-object p3, p0, Landroid/speech/tts/SynthesisRequest;->mVariant:Ljava/lang/String;

    return-void
.end method

.method setPitch(I)V
    .locals 0

    .line 161
    iput p1, p0, Landroid/speech/tts/SynthesisRequest;->mPitch:I

    return-void
.end method

.method setSpeechRate(I)V
    .locals 0

    .line 154
    iput p1, p0, Landroid/speech/tts/SynthesisRequest;->mSpeechRate:I

    return-void
.end method

.method setVoiceName(Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Landroid/speech/tts/SynthesisRequest;->mVoiceName:Ljava/lang/String;

    return-void
.end method
