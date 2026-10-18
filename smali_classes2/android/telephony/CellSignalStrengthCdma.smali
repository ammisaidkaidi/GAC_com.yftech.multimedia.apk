.class public final Landroid/telephony/CellSignalStrengthCdma;
.super Landroid/telephony/CellSignalStrength;
.source "CellSignalStrengthCdma.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellSignalStrengthCdma;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellSignalStrengthCdma"


# instance fields
.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 359
    new-instance v0, Landroid/telephony/CellSignalStrengthCdma$1;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthCdma$1;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthCdma;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 41
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->setDefaultValues()V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 2

    .line 65
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    const/16 v0, 0x78

    const v1, 0x7fffffff

    if-lez p1, :cond_0

    if-ge p1, v0, :cond_0

    neg-int p1, p1

    goto :goto_0

    :cond_0
    move p1, v1

    .line 68
    :goto_0
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    const/16 p1, 0xa0

    if-lez p2, :cond_1

    if-ge p2, p1, :cond_1

    neg-int p2, p2

    goto :goto_1

    :cond_1
    move p2, v1

    .line 69
    :goto_1
    iput p2, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    if-lez p3, :cond_2

    if-ge p3, v0, :cond_2

    neg-int p2, p3

    goto :goto_2

    :cond_2
    move p2, v1

    .line 71
    :goto_2
    iput p2, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    if-lez p4, :cond_3

    if-ge p4, p1, :cond_3

    neg-int p1, p4

    goto :goto_3

    :cond_3
    move p1, v1

    .line 72
    :goto_3
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    if-lez p5, :cond_4

    const/16 p1, 0x8

    if-gt p5, p1, :cond_4

    goto :goto_4

    :cond_4
    move p5, v1

    .line 73
    :goto_4
    iput p5, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 339
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthCdma$1;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthCdma;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/CellSignalStrengthCdma;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 78
    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthCdma;->copyFrom(Landroid/telephony/CellSignalStrengthCdma;)V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CellSignalStrengthCdma"

    .line 376
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Landroid/telephony/CellSignalStrength;
    .locals 0

    .line 28
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->copy()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object p0

    return-object p0
.end method

.method public copy()Landroid/telephony/CellSignalStrengthCdma;
    .locals 1

    .line 93
    new-instance v0, Landroid/telephony/CellSignalStrengthCdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthCdma;-><init>(Landroid/telephony/CellSignalStrengthCdma;)V

    return-object v0
.end method

.method protected copyFrom(Landroid/telephony/CellSignalStrengthCdma;)V
    .locals 1

    .line 83
    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    .line 84
    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    .line 85
    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    .line 86
    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    .line 87
    iget p1, p1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    return-void
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    .line 295
    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/telephony/CellSignalStrengthCdma;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    return v0

    .line 304
    :cond_0
    iget p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    iget v2, v1, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    iget v2, v1, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    iget v2, v1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    iget v2, v1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    if-ne p1, v2, :cond_1

    iget p0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    iget p1, v1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    return v0
.end method

.method public getAsuLevel()I
    .locals 11

    .line 134
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v0

    .line 135
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/16 v4, -0x64

    const/16 v5, 0x8

    const/16 v6, -0x5a

    const/16 v7, 0x10

    const v8, 0x7fffffff

    const/16 v9, 0x63

    if-ne v0, v8, :cond_1

    :cond_0
    move v0, v9

    goto :goto_0

    :cond_1
    const/16 v10, -0x4b

    if-lt v0, v10, :cond_2

    move v0, v7

    goto :goto_0

    :cond_2
    const/16 v10, -0x52

    if-lt v0, v10, :cond_3

    move v0, v5

    goto :goto_0

    :cond_3
    if-lt v0, v6, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    const/16 v10, -0x5f

    if-lt v0, v10, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    if-lt v0, v4, :cond_0

    move v0, v1

    :goto_0
    if-ne p0, v8, :cond_6

    goto :goto_1

    :cond_6
    if-lt p0, v6, :cond_7

    move v9, v7

    goto :goto_1

    :cond_7
    if-lt p0, v4, :cond_8

    move v9, v5

    goto :goto_1

    :cond_8
    const/16 v4, -0x73

    if-lt p0, v4, :cond_9

    move v9, v3

    goto :goto_1

    :cond_9
    const/16 v3, -0x82

    if-lt p0, v3, :cond_a

    move v9, v2

    goto :goto_1

    :cond_a
    const/16 v2, -0x96

    if-lt p0, v2, :cond_b

    move v9, v1

    :cond_b
    :goto_1
    if-ge v0, v9, :cond_c

    goto :goto_2

    :cond_c
    move v0, v9

    :goto_2
    return v0
.end method

.method public getCdmaDbm()I
    .locals 0

    .line 234
    iget p0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    return p0
.end method

.method public getCdmaEcio()I
    .locals 0

    .line 245
    iget p0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    return p0
.end method

.method public getCdmaLevel()I
    .locals 8

    .line 165
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v0

    .line 166
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const v5, 0x7fffffff

    const/4 v6, 0x0

    if-ne v0, v5, :cond_1

    :cond_0
    move v0, v6

    goto :goto_0

    :cond_1
    const/16 v7, -0x4b

    if-lt v0, v7, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    const/16 v7, -0x55

    if-lt v0, v7, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    const/16 v7, -0x5f

    if-lt v0, v7, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    const/16 v7, -0x64

    if-lt v0, v7, :cond_0

    move v0, v1

    :goto_0
    if-ne p0, v5, :cond_5

    goto :goto_1

    :cond_5
    const/16 v5, -0x5a

    if-lt p0, v5, :cond_6

    move v6, v4

    goto :goto_1

    :cond_6
    const/16 v4, -0x6e

    if-lt p0, v4, :cond_7

    move v6, v3

    goto :goto_1

    :cond_7
    const/16 v3, -0x82

    if-lt p0, v3, :cond_8

    move v6, v2

    goto :goto_1

    :cond_8
    const/16 v2, -0x96

    if-lt p0, v2, :cond_9

    move v6, v1

    :cond_9
    :goto_1
    if-ge v0, v6, :cond_a

    goto :goto_2

    :cond_a
    move v0, v6

    :goto_2
    return v0
.end method

.method public getDbm()I
    .locals 1

    .line 223
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v0

    .line 224
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    move-result p0

    if-ge v0, p0, :cond_0

    move p0, v0

    :cond_0
    return p0
.end method

.method public getEvdoDbm()I
    .locals 0

    .line 256
    iget p0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    return p0
.end method

.method public getEvdoEcio()I
    .locals 0

    .line 267
    iget p0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    return p0
.end method

.method public getEvdoLevel()I
    .locals 8

    .line 194
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    move-result v0

    .line 195
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoSnr()I

    move-result p0

    const/4 v1, 0x2

    const/4 v2, 0x4

    const v3, 0x7fffffff

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v6

    goto :goto_0

    :cond_1
    const/16 v7, -0x41

    if-lt v0, v7, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    const/16 v7, -0x4b

    if-lt v0, v7, :cond_3

    move v0, v5

    goto :goto_0

    :cond_3
    const/16 v7, -0x5a

    if-lt v0, v7, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    const/16 v7, -0x69

    if-lt v0, v7, :cond_0

    move v0, v4

    :goto_0
    if-ne p0, v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x7

    if-lt p0, v3, :cond_6

    move v6, v2

    goto :goto_1

    :cond_6
    const/4 v2, 0x5

    if-lt p0, v2, :cond_7

    move v6, v5

    goto :goto_1

    :cond_7
    if-lt p0, v5, :cond_8

    move v6, v1

    goto :goto_1

    :cond_8
    if-lt p0, v4, :cond_9

    move v6, v4

    :cond_9
    :goto_1
    if-ge v0, v6, :cond_a

    goto :goto_2

    :cond_a
    move v0, v6

    :goto_2
    return v0
.end method

.method public getEvdoSnr()I
    .locals 0

    .line 278
    iget p0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    return p0
.end method

.method public getLevel()I
    .locals 2

    .line 113
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaLevel()I

    move-result v0

    .line 114
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoLevel()I

    move-result v1

    if-nez v1, :cond_0

    .line 117
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaLevel()I

    move-result p0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 120
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoLevel()I

    move-result p0

    goto :goto_0

    :cond_1
    if-ge v0, v1, :cond_2

    move p0, v0

    goto :goto_0

    :cond_2
    move p0, v1

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    .line 287
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget p0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x4

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setCdmaDbm(I)V
    .locals 0

    .line 238
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    return-void
.end method

.method public setCdmaEcio(I)V
    .locals 0

    .line 249
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    return-void
.end method

.method public setDefaultValues()V
    .locals 1

    const v0, 0x7fffffff

    .line 99
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    .line 100
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    .line 101
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    .line 102
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    .line 103
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    return-void
.end method

.method public setEvdoDbm(I)V
    .locals 0

    .line 260
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    return-void
.end method

.method public setEvdoEcio(I)V
    .locals 0

    .line 271
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    return-void
.end method

.method public setEvdoSnr(I)V
    .locals 0

    .line 282
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellSignalStrengthCdma: cdmaDbm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cdmaEcio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " evdoDbm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " evdoEcio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " evdoSnr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 328
    iget p2, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    iget p2, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    iget p2, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    iget p2, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    iget p0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
