.class public final Landroid/telephony/CellSignalStrengthLte;
.super Landroid/telephony/CellSignalStrength;
.source "CellSignalStrengthLte.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellSignalStrengthLte;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellSignalStrengthLte"


# instance fields
.field private mCqi:I

.field private mRsrp:I

.field private mRsrq:I

.field private mRssnr:I

.field private mSignalStrength:I

.field private mTimingAdvance:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 266
    new-instance v0, Landroid/telephony/CellSignalStrengthLte$1;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthLte$1;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthLte;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 42
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->setDefaultValues()V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 48
    iput p1, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 49
    iput p2, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 50
    iput p3, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 51
    iput p4, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 52
    iput p5, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 53
    iput p6, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 244
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 249
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 250
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 251
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 252
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthLte$1;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthLte;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/CellSignalStrengthLte;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 58
    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthLte;->copyFrom(Landroid/telephony/CellSignalStrengthLte;)V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CellSignalStrengthLte"

    .line 283
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Landroid/telephony/CellSignalStrength;
    .locals 0

    .line 28
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->copy()Landroid/telephony/CellSignalStrengthLte;

    move-result-object p0

    return-object p0
.end method

.method public copy()Landroid/telephony/CellSignalStrengthLte;
    .locals 1

    .line 74
    new-instance v0, Landroid/telephony/CellSignalStrengthLte;

    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthLte;-><init>(Landroid/telephony/CellSignalStrengthLte;)V

    return-object v0
.end method

.method protected copyFrom(Landroid/telephony/CellSignalStrengthLte;)V
    .locals 1

    .line 63
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 64
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 65
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 66
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 67
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 68
    iget p1, p1, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    iput p1, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

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

    .line 194
    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/telephony/CellSignalStrengthLte;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    return v0

    .line 203
    :cond_0
    iget p1, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    iget v2, v1, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    iget v2, v1, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    iget v2, v1, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    iget v2, v1, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    iget v2, v1, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    if-ne p1, v2, :cond_1

    iget p0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    iget p1, v1, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    return v0
.end method

.method public getAsuLevel()I
    .locals 1

    .line 165
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result p0

    const v0, 0x7fffffff

    if-ne p0, v0, :cond_0

    const/16 p0, 0x63

    goto :goto_0

    :cond_0
    const/16 v0, -0x8c

    if-gt p0, v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, -0x2b

    if-lt p0, v0, :cond_2

    const/16 p0, 0x61

    goto :goto_0

    :cond_2
    add-int/lit16 p0, p0, 0x8c

    :goto_0
    return p0
.end method

.method public getCqi()I
    .locals 0

    .line 147
    iget p0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    return p0
.end method

.method public getDbm()I
    .locals 0

    .line 155
    iget p0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    return p0
.end method

.method public getLevel()I
    .locals 8

    .line 96
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const v6, 0x7fffffff

    if-ne v0, v6, :cond_0

    move v0, v5

    goto :goto_0

    .line 97
    :cond_0
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    const/16 v7, -0x5f

    if-lt v0, v7, :cond_1

    move v0, v4

    goto :goto_0

    .line 98
    :cond_1
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    const/16 v7, -0x69

    if-lt v0, v7, :cond_2

    move v0, v3

    goto :goto_0

    .line 99
    :cond_2
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    const/16 v7, -0x73

    if-lt v0, v7, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    .line 103
    :goto_0
    iget v7, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    if-ne v7, v6, :cond_4

    move v1, v5

    goto :goto_1

    .line 104
    :cond_4
    iget v5, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    const/16 v7, 0x2d

    if-lt v5, v7, :cond_5

    move v1, v4

    goto :goto_1

    .line 105
    :cond_5
    iget v4, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    const/16 v5, 0xa

    if-lt v4, v5, :cond_6

    move v1, v3

    goto :goto_1

    .line 106
    :cond_6
    iget v3, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    const/16 v4, -0x1e

    if-lt v3, v4, :cond_7

    move v1, v2

    .line 110
    :cond_7
    :goto_1
    iget v2, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    if-ne v2, v6, :cond_8

    :goto_2
    move v0, v1

    goto :goto_3

    .line 112
    :cond_8
    iget p0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    if-ne p0, v6, :cond_9

    goto :goto_3

    :cond_9
    if-ge v1, v0, :cond_a

    goto :goto_2

    :cond_a
    :goto_3
    return v0
.end method

.method public getRsrp()I
    .locals 0

    .line 140
    iget p0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    return p0
.end method

.method public getRsrq()I
    .locals 0

    .line 126
    iget p0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    return p0
.end method

.method public getRssnr()I
    .locals 0

    .line 133
    iget p0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    return p0
.end method

.method public getTimingAdvance()I
    .locals 0

    .line 181
    iget p0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    .line 186
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget p0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x5

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setDefaultValues()V
    .locals 1

    const v0, 0x7fffffff

    .line 80
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 81
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 82
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 83
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 84
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 85
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellSignalStrengthLte: ss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rsrp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rsrq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rssnr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cqi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 229
    iget p2, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    iget p2, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    const v3, 0x7fffffff

    if-eq v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget p2, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    if-eq v0, v3, :cond_1

    move v1, v2

    :cond_1
    mul-int/2addr p2, v1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget p2, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget p2, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget p0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
