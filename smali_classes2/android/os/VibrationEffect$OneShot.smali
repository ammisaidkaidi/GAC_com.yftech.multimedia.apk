.class public Landroid/os/VibrationEffect$OneShot;
.super Landroid/os/VibrationEffect;
.source "VibrationEffect.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OneShot"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/VibrationEffect$OneShot;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAmplitude:I

.field private final mDuration:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 420
    new-instance v0, Landroid/os/VibrationEffect$OneShot$1;

    invoke-direct {v0}, Landroid/os/VibrationEffect$OneShot$1;-><init>()V

    sput-object v0, Landroid/os/VibrationEffect$OneShot;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0

    .line 331
    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    .line 332
    iput-wide p1, p0, Landroid/os/VibrationEffect$OneShot;->mDuration:J

    .line 333
    iput p3, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 326
    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/VibrationEffect$OneShot;->mDuration:J

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 393
    instance-of v0, p1, Landroid/os/VibrationEffect$OneShot;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 396
    :cond_0
    check-cast p1, Landroid/os/VibrationEffect$OneShot;

    .line 397
    iget-wide v2, p1, Landroid/os/VibrationEffect$OneShot;->mDuration:J

    iget-wide v4, p0, Landroid/os/VibrationEffect$OneShot;->mDuration:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget p1, p1, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    iget p0, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    if-ne p1, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAmplitude()I
    .locals 0

    .line 342
    iget p0, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    return p0
.end method

.method public getDuration()J
    .locals 2

    .line 338
    iget-wide v0, p0, Landroid/os/VibrationEffect$OneShot;->mDuration:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .line 403
    iget-wide v0, p0, Landroid/os/VibrationEffect$OneShot;->mDuration:J

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x11

    .line 404
    iget p0, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    mul-int/lit8 p0, p0, 0x25

    add-int/2addr v0, p0

    return v0
.end method

.method public resolve(I)Landroid/os/VibrationEffect$OneShot;
    .locals 3

    const/16 v0, 0xff

    if-gt p1, v0, :cond_1

    if-ltz p1, :cond_1

    .line 372
    iget v0, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 373
    new-instance v0, Landroid/os/VibrationEffect$OneShot;

    iget-wide v1, p0, Landroid/os/VibrationEffect$OneShot;->mDuration:J

    invoke-direct {v0, v1, v2, p1}, Landroid/os/VibrationEffect$OneShot;-><init>(JI)V

    return-object v0

    :cond_0
    return-object p0

    .line 369
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Amplitude is negative or greater than MAX_AMPLITUDE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public scale(FI)Landroid/os/VibrationEffect;
    .locals 2

    .line 354
    iget v0, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    invoke-static {v0, p1, p2}, Landroid/os/VibrationEffect$OneShot;->scale(IFI)I

    move-result p1

    .line 355
    new-instance p2, Landroid/os/VibrationEffect$OneShot;

    iget-wide v0, p0, Landroid/os/VibrationEffect$OneShot;->mDuration:J

    invoke-direct {p2, v0, v1, p1}, Landroid/os/VibrationEffect$OneShot;-><init>(JI)V

    return-object p2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OneShot{mDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/os/VibrationEffect$OneShot;->mDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mAmplitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public validate()V
    .locals 4

    .line 380
    iget v0, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    const/4 v1, -0x1

    if-lt v0, v1, :cond_1

    iget v0, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    .line 385
    iget-wide v0, p0, Landroid/os/VibrationEffect$OneShot;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    return-void

    .line 386
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duration must be positive (duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/os/VibrationEffect$OneShot;->mDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "amplitude must either be DEFAULT_AMPLITUDE, or between 1 and 255 inclusive (amplitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 p2, 0x1

    .line 415
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    iget-wide v0, p0, Landroid/os/VibrationEffect$OneShot;->mDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 417
    iget p0, p0, Landroid/os/VibrationEffect$OneShot;->mAmplitude:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
