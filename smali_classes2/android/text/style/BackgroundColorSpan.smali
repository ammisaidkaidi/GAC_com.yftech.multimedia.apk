.class public Landroid/text/style/BackgroundColorSpan;
.super Landroid/text/style/CharacterStyle;
.source "BackgroundColorSpan.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final mColor:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 50
    iput p1, p0, Landroid/text/style/BackgroundColorSpan;->mColor:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/text/style/BackgroundColorSpan;->mColor:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBackgroundColor()I
    .locals 0

    .line 93
    iget p0, p0, Landroid/text/style/BackgroundColorSpan;->mColor:I

    return p0
.end method

.method public getSpanTypeId()I
    .locals 0

    .line 62
    invoke-virtual {p0}, Landroid/text/style/BackgroundColorSpan;->getSpanTypeIdInternal()I

    move-result p0

    return p0
.end method

.method public getSpanTypeIdInternal()I
    .locals 0

    const/16 p0, 0xc

    return p0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    .line 101
    iget p0, p0, Landroid/text/style/BackgroundColorSpan;->mColor:I

    iput p0, p1, Landroid/text/TextPaint;->bgColor:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 78
    invoke-virtual {p0, p1, p2}, Landroid/text/style/BackgroundColorSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 0

    .line 84
    iget p0, p0, Landroid/text/style/BackgroundColorSpan;->mColor:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
