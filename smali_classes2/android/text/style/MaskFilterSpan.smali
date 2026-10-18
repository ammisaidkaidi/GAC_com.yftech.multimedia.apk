.class public Landroid/text/style/MaskFilterSpan;
.super Landroid/text/style/CharacterStyle;
.source "MaskFilterSpan.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# instance fields
.field private mFilter:Landroid/graphics/MaskFilter;


# direct methods
.method public constructor <init>(Landroid/graphics/MaskFilter;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/text/style/MaskFilterSpan;->mFilter:Landroid/graphics/MaskFilter;

    return-void
.end method


# virtual methods
.method public getMaskFilter()Landroid/graphics/MaskFilter;
    .locals 0

    .line 52
    iget-object p0, p0, Landroid/text/style/MaskFilterSpan;->mFilter:Landroid/graphics/MaskFilter;

    return-object p0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    .line 57
    iget-object p0, p0, Landroid/text/style/MaskFilterSpan;->mFilter:Landroid/graphics/MaskFilter;

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    return-void
.end method
