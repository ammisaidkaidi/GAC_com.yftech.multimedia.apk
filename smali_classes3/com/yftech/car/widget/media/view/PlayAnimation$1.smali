.class Lcom/yftech/car/widget/media/view/PlayAnimation$1;
.super Ljava/lang/Object;
.source "PlayAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/view/PlayAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/view/PlayAnimation;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/view/PlayAnimation;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/yftech/car/widget/media/view/PlayAnimation$1;->this$0:Lcom/yftech/car/widget/media/view/PlayAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 208
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/PlayAnimation$1;->this$0:Lcom/yftech/car/widget/media/view/PlayAnimation;

    invoke-static {v0}, Lcom/yftech/car/widget/media/view/PlayAnimation;->access$000(Lcom/yftech/car/widget/media/view/PlayAnimation;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/car/widget/media/view/PlayAnimation$1;->this$0:Lcom/yftech/car/widget/media/view/PlayAnimation;

    invoke-static {v0}, Lcom/yftech/car/widget/media/view/PlayAnimation;->access$100(Lcom/yftech/car/widget/media/view/PlayAnimation;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/car/widget/media/view/PlayAnimation$1;->this$0:Lcom/yftech/car/widget/media/view/PlayAnimation;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/view/PlayAnimation;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/PlayAnimation$1;->this$0:Lcom/yftech/car/widget/media/view/PlayAnimation;

    iget-object v1, p0, Lcom/yftech/car/widget/media/view/PlayAnimation$1;->this$0:Lcom/yftech/car/widget/media/view/PlayAnimation;

    invoke-static {v1}, Lcom/yftech/car/widget/media/view/PlayAnimation;->access$200(Lcom/yftech/car/widget/media/view/PlayAnimation;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/car/widget/media/view/PlayAnimation$1;->this$0:Lcom/yftech/car/widget/media/view/PlayAnimation;

    invoke-static {v2}, Lcom/yftech/car/widget/media/view/PlayAnimation;->access$100(Lcom/yftech/car/widget/media/view/PlayAnimation;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v2

    iget-object v3, p0, Lcom/yftech/car/widget/media/view/PlayAnimation$1;->this$0:Lcom/yftech/car/widget/media/view/PlayAnimation;

    invoke-static {v3}, Lcom/yftech/car/widget/media/view/PlayAnimation;->access$300(Lcom/yftech/car/widget/media/view/PlayAnimation;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/yftech/car/widget/media/view/PlayAnimation;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 214
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/PlayAnimation$1;->this$0:Lcom/yftech/car/widget/media/view/PlayAnimation;

    iget-object v1, p0, Lcom/yftech/car/widget/media/view/PlayAnimation$1;->this$0:Lcom/yftech/car/widget/media/view/PlayAnimation;

    invoke-static {v1}, Lcom/yftech/car/widget/media/view/PlayAnimation;->access$100(Lcom/yftech/car/widget/media/view/PlayAnimation;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/car/widget/media/view/PlayAnimation$1;->this$0:Lcom/yftech/car/widget/media/view/PlayAnimation;

    invoke-static {v2}, Lcom/yftech/car/widget/media/view/PlayAnimation;->access$300(Lcom/yftech/car/widget/media/view/PlayAnimation;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/yftech/car/widget/media/view/PlayAnimation;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 216
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/PlayAnimation$1;->this$0:Lcom/yftech/car/widget/media/view/PlayAnimation;

    invoke-static {v0}, Lcom/yftech/car/widget/media/view/PlayAnimation;->access$100(Lcom/yftech/car/widget/media/view/PlayAnimation;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    .line 218
    iget-object v1, p0, Lcom/yftech/car/widget/media/view/PlayAnimation$1;->this$0:Lcom/yftech/car/widget/media/view/PlayAnimation;

    invoke-static {v1}, Lcom/yftech/car/widget/media/view/PlayAnimation;->access$300(Lcom/yftech/car/widget/media/view/PlayAnimation;)I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_0

    .line 219
    iget-object p0, p0, Lcom/yftech/car/widget/media/view/PlayAnimation$1;->this$0:Lcom/yftech/car/widget/media/view/PlayAnimation;

    invoke-static {p0}, Lcom/yftech/car/widget/media/view/PlayAnimation;->access$308(Lcom/yftech/car/widget/media/view/PlayAnimation;)I

    goto :goto_0

    .line 221
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/view/PlayAnimation$1;->this$0:Lcom/yftech/car/widget/media/view/PlayAnimation;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/yftech/car/widget/media/view/PlayAnimation;->access$302(Lcom/yftech/car/widget/media/view/PlayAnimation;I)I

    :cond_1
    :goto_0
    return-void
.end method
