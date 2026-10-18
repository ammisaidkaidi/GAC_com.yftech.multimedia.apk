.class public Landroid/text/style/ScaleXSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "ScaleXSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final mProportion:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 50
    iput p1, p0, Landroid/text/style/ScaleXSpan;->mProportion:F

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/text/style/ScaleXSpan;->mProportion:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getScaleX()F
    .locals 0

    .line 93
    iget p0, p0, Landroid/text/style/ScaleXSpan;->mProportion:F

    return p0
.end method

.method public getSpanTypeId()I
    .locals 0

    .line 62
    invoke-virtual {p0}, Landroid/text/style/ScaleXSpan;->getSpanTypeIdInternal()I

    move-result p0

    return p0
.end method

.method public getSpanTypeIdInternal()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 98
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    iget p0, p0, Landroid/text/style/ScaleXSpan;->mProportion:F

    mul-float/2addr v0, p0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextScaleX(F)V

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1

    .line 103
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    iget p0, p0, Landroid/text/style/ScaleXSpan;->mProportion:F

    mul-float/2addr v0, p0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextScaleX(F)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 78
    invoke-virtual {p0, p1, p2}, Landroid/text/style/ScaleXSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 0

    .line 84
    iget p0, p0, Landroid/text/style/ScaleXSpan;->mProportion:F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
