.class public Landroid/text/style/RasterizerSpan;
.super Landroid/text/style/CharacterStyle;
.source "RasterizerSpan.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# instance fields
.field private mRasterizer:Landroid/graphics/Rasterizer;


# direct methods
.method public constructor <init>(Landroid/graphics/Rasterizer;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 30
    iput-object p1, p0, Landroid/text/style/RasterizerSpan;->mRasterizer:Landroid/graphics/Rasterizer;

    return-void
.end method


# virtual methods
.method public getRasterizer()Landroid/graphics/Rasterizer;
    .locals 0

    .line 34
    iget-object p0, p0, Landroid/text/style/RasterizerSpan;->mRasterizer:Landroid/graphics/Rasterizer;

    return-object p0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    .line 39
    iget-object p0, p0, Landroid/text/style/RasterizerSpan;->mRasterizer:Landroid/graphics/Rasterizer;

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setRasterizer(Landroid/graphics/Rasterizer;)Landroid/graphics/Rasterizer;

    return-void
.end method
