.class public Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;
.super Lcom/facebook/drawee/view/DraweeView;
.source "ZoomableDraweeView.java"

# interfaces
.implements Landroidx/core/view/ScrollingView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/drawee/view/DraweeView<",
        "Lcom/facebook/drawee/generic/GenericDraweeHierarchy;",
        ">;",
        "Landroidx/core/view/ScrollingView;"
    }
.end annotation


# static fields
.field private static final HUGE_IMAGE_SCALE_FACTOR_THRESHOLD:F = 1.1f

.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mAllowTouchInterceptionWhileZoomed:Z

.field private final mControllerListener:Lcom/facebook/drawee/controller/ControllerListener;

.field private mHugeImageController:Lcom/facebook/drawee/interfaces/DraweeController;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mImageBounds:Landroid/graphics/RectF;

.field private mIsDialtoneEnabled:Z

.field private mTapGestureDetector:Landroid/view/GestureDetector;

.field private final mTapListenerWrapper:Lcom/media/common/ui/widget/zoomable/GestureListenerWrapper;

.field private final mViewBounds:Landroid/graphics/RectF;

.field private mZoomableController:Lcom/media/common/ui/widget/zoomable/ZoomableController;

.field private final mZoomableListener:Lcom/media/common/ui/widget/zoomable/ZoomableController$Listener;

.field private mZoomingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;

    sput-object v0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->TAG:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 94
    invoke-direct {p0, p1}, Lcom/facebook/drawee/view/DraweeView;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mImageBounds:Landroid/graphics/RectF;

    .line 47
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mViewBounds:Landroid/graphics/RectF;

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mAllowTouchInterceptionWhileZoomed:Z

    const/4 v1, 0x0

    .line 54
    iput-boolean v1, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mIsDialtoneEnabled:Z

    .line 55
    iput-boolean v0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mZoomingEnabled:Z

    .line 57
    new-instance v0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView$1;

    invoke-direct {v0, p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView$1;-><init>(Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;)V

    iput-object v0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mControllerListener:Lcom/facebook/drawee/controller/ControllerListener;

    .line 71
    new-instance v0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView$2;

    invoke-direct {v0, p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView$2;-><init>(Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;)V

    iput-object v0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mZoomableListener:Lcom/media/common/ui/widget/zoomable/ZoomableController$Listener;

    .line 85
    new-instance v0, Lcom/media/common/ui/widget/zoomable/GestureListenerWrapper;

    invoke-direct {v0}, Lcom/media/common/ui/widget/zoomable/GestureListenerWrapper;-><init>()V

    iput-object v0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mTapListenerWrapper:Lcom/media/common/ui/widget/zoomable/GestureListenerWrapper;

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0, p1, v0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->inflateHierarchy(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    invoke-direct {p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/view/DraweeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mImageBounds:Landroid/graphics/RectF;

    .line 47
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mViewBounds:Landroid/graphics/RectF;

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mAllowTouchInterceptionWhileZoomed:Z

    const/4 v1, 0x0

    .line 54
    iput-boolean v1, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mIsDialtoneEnabled:Z

    .line 55
    iput-boolean v0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mZoomingEnabled:Z

    .line 57
    new-instance v0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView$1;

    invoke-direct {v0, p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView$1;-><init>(Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;)V

    iput-object v0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mControllerListener:Lcom/facebook/drawee/controller/ControllerListener;

    .line 71
    new-instance v0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView$2;

    invoke-direct {v0, p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView$2;-><init>(Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;)V

    iput-object v0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mZoomableListener:Lcom/media/common/ui/widget/zoomable/ZoomableController$Listener;

    .line 85
    new-instance v0, Lcom/media/common/ui/widget/zoomable/GestureListenerWrapper;

    invoke-direct {v0}, Lcom/media/common/ui/widget/zoomable/GestureListenerWrapper;-><init>()V

    iput-object v0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mTapListenerWrapper:Lcom/media/common/ui/widget/zoomable/GestureListenerWrapper;

    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->inflateHierarchy(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    invoke-direct {p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/drawee/view/DraweeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mImageBounds:Landroid/graphics/RectF;

    .line 47
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mViewBounds:Landroid/graphics/RectF;

    const/4 p3, 0x1

    .line 52
    iput-boolean p3, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mAllowTouchInterceptionWhileZoomed:Z

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mIsDialtoneEnabled:Z

    .line 55
    iput-boolean p3, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mZoomingEnabled:Z

    .line 57
    new-instance p3, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView$1;

    invoke-direct {p3, p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView$1;-><init>(Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;)V

    iput-object p3, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mControllerListener:Lcom/facebook/drawee/controller/ControllerListener;

    .line 71
    new-instance p3, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView$2;

    invoke-direct {p3, p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView$2;-><init>(Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;)V

    iput-object p3, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mZoomableListener:Lcom/media/common/ui/widget/zoomable/ZoomableController$Listener;

    .line 85
    new-instance p3, Lcom/media/common/ui/widget/zoomable/GestureListenerWrapper;

    invoke-direct {p3}, Lcom/media/common/ui/widget/zoomable/GestureListenerWrapper;-><init>()V

    iput-object p3, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mTapListenerWrapper:Lcom/media/common/ui/widget/zoomable/GestureListenerWrapper;

    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->inflateHierarchy(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    invoke-direct {p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/drawee/generic/GenericDraweeHierarchy;)V
    .locals 1

    .line 88
    invoke-direct {p0, p1}, Lcom/facebook/drawee/view/DraweeView;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mImageBounds:Landroid/graphics/RectF;

    .line 47
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mViewBounds:Landroid/graphics/RectF;

    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mAllowTouchInterceptionWhileZoomed:Z

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mIsDialtoneEnabled:Z

    .line 55
    iput-boolean p1, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mZoomingEnabled:Z

    .line 57
    new-instance p1, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView$1;

    invoke-direct {p1, p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView$1;-><init>(Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;)V

    iput-object p1, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mControllerListener:Lcom/facebook/drawee/controller/ControllerListener;

    .line 71
    new-instance p1, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView$2;

    invoke-direct {p1, p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView$2;-><init>(Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;)V

    iput-object p1, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mZoomableListener:Lcom/media/common/ui/widget/zoomable/ZoomableController$Listener;

    .line 85
    new-instance p1, Lcom/media/common/ui/widget/zoomable/GestureListenerWrapper;

    invoke-direct {p1}, Lcom/media/common/ui/widget/zoomable/GestureListenerWrapper;-><init>()V

    iput-object p1, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mTapListenerWrapper:Lcom/media/common/ui/widget/zoomable/GestureListenerWrapper;

    .line 89
    invoke-virtual {p0, p2}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->setHierarchy(Lcom/facebook/drawee/interfaces/DraweeHierarchy;)V

    .line 90
    invoke-direct {p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->onFinalImageSet()V

    return-void
.end method

.method static synthetic access$100(Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->onRelease()V

    return-void
.end method

.method private addControllerListener(Lcom/facebook/drawee/interfaces/DraweeController;)V
    .locals 1

    .line 264
    instance-of v0, p1, Lcom/facebook/drawee/controller/AbstractDraweeController;

    if-eqz v0, :cond_0

    .line 265
    check-cast p1, Lcom/facebook/drawee/controller/AbstractDraweeController;

    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mControllerListener:Lcom/facebook/drawee/controller/ControllerListener;

    invoke-virtual {p1, p0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->addControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)V

    :cond_0
    return-void
.end method

.method private init()V
    .locals 3

    .line 122
    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->createZoomableController()Lcom/media/common/ui/widget/zoomable/ZoomableController;

    move-result-object v0

    iput-object v0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mZoomableController:Lcom/media/common/ui/widget/zoomable/ZoomableController;

    .line 123
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mZoomableController:Lcom/media/common/ui/widget/zoomable/ZoomableController;

    iget-object v1, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mZoomableListener:Lcom/media/common/ui/widget/zoomable/ZoomableController$Listener;

    invoke-interface {v0, v1}, Lcom/media/common/ui/widget/zoomable/ZoomableController;->setListener(Lcom/media/common/ui/widget/zoomable/ZoomableController$Listener;)V

    .line 124
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mTapListenerWrapper:Lcom/media/common/ui/widget/zoomable/GestureListenerWrapper;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mTapGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method private maybeSetHugeImageController()V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mHugeImageController:Lcom/facebook/drawee/interfaces/DraweeController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mZoomableController:Lcom/media/common/ui/widget/zoomable/ZoomableController;

    .line 252
    invoke-interface {v0}, Lcom/media/common/ui/widget/zoomable/ZoomableController;->getScaleFactor()F

    move-result v0

    const v1, 0x3f8ccccd    # 1.1f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mHugeImageController:Lcom/facebook/drawee/interfaces/DraweeController;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->setControllersInternal(Lcom/facebook/drawee/interfaces/DraweeController;Lcom/facebook/drawee/interfaces/DraweeController;)V

    :cond_0
    return-void
.end method

.method private onFinalImageSet()V
    .locals 3

    .line 379
    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->getLogTag()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onFinalImageSet: view %x"

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 380
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mZoomableController:Lcom/media/common/ui/widget/zoomable/ZoomableController;

    invoke-interface {v0}, Lcom/media/common/ui/widget/zoomable/ZoomableController;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mZoomingEnabled:Z

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mZoomableController:Lcom/media/common/ui/widget/zoomable/ZoomableController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/media/common/ui/widget/zoomable/ZoomableController;->setEnabled(Z)V

    .line 382
    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->updateZoomableControllerBounds()V

    :cond_0
    return-void
.end method

.method private onRelease()V
    .locals 3

    .line 387
    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->getLogTag()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onRelease: view %x"

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 388
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mZoomableController:Lcom/media/common/ui/widget/zoomable/ZoomableController;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/media/common/ui/widget/zoomable/ZoomableController;->setEnabled(Z)V

    return-void
.end method

.method private removeControllerListener(Lcom/facebook/drawee/interfaces/DraweeController;)V
    .locals 1

    .line 258
    instance-of v0, p1, Lcom/facebook/drawee/controller/AbstractDraweeController;

    if-eqz v0, :cond_0

    .line 259
    check-cast p1, Lcom/facebook/drawee/controller/AbstractDraweeController;

    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mControllerListener:Lcom/facebook/drawee/controller/ControllerListener;

    invoke-virtual {p1, p0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->removeControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)V

    :cond_0
    return-void
.end method

.method private setControllersInternal(Lcom/facebook/drawee/interfaces/DraweeController;Lcom/facebook/drawee/interfaces/DraweeController;)V
    .locals 1
    .param p1    # Lcom/facebook/drawee/interfaces/DraweeController;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/drawee/interfaces/DraweeController;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 244
    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->getController()Lcom/facebook/drawee/interfaces/DraweeController;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->removeControllerListener(Lcom/facebook/drawee/interfaces/DraweeController;)V

    .line 245
    invoke-direct {p0, p1}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->addControllerListener(Lcom/facebook/drawee/interfaces/DraweeController;)V

    .line 246
    iput-object p2, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mHugeImageController:Lcom/facebook/drawee/interfaces/DraweeController;

    .line 247
    invoke-super {p0, p1}, Lcom/facebook/drawee/view/DraweeView;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    return-void
.end method


# virtual methods
.method public allowsTouchInterceptionWhileZoomed()Z
    .locals 0

    .line 187
    iget-boolean p0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mAllowTouchInterceptionWhileZoomed:Z

    return p0
.end method

.method public computeHorizontalScrollExtent()I
    .locals 0

    .line 353
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mZoomableController:Lcom/media/common/ui/widget/zoomable/ZoomableController;

    invoke-interface {p0}, Lcom/media/common/ui/widget/zoomable/ZoomableController;->computeHorizontalScrollExtent()I

    move-result p0

    return p0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 0

    .line 348
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mZoomableController:Lcom/media/common/ui/widget/zoomable/ZoomableController;

    invoke-interface {p0}, Lcom/media/common/ui/widget/zoomable/ZoomableController;->computeHorizontalScrollOffset()I

    move-result p0

    return p0
.end method

.method public computeHorizontalScrollRange()I
    .locals 0

    .line 343
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mZoomableController:Lcom/media/common/ui/widget/zoomable/ZoomableController;

    invoke-interface {p0}, Lcom/media/common/ui/widget/zoomable/ZoomableController;->computeHorizontalScrollRange()I

    move-result p0

    return p0
.end method

.method public computeVerticalScrollExtent()I
    .locals 0

    .line 368
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mZoomableController:Lcom/media/common/ui/widget/zoomable/ZoomableController;

    invoke-interface {p0}, Lcom/media/common/ui/widget/zoomable/ZoomableController;->computeVerticalScrollExtent()I

    move-result p0

    return p0
.end method

.method public computeVerticalScrollOffset()I
    .locals 0

    .line 363
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mZoomableController:Lcom/media/common/ui/widget/zoomable/ZoomableController;

    invoke-interface {p0}, Lcom/media/common/ui/widget/zoomable/ZoomableController;->computeVerticalScrollOffset()I

    move-result p0

    return p0
.end method

.method public computeVerticalScrollRange()I
    .locals 0

    .line 358
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mZoomableController:Lcom/media/common/ui/widget/zoomable/ZoomableController;

    invoke-interface {p0}, Lcom/media/common/ui/widget/zoomable/ZoomableController;->computeVerticalScrollRange()I

    move-result p0

    return p0
.end method

.method protected createZoomableController()Lcom/media/common/ui/widget/zoomable/ZoomableController;
    .locals 0

    .line 415
    invoke-static {}, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;->newInstance()Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;

    move-result-object p0

    return-object p0
.end method

.method protected getImageBounds(Landroid/graphics/RectF;)V
    .locals 0

    .line 145
    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object p0

    check-cast p0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->getActualImageBounds(Landroid/graphics/RectF;)V

    return-void
.end method

.method protected getLimitBounds(Landroid/graphics/RectF;)V
    .locals 2

    .line 159
    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, p0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method protected getLogTag()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 411
    sget-object p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->TAG:Ljava/lang/Class;

    return-object p0
.end method

.method public getZoomableController()Lcom/media/common/ui/widget/zoomable/ZoomableController;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mZoomableController:Lcom/media/common/ui/widget/zoomable/ZoomableController;

    return-object p0
.end method

.method protected inflateHierarchy(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 113
    new-instance v1, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    invoke-direct {v1, v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;-><init>(Landroid/content/res/Resources;)V

    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_CENTER:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 115
    invoke-virtual {v1, v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->setActualImageScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    move-result-object v0

    .line 116
    invoke-static {v0, p1, p2}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyInflater;->updateBuilder(Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    .line 117
    invoke-virtual {v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->getDesiredAspectRatio()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->setAspectRatio(F)V

    .line 118
    invoke-virtual {v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->build()Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->setHierarchy(Lcom/facebook/drawee/interfaces/DraweeHierarchy;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 271
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 272
    iget-object v1, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mZoomableController:Lcom/media/common/ui/widget/zoomable/ZoomableController;

    invoke-interface {v1}, Lcom/media/common/ui/widget/zoomable/ZoomableController;->getTransform()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 274
    :try_start_0
    invoke-super {p0, p1}, Lcom/facebook/drawee/view/DraweeView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catch_0
    move-exception p1

    .line 276
    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->getController()Lcom/facebook/drawee/interfaces/DraweeController;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 277
    instance-of v0, p0, Lcom/facebook/drawee/controller/AbstractDraweeController;

    if-eqz v0, :cond_0

    .line 278
    check-cast p0, Lcom/facebook/drawee/controller/AbstractDraweeController;

    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeController;->getCallerContext()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 280
    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 281
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "Exception in onDraw, callerContext=%s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 284
    :cond_0
    throw p1
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 373
    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->getLogTag()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onLayout: view %x"

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 374
    invoke-super/range {p0 .. p5}, Lcom/facebook/drawee/view/DraweeView;->onLayout(ZIIII)V

    .line 375
    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->updateZoomableControllerBounds()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 292
    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->getLogTag()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onTouchEvent: %d, view %x, received"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 293
    iget-boolean v1, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mIsDialtoneEnabled:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mTapGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->getLogTag()Ljava/lang/Class;

    move-result-object p1

    const-string v1, "onTouchEvent: %d, view %x, handled by tap gesture detector"

    .line 297
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 298
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 294
    invoke-static {p1, v1, v0, p0}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v2

    .line 302
    :cond_0
    iget-boolean v1, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mIsDialtoneEnabled:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mZoomableController:Lcom/media/common/ui/widget/zoomable/ZoomableController;

    invoke-interface {v1, p1}, Lcom/media/common/ui/widget/zoomable/ZoomableController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 304
    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->getLogTag()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "onTouchEvent: %d, view %x, handled by zoomable controller"

    .line 306
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 307
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 303
    invoke-static {v1, v3, v0, v4}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 308
    iget-boolean v0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mAllowTouchInterceptionWhileZoomed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mZoomableController:Lcom/media/common/ui/widget/zoomable/ZoomableController;

    invoke-interface {v0}, Lcom/media/common/ui/widget/zoomable/ZoomableController;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 309
    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 313
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    .line 314
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v2, :cond_3

    .line 315
    :cond_2
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mZoomableController:Lcom/media/common/ui/widget/zoomable/ZoomableController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mZoomableController:Lcom/media/common/ui/widget/zoomable/ZoomableController;

    invoke-interface {v0}, Lcom/media/common/ui/widget/zoomable/ZoomableController;->getScaleFactor()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 316
    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->getZoomableController()Lcom/media/common/ui/widget/zoomable/ZoomableController;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;

    .line 317
    new-instance v6, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v6, p0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 318
    invoke-virtual {v3, v6}, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->mapViewToImage(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v7, 0x7

    const-wide/16 v8, 0x12c

    const/4 v10, 0x0

    .line 319
    invoke-virtual/range {v3 .. v10}, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->zoomToPoint(FLandroid/graphics/PointF;Landroid/graphics/PointF;IJLjava/lang/Runnable;)V

    :cond_3
    return v2

    .line 324
    :cond_4
    invoke-super {p0, p1}, Lcom/facebook/drawee/view/DraweeView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 325
    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->getLogTag()Ljava/lang/Class;

    move-result-object p1

    const-string v1, "onTouchEvent: %d, view %x, handled by the super"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, v1, v0, p0}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v2

    .line 333
    :cond_5
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x3

    .line 334
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 335
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mTapGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 336
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mZoomableController:Lcom/media/common/ui/widget/zoomable/ZoomableController;

    invoke-interface {p0, p1}, Lcom/media/common/ui/widget/zoomable/ZoomableController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 337
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    const/4 p0, 0x0

    return p0
.end method

.method protected onTransformChanged(Landroid/graphics/Matrix;)V
    .locals 3

    .line 392
    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->getLogTag()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onTransformChanged: view %x, transform: %s"

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 393
    invoke-direct {p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->maybeSetHugeImageController()V

    .line 394
    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->invalidate()V

    return-void
.end method

.method public setAllowTouchInterceptionWhileZoomed(Z)V
    .locals 0

    .line 197
    iput-boolean p1, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mAllowTouchInterceptionWhileZoomed:Z

    return-void
.end method

.method public setController(Lcom/facebook/drawee/interfaces/DraweeController;)V
    .locals 1
    .param p1    # Lcom/facebook/drawee/interfaces/DraweeController;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 221
    invoke-virtual {p0, p1, v0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->setControllers(Lcom/facebook/drawee/interfaces/DraweeController;Lcom/facebook/drawee/interfaces/DraweeController;)V

    return-void
.end method

.method public setControllers(Lcom/facebook/drawee/interfaces/DraweeController;Lcom/facebook/drawee/interfaces/DraweeController;)V
    .locals 2
    .param p1    # Lcom/facebook/drawee/interfaces/DraweeController;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/drawee/interfaces/DraweeController;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 237
    invoke-direct {p0, v0, v0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->setControllersInternal(Lcom/facebook/drawee/interfaces/DraweeController;Lcom/facebook/drawee/interfaces/DraweeController;)V

    .line 238
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mZoomableController:Lcom/media/common/ui/widget/zoomable/ZoomableController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/media/common/ui/widget/zoomable/ZoomableController;->setEnabled(Z)V

    .line 239
    invoke-direct {p0, p1, p2}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->setControllersInternal(Lcom/facebook/drawee/interfaces/DraweeController;Lcom/facebook/drawee/interfaces/DraweeController;)V

    return-void
.end method

.method public setIsDialtoneEnabled(Z)V
    .locals 0

    .line 128
    iput-boolean p1, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mIsDialtoneEnabled:Z

    return-void
.end method

.method public setIsLongpressEnabled(Z)V
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mTapGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method

.method public setTapListener(Landroid/view/GestureDetector$SimpleOnGestureListener;)V
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mTapListenerWrapper:Lcom/media/common/ui/widget/zoomable/GestureListenerWrapper;

    invoke-virtual {p0, p1}, Lcom/media/common/ui/widget/zoomable/GestureListenerWrapper;->setListener(Landroid/view/GestureDetector$SimpleOnGestureListener;)V

    return-void
.end method

.method public setZoomableController(Lcom/media/common/ui/widget/zoomable/ZoomableController;)V
    .locals 2

    .line 164
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mZoomableController:Lcom/media/common/ui/widget/zoomable/ZoomableController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/media/common/ui/widget/zoomable/ZoomableController;->setListener(Lcom/media/common/ui/widget/zoomable/ZoomableController$Listener;)V

    .line 166
    iput-object p1, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mZoomableController:Lcom/media/common/ui/widget/zoomable/ZoomableController;

    .line 167
    iget-object p1, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mZoomableController:Lcom/media/common/ui/widget/zoomable/ZoomableController;

    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mZoomableListener:Lcom/media/common/ui/widget/zoomable/ZoomableController$Listener;

    invoke-interface {p1, p0}, Lcom/media/common/ui/widget/zoomable/ZoomableController;->setListener(Lcom/media/common/ui/widget/zoomable/ZoomableController$Listener;)V

    return-void
.end method

.method public setZoomingEnabled(Z)V
    .locals 0

    .line 214
    iput-boolean p1, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mZoomingEnabled:Z

    .line 215
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mZoomableController:Lcom/media/common/ui/widget/zoomable/ZoomableController;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/media/common/ui/widget/zoomable/ZoomableController;->setEnabled(Z)V

    return-void
.end method

.method protected updateZoomableControllerBounds()V
    .locals 4

    .line 398
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mImageBounds:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->getImageBounds(Landroid/graphics/RectF;)V

    .line 399
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mViewBounds:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->getLimitBounds(Landroid/graphics/RectF;)V

    .line 400
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mZoomableController:Lcom/media/common/ui/widget/zoomable/ZoomableController;

    iget-object v1, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mImageBounds:Landroid/graphics/RectF;

    invoke-interface {v0, v1}, Lcom/media/common/ui/widget/zoomable/ZoomableController;->setImageBounds(Landroid/graphics/RectF;)V

    .line 401
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mZoomableController:Lcom/media/common/ui/widget/zoomable/ZoomableController;

    iget-object v1, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mViewBounds:Landroid/graphics/RectF;

    invoke-interface {v0, v1}, Lcom/media/common/ui/widget/zoomable/ZoomableController;->setViewBounds(Landroid/graphics/RectF;)V

    .line 403
    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->getLogTag()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "updateZoomableControllerBounds: view %x, view bounds: %s, image bounds: %s"

    .line 405
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mViewBounds:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/ZoomableDraweeView;->mImageBounds:Landroid/graphics/RectF;

    .line 402
    invoke-static {v0, v1, v2, v3, p0}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
