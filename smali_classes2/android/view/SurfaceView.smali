.class public Landroid/view/SurfaceView;
.super Landroid/view/View;
.source "SurfaceView.java"

# interfaces
.implements Landroid/view/ViewRootImpl$WindowStoppedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceView$SurfaceControlWithBackground;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SurfaceView"


# instance fields
.field private mAttachedToWindow:Z

.field final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/SurfaceHolder$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final mConfiguration:Landroid/content/res/Configuration;

.field mDeferredDestroySurfaceControl:Landroid/view/SurfaceControl;

.field mDrawFinished:Z

.field private final mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field mDrawingStopped:Z

.field mFormat:I

.field private mGlobalListenersAdded:Z

.field mHaveFrame:Z

.field mIsCreating:Z

.field mLastLockTime:J

.field mLastSurfaceHeight:I

.field mLastSurfaceWidth:I

.field mLastWindowVisibility:Z

.field final mLocation:[I

.field private mPendingReportDraws:I

.field private mRTLastReportedPosition:Landroid/graphics/Rect;

.field mRequestedFormat:I

.field mRequestedHeight:I

.field mRequestedVisible:Z

.field mRequestedWidth:I

.field private volatile mRtHandlingPositionUpdates:Z

.field private mRtTransaction:Landroid/view/SurfaceControl$Transaction;

.field final mScreenRect:Landroid/graphics/Rect;

.field private final mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field mSubLayer:I

.field final mSurface:Landroid/view/Surface;

.field mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

.field mSurfaceCreated:Z

.field private mSurfaceFlags:I

.field final mSurfaceFrame:Landroid/graphics/Rect;

.field mSurfaceHeight:I

.field private final mSurfaceHolder:Landroid/view/SurfaceHolder;

.field final mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field mSurfaceSession:Landroid/view/SurfaceSession;

.field mSurfaceWidth:I

.field final mTmpRect:Landroid/graphics/Rect;

.field private mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field mViewVisibility:Z

.field mVisible:Z

.field mWindowSpaceLeft:I

.field mWindowSpaceTop:I

.field mWindowStopped:Z

.field mWindowVisibility:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 185
    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 189
    invoke-direct {p0, p1, p2, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 193
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 197
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 101
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    const/4 p1, 0x2

    .line 104
    new-array p1, p1, [I

    iput-object p1, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 106
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 107
    new-instance p1, Landroid/view/Surface;

    invoke-direct {p1}, Landroid/view/Surface;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    const/4 p1, 0x1

    .line 108
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    const/4 p2, 0x0

    .line 112
    iput-boolean p2, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    .line 114
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 121
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    .line 122
    new-instance p3, Landroid/content/res/Configuration;

    invoke-direct {p3}, Landroid/content/res/Configuration;-><init>()V

    iput-object p3, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    const/4 p3, -0x2

    .line 124
    iput p3, p0, Landroid/view/SurfaceView;->mSubLayer:I

    .line 126
    iput-boolean p2, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 127
    iput-boolean p2, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    .line 129
    new-instance p3, Landroid/view/SurfaceView$1;

    invoke-direct {p3, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object p3, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 137
    new-instance p3, Landroid/view/SurfaceView$2;

    invoke-direct {p3, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    iput-object p3, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 148
    iput-boolean p2, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 149
    iput-boolean p2, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 150
    iput-boolean p2, p0, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    .line 151
    iput-boolean p2, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 152
    iput-boolean p2, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    const/4 p3, -0x1

    .line 154
    iput p3, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 155
    iput p3, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    const/4 p4, 0x4

    .line 159
    iput p4, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 161
    iput-boolean p2, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 162
    iput-boolean p2, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    const-wide/16 v0, 0x0

    .line 163
    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 165
    iput-boolean p2, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 166
    iput p3, p0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .line 167
    iput p3, p0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 168
    iput p3, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    .line 169
    iput p3, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    .line 170
    iput p3, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 171
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 172
    iput p3, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput p3, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 178
    iput p4, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 182
    new-instance p2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object p2, p0, Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 811
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    .line 931
    new-instance p2, Landroid/view/SurfaceView$3;

    invoke-direct {p2, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    iput-object p2, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 198
    iget-object p2, p0, Landroid/view/SurfaceView;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {p2, p0}, Landroid/view/RenderNode;->requestPositionUpdates(Landroid/view/SurfaceView;)V

    .line 200
    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$100(Landroid/view/SurfaceView;Ljava/lang/Runnable;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private applySurfaceTransforms(Landroid/view/SurfaceControl;Landroid/graphics/Rect;J)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    .line 786
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 788
    iget-object v1, p0, Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, p1, v0, p3, p4}, Landroid/view/SurfaceControl$Transaction;->deferTransactionUntilSurface(Landroid/view/SurfaceControl;Landroid/view/Surface;J)Landroid/view/SurfaceControl$Transaction;

    .line 792
    :cond_0
    iget-object p3, p0, Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;

    iget p4, p2, Landroid/graphics/Rect;->left:I

    int-to-float p4, p4

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p3, p1, p4, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 793
    iget-object v1, p0, Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 794
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    iget p4, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float p4, p4

    div-float v3, p3, p4

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 796
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    iget p0, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float p0, p0

    div-float v6, p2, p0

    move-object v2, p1

    .line 793
    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method private getParentSurfaceInsets()Landroid/graphics/Rect;
    .locals 0

    .line 466
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 470
    :cond_0
    iget-object p0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object p0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method private getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;
    .locals 2

    .line 889
    iget-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 890
    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/SurfaceHolder$Callback;

    .line 891
    iget-object p0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 892
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private isAboveParent()Z
    .locals 0

    .line 917
    iget p0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$SyyzxOgxKwZMRgiiTGcRYbOU5JY(Landroid/view/SurfaceView;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/SurfaceView;->onDrawFinished()V

    return-void
.end method

.method public static synthetic lambda$onDrawFinished$0(Landroid/view/SurfaceView;)V
    .locals 0

    .line 769
    invoke-direct {p0}, Landroid/view/SurfaceView;->performDrawFinished()V

    return-void
.end method

.method private onDrawFinished()V
    .locals 1

    .line 763
    iget-object v0, p0, Landroid/view/SurfaceView;->mDeferredDestroySurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Landroid/view/SurfaceView;->mDeferredDestroySurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    const/4 v0, 0x0

    .line 765
    iput-object v0, p0, Landroid/view/SurfaceView;->mDeferredDestroySurfaceControl:Landroid/view/SurfaceControl;

    .line 768
    :cond_0
    new-instance v0, Landroid/view/-$$Lambda$SurfaceView$Cs7TGTdA1lXf9qW8VOJAfEsMjdk;

    invoke-direct {v0, p0}, Landroid/view/-$$Lambda$SurfaceView$Cs7TGTdA1lXf9qW8VOJAfEsMjdk;-><init>(Landroid/view/SurfaceView;)V

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private performDrawFinished()V
    .locals 2

    .line 272
    iget v0, p0, Landroid/view/SurfaceView;->mPendingReportDraws:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 273
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    .line 274
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    if-eqz v0, :cond_1

    .line 275
    invoke-virtual {p0}, Landroid/view/SurfaceView;->notifyDrawFinished()V

    .line 276
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    goto :goto_0

    :cond_0
    const-string v0, "SurfaceView"

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "finished drawing but no pending report draw (extra call to draw completion runnable?)"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 897
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 898
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 899
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 901
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private setParentSpaceRectangle(Landroid/graphics/Rect;J)V
    .locals 2

    .line 800
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 802
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    invoke-direct {p0, v1, p1, p2, p3}, Landroid/view/SurfaceView;->applySurfaceTransforms(Landroid/view/SurfaceControl;Landroid/graphics/Rect;J)V

    .line 803
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    iget-object v1, v1, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-direct {p0, v1, p1, p2, p3}, Landroid/view/SurfaceView;->applySurfaceTransforms(Landroid/view/SurfaceControl;Landroid/graphics/Rect;J)V

    .line 805
    iget-object p1, p0, Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/view/SurfaceView;->applyChildSurfaceTransaction_renderWorker(Landroid/view/SurfaceControl$Transaction;Landroid/view/Surface;J)V

    .line 808
    iget-object p0, p0, Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private updateOpaqueFlag()V
    .locals 1

    .line 458
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    goto :goto_0

    .line 461
    :cond_0
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    :goto_0
    return-void
.end method

.method private updateRequestedVisibility()V
    .locals 1

    .line 214
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    return-void
.end method


# virtual methods
.method protected applyChildSurfaceTransaction_renderWorker(Landroid/view/SurfaceControl$Transaction;Landroid/view/Surface;J)V
    .locals 0

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 390
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 394
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 397
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 378
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 382
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 385
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 11

    .line 351
    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 356
    :cond_0
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 358
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result p1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 360
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    .line 361
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v3

    if-lez v0, :cond_2

    if-lez v3, :cond_2

    .line 363
    iget-object v4, p0, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {p0, v4}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 365
    iget-object v4, p0, Landroid/view/SurfaceView;->mLocation:[I

    aget v6, v4, v1

    .line 366
    iget-object v4, p0, Landroid/view/SurfaceView;->mLocation:[I

    aget v7, v4, v2

    add-int v8, v6, v0

    add-int v9, v7, v3

    .line 367
    sget-object v10, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    :cond_2
    move p1, v2

    .line 370
    :goto_0
    iget p0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {p0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result p0

    if-eqz p0, :cond_3

    move p1, v1

    :cond_3
    return p1

    .line 352
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result p0

    return p0
.end method

.method public getHolder()Landroid/view/SurfaceHolder;
    .locals 0

    .line 210
    iget-object p0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p0
.end method

.method public isFixedSize()Z
    .locals 2

    .line 913
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget p0, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method notifyDrawFinished()V
    .locals 1

    .line 286
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->pendingDrawFinished()V

    .line 290
    :cond_0
    iget v0, p0, Landroid/view/SurfaceView;->mPendingReportDraws:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/view/SurfaceView;->mPendingReportDraws:I

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 227
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 229
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->addWindowStoppedCallback(Landroid/view/ViewRootImpl$WindowStoppedCallback;)V

    const/4 v0, 0x0

    .line 230
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    .line 232
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v0, v2

    :cond_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 233
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    .line 235
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    .line 236
    iget-object v0, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 237
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-nez v0, :cond_1

    .line 238
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 239
    iget-object v1, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 240
    iget-object v1, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 241
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 295
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->removeWindowStoppedCallback(Landroid/view/ViewRootImpl$WindowStoppedCallback;)V

    :cond_0
    const/4 v0, 0x0

    .line 305
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    .line 306
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-eqz v1, :cond_1

    .line 307
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 308
    iget-object v2, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 309
    iget-object v2, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 310
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    .line 313
    :cond_1
    :goto_0
    iget v1, p0, Landroid/view/SurfaceView;->mPendingReportDraws:I

    if-lez v1, :cond_2

    .line 314
    invoke-virtual {p0}, Landroid/view/SurfaceView;->notifyDrawFinished()V

    goto :goto_0

    .line 317
    :cond_2
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 319
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 320
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    if-eqz v1, :cond_3

    .line 321
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    invoke-virtual {v1}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->destroy()V

    :cond_3
    const/4 v1, 0x0

    .line 323
    iput-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    .line 325
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 327
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 332
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 333
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    invoke-static {v0, p1, v1}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result p1

    goto :goto_0

    .line 334
    :cond_0
    invoke-static {v1, p1}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result p1

    .line 335
    :goto_0
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-ltz v0, :cond_1

    .line 336
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    invoke-static {v0, p2, v1}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result p2

    goto :goto_1

    .line 337
    :cond_1
    invoke-static {v1, p2}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result p2

    .line 338
    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .line 247
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 248
    :goto_0
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 249
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    .line 250
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 0

    .line 344
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result p1

    .line 345
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    return p1
.end method

.method public setResizeBackgroundColor(I)V
    .locals 0

    .line 928
    iget-object p0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    invoke-static {p0, p1}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->access$000(Landroid/view/SurfaceView$SurfaceControlWithBackground;I)V

    return-void
.end method

.method public setSecure(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 451
    iget p1, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    goto :goto_0

    .line 453
    :cond_0
    iget p1, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 p1, p1, -0x81

    iput p1, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    :goto_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 255
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 256
    :goto_0
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 257
    iget-boolean p1, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    if-nez p1, :cond_1

    move v0, v1

    .line 258
    :cond_1
    iget-boolean p1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v0, p1, :cond_2

    .line 265
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 267
    :cond_2
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 268
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    return-void
.end method

.method public setZOrderMediaOverlay(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    .line 413
    :goto_0
    iput p1, p0, Landroid/view/SurfaceView;->mSubLayer:I

    return-void
.end method

.method public setZOrderOnTop(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 431
    iput p1, p0, Landroid/view/SurfaceView;->mSubLayer:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    .line 433
    iput p1, p0, Landroid/view/SurfaceView;->mSubLayer:I

    :goto_0
    return-void
.end method

.method public final surfacePositionLost_uiRtSync(J)V
    .locals 2

    .line 862
    iget-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 864
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    if-nez v0, :cond_0

    return-void

    .line 867
    :cond_0
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 868
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    .line 873
    iget-object v0, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 879
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1, p2}, Landroid/view/SurfaceView;->setParentSpaceRectangle(Landroid/graphics/Rect;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SurfaceView"

    const-string p2, "Exception configuring surface"

    .line 881
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method protected updateSurface()V
    .locals 16

    move-object/from16 v1, p0

    .line 476
    iget-boolean v0, v1, Landroid/view/SurfaceView;->mHaveFrame:Z

    if-nez v0, :cond_0

    return-void

    .line 479
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 480
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_34

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1b

    .line 484
    :cond_1
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iput-object v2, v1, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 485
    iget-object v2, v1, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_2

    .line 486
    iget-object v2, v1, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    iget-object v3, v1, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v2, v3}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 489
    :cond_2
    iget v2, v1, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-gtz v2, :cond_3

    .line 490
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v2

    .line 491
    :cond_3
    iget v3, v1, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-gtz v3, :cond_4

    .line 492
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v3

    .line 494
    :cond_4
    iget v4, v1, Landroid/view/SurfaceView;->mFormat:I

    iget v5, v1, Landroid/view/SurfaceView;->mRequestedFormat:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v4, v5, :cond_5

    move v4, v6

    goto :goto_0

    :cond_5
    move v4, v7

    .line 495
    :goto_0
    iget-boolean v5, v1, Landroid/view/SurfaceView;->mVisible:Z

    iget-boolean v8, v1, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v5, v8, :cond_6

    move v5, v6

    goto :goto_1

    :cond_6
    move v5, v7

    .line 496
    :goto_1
    iget-object v8, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    if-eqz v8, :cond_7

    if-nez v4, :cond_7

    if-eqz v5, :cond_8

    :cond_7
    iget-boolean v8, v1, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eqz v8, :cond_8

    move v8, v6

    goto :goto_2

    :cond_8
    move v8, v7

    .line 498
    :goto_2
    iget v9, v1, Landroid/view/SurfaceView;->mSurfaceWidth:I

    if-ne v9, v2, :cond_a

    iget v9, v1, Landroid/view/SurfaceView;->mSurfaceHeight:I

    if-eq v9, v3, :cond_9

    goto :goto_3

    :cond_9
    move v9, v7

    goto :goto_4

    :cond_a
    :goto_3
    move v9, v6

    .line 499
    :goto_4
    iget-boolean v10, v1, Landroid/view/SurfaceView;->mWindowVisibility:Z

    iget-boolean v11, v1, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    if-eq v10, v11, :cond_b

    move v10, v6

    goto :goto_5

    :cond_b
    move v10, v7

    :goto_5
    if-nez v8, :cond_15

    if-nez v4, :cond_15

    if-nez v9, :cond_15

    if-nez v5, :cond_15

    if-eqz v10, :cond_c

    goto/16 :goto_a

    .line 718
    :cond_c
    iget-object v0, v1, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->getLocationInSurface([I)V

    .line 719
    iget v0, v1, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iget-object v2, v1, Landroid/view/SurfaceView;->mLocation:[I

    aget v2, v2, v7

    if-ne v0, v2, :cond_e

    iget v0, v1, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    iget-object v2, v1, Landroid/view/SurfaceView;->mLocation:[I

    aget v2, v2, v6

    if-eq v0, v2, :cond_d

    goto :goto_6

    :cond_d
    move v0, v7

    goto :goto_7

    :cond_e
    :goto_6
    move v0, v6

    .line 721
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v2

    iget-object v3, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v2, v3, :cond_10

    .line 722
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    iget-object v3, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v2, v3, :cond_f

    goto :goto_8

    :cond_f
    move v2, v7

    goto :goto_9

    :cond_10
    :goto_8
    move v2, v6

    :goto_9
    if-nez v0, :cond_11

    if-eqz v2, :cond_33

    .line 724
    :cond_11
    iget-object v0, v1, Landroid/view/SurfaceView;->mLocation:[I

    aget v0, v0, v7

    iput v0, v1, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .line 725
    iget-object v0, v1, Landroid/view/SurfaceView;->mLocation:[I

    aget v0, v0, v6

    iput v0, v1, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 728
    iget-object v0, v1, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v2

    aput v2, v0, v7

    .line 729
    iget-object v0, v1, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    aput v2, v0, v6

    .line 731
    iget-object v0, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iget v3, v1, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    iget v4, v1, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iget-object v5, v1, Landroid/view/SurfaceView;->mLocation:[I

    aget v5, v5, v7

    add-int/2addr v4, v5

    iget v5, v1, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    iget-object v7, v1, Landroid/view/SurfaceView;->mLocation:[I

    aget v6, v7, v6

    add-int/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 734
    iget-object v0, v1, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_12

    .line 735
    iget-object v0, v1, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v2, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 738
    :cond_12
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    if-nez v0, :cond_13

    return-void

    .line 742
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, v1, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    if-nez v0, :cond_33

    .line 748
    :cond_14
    :try_start_0
    iget-object v0, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    const-wide/16 v2, -0x1

    invoke-direct {v1, v0, v2, v3}, Landroid/view/SurfaceView;->setParentSpaceRectangle(Landroid/graphics/Rect;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1a

    :catch_0
    move-exception v0

    const-string v1, "SurfaceView"

    const-string v2, "Exception configuring surface"

    .line 750
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1a

    .line 503
    :cond_15
    :goto_a
    iget-object v10, v1, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {v1, v10}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 513
    :try_start_1
    iget-boolean v10, v1, Landroid/view/SurfaceView;->mRequestedVisible:Z

    iput-boolean v10, v1, Landroid/view/SurfaceView;->mVisible:Z

    .line 514
    iget-object v11, v1, Landroid/view/SurfaceView;->mLocation:[I

    aget v11, v11, v7

    iput v11, v1, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .line 515
    iget-object v11, v1, Landroid/view/SurfaceView;->mLocation:[I

    aget v11, v11, v6

    iput v11, v1, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 516
    iput v2, v1, Landroid/view/SurfaceView;->mSurfaceWidth:I

    .line 517
    iput v3, v1, Landroid/view/SurfaceView;->mSurfaceHeight:I

    .line 518
    iget v11, v1, Landroid/view/SurfaceView;->mRequestedFormat:I

    iput v11, v1, Landroid/view/SurfaceView;->mFormat:I

    .line 519
    iget-boolean v11, v1, Landroid/view/SurfaceView;->mWindowVisibility:Z

    iput-boolean v11, v1, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    .line 521
    iget-object v11, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v12, v1, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iput v12, v11, Landroid/graphics/Rect;->left:I

    .line 522
    iget-object v11, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v12, v1, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    iput v12, v11, Landroid/graphics/Rect;->top:I

    .line 523
    iget-object v11, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v12, v1, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v13

    add-int/2addr v12, v13

    iput v12, v11, Landroid/graphics/Rect;->right:I

    .line 524
    iget-object v11, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v12, v1, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    iput v12, v11, Landroid/graphics/Rect;->bottom:I

    .line 525
    iget-object v11, v1, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v11, :cond_16

    .line 526
    iget-object v11, v1, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v12, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 529
    :cond_16
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getParentSurfaceInsets()Landroid/graphics/Rect;

    move-result-object v11

    .line 530
    iget-object v12, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v13, v11, Landroid/graphics/Rect;->left:I

    iget v11, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v12, v13, v11}, Landroid/graphics/Rect;->offset(II)V

    if-eqz v8, :cond_18

    .line 533
    new-instance v11, Landroid/view/SurfaceSession;

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-direct {v11, v12}, Landroid/view/SurfaceSession;-><init>(Landroid/view/Surface;)V

    iput-object v11, v1, Landroid/view/SurfaceView;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 534
    iget-object v11, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    iput-object v11, v1, Landroid/view/SurfaceView;->mDeferredDestroySurfaceControl:Landroid/view/SurfaceControl;

    .line 536
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->updateOpaqueFlag()V

    .line 537
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SurfaceView - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 539
    new-instance v12, Landroid/view/SurfaceView$SurfaceControlWithBackground;

    iget v13, v1, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v13, v13, 0x400

    if-eqz v13, :cond_17

    move v13, v6

    goto :goto_b

    :cond_17
    move v13, v7

    :goto_b
    new-instance v14, Landroid/view/SurfaceControl$Builder;

    iget-object v15, v1, Landroid/view/SurfaceView;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v14, v15}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    iget v15, v1, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v6, v1, Landroid/view/SurfaceView;->mSurfaceHeight:I

    .line 543
    invoke-virtual {v14, v15, v6}, Landroid/view/SurfaceControl$Builder;->setSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    iget v14, v1, Landroid/view/SurfaceView;->mFormat:I

    .line 544
    invoke-virtual {v6, v14}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    iget v14, v1, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 545
    invoke-virtual {v6, v14}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    invoke-direct {v12, v1, v11, v13, v6}, Landroid/view/SurfaceView$SurfaceControlWithBackground;-><init>(Landroid/view/SurfaceView;Ljava/lang/String;ZLandroid/view/SurfaceControl$Builder;)V

    iput-object v12, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    goto :goto_c

    .line 546
    :cond_18
    iget-object v6, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    if-nez v6, :cond_19

    return-void

    .line 552
    :cond_19
    :goto_c
    iget-object v6, v1, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    xor-int/lit8 v6, v10, 0x1

    .line 554
    :try_start_2
    iput-boolean v6, v1, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 559
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 561
    :try_start_3
    iget-object v6, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    iget v11, v1, Landroid/view/SurfaceView;->mSubLayer:I

    invoke-virtual {v6, v11}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->setLayer(I)V

    .line 562
    iget-boolean v6, v1, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v6, :cond_1a

    .line 563
    iget-object v6, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    invoke-virtual {v6}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->show()V

    goto :goto_d

    .line 565
    :cond_1a
    iget-object v6, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    invoke-virtual {v6}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->hide()V

    :goto_d
    if-nez v9, :cond_1b

    if-nez v8, :cond_1b

    .line 576
    iget-boolean v6, v1, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    if-nez v6, :cond_1c

    .line 577
    :cond_1b
    iget-object v6, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    iget-object v11, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    iget-object v12, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    invoke-virtual {v6, v11, v12}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->setPosition(FF)V

    .line 578
    iget-object v6, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    iget-object v11, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    iget v12, v1, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    iget-object v12, v1, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 580
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    iget v13, v1, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v13, v13

    div-float/2addr v12, v13

    const/4 v13, 0x0

    .line 578
    invoke-virtual {v6, v11, v13, v13, v12}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->setMatrix(FFFF)V

    :cond_1c
    if-eqz v9, :cond_1d

    .line 583
    iget-object v6, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    iget v11, v1, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v12, v1, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-virtual {v6, v11, v12}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->setSize(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 586
    :cond_1d
    :try_start_4
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    if-nez v9, :cond_1f

    if-eqz v8, :cond_1e

    goto :goto_e

    :cond_1e
    move v6, v7

    goto :goto_f

    :cond_1f
    :goto_e
    const/4 v6, 0x1

    .line 593
    :goto_f
    iget-object v11, v1, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iput v7, v11, Landroid/graphics/Rect;->left:I

    .line 594
    iget-object v11, v1, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iput v7, v11, Landroid/graphics/Rect;->top:I

    .line 595
    iget-object v11, v1, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-nez v11, :cond_20

    .line 596
    iget-object v11, v1, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v12, v1, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iput v12, v11, Landroid/graphics/Rect;->right:I

    .line 597
    iget-object v11, v1, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v12, v1, Landroid/view/SurfaceView;->mSurfaceHeight:I

    iput v12, v11, Landroid/graphics/Rect;->bottom:I

    goto :goto_10

    .line 599
    :cond_20
    iget-object v11, v1, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v11, v11, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    .line 600
    iget-object v12, v1, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v13, v1, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v13, v13

    mul-float/2addr v13, v11

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v13, v13

    iput v13, v12, Landroid/graphics/Rect;->right:I

    .line 601
    iget-object v12, v1, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v13, v1, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v13, v13

    mul-float/2addr v13, v11

    add-float/2addr v13, v14

    float-to-int v11, v13

    iput v11, v12, Landroid/graphics/Rect;->bottom:I

    .line 604
    :goto_10
    iget-object v11, v1, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    .line 605
    iget-object v12, v1, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    .line 606
    iget v13, v1, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    if-ne v13, v11, :cond_22

    iget v13, v1, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    if-eq v13, v12, :cond_21

    goto :goto_11

    :cond_21
    move v13, v7

    goto :goto_12

    :cond_22
    :goto_11
    const/4 v13, 0x1

    .line 608
    :goto_12
    iput v11, v1, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    .line 609
    iput v12, v1, Landroid/view/SurfaceView;->mLastSurfaceHeight:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 611
    :try_start_5
    iget-object v11, v1, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    if-eqz v10, :cond_23

    .line 615
    :try_start_6
    iget-boolean v12, v1, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-nez v12, :cond_23

    const/4 v12, 0x1

    goto :goto_13

    :catchall_0
    move-exception v0

    move v2, v7

    goto/16 :goto_19

    :cond_23
    move v12, v7

    :goto_13
    or-int/2addr v6, v12

    .line 620
    iget-boolean v12, v1, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-eqz v12, :cond_26

    if-nez v8, :cond_24

    if-nez v10, :cond_26

    if-eqz v5, :cond_26

    .line 621
    :cond_24
    iput-boolean v7, v1, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 622
    iget-object v12, v1, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v12}, Landroid/view/Surface;->isValid()Z

    move-result v12

    if-eqz v12, :cond_26

    .line 625
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v12

    .line 626
    array-length v14, v12

    move v15, v7

    :goto_14
    if-ge v15, v14, :cond_25

    aget-object v11, v12, v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 627
    :try_start_7
    iget-object v7, v1, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v11, v7}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    add-int/lit8 v15, v15, 0x1

    const/4 v7, 0x0

    goto :goto_14

    .line 640
    :cond_25
    iget-object v7, v1, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v7}, Landroid/view/Surface;->isValid()Z

    move-result v7

    if-eqz v7, :cond_27

    .line 641
    iget-object v7, v1, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v7}, Landroid/view/Surface;->forceScopedDisconnect()V

    goto :goto_15

    :cond_26
    const/4 v12, 0x0

    :cond_27
    :goto_15
    if-eqz v8, :cond_28

    .line 647
    iget-object v7, v1, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    iget-object v11, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    invoke-virtual {v7, v11}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    goto :goto_16

    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    goto/16 :goto_19

    :cond_28
    :goto_16
    if-eqz v9, :cond_29

    .line 650
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v11, 0x1a

    if-ge v7, v11, :cond_29

    .line 657
    iget-object v7, v1, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    iget-object v11, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    invoke-virtual {v7, v11}, Landroid/view/Surface;->createFrom(Landroid/view/SurfaceControl;)V

    :cond_29
    if-eqz v10, :cond_31

    .line 660
    iget-object v7, v1, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v7}, Landroid/view/Surface;->isValid()Z

    move-result v7

    if-eqz v7, :cond_31

    .line 661
    iget-boolean v7, v1, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-nez v7, :cond_2c

    if-nez v8, :cond_2a

    if-eqz v5, :cond_2c

    :cond_2a
    const/4 v7, 0x1

    .line 662
    iput-boolean v7, v1, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 663
    iput-boolean v7, v1, Landroid/view/SurfaceView;->mIsCreating:Z

    if-nez v12, :cond_2b

    .line 667
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v12

    .line 669
    :cond_2b
    array-length v7, v12

    const/4 v10, 0x0

    :goto_17
    if-ge v10, v7, :cond_2c

    aget-object v11, v12, v10

    .line 670
    iget-object v14, v1, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v11, v14}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_17

    :cond_2c
    if-nez v8, :cond_2d

    if-nez v4, :cond_2d

    if-nez v9, :cond_2d

    if-nez v5, :cond_2d

    if-eqz v13, :cond_2f

    :cond_2d
    if-nez v12, :cond_2e

    .line 679
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v12

    .line 681
    :cond_2e
    array-length v4, v12

    const/4 v5, 0x0

    :goto_18
    if-ge v5, v4, :cond_2f

    aget-object v7, v12, v5

    .line 682
    iget-object v8, v1, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget v9, v1, Landroid/view/SurfaceView;->mFormat:I

    invoke-interface {v7, v8, v9, v2, v3}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_2f
    if-eqz v6, :cond_31

    if-nez v12, :cond_30

    .line 689
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v12

    .line 692
    :cond_30
    iget v2, v1, Landroid/view/SurfaceView;->mPendingReportDraws:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/SurfaceView;->mPendingReportDraws:I

    .line 693
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->drawPending()V

    .line 694
    new-instance v0, Lcom/android/internal/view/SurfaceCallbackHelper;

    new-instance v2, Landroid/view/-$$Lambda$SurfaceView$SyyzxOgxKwZMRgiiTGcRYbOU5JY;

    invoke-direct {v2, v1}, Landroid/view/-$$Lambda$SurfaceView$SyyzxOgxKwZMRgiiTGcRYbOU5JY;-><init>(Landroid/view/SurfaceView;)V

    invoke-direct {v0, v2}, Lcom/android/internal/view/SurfaceCallbackHelper;-><init>(Ljava/lang/Runnable;)V

    .line 696
    iget-object v2, v1, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v2, v12}, Lcom/android/internal/view/SurfaceCallbackHelper;->dispatchSurfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;[Landroid/view/SurfaceHolder$Callback;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_31
    const/4 v2, 0x0

    .line 700
    :try_start_8
    iput-boolean v2, v1, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 701
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    if-eqz v0, :cond_33

    iget-boolean v0, v1, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-nez v0, :cond_33

    .line 702
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 704
    iget-object v0, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    invoke-virtual {v0}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->destroy()V

    const/4 v2, 0x0

    .line 705
    iput-object v2, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    goto :goto_1a

    .line 700
    :goto_19
    iput-boolean v2, v1, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 701
    iget-object v2, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    if-eqz v2, :cond_32

    iget-boolean v2, v1, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-nez v2, :cond_32

    .line 702
    iget-object v2, v1, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 704
    iget-object v2, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    invoke-virtual {v2}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->destroy()V

    const/4 v2, 0x0

    .line 705
    iput-object v2, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    :cond_32
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :catchall_2
    move-exception v0

    .line 586
    :try_start_9
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception v0

    .line 611
    :try_start_a
    iget-object v1, v1, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    :catch_1
    move-exception v0

    const-string v1, "SurfaceView"

    const-string v2, "Exception configuring surface"

    .line 709
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_33
    :goto_1a
    return-void

    :cond_34
    :goto_1b
    return-void
.end method

.method public final updateSurfacePosition_renderWorker(JIIII)V
    .locals 1

    .line 819
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 831
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    .line 832
    iget-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-ne v0, p3, :cond_1

    iget-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ne v0, p4, :cond_1

    iget-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-ne v0, p5, :cond_1

    iget-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v0, p6, :cond_1

    return-void

    .line 844
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    invoke-virtual {v0, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 845
    iget-object p3, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    invoke-direct {p0, p3, p1, p2}, Landroid/view/SurfaceView;->setParentSpaceRectangle(Landroid/graphics/Rect;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SurfaceView"

    const-string p2, "Exception from repositionChild"

    .line 848
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public windowStopped(Z)V
    .locals 0

    .line 220
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    .line 221
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    .line 222
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    return-void
.end method
