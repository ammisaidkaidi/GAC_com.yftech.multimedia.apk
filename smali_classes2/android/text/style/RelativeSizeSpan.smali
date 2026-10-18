.class public Landroid/text/style/RelativeSizeSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "RelativeSizeSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final mProportion:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 47
    iput p1, p0, Landroid/text/style/RelativeSizeSpan;->mProportion:F

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/text/style/RelativeSizeSpan;->mProportion:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSizeChange()F
    .locals 0

    .line 88
    iget p0, p0, Landroid/text/style/RelativeSizeSpan;->mProportion:F

    return p0
.end method

.method public getSpanTypeId()I
    .locals 0

    .line 59
    invoke-virtual {p0}, Landroid/text/style/RelativeSizeSpan;->getSpanTypeIdInternal()I

    move-result p0

    return p0
.end method

.method public getSpanTypeIdInternal()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 93
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    iget p0, p0, Landroid/text/style/RelativeSizeSpan;->mProportion:F

    mul-float/2addr v0, p0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1

    .line 98
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    iget p0, p0, Landroid/text/style/RelativeSizeSpan;->mProportion:F

    mul-float/2addr v0, p0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 75
    invoke-virtual {p0, p1, p2}, Landroid/text/style/RelativeSizeSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 0

    .line 81
    iget p0, p0, Landroid/text/style/RelativeSizeSpan;->mProportion:F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
