.class public Landroid/content/res/ColorStateList;
.super Landroid/content/res/ComplexColor;
.source "ColorStateList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/ColorStateList$ColorStateListFactory;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_COLOR:I = -0x10000

.field private static final EMPTY:[[I

.field private static final TAG:Ljava/lang/String; = "ColorStateList"

.field private static final sCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mChangingConfigurations:I

.field private mColors:[I

.field private mDefaultColor:I

.field private mFactory:Landroid/content/res/ColorStateList$ColorStateListFactory;

.field private mIsOpaque:Z

.field private mStateSpecs:[[I

.field private mThemeAttrs:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 129
    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v1, [I

    aput-object v2, v0, v1

    sput-object v0, Landroid/content/res/ColorStateList;->EMPTY:[[I

    .line 132
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    .line 718
    new-instance v0, Landroid/content/res/ColorStateList$1;

    invoke-direct {v0}, Landroid/content/res/ColorStateList$1;-><init>()V

    sput-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 145
    invoke-direct {p0}, Landroid/content/res/ComplexColor;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 200
    invoke-direct {p0}, Landroid/content/res/ComplexColor;-><init>()V

    if-eqz p1, :cond_0

    .line 202
    iget v0, p1, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    iput v0, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    .line 203
    iget-object v0, p1, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    iput-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 204
    iget v0, p1, Landroid/content/res/ColorStateList;->mDefaultColor:I

    iput v0, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    .line 205
    iget-boolean v0, p1, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    iput-boolean v0, p0, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    .line 208
    iget-object v0, p1, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    invoke-virtual {v0}, [[I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    .line 209
    iget-object p1, p1, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Landroid/content/res/ColorStateList;->mColors:[I

    :cond_0
    return-void
.end method

.method public constructor <init>([[I[I)V
    .locals 0

    .line 153
    invoke-direct {p0}, Landroid/content/res/ComplexColor;-><init>()V

    .line 154
    iput-object p1, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 155
    iput-object p2, p0, Landroid/content/res/ColorStateList;->mColors:[I

    .line 157
    invoke-direct {p0}, Landroid/content/res/ColorStateList;->onColorsChanged()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/res/ColorStateList;)I
    .locals 0

    .line 125
    iget p0, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    return p0
.end method

.method private applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 9

    .line 412
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    if-nez v0, :cond_0

    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    .line 419
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_4

    .line 421
    aget-object v5, v0, v3

    if-eqz v5, :cond_3

    .line 422
    aget-object v5, v0, v3

    sget-object v6, Lcom/android/internal/R$styleable;->ColorStateListItem:[I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 426
    aget-object v6, v0, v3

    aget v6, v6, v2

    if-eqz v6, :cond_1

    .line 431
    iget-object v6, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v6, v6, v3

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v6, v7

    goto :goto_1

    :cond_1
    const/high16 v6, 0x3f800000    # 1.0f

    .line 442
    :goto_1
    aget-object v7, v0, v3

    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->extractThemeAttrs([I)[I

    move-result-object v7

    aput-object v7, v0, v3

    .line 443
    aget-object v7, v0, v3

    const/4 v8, 0x1

    if-eqz v7, :cond_2

    move v4, v8

    .line 447
    :cond_2
    iget-object v7, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v7, v7, v3

    invoke-virtual {v5, v2, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    .line 449
    invoke-virtual {v5, v8, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .line 451
    iget-object v8, p0, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-direct {p0, v7, v6}, Landroid/content/res/ColorStateList;->modulateColorAlpha(IF)I

    move-result v6

    aput v6, v8, v3

    .line 454
    iget v6, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v7

    or-int/2addr v6, v7

    iput v6, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    .line 456
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-nez v4, :cond_5

    const/4 p1, 0x0

    .line 461
    iput-object p1, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    .line 464
    :cond_5
    invoke-direct {p0}, Landroid/content/res/ColorStateList;->onColorsChanged()V

    return-void
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 226
    invoke-static {p0, p1, v0}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 245
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    .line 254
    invoke-static {p0, p1, v0, p2}, Landroid/content/res/ColorStateList;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    .line 251
    :cond_1
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "selector"

    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0}, Landroid/content/res/ColorStateList;-><init>()V

    .line 275
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/content/res/ColorStateList;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-object v0

    .line 270
    :cond_0
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": invalid color state list tag "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 303
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 312
    const-class v4, [I

    const/16 v5, 0x14

    invoke-static {v4, v5}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    .line 313
    array-length v5, v4

    new-array v5, v5, [[I

    .line 314
    array-length v6, v4

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/high16 v8, -0x10000

    move-object v11, v4

    move-object v9, v5

    move-object v10, v6

    move v4, v7

    move v5, v4

    move v6, v5

    .line 317
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    if-eq v12, v3, :cond_9

    .line 318
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    if-ge v13, v2, :cond_0

    const/4 v14, 0x3

    if-eq v12, v14, :cond_9

    :cond_0
    const/4 v14, 0x2

    if-ne v12, v14, :cond_8

    if-gt v13, v2, :cond_8

    .line 320
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "item"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    goto/16 :goto_3

    .line 324
    :cond_1
    sget-object v12, Lcom/android/internal/R$styleable;->ColorStateListItem:[I

    move-object/from16 v13, p1

    move-object/from16 v14, p4

    invoke-static {v13, v14, v1, v12}, Landroid/content/res/Resources;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 326
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v15

    const v3, -0xff01

    .line 327
    invoke-virtual {v12, v7, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    const/high16 v7, 0x3f800000    # 1.0f

    move/from16 v17, v2

    const/4 v2, 0x1

    .line 328
    invoke-virtual {v12, v2, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 330
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v16

    or-int v4, v4, v16

    .line 332
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 336
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v12

    .line 337
    new-array v2, v12, [I

    move/from16 v18, v4

    const/4 v4, 0x0

    const/4 v13, 0x0

    :goto_1
    if-ge v4, v12, :cond_4

    move/from16 v19, v12

    .line 339
    invoke-interface {v1, v4}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v12

    const v14, 0x10101a5

    if-eq v12, v14, :cond_3

    const v14, 0x101031f

    if-eq v12, v14, :cond_3

    add-int/lit8 v14, v13, 0x1

    move/from16 v20, v14

    const/4 v14, 0x0

    .line 346
    invoke-interface {v1, v4, v14}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v16

    if-eqz v16, :cond_2

    goto :goto_2

    :cond_2
    neg-int v12, v12

    .line 347
    :goto_2
    aput v12, v2, v13

    move/from16 v13, v20

    :cond_3
    add-int/lit8 v4, v4, 0x1

    move/from16 v12, v19

    move-object/from16 v14, p4

    goto :goto_1

    .line 350
    :cond_4
    invoke-static {v2, v13}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v2

    .line 355
    invoke-direct {v0, v3, v7}, Landroid/content/res/ColorStateList;->modulateColorAlpha(IF)I

    move-result v3

    if-eqz v6, :cond_5

    .line 356
    array-length v4, v2

    if-nez v4, :cond_6

    :cond_5
    move v8, v3

    :cond_6
    if-eqz v15, :cond_7

    const/4 v5, 0x1

    .line 364
    :cond_7
    invoke-static {v10, v6, v3}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v10

    .line 365
    invoke-static {v9, v6, v15}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, [[I

    .line 366
    invoke-static {v11, v6, v2}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, [[I

    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v17

    move/from16 v4, v18

    goto :goto_4

    :cond_8
    :goto_3
    move/from16 v17, v2

    move/from16 v2, v17

    :goto_4
    const/4 v3, 0x1

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 370
    :cond_9
    iput v4, v0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    .line 371
    iput v8, v0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    if-eqz v5, :cond_a

    .line 374
    new-array v1, v6, [[I

    iput-object v1, v0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    .line 375
    iget-object v1, v0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    const/4 v2, 0x0

    invoke-static {v9, v2, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 377
    iput-object v1, v0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    .line 380
    :goto_5
    new-array v1, v6, [I

    iput-object v1, v0, Landroid/content/res/ColorStateList;->mColors:[I

    .line 381
    new-array v1, v6, [[I

    iput-object v1, v0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 382
    iget-object v1, v0, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-static {v10, v2, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 383
    iget-object v1, v0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    invoke-static {v11, v2, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 385
    invoke-direct/range {p0 .. p0}, Landroid/content/res/ColorStateList;->onColorsChanged()V

    return-void
.end method

.method private modulateColorAlpha(IF)I
    .locals 1

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p2, p0

    if-nez p0, :cond_0

    return p1

    .line 505
    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p0, p2

    float-to-int p0, p0

    const/4 p2, 0x0

    const/16 v0, 0xff

    .line 506
    invoke-static {p0, p2, v0}, Landroid/util/MathUtils;->constrain(III)I

    move-result p0

    const p2, 0xffffff

    and-int/2addr p1, p2

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method private onColorsChanged()V
    .locals 8

    .line 641
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 642
    iget-object v1, p0, Landroid/content/res/ColorStateList;->mColors:[I

    .line 643
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_3

    .line 645
    aget v5, v1, v3

    add-int/lit8 v6, v2, -0x1

    :goto_0
    if-lez v6, :cond_1

    .line 648
    aget-object v7, v0, v6

    array-length v7, v7

    if-nez v7, :cond_0

    .line 649
    aget v5, v1, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    move v0, v3

    :goto_2
    if-ge v0, v2, :cond_4

    .line 655
    aget v6, v1, v0

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    const/16 v7, 0xff

    if-eq v6, v7, :cond_2

    move v4, v3

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/high16 v5, -0x10000

    .line 662
    :cond_4
    :goto_3
    iput v5, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    .line 663
    iput-boolean v4, p0, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    return-void
.end method

.method public static valueOf(I)Landroid/content/res/ColorStateList;
    .locals 5

    .line 165
    sget-object v0, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 166
    :try_start_0
    sget-object v1, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_1

    .line 168
    sget-object v2, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    .line 170
    monitor-exit v0

    return-object v2

    .line 174
    :cond_0
    sget-object v2, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 178
    :cond_1
    sget-object v1, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_3

    .line 180
    sget-object v3, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 181
    sget-object v3, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 185
    :cond_3
    new-instance v1, Landroid/content/res/ColorStateList;

    sget-object v3, Landroid/content/res/ColorStateList;->EMPTY:[[I

    new-array v2, v2, [I

    const/4 v4, 0x0

    aput p0, v2, v4

    invoke-direct {v1, v3, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 186
    sget-object v2, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 187
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 188
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 0

    .line 398
    iget-object p0, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .line 497
    invoke-super {p0}, Landroid/content/res/ComplexColor;->getChangingConfigurations()I

    move-result v0

    iget p0, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    or-int/2addr p0, v0

    return p0
.end method

.method public getColorForState([II)I
    .locals 3

    .line 555
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 557
    iget-object v2, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    aget-object v2, v2, v1

    .line 558
    invoke-static {v2, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 559
    iget-object p0, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget p0, p0, v1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method public getColors()[I
    .locals 0

    .line 594
    iget-object p0, p0, Landroid/content/res/ColorStateList;->mColors:[I

    return-object p0
.end method

.method public getConstantState()Landroid/content/res/ConstantState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConstantState<",
            "Landroid/content/res/ComplexColor;",
            ">;"
        }
    .end annotation

    .line 671
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mFactory:Landroid/content/res/ColorStateList$ColorStateListFactory;

    if-nez v0, :cond_0

    .line 672
    new-instance v0, Landroid/content/res/ColorStateList$ColorStateListFactory;

    invoke-direct {v0, p0}, Landroid/content/res/ColorStateList$ColorStateListFactory;-><init>(Landroid/content/res/ColorStateList;)V

    iput-object v0, p0, Landroid/content/res/ColorStateList;->mFactory:Landroid/content/res/ColorStateList$ColorStateListFactory;

    .line 674
    :cond_0
    iget-object p0, p0, Landroid/content/res/ColorStateList;->mFactory:Landroid/content/res/ColorStateList$ColorStateListFactory;

    return-object p0
.end method

.method public getDefaultColor()I
    .locals 0

    .line 572
    iget p0, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    return p0
.end method

.method public getStates()[[I
    .locals 0

    .line 583
    iget-object p0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    return-object p0
.end method

.method public hasFocusStateSpecified()Z
    .locals 1

    .line 529
    iget-object p0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    const v0, 0x101009c

    invoke-static {p0, v0}, Landroid/util/StateSet;->containsAttribute([[II)Z

    move-result p0

    return p0
.end method

.method public hasState(I)Z
    .locals 8

    .line 610
    iget-object p0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 611
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 613
    aget-object v3, p0, v2

    .line 614
    array-length v4, v3

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_2

    .line 616
    aget v6, v3, v5

    if-eq v6, p1, :cond_1

    aget v6, v3, v5

    not-int v7, p1

    if-ne v6, v7, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public isOpaque()Z
    .locals 0

    .line 540
    iget-boolean p0, p0, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    return p0
.end method

.method public isStateful()Z
    .locals 3

    .line 520
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    iget-object p0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    aget-object p0, p0, v1

    array-length p0, p0

    if-lez p0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 1

    if-eqz p1, :cond_1

    .line 478
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 482
    :cond_0
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, p0}, Landroid/content/res/ColorStateList;-><init>(Landroid/content/res/ColorStateList;)V

    .line 483
    invoke-direct {v0, p1}, Landroid/content/res/ColorStateList;->applyTheme(Landroid/content/res/Resources$Theme;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public bridge synthetic obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;
    .locals 0

    .line 125
    invoke-virtual {p0, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorStateList{mThemeAttrs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    .line 627
    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mChangingConfigurations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mStateSpecs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 629
    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mColors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/res/ColorStateList;->mColors:[I

    .line 630
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mDefaultColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public withAlpha(I)Landroid/content/res/ColorStateList;
    .locals 5

    .line 288
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mColors:[I

    array-length v0, v0

    new-array v0, v0, [I

    .line 289
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 291
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v3, v3, v2

    const v4, 0xffffff

    and-int/2addr v3, v4

    shl-int/lit8 v4, p1, 0x18

    or-int/2addr v3, v4

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 294
    :cond_0
    new-instance p1, Landroid/content/res/ColorStateList;

    iget-object p0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    invoke-direct {p1, p0, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 707
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "ColorStateList"

    const-string v0, "Wrote partially-resolved ColorStateList to parcel!"

    .line 708
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_0
    iget-object p2, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length p2, p2

    .line 711
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 713
    iget-object v1, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 715
    :cond_1
    iget-object p0, p0, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
