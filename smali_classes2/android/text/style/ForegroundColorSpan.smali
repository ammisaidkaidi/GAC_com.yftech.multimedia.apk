.class public Landroid/text/style/ForegroundColorSpan;
.super Landroid/text/style/CharacterStyle;
.source "ForegroundColorSpan.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final mColor:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 51
    iput p1, p0, Landroid/text/style/ForegroundColorSpan;->mColor:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/text/style/ForegroundColorSpan;->mColor:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getForegroundColor()I
    .locals 0

    .line 94
    iget p0, p0, Landroid/text/style/ForegroundColorSpan;->mColor:I

    return p0
.end method

.method public getSpanTypeId()I
    .locals 0

    .line 63
    invoke-virtual {p0}, Landroid/text/style/ForegroundColorSpan;->getSpanTypeIdInternal()I

    move-result p0

    return p0
.end method

.method public getSpanTypeIdInternal()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    .line 102
    iget p0, p0, Landroid/text/style/ForegroundColorSpan;->mColor:I

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 79
    invoke-virtual {p0, p1, p2}, Landroid/text/style/ForegroundColorSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 0

    .line 85
    iget p0, p0, Landroid/text/style/ForegroundColorSpan;->mColor:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
