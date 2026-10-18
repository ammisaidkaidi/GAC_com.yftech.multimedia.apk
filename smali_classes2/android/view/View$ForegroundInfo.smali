.class Landroid/view/View$ForegroundInfo;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ForegroundInfo"
.end annotation


# instance fields
.field private mBoundsChanged:Z

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mGravity:I

.field private mInsidePadding:Z

.field private final mOverlayBounds:Landroid/graphics/Rect;

.field private final mSelfBounds:Landroid/graphics/Rect;

.field private mTintInfo:Landroid/view/View$TintInfo;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x77

    .line 4258
    iput v0, p0, Landroid/view/View$ForegroundInfo;->mGravity:I

    const/4 v0, 0x1

    .line 4259
    iput-boolean v0, p0, Landroid/view/View$ForegroundInfo;->mInsidePadding:Z

    .line 4260
    iput-boolean v0, p0, Landroid/view/View$ForegroundInfo;->mBoundsChanged:Z

    .line 4261
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/View$ForegroundInfo;->mSelfBounds:Landroid/graphics/Rect;

    .line 4262
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/View$ForegroundInfo;->mOverlayBounds:Landroid/graphics/Rect;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View$1;)V
    .locals 0

    .line 4255
    invoke-direct {p0}, Landroid/view/View$ForegroundInfo;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroid/view/View$ForegroundInfo;)Z
    .locals 0

    .line 4255
    iget-boolean p0, p0, Landroid/view/View$ForegroundInfo;->mInsidePadding:Z

    return p0
.end method

.method static synthetic access$102(Landroid/view/View$ForegroundInfo;Z)Z
    .locals 0

    .line 4255
    iput-boolean p1, p0, Landroid/view/View$ForegroundInfo;->mInsidePadding:Z

    return p1
.end method

.method static synthetic access$1200(Landroid/view/View$ForegroundInfo;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 4255
    iget-object p0, p0, Landroid/view/View$ForegroundInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$1202(Landroid/view/View$ForegroundInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 4255
    iput-object p1, p0, Landroid/view/View$ForegroundInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$1800(Landroid/view/View$ForegroundInfo;)Z
    .locals 0

    .line 4255
    iget-boolean p0, p0, Landroid/view/View$ForegroundInfo;->mBoundsChanged:Z

    return p0
.end method

.method static synthetic access$1802(Landroid/view/View$ForegroundInfo;Z)Z
    .locals 0

    .line 4255
    iput-boolean p1, p0, Landroid/view/View$ForegroundInfo;->mBoundsChanged:Z

    return p1
.end method

.method static synthetic access$2200(Landroid/view/View$ForegroundInfo;)I
    .locals 0

    .line 4255
    iget p0, p0, Landroid/view/View$ForegroundInfo;->mGravity:I

    return p0
.end method

.method static synthetic access$2202(Landroid/view/View$ForegroundInfo;I)I
    .locals 0

    .line 4255
    iput p1, p0, Landroid/view/View$ForegroundInfo;->mGravity:I

    return p1
.end method

.method static synthetic access$2300(Landroid/view/View$ForegroundInfo;)Landroid/view/View$TintInfo;
    .locals 0

    .line 4255
    iget-object p0, p0, Landroid/view/View$ForegroundInfo;->mTintInfo:Landroid/view/View$TintInfo;

    return-object p0
.end method

.method static synthetic access$2302(Landroid/view/View$ForegroundInfo;Landroid/view/View$TintInfo;)Landroid/view/View$TintInfo;
    .locals 0

    .line 4255
    iput-object p1, p0, Landroid/view/View$ForegroundInfo;->mTintInfo:Landroid/view/View$TintInfo;

    return-object p1
.end method

.method static synthetic access$2400(Landroid/view/View$ForegroundInfo;)Landroid/graphics/Rect;
    .locals 0

    .line 4255
    iget-object p0, p0, Landroid/view/View$ForegroundInfo;->mSelfBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$2500(Landroid/view/View$ForegroundInfo;)Landroid/graphics/Rect;
    .locals 0

    .line 4255
    iget-object p0, p0, Landroid/view/View$ForegroundInfo;->mOverlayBounds:Landroid/graphics/Rect;

    return-object p0
.end method
