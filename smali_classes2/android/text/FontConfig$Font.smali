.class public final Landroid/text/FontConfig$Font;
.super Ljava/lang/Object;
.source "FontConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/FontConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Font"
.end annotation


# instance fields
.field private final mAxes:[Landroid/graphics/fonts/FontVariationAxis;

.field private final mFallbackFor:Ljava/lang/String;

.field private final mFontName:Ljava/lang/String;

.field private final mIsItalic:Z

.field private final mTtcIndex:I

.field private mUri:Landroid/net/Uri;

.field private final mWeight:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IZLjava/lang/String;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Landroid/text/FontConfig$Font;->mFontName:Ljava/lang/String;

    .line 75
    iput p2, p0, Landroid/text/FontConfig$Font;->mTtcIndex:I

    .line 76
    iput-object p3, p0, Landroid/text/FontConfig$Font;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 77
    iput p4, p0, Landroid/text/FontConfig$Font;->mWeight:I

    .line 78
    iput-boolean p5, p0, Landroid/text/FontConfig$Font;->mIsItalic:Z

    .line 79
    iput-object p6, p0, Landroid/text/FontConfig$Font;->mFallbackFor:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAxes()[Landroid/graphics/fonts/FontVariationAxis;
    .locals 0

    .line 100
    iget-object p0, p0, Landroid/text/FontConfig$Font;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    return-object p0
.end method

.method public getFallbackFor()Ljava/lang/String;
    .locals 0

    .line 132
    iget-object p0, p0, Landroid/text/FontConfig$Font;->mFallbackFor:Ljava/lang/String;

    return-object p0
.end method

.method public getFontName()Ljava/lang/String;
    .locals 0

    .line 86
    iget-object p0, p0, Landroid/text/FontConfig$Font;->mFontName:Ljava/lang/String;

    return-object p0
.end method

.method public getTtcIndex()I
    .locals 0

    .line 93
    iget p0, p0, Landroid/text/FontConfig$Font;->mTtcIndex:I

    return p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 124
    iget-object p0, p0, Landroid/text/FontConfig$Font;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public getWeight()I
    .locals 0

    .line 107
    iget p0, p0, Landroid/text/FontConfig$Font;->mWeight:I

    return p0
.end method

.method public isItalic()Z
    .locals 0

    .line 114
    iget-boolean p0, p0, Landroid/text/FontConfig$Font;->mIsItalic:Z

    return p0
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    .line 128
    iput-object p1, p0, Landroid/text/FontConfig$Font;->mUri:Landroid/net/Uri;

    return-void
.end method
