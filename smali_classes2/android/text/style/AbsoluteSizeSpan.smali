.class public Landroid/text/style/AbsoluteSizeSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "AbsoluteSizeSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final mDip:Z

.field private final mSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 51
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 52
    iput p1, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    .line 53
    iput-boolean p2, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDip()Z
    .locals 0

    .line 113
    iget-boolean p0, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    return p0
.end method

.method public getSize()I
    .locals 0

    .line 100
    iget p0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    return p0
.end method

.method public getSpanTypeId()I
    .locals 0

    .line 66
    invoke-virtual {p0}, Landroid/text/style/AbsoluteSizeSpan;->getSpanTypeIdInternal()I

    move-result p0

    return p0
.end method

.method public getSpanTypeIdInternal()I
    .locals 0

    const/16 p0, 0x10

    return p0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 118
    iget-boolean v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    if-eqz v0, :cond_0

    .line 119
    iget p0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    int-to-float p0, p0

    iget v0, p1, Landroid/text/TextPaint;->density:F

    mul-float/2addr p0, v0

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_0

    .line 121
    :cond_0
    iget p0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    :goto_0
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1

    .line 127
    iget-boolean v0, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    if-eqz v0, :cond_0

    .line 128
    iget p0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    int-to-float p0, p0

    iget v0, p1, Landroid/text/TextPaint;->density:F

    mul-float/2addr p0, v0

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_0

    .line 130
    :cond_0
    iget p0, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 82
    invoke-virtual {p0, p1, p2}, Landroid/text/style/AbsoluteSizeSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 0

    .line 88
    iget p2, p0, Landroid/text/style/AbsoluteSizeSpan;->mSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-boolean p0, p0, Landroid/text/style/AbsoluteSizeSpan;->mDip:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
