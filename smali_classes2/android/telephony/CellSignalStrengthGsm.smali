.class public final Landroid/telephony/CellSignalStrengthGsm;
.super Landroid/telephony/CellSignalStrength;
.source "CellSignalStrengthGsm.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellSignalStrengthGsm;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final GSM_SIGNAL_STRENGTH_GOOD:I = 0x8

.field private static final GSM_SIGNAL_STRENGTH_GREAT:I = 0xc

.field private static final GSM_SIGNAL_STRENGTH_MODERATE:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = "CellSignalStrengthGsm"


# instance fields
.field private mBitErrorRate:I

.field private mSignalStrength:I

.field private mTimingAdvance:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 210
    new-instance v0, Landroid/telephony/CellSignalStrengthGsm$1;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthGsm$1;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthGsm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 43
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthGsm;->setDefaultValues()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const v0, 0x7fffffff

    .line 48
    invoke-direct {p0, p1, p2, v0}, Landroid/telephony/CellSignalStrengthGsm;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 52
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 53
    iput p1, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    .line 54
    iput p2, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    .line 55
    iput p3, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 195
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthGsm$1;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthGsm;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/CellSignalStrengthGsm;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 60
    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthGsm;->copyFrom(Landroid/telephony/CellSignalStrengthGsm;)V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CellSignalStrengthGsm"

    .line 227
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Landroid/telephony/CellSignalStrength;
    .locals 0

    .line 28
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthGsm;->copy()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object p0

    return-object p0
.end method

.method public copy()Landroid/telephony/CellSignalStrengthGsm;
    .locals 1

    .line 73
    new-instance v0, Landroid/telephony/CellSignalStrengthGsm;

    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthGsm;-><init>(Landroid/telephony/CellSignalStrengthGsm;)V

    return-object v0
.end method

.method protected copyFrom(Landroid/telephony/CellSignalStrengthGsm;)V
    .locals 1

    .line 65
    iget v0, p1, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    .line 66
    iget v0, p1, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    .line 67
    iget p1, p1, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    iput p1, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

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

    .line 158
    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/telephony/CellSignalStrengthGsm;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    return v0

    .line 167
    :cond_0
    iget p1, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    iget v2, v1, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    if-ne p1, v2, :cond_1

    iget p1, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    iget v2, v1, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    if-ne p1, v2, :cond_1

    iget p1, v1, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    iget p0, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    return v0
.end method

.method public getAsuLevel()I
    .locals 0

    .line 143
    iget p0, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    return p0
.end method

.method public getDbm()I
    .locals 2

    .line 122
    iget p0, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    const v0, 0x7fffffff

    const/16 v1, 0x63

    if-ne p0, v1, :cond_0

    move p0, v0

    :cond_0
    if-eq p0, v0, :cond_1

    mul-int/lit8 p0, p0, 0x2

    add-int/lit8 v0, p0, -0x71

    :cond_1
    return v0
.end method

.method public getLevel()I
    .locals 2

    .line 95
    iget p0, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    const/4 v0, 0x2

    if-le p0, v0, :cond_4

    const/16 v1, 0x63

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xc

    if-lt p0, v1, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    if-lt p0, v1, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :cond_2
    const/4 v1, 0x5

    if-lt p0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public getTimingAdvance()I
    .locals 0

    .line 112
    iget p0, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 150
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget p0, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setDefaultValues()V
    .locals 1

    const v0, 0x7fffffff

    .line 79
    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    .line 80
    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    .line 81
    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellSignalStrengthGsm: ss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mTa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 186
    iget p2, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget p2, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget p0, p0, Landroid/telephony/CellSignalStrengthGsm;->mTimingAdvance:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
