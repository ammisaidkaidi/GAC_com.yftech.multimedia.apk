.class public Lcom/yftech/libradio/bean/DabChannelInfo;
.super Ljava/lang/Object;
.source "DabChannelInfo.java"


# instance fields
.field private caApplied:Z

.field private caId:I

.field private dynPty:I

.field private ensembleId:I

.field private ensembleLabel:Lcom/yftech/car/media/radio/dab/entity/DabLabel;

.field private ensembleTab:I

.field private frequency:J

.field private imageData:[B

.field private internTableIdDpty:I

.field private internTableIdSpty:I

.field private isEpg:Z

.field private pdFlag:B

.field private propertiesTab:I

.field private propertieslabel:Lcom/yftech/car/media/radio/dab/entity/DabLabel;

.field private serviceId:J

.field private statPty:I


# direct methods
.method public constructor <init>(JILcom/yftech/car/media/radio/dab/entity/DabLabel;Lcom/yftech/car/media/radio/dab/entity/DabProperties;I)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-wide p1, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->frequency:J

    .line 57
    iput p3, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->ensembleId:I

    .line 58
    iput-object p4, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->ensembleLabel:Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    .line 59
    iput p6, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->ensembleTab:I

    .line 60
    invoke-virtual {p5}, Lcom/yftech/car/media/radio/dab/entity/DabProperties;->getPdFlag()B

    move-result p1

    iput-byte p1, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->pdFlag:B

    .line 61
    invoke-virtual {p5}, Lcom/yftech/car/media/radio/dab/entity/DabProperties;->getServiceId()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->serviceId:J

    .line 62
    invoke-virtual {p5}, Lcom/yftech/car/media/radio/dab/entity/DabProperties;->getLabel()Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->propertieslabel:Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    .line 63
    invoke-virtual {p5}, Lcom/yftech/car/media/radio/dab/entity/DabProperties;->getCaId()I

    move-result p1

    iput p1, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->caId:I

    .line 64
    invoke-virtual {p5}, Lcom/yftech/car/media/radio/dab/entity/DabProperties;->isCaApplied()Z

    move-result p1

    iput-boolean p1, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->caApplied:Z

    .line 65
    invoke-virtual {p5}, Lcom/yftech/car/media/radio/dab/entity/DabProperties;->getInternTableIdSpty()I

    move-result p1

    iput p1, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->internTableIdSpty:I

    .line 66
    invoke-virtual {p5}, Lcom/yftech/car/media/radio/dab/entity/DabProperties;->getStatPty()I

    move-result p1

    iput p1, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->statPty:I

    .line 67
    invoke-virtual {p5}, Lcom/yftech/car/media/radio/dab/entity/DabProperties;->getInternTableIdDpty()I

    move-result p1

    iput p1, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->internTableIdDpty:I

    .line 68
    invoke-virtual {p5}, Lcom/yftech/car/media/radio/dab/entity/DabProperties;->getDynPty()I

    move-result p1

    iput p1, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->dynPty:I

    .line 69
    invoke-virtual {p5}, Lcom/yftech/car/media/radio/dab/entity/DabProperties;->getTab()I

    move-result p1

    iput p1, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->propertiesTab:I

    return-void
.end method

.method public constructor <init>(Lcom/yftech/libradio/bean/DabChannelInfo;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getFrequency()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->frequency:J

    .line 40
    invoke-virtual {p1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleId()I

    move-result v0

    iput v0, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->ensembleId:I

    .line 41
    invoke-virtual {p1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleLabel()Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->ensembleLabel:Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    .line 42
    invoke-virtual {p1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleTab()I

    move-result v0

    iput v0, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->ensembleTab:I

    .line 43
    invoke-virtual {p1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getPdFlag()B

    move-result v0

    iput-byte v0, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->pdFlag:B

    .line 44
    invoke-virtual {p1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getServiceId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->serviceId:J

    .line 45
    invoke-virtual {p1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getPropertieslabel()Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->propertieslabel:Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    .line 46
    invoke-virtual {p1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getCaId()I

    move-result v0

    iput v0, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->caId:I

    .line 47
    invoke-virtual {p1}, Lcom/yftech/libradio/bean/DabChannelInfo;->isCaApplied()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->caApplied:Z

    .line 48
    invoke-virtual {p1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getInternTableIdSpty()I

    move-result v0

    iput v0, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->internTableIdSpty:I

    .line 49
    invoke-virtual {p1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getStatPty()I

    move-result v0

    iput v0, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->statPty:I

    .line 50
    invoke-virtual {p1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getInternTableIdDpty()I

    move-result v0

    iput v0, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->internTableIdDpty:I

    .line 51
    invoke-virtual {p1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getDynPty()I

    move-result v0

    iput v0, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->dynPty:I

    .line 52
    invoke-virtual {p1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getPropertiesTab()I

    move-result p1

    iput p1, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->propertiesTab:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getCaId()I
    .locals 0

    .line 102
    iget p0, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->caId:I

    return p0
.end method

.method public getDynPty()I
    .locals 0

    .line 122
    iget p0, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->dynPty:I

    return p0
.end method

.method public getEnsembleId()I
    .locals 0

    .line 77
    iget p0, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->ensembleId:I

    return p0
.end method

.method public getEnsembleLabel()Lcom/yftech/car/media/radio/dab/entity/DabLabel;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->ensembleLabel:Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    return-object p0
.end method

.method public getEnsembleTab()I
    .locals 0

    .line 86
    iget p0, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->ensembleTab:I

    return p0
.end method

.method public getFrequency()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->frequency:J

    return-wide v0
.end method

.method public getImageData()[B
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->imageData:[B

    return-object p0
.end method

.method public getInternTableIdDpty()I
    .locals 0

    .line 118
    iget p0, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->internTableIdDpty:I

    return p0
.end method

.method public getInternTableIdSpty()I
    .locals 0

    .line 110
    iget p0, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->internTableIdSpty:I

    return p0
.end method

.method public getPdFlag()B
    .locals 0

    .line 90
    iget-byte p0, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->pdFlag:B

    return p0
.end method

.method public getPropertiesTab()I
    .locals 0

    .line 126
    iget p0, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->propertiesTab:I

    return p0
.end method

.method public getPropertieslabel()Lcom/yftech/car/media/radio/dab/entity/DabLabel;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->propertieslabel:Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    return-object p0
.end method

.method public getServiceId()J
    .locals 2

    .line 94
    iget-wide v0, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->serviceId:J

    return-wide v0
.end method

.method public getStatPty()I
    .locals 0

    .line 114
    iget p0, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->statPty:I

    return p0
.end method

.method public isCaApplied()Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->caApplied:Z

    return p0
.end method

.method public isEpg()Z
    .locals 0

    .line 138
    iget-boolean p0, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->isEpg:Z

    return p0
.end method

.method public setEpg(Z)V
    .locals 0

    .line 142
    iput-boolean p1, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->isEpg:Z

    return-void
.end method

.method public setImageData([B)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/yftech/libradio/bean/DabChannelInfo;->imageData:[B

    return-void
.end method
