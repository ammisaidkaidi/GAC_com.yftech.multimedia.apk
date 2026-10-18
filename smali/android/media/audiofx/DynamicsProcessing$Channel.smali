.class public final Landroid/media/audiofx/DynamicsProcessing$Channel;
.super Ljava/lang/Object;
.source "DynamicsProcessing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/DynamicsProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Channel"
.end annotation


# instance fields
.field private mInputGain:F

.field private mLimiter:Landroid/media/audiofx/DynamicsProcessing$Limiter;

.field private mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

.field private mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

.field private mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;


# direct methods
.method public constructor <init>(FZIZIZIZ)V
    .locals 12

    move-object v0, p0

    .line 1079
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 1080
    iput v1, v0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mInputGain:F

    .line 1081
    new-instance v1, Landroid/media/audiofx/DynamicsProcessing$Eq;

    const/4 v2, 0x1

    move v3, p2

    move v4, p3

    invoke-direct {v1, p2, v2, p3}, Landroid/media/audiofx/DynamicsProcessing$Eq;-><init>(ZZI)V

    iput-object v1, v0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    .line 1082
    new-instance v1, Landroid/media/audiofx/DynamicsProcessing$Mbc;

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-direct {v1, v3, v2, v4}, Landroid/media/audiofx/DynamicsProcessing$Mbc;-><init>(ZZI)V

    iput-object v1, v0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

    .line 1083
    new-instance v1, Landroid/media/audiofx/DynamicsProcessing$Eq;

    move/from16 v3, p6

    move/from16 v4, p7

    invoke-direct {v1, v3, v2, v4}, Landroid/media/audiofx/DynamicsProcessing$Eq;-><init>(ZZI)V

    iput-object v1, v0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    .line 1085
    new-instance v1, Landroid/media/audiofx/DynamicsProcessing$Limiter;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x42700000    # 60.0f

    const/high16 v9, 0x41200000    # 10.0f

    const/high16 v10, -0x40000000    # -2.0f

    const/4 v11, 0x0

    move-object v3, v1

    move/from16 v4, p8

    invoke-direct/range {v3 .. v11}, Landroid/media/audiofx/DynamicsProcessing$Limiter;-><init>(ZZIFFFFF)V

    iput-object v1, v0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mLimiter:Landroid/media/audiofx/DynamicsProcessing$Limiter;

    return-void
.end method

.method public constructor <init>(Landroid/media/audiofx/DynamicsProcessing$Channel;)V
    .locals 2

    .line 1095
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1096
    iget v0, p1, Landroid/media/audiofx/DynamicsProcessing$Channel;->mInputGain:F

    iput v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mInputGain:F

    .line 1097
    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$Eq;

    iget-object v1, p1, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-direct {v0, v1}, Landroid/media/audiofx/DynamicsProcessing$Eq;-><init>(Landroid/media/audiofx/DynamicsProcessing$Eq;)V

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    .line 1098
    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$Mbc;

    iget-object v1, p1, Landroid/media/audiofx/DynamicsProcessing$Channel;->mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

    invoke-direct {v0, v1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;-><init>(Landroid/media/audiofx/DynamicsProcessing$Mbc;)V

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

    .line 1099
    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$Eq;

    iget-object v1, p1, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-direct {v0, v1}, Landroid/media/audiofx/DynamicsProcessing$Eq;-><init>(Landroid/media/audiofx/DynamicsProcessing$Eq;)V

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    .line 1100
    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$Limiter;

    iget-object p1, p1, Landroid/media/audiofx/DynamicsProcessing$Channel;->mLimiter:Landroid/media/audiofx/DynamicsProcessing$Limiter;

    invoke-direct {v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Limiter;-><init>(Landroid/media/audiofx/DynamicsProcessing$Limiter;)V

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mLimiter:Landroid/media/audiofx/DynamicsProcessing$Limiter;

    return-void
.end method


# virtual methods
.method public getInputGain()F
    .locals 0

    .line 1125
    iget p0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mInputGain:F

    return p0
.end method

.method public getLimiter()Landroid/media/audiofx/DynamicsProcessing$Limiter;
    .locals 0

    .line 1248
    iget-object p0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mLimiter:Landroid/media/audiofx/DynamicsProcessing$Limiter;

    return-object p0
.end method

.method public getMbc()Landroid/media/audiofx/DynamicsProcessing$Mbc;
    .locals 0

    .line 1176
    iget-object p0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

    return-object p0
.end method

.method public getMbcBand(I)Landroid/media/audiofx/DynamicsProcessing$MbcBand;
    .locals 0

    .line 1196
    iget-object p0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

    invoke-virtual {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->getBand(I)Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    move-result-object p0

    return-object p0
.end method

.method public getPostEq()Landroid/media/audiofx/DynamicsProcessing$Eq;
    .locals 0

    .line 1212
    iget-object p0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    return-object p0
.end method

.method public getPostEqBand(I)Landroid/media/audiofx/DynamicsProcessing$EqBand;
    .locals 0

    .line 1232
    iget-object p0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-virtual {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBand(I)Landroid/media/audiofx/DynamicsProcessing$EqBand;

    move-result-object p0

    return-object p0
.end method

.method public getPreEq()Landroid/media/audiofx/DynamicsProcessing$Eq;
    .locals 0

    .line 1140
    iget-object p0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    return-object p0
.end method

.method public getPreEqBand(I)Landroid/media/audiofx/DynamicsProcessing$EqBand;
    .locals 0

    .line 1160
    iget-object p0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-virtual {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBand(I)Landroid/media/audiofx/DynamicsProcessing$EqBand;

    move-result-object p0

    return-object p0
.end method

.method public setInputGain(F)V
    .locals 0

    .line 1132
    iput p1, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mInputGain:F

    return-void
.end method

.method public setLimiter(Landroid/media/audiofx/DynamicsProcessing$Limiter;)V
    .locals 1

    .line 1255
    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$Limiter;

    invoke-direct {v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Limiter;-><init>(Landroid/media/audiofx/DynamicsProcessing$Limiter;)V

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mLimiter:Landroid/media/audiofx/DynamicsProcessing$Limiter;

    return-void
.end method

.method public setMbc(Landroid/media/audiofx/DynamicsProcessing$Mbc;)V
    .locals 3

    .line 1184
    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->getBandCount()I

    move-result v0

    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->getBandCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1188
    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$Mbc;

    invoke-direct {v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;-><init>(Landroid/media/audiofx/DynamicsProcessing$Mbc;)V

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

    return-void

    .line 1185
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MbcBandCount changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

    .line 1186
    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->getBandCount()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " to "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->getBandCount()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMbcBand(ILandroid/media/audiofx/DynamicsProcessing$MbcBand;)V
    .locals 0

    .line 1204
    iget-object p0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

    invoke-virtual {p0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->setBand(ILandroid/media/audiofx/DynamicsProcessing$MbcBand;)V

    return-void
.end method

.method public setPostEq(Landroid/media/audiofx/DynamicsProcessing$Eq;)V
    .locals 3

    .line 1220
    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v0

    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1224
    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-direct {v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;-><init>(Landroid/media/audiofx/DynamicsProcessing$Eq;)V

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    return-void

    .line 1221
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PostEqBandCount changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    .line 1222
    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " to "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPostEqBand(ILandroid/media/audiofx/DynamicsProcessing$EqBand;)V
    .locals 0

    .line 1240
    iget-object p0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-virtual {p0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing$Eq;->setBand(ILandroid/media/audiofx/DynamicsProcessing$EqBand;)V

    return-void
.end method

.method public setPreEq(Landroid/media/audiofx/DynamicsProcessing$Eq;)V
    .locals 3

    .line 1148
    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v0

    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1152
    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-direct {v0, p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;-><init>(Landroid/media/audiofx/DynamicsProcessing$Eq;)V

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    return-void

    .line 1149
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreEqBandCount changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    .line 1150
    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " to "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->getBandCount()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPreEqBand(ILandroid/media/audiofx/DynamicsProcessing$EqBand;)V
    .locals 0

    .line 1168
    iget-object p0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-virtual {p0, p1, p2}, Landroid/media/audiofx/DynamicsProcessing$Eq;->setBand(ILandroid/media/audiofx/DynamicsProcessing$EqBand;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " InputGain: %f%n"

    const/4 v2, 0x1

    .line 1108
    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mInputGain:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-->PreEq\n"

    .line 1110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPreEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-->MBC\n"

    .line 1112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mMbc:Landroid/media/audiofx/DynamicsProcessing$Mbc;

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-->PostEq\n"

    .line 1114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1115
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mPostEq:Landroid/media/audiofx/DynamicsProcessing$Eq;

    invoke-virtual {v1}, Landroid/media/audiofx/DynamicsProcessing$Eq;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-->Limiter\n"

    .line 1116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    iget-object p0, p0, Landroid/media/audiofx/DynamicsProcessing$Channel;->mLimiter:Landroid/media/audiofx/DynamicsProcessing$Limiter;

    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$Limiter;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
