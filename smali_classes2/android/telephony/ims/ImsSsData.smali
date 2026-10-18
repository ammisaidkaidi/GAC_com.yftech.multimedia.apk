.class public final Landroid/telephony/ims/ImsSsData;
.super Ljava/lang/Object;
.source "ImsSsData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsSsData$ServiceClass;,
        Landroid/telephony/ims/ImsSsData$ServiceType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/ImsSsData;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final SERVICE_CLASS_DATA:I = 0x2

.field public static final SERVICE_CLASS_DATA_ASYNC:I = 0x20

.field public static final SERVICE_CLASS_DATA_SYNC:I = 0x10

.field public static final SERVICE_CLASS_FAX:I = 0x4

.field public static final SERVICE_CLASS_NONE:I = 0x0

.field public static final SERVICE_CLASS_PACKET:I = 0x40

.field public static final SERVICE_CLASS_PAD:I = 0x80

.field public static final SERVICE_CLASS_SMS:I = 0x8

.field public static final SERVICE_CLASS_VOICE:I = 0x1

.field public static final SS_ACTIVATION:I = 0x0

.field public static final SS_ALL_BARRING:I = 0x12

.field public static final SS_ALL_DATA_TELESERVICES:I = 0x3

.field public static final SS_ALL_TELESERVICES_EXCEPT_SMS:I = 0x5

.field public static final SS_ALL_TELESEVICES:I = 0x1

.field public static final SS_ALL_TELE_AND_BEARER_SERVICES:I = 0x0

.field public static final SS_BAIC:I = 0x10

.field public static final SS_BAIC_ROAMING:I = 0x11

.field public static final SS_BAOC:I = 0xd

.field public static final SS_BAOIC:I = 0xe

.field public static final SS_BAOIC_EXC_HOME:I = 0xf

.field public static final SS_CFU:I = 0x0

.field public static final SS_CFUT:I = 0x6

.field public static final SS_CF_ALL:I = 0x4

.field public static final SS_CF_ALL_CONDITIONAL:I = 0x5

.field public static final SS_CF_BUSY:I = 0x1

.field public static final SS_CF_NOT_REACHABLE:I = 0x3

.field public static final SS_CF_NO_REPLY:I = 0x2

.field public static final SS_CLIP:I = 0x7

.field public static final SS_CLIR:I = 0x8

.field public static final SS_CNAP:I = 0xb

.field public static final SS_COLP:I = 0x9

.field public static final SS_COLR:I = 0xa

.field public static final SS_DEACTIVATION:I = 0x1

.field public static final SS_ERASURE:I = 0x4

.field public static final SS_INCOMING_BARRING:I = 0x14

.field public static final SS_INCOMING_BARRING_ANONYMOUS:I = 0x16

.field public static final SS_INCOMING_BARRING_DN:I = 0x15

.field public static final SS_INTERROGATION:I = 0x2

.field public static final SS_OUTGOING_BARRING:I = 0x13

.field public static final SS_REGISTRATION:I = 0x3

.field public static final SS_SMS_SERVICES:I = 0x4

.field public static final SS_TELEPHONY:I = 0x2

.field public static final SS_WAIT:I = 0xc


# instance fields
.field private mCfInfo:[Landroid/telephony/ims/ImsCallForwardInfo;

.field private mImsSsInfo:[Landroid/telephony/ims/ImsSsInfo;

.field private mSsInfo:[I

.field public requestType:I

.field public final result:I

.field public serviceClass:I

.field public serviceType:I

.field public teleserviceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 302
    new-instance v0, Landroid/telephony/ims/ImsSsData$1;

    invoke-direct {v0}, Landroid/telephony/ims/ImsSsData$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/ImsSsData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput p1, p0, Landroid/telephony/ims/ImsSsData;->serviceType:I

    .line 285
    iput p2, p0, Landroid/telephony/ims/ImsSsData;->requestType:I

    .line 286
    iput p3, p0, Landroid/telephony/ims/ImsSsData;->teleserviceType:I

    .line 287
    iput p4, p0, Landroid/telephony/ims/ImsSsData;->serviceClass:I

    .line 288
    iput p5, p0, Landroid/telephony/ims/ImsSsData;->result:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsSsData;->serviceType:I

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsSsData;->requestType:I

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsSsData;->teleserviceType:I

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsSsData;->serviceClass:I

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsSsData;->result:I

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/ImsSsData;->mSsInfo:[I

    .line 298
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, [Landroid/telephony/ims/ImsCallForwardInfo;

    iput-object v0, p0, Landroid/telephony/ims/ImsSsData;->mCfInfo:[Landroid/telephony/ims/ImsCallForwardInfo;

    .line 299
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, [Landroid/telephony/ims/ImsSsInfo;

    iput-object p1, p0, Landroid/telephony/ims/ImsSsData;->mImsSsInfo:[Landroid/telephony/ims/ImsSsInfo;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/ims/ImsSsData$1;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsSsData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCallForwardInfo()[Landroid/telephony/ims/ImsCallForwardInfo;
    .locals 0

    .line 438
    iget-object p0, p0, Landroid/telephony/ims/ImsSsData;->mCfInfo:[Landroid/telephony/ims/ImsCallForwardInfo;

    return-object p0
.end method

.method public getImsSpecificSuppServiceInfo()[Landroid/telephony/ims/ImsSsInfo;
    .locals 0

    .line 427
    iget-object p0, p0, Landroid/telephony/ims/ImsSsData;->mImsSsInfo:[Landroid/telephony/ims/ImsSsInfo;

    return-object p0
.end method

.method public getSuppServiceInfo()[I
    .locals 0

    .line 416
    iget-object p0, p0, Landroid/telephony/ims/ImsSsData;->mSsInfo:[I

    return-object p0
.end method

.method public isTypeBarring()Z
    .locals 2

    .line 383
    iget v0, p0, Landroid/telephony/ims/ImsSsData;->serviceType:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/telephony/ims/ImsSsData;->serviceType:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/telephony/ims/ImsSsData;->serviceType:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/telephony/ims/ImsSsData;->serviceType:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/telephony/ims/ImsSsData;->serviceType:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/telephony/ims/ImsSsData;->serviceType:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/telephony/ims/ImsSsData;->serviceType:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1

    iget p0, p0, Landroid/telephony/ims/ImsSsData;->serviceType:I

    const/16 v0, 0x14

    if-ne p0, v0, :cond_0

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

.method public isTypeCF()Z
    .locals 3

    .line 336
    iget v0, p0, Landroid/telephony/ims/ImsSsData;->serviceType:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/telephony/ims/ImsSsData;->serviceType:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/telephony/ims/ImsSsData;->serviceType:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget v0, p0, Landroid/telephony/ims/ImsSsData;->serviceType:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    iget v0, p0, Landroid/telephony/ims/ImsSsData;->serviceType:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    iget p0, p0, Landroid/telephony/ims/ImsSsData;->serviceType:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isTypeCW()Z
    .locals 1

    .line 354
    iget p0, p0, Landroid/telephony/ims/ImsSsData;->serviceType:I

    const/16 v0, 0xc

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTypeCf()Z
    .locals 0

    .line 342
    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->isTypeCF()Z

    move-result p0

    return p0
.end method

.method public isTypeClip()Z
    .locals 1

    .line 362
    iget p0, p0, Landroid/telephony/ims/ImsSsData;->serviceType:I

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTypeClir()Z
    .locals 1

    .line 374
    iget p0, p0, Landroid/telephony/ims/ImsSsData;->serviceType:I

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTypeColp()Z
    .locals 1

    .line 370
    iget p0, p0, Landroid/telephony/ims/ImsSsData;->serviceType:I

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTypeColr()Z
    .locals 1

    .line 366
    iget p0, p0, Landroid/telephony/ims/ImsSsData;->serviceType:I

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTypeCw()Z
    .locals 0

    .line 358
    invoke-virtual {p0}, Landroid/telephony/ims/ImsSsData;->isTypeCW()Z

    move-result p0

    return p0
.end method

.method public isTypeIcb()Z
    .locals 2

    .line 378
    iget v0, p0, Landroid/telephony/ims/ImsSsData;->serviceType:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    iget p0, p0, Landroid/telephony/ims/ImsSsData;->serviceType:I

    const/16 v0, 0x16

    if-ne p0, v0, :cond_0

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

.method public isTypeInterrogation()Z
    .locals 1

    .line 390
    iget p0, p0, Landroid/telephony/ims/ImsSsData;->serviceType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTypeUnConditional()Z
    .locals 1

    .line 346
    iget v0, p0, Landroid/telephony/ims/ImsSsData;->serviceType:I

    if-eqz v0, :cond_1

    iget p0, p0, Landroid/telephony/ims/ImsSsData;->serviceType:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

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

.method public setCallForwardingInfo([Landroid/telephony/ims/ImsCallForwardInfo;)V
    .locals 0

    .line 405
    iput-object p1, p0, Landroid/telephony/ims/ImsSsData;->mCfInfo:[Landroid/telephony/ims/ImsCallForwardInfo;

    return-void
.end method

.method public setImsSpecificSuppServiceInfo([Landroid/telephony/ims/ImsSsInfo;)V
    .locals 0

    .line 400
    iput-object p1, p0, Landroid/telephony/ims/ImsSsData;->mImsSsInfo:[Landroid/telephony/ims/ImsSsInfo;

    return-void
.end method

.method public setSuppServiceInfo([I)V
    .locals 0

    .line 395
    iput-object p1, p0, Landroid/telephony/ims/ImsSsData;->mSsInfo:[I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ImsSsData] ServiceType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ims/ImsSsData;->serviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " RequestType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ims/ImsSsData;->requestType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " TeleserviceType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ims/ImsSsData;->teleserviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ServiceClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ims/ImsSsData;->serviceClass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/telephony/ims/ImsSsData;->result:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 316
    iget p2, p0, Landroid/telephony/ims/ImsSsData;->serviceType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget p2, p0, Landroid/telephony/ims/ImsSsData;->requestType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    iget p2, p0, Landroid/telephony/ims/ImsSsData;->teleserviceType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget p2, p0, Landroid/telephony/ims/ImsSsData;->serviceClass:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    iget p2, p0, Landroid/telephony/ims/ImsSsData;->result:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    iget-object p2, p0, Landroid/telephony/ims/ImsSsData;->mSsInfo:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 322
    iget-object p2, p0, Landroid/telephony/ims/ImsSsData;->mCfInfo:[Landroid/telephony/ims/ImsCallForwardInfo;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 323
    iget-object p0, p0, Landroid/telephony/ims/ImsSsData;->mImsSsInfo:[Landroid/telephony/ims/ImsSsInfo;

    invoke-virtual {p1, p0, v0}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    return-void
.end method
