.class public Landroid/view/ThreadedRenderer$SimpleRenderer;
.super Ljava/lang/Object;
.source "ThreadedRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ThreadedRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleRenderer"
.end annotation


# instance fields
.field private final mFrameInfo:Landroid/view/FrameInfo;

.field private final mLightY:F

.field private final mLightZ:F

.field private mNativeProxy:J

.field private final mRootNode:Landroid/view/RenderNode;

.field private mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/Surface;)V
    .locals 8

    .line 987
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 985
    new-instance v0, Landroid/view/FrameInfo;

    invoke-direct {v0}, Landroid/view/FrameInfo;-><init>()V

    iput-object v0, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mFrameInfo:Landroid/view/FrameInfo;

    .line 988
    sget-object v0, Lcom/android/internal/R$styleable;->Lighting:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 989
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mLightY:F

    const/4 v3, 0x4

    .line 990
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mLightZ:F

    const/4 v3, 0x2

    .line 991
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 993
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v4, v6

    float-to-int v4, v4

    const/4 v7, 0x1

    .line 995
    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    mul-float/2addr v2, v5

    add-float/2addr v2, v6

    float-to-int v2, v2

    .line 996
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 998
    invoke-static {}, Landroid/view/ThreadedRenderer;->access$000()J

    move-result-wide v5

    .line 999
    invoke-static {v5, v6}, Landroid/view/RenderNode;->adopt(J)Landroid/view/RenderNode;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mRootNode:Landroid/view/RenderNode;

    .line 1000
    iget-object v0, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mRootNode:Landroid/view/RenderNode;

    invoke-virtual {v0, v1}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    .line 1001
    invoke-static {v7, v5, v6}, Landroid/view/ThreadedRenderer;->access$100(ZJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mNativeProxy:J

    .line 1002
    iget-wide v0, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p2}, Landroid/view/ThreadedRenderer;->access$200(JLjava/lang/String;)V

    .line 1004
    sget-object p2, Landroid/view/ThreadedRenderer$ProcessInitializer;->sInstance:Landroid/view/ThreadedRenderer$ProcessInitializer;

    iget-wide v0, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mNativeProxy:J

    invoke-virtual {p2, p1, v0, v1}, Landroid/view/ThreadedRenderer$ProcessInitializer;->init(Landroid/content/Context;J)V

    .line 1005
    iget-wide p1, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mNativeProxy:J

    invoke-static {p1, p2}, Landroid/view/ThreadedRenderer;->access$300(J)Z

    .line 1007
    iget-wide p1, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mNativeProxy:J

    invoke-static {p1, p2, v3, v4, v2}, Landroid/view/ThreadedRenderer;->access$400(JFII)V

    .line 1009
    iput-object p3, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mSurface:Landroid/view/Surface;

    .line 1010
    iget-wide p0, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mNativeProxy:J

    invoke-static {p0, p1, p3}, Landroid/view/ThreadedRenderer;->access$500(JLandroid/view/Surface;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 4

    const/4 v0, 0x0

    .line 1048
    iput-object v0, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mSurface:Landroid/view/Surface;

    .line 1049
    iget-wide v0, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mNativeProxy:J

    iget-object p0, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mRootNode:Landroid/view/RenderNode;

    iget-wide v2, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->access$900(JJ)V

    return-void
.end method

.method public draw(Landroid/view/ThreadedRenderer$FrameDrawingCallback;)V
    .locals 4

    .line 1035
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    .line 1036
    iget-object v2, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mFrameInfo:Landroid/view/FrameInfo;

    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/view/FrameInfo;->setVsync(JJ)V

    .line 1037
    iget-object v0, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mFrameInfo:Landroid/view/FrameInfo;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/view/FrameInfo;->addFlags(J)V

    if-eqz p1, :cond_0

    .line 1039
    iget-wide v0, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/view/ThreadedRenderer;->access$700(JLandroid/view/ThreadedRenderer$FrameDrawingCallback;)V

    .line 1041
    :cond_0
    iget-wide v0, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mNativeProxy:J

    iget-object p1, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mFrameInfo:Landroid/view/FrameInfo;

    iget-object p1, p1, Landroid/view/FrameInfo;->mFrameInfo:[J

    iget-object p0, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mFrameInfo:Landroid/view/FrameInfo;

    iget-object p0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    array-length p0, p0

    invoke-static {v0, v1, p1, p0}, Landroid/view/ThreadedRenderer;->access$800(J[JI)I

    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1055
    :try_start_0
    iget-wide v0, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->access$1000(J)V

    const-wide/16 v0, 0x0

    .line 1056
    iput-wide v0, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mNativeProxy:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1058
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getRootNode()Landroid/view/RenderNode;
    .locals 0

    .line 1028
    iget-object p0, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mRootNode:Landroid/view/RenderNode;

    return-object p0
.end method

.method public setLightCenter(Landroid/view/Display;II)V
    .locals 2

    .line 1019
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1020
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1021
    iget p1, v0, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    int-to-float p2, p2

    sub-float/2addr p1, p2

    .line 1022
    iget p2, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mLightY:F

    int-to-float p3, p3

    sub-float/2addr p2, p3

    .line 1024
    iget-wide v0, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mNativeProxy:J

    iget p0, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mLightZ:F

    invoke-static {v0, v1, p1, p2, p0}, Landroid/view/ThreadedRenderer;->access$600(JFFF)V

    return-void
.end method
