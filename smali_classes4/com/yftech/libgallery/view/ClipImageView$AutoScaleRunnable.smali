.class Lcom/yftech/libgallery/view/ClipImageView$AutoScaleRunnable;
.super Ljava/lang/Object;
.source "ClipImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libgallery/view/ClipImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoScaleRunnable"
.end annotation


# static fields
.field static final BIGGER:F = 1.07f

.field static final SMALLER:F = 0.93f


# instance fields
.field private mTargetScale:F

.field final synthetic this$0:Lcom/yftech/libgallery/view/ClipImageView;

.field private tmpScale:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Lcom/yftech/libgallery/view/ClipImageView;FFF)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/yftech/libgallery/view/ClipImageView$AutoScaleRunnable;->this$0:Lcom/yftech/libgallery/view/ClipImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput p2, p0, Lcom/yftech/libgallery/view/ClipImageView$AutoScaleRunnable;->mTargetScale:F

    .line 150
    iput p3, p0, Lcom/yftech/libgallery/view/ClipImageView$AutoScaleRunnable;->x:F

    .line 151
    iput p4, p0, Lcom/yftech/libgallery/view/ClipImageView$AutoScaleRunnable;->y:F

    .line 152
    invoke-virtual {p1}, Lcom/yftech/libgallery/view/ClipImageView;->getScale()F

    move-result p1

    iget p2, p0, Lcom/yftech/libgallery/view/ClipImageView$AutoScaleRunnable;->mTargetScale:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const p1, 0x3f88f5c3    # 1.07f

    .line 153
    iput p1, p0, Lcom/yftech/libgallery/view/ClipImageView$AutoScaleRunnable;->tmpScale:F

    goto :goto_0

    :cond_0
    const p1, 0x3f6e147b    # 0.93f

    .line 155
    iput p1, p0, Lcom/yftech/libgallery/view/ClipImageView$AutoScaleRunnable;->tmpScale:F

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 163
    iget-object v0, p0, Lcom/yftech/libgallery/view/ClipImageView$AutoScaleRunnable;->this$0:Lcom/yftech/libgallery/view/ClipImageView;

    invoke-static {v0}, Lcom/yftech/libgallery/view/ClipImageView;->access$000(Lcom/yftech/libgallery/view/ClipImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget v1, p0, Lcom/yftech/libgallery/view/ClipImageView$AutoScaleRunnable;->tmpScale:F

    iget v2, p0, Lcom/yftech/libgallery/view/ClipImageView$AutoScaleRunnable;->tmpScale:F

    iget v3, p0, Lcom/yftech/libgallery/view/ClipImageView$AutoScaleRunnable;->x:F

    iget v4, p0, Lcom/yftech/libgallery/view/ClipImageView$AutoScaleRunnable;->y:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 164
    iget-object v0, p0, Lcom/yftech/libgallery/view/ClipImageView$AutoScaleRunnable;->this$0:Lcom/yftech/libgallery/view/ClipImageView;

    invoke-static {v0}, Lcom/yftech/libgallery/view/ClipImageView;->access$100(Lcom/yftech/libgallery/view/ClipImageView;)V

    .line 165
    iget-object v0, p0, Lcom/yftech/libgallery/view/ClipImageView$AutoScaleRunnable;->this$0:Lcom/yftech/libgallery/view/ClipImageView;

    iget-object v1, p0, Lcom/yftech/libgallery/view/ClipImageView$AutoScaleRunnable;->this$0:Lcom/yftech/libgallery/view/ClipImageView;

    invoke-static {v1}, Lcom/yftech/libgallery/view/ClipImageView;->access$000(Lcom/yftech/libgallery/view/ClipImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/libgallery/view/ClipImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 167
    iget-object v0, p0, Lcom/yftech/libgallery/view/ClipImageView$AutoScaleRunnable;->this$0:Lcom/yftech/libgallery/view/ClipImageView;

    invoke-virtual {v0}, Lcom/yftech/libgallery/view/ClipImageView;->getScale()F

    move-result v0

    .line 169
    iget v1, p0, Lcom/yftech/libgallery/view/ClipImageView$AutoScaleRunnable;->tmpScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p0, Lcom/yftech/libgallery/view/ClipImageView$AutoScaleRunnable;->mTargetScale:F

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/yftech/libgallery/view/ClipImageView$AutoScaleRunnable;->tmpScale:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget v1, p0, Lcom/yftech/libgallery/view/ClipImageView$AutoScaleRunnable;->mTargetScale:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_2

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/yftech/libgallery/view/ClipImageView$AutoScaleRunnable;->this$0:Lcom/yftech/libgallery/view/ClipImageView;

    const-wide/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v2}, Lcom/yftech/libgallery/view/ClipImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 174
    :cond_2
    iget v1, p0, Lcom/yftech/libgallery/view/ClipImageView$AutoScaleRunnable;->mTargetScale:F

    div-float/2addr v1, v0

    .line 175
    iget-object v0, p0, Lcom/yftech/libgallery/view/ClipImageView$AutoScaleRunnable;->this$0:Lcom/yftech/libgallery/view/ClipImageView;

    invoke-static {v0}, Lcom/yftech/libgallery/view/ClipImageView;->access$000(Lcom/yftech/libgallery/view/ClipImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget v2, p0, Lcom/yftech/libgallery/view/ClipImageView$AutoScaleRunnable;->x:F

    iget v3, p0, Lcom/yftech/libgallery/view/ClipImageView$AutoScaleRunnable;->y:F

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 176
    iget-object v0, p0, Lcom/yftech/libgallery/view/ClipImageView$AutoScaleRunnable;->this$0:Lcom/yftech/libgallery/view/ClipImageView;

    invoke-static {v0}, Lcom/yftech/libgallery/view/ClipImageView;->access$100(Lcom/yftech/libgallery/view/ClipImageView;)V

    .line 177
    iget-object v0, p0, Lcom/yftech/libgallery/view/ClipImageView$AutoScaleRunnable;->this$0:Lcom/yftech/libgallery/view/ClipImageView;

    iget-object v1, p0, Lcom/yftech/libgallery/view/ClipImageView$AutoScaleRunnable;->this$0:Lcom/yftech/libgallery/view/ClipImageView;

    invoke-static {v1}, Lcom/yftech/libgallery/view/ClipImageView;->access$000(Lcom/yftech/libgallery/view/ClipImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/libgallery/view/ClipImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 178
    iget-object p0, p0, Lcom/yftech/libgallery/view/ClipImageView$AutoScaleRunnable;->this$0:Lcom/yftech/libgallery/view/ClipImageView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/yftech/libgallery/view/ClipImageView;->access$202(Lcom/yftech/libgallery/view/ClipImageView;Z)Z

    :goto_0
    return-void
.end method
