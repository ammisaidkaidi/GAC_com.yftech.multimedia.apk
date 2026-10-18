.class final Landroid/widget/SmartSelectSprite$RectangleList;
.super Landroid/graphics/drawable/shapes/Shape;
.source "SmartSelectSprite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SmartSelectSprite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RectangleList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SmartSelectSprite$RectangleList$DisplayType;
    }
.end annotation


# static fields
.field private static final PROPERTY_LEFT_BOUNDARY:Ljava/lang/String; = "leftBoundary"

.field private static final PROPERTY_RIGHT_BOUNDARY:Ljava/lang/String; = "rightBoundary"


# instance fields
.field private mDisplayType:I

.field private final mOutlinePolygonPath:Landroid/graphics/Path;

.field private final mRectangles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/SmartSelectSprite$RoundedRectangleShape;",
            ">;"
        }
    .end annotation
.end field

.field private final mReversedRectangles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/SmartSelectSprite$RoundedRectangleShape;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/SmartSelectSprite$RoundedRectangleShape;",
            ">;)V"
        }
    .end annotation

    .line 246
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    const/4 v0, 0x0

    .line 244
    iput v0, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mDisplayType:I

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mRectangles:Ljava/util/List;

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mReversedRectangles:Ljava/util/List;

    .line 249
    iget-object v0, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mReversedRectangles:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 250
    invoke-static {p1}, Landroid/widget/SmartSelectSprite$RectangleList;->generateOutlinePolygonPath(Ljava/util/List;)Landroid/graphics/Path;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mOutlinePolygonPath:Landroid/graphics/Path;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Landroid/widget/SmartSelectSprite$1;)V
    .locals 0

    .line 228
    invoke-direct {p0, p1}, Landroid/widget/SmartSelectSprite$RectangleList;-><init>(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/SmartSelectSprite$RectangleList;)I
    .locals 0

    .line 228
    invoke-direct {p0}, Landroid/widget/SmartSelectSprite$RectangleList;->getTotalWidth()I

    move-result p0

    return p0
.end method

.method private drawPolygon(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 0

    .line 314
    iget-object p0, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mOutlinePolygonPath:Landroid/graphics/Path;

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawRectangles(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1

    .line 308
    iget-object p0, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mRectangles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;

    .line 309
    invoke-virtual {v0, p1, p2}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static generateOutlinePolygonPath(Ljava/util/List;)Landroid/graphics/Path;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/SmartSelectSprite$RoundedRectangleShape;",
            ">;)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    .line 319
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 320
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;

    .line 321
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 322
    invoke-static {v1}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->access$300(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;)Landroid/graphics/RectF;

    move-result-object v1

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 323
    sget-object v1, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getTotalWidth()I
    .locals 2

    .line 292
    iget-object p0, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mRectangles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;

    int-to-float v0, v0

    .line 293
    invoke-static {v1}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->access$000(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    return v0
.end method

.method private setLeftBoundary(F)V
    .locals 4

    .line 254
    invoke-direct {p0}, Landroid/widget/SmartSelectSprite$RectangleList;->getTotalWidth()I

    move-result v0

    int-to-float v0, v0

    .line 255
    iget-object p0, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mReversedRectangles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;

    .line 256
    invoke-static {v1}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->access$000(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;)F

    move-result v2

    sub-float v2, v0, v2

    cmpg-float v3, p1, v2

    if-gez v3, :cond_0

    const/4 v0, 0x0

    .line 258
    invoke-static {v1, v0}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->access$100(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;F)V

    goto :goto_1

    :cond_0
    cmpl-float v3, p1, v0

    if-lez v3, :cond_1

    .line 260
    invoke-static {v1}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->access$000(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;)F

    move-result v0

    invoke-static {v1, v0}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->access$100(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;F)V

    goto :goto_1

    .line 263
    :cond_1
    invoke-static {v1}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->access$000(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;)F

    move-result v3

    sub-float/2addr v3, v0

    add-float/2addr v3, p1

    .line 262
    invoke-static {v1, v3}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->access$100(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;F)V

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setRightBoundary(F)V
    .locals 5

    .line 272
    iget-object p0, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mRectangles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;

    .line 273
    invoke-static {v2}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->access$000(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;)F

    move-result v3

    add-float/2addr v3, v1

    cmpg-float v4, v3, p1

    if-gez v4, :cond_0

    .line 275
    invoke-static {v2}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->access$000(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;)F

    move-result v1

    invoke-static {v2, v1}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->access$200(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;F)V

    goto :goto_1

    :cond_0
    cmpl-float v4, v1, p1

    if-lez v4, :cond_1

    .line 277
    invoke-static {v2, v0}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->access$200(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;F)V

    goto :goto_1

    :cond_1
    sub-float v1, p1, v1

    .line 279
    invoke-static {v2, v1}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->access$200(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;F)V

    :goto_1
    move v1, v3

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2

    .line 300
    iget v0, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mDisplayType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 301
    invoke-direct {p0, p1, p2}, Landroid/widget/SmartSelectSprite$RectangleList;->drawPolygon(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 303
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/widget/SmartSelectSprite$RectangleList;->drawRectangles(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method setDisplayType(I)V
    .locals 0

    .line 287
    iput p1, p0, Landroid/widget/SmartSelectSprite$RectangleList;->mDisplayType:I

    return-void
.end method
