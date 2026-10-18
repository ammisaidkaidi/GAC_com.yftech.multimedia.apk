.class Lcom/yftech/car/widget/media/view/MediaImageLoading$1;
.super Ljava/lang/Object;
.source "MediaImageLoading.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/view/MediaImageLoading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/view/MediaImageLoading;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/view/MediaImageLoading;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading$1;->this$0:Lcom/yftech/car/widget/media/view/MediaImageLoading;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading$1;->this$0:Lcom/yftech/car/widget/media/view/MediaImageLoading;

    invoke-static {v0}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->access$000(Lcom/yftech/car/widget/media/view/MediaImageLoading;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading$1;->this$0:Lcom/yftech/car/widget/media/view/MediaImageLoading;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading$1;->this$0:Lcom/yftech/car/widget/media/view/MediaImageLoading;

    iget-object v1, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading$1;->this$0:Lcom/yftech/car/widget/media/view/MediaImageLoading;

    invoke-static {v1}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->access$100(Lcom/yftech/car/widget/media/view/MediaImageLoading;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading$1;->this$0:Lcom/yftech/car/widget/media/view/MediaImageLoading;

    invoke-static {v2}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->access$000(Lcom/yftech/car/widget/media/view/MediaImageLoading;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v2

    iget-object v3, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading$1;->this$0:Lcom/yftech/car/widget/media/view/MediaImageLoading;

    invoke-static {v3}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->access$200(Lcom/yftech/car/widget/media/view/MediaImageLoading;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 123
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading$1;->this$0:Lcom/yftech/car/widget/media/view/MediaImageLoading;

    iget-object v1, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading$1;->this$0:Lcom/yftech/car/widget/media/view/MediaImageLoading;

    invoke-static {v1}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->access$000(Lcom/yftech/car/widget/media/view/MediaImageLoading;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading$1;->this$0:Lcom/yftech/car/widget/media/view/MediaImageLoading;

    invoke-static {v2}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->access$200(Lcom/yftech/car/widget/media/view/MediaImageLoading;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading$1;->this$0:Lcom/yftech/car/widget/media/view/MediaImageLoading;

    invoke-static {v0}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->access$000(Lcom/yftech/car/widget/media/view/MediaImageLoading;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    .line 129
    iget-object v1, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading$1;->this$0:Lcom/yftech/car/widget/media/view/MediaImageLoading;

    invoke-static {v1}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->access$200(Lcom/yftech/car/widget/media/view/MediaImageLoading;)I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_0

    .line 130
    iget-object p0, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading$1;->this$0:Lcom/yftech/car/widget/media/view/MediaImageLoading;

    invoke-static {p0}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->access$208(Lcom/yftech/car/widget/media/view/MediaImageLoading;)I

    goto :goto_0

    .line 132
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/view/MediaImageLoading$1;->this$0:Lcom/yftech/car/widget/media/view/MediaImageLoading;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->access$202(Lcom/yftech/car/widget/media/view/MediaImageLoading;I)I

    :cond_1
    :goto_0
    return-void
.end method
