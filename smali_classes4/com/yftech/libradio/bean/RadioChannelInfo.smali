.class public Lcom/yftech/libradio/bean/RadioChannelInfo;
.super Lcom/yftech/car/media/radio/entity/DataOfRadio;
.source "RadioChannelInfo.java"


# instance fields
.field public isValid:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/yftech/car/media/radio/entity/DataOfRadio;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/yftech/car/media/radio/entity/DataOfRadio;-><init>()V

    .line 22
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yftech/libradio/bean/RadioChannelInfo;->setFreq(I)V

    .line 23
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/libradio/bean/RadioChannelInfo;->setName(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/bean/RadioChannelInfo;->setType(I)V

    return-void
.end method
