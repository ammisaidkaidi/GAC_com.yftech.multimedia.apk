.class Lcom/media/common/util/FrameAnimation$4;
.super Ljava/lang/Object;
.source "FrameAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/media/common/util/FrameAnimation;->play(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/media/common/util/FrameAnimation;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/media/common/util/FrameAnimation;I)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/media/common/util/FrameAnimation$4;->this$0:Lcom/media/common/util/FrameAnimation;

    iput p2, p0, Lcom/media/common/util/FrameAnimation$4;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/media/common/util/FrameAnimation$4;->this$0:Lcom/media/common/util/FrameAnimation;

    invoke-static {v0}, Lcom/media/common/util/FrameAnimation;->access$000(Lcom/media/common/util/FrameAnimation;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/media/common/util/FrameAnimation$4;->this$0:Lcom/media/common/util/FrameAnimation;

    invoke-static {v0}, Lcom/media/common/util/FrameAnimation;->access$000(Lcom/media/common/util/FrameAnimation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/media/common/util/FrameAnimation$4;->this$0:Lcom/media/common/util/FrameAnimation;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/media/common/util/FrameAnimation;->access$102(Lcom/media/common/util/FrameAnimation;I)I

    .line 224
    iget-object v0, p0, Lcom/media/common/util/FrameAnimation$4;->this$0:Lcom/media/common/util/FrameAnimation;

    iget p0, p0, Lcom/media/common/util/FrameAnimation$4;->val$i:I

    invoke-static {v0, p0}, Lcom/media/common/util/FrameAnimation;->access$202(Lcom/media/common/util/FrameAnimation;I)I

    return-void

    :cond_0
    return-void

    .line 229
    :cond_1
    iget v0, p0, Lcom/media/common/util/FrameAnimation$4;->val$i:I

    if-nez v0, :cond_2

    .line 230
    iget-object v0, p0, Lcom/media/common/util/FrameAnimation$4;->this$0:Lcom/media/common/util/FrameAnimation;

    invoke-static {v0}, Lcom/media/common/util/FrameAnimation;->access$300(Lcom/media/common/util/FrameAnimation;)Lcom/media/common/util/FrameAnimation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/media/common/util/FrameAnimation$4;->this$0:Lcom/media/common/util/FrameAnimation;

    invoke-static {v0}, Lcom/media/common/util/FrameAnimation;->access$300(Lcom/media/common/util/FrameAnimation;)Lcom/media/common/util/FrameAnimation$AnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/media/common/util/FrameAnimation$AnimationListener;->onAnimationStart()V

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/media/common/util/FrameAnimation$4;->this$0:Lcom/media/common/util/FrameAnimation;

    invoke-static {v0}, Lcom/media/common/util/FrameAnimation;->access$500(Lcom/media/common/util/FrameAnimation;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/media/common/util/FrameAnimation$4;->this$0:Lcom/media/common/util/FrameAnimation;

    invoke-static {v1}, Lcom/media/common/util/FrameAnimation;->access$400(Lcom/media/common/util/FrameAnimation;)[I

    move-result-object v1

    iget v2, p0, Lcom/media/common/util/FrameAnimation$4;->val$i:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 235
    iget v0, p0, Lcom/media/common/util/FrameAnimation$4;->val$i:I

    iget-object v1, p0, Lcom/media/common/util/FrameAnimation$4;->this$0:Lcom/media/common/util/FrameAnimation;

    invoke-static {v1}, Lcom/media/common/util/FrameAnimation;->access$600(Lcom/media/common/util/FrameAnimation;)I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 237
    iget-object v0, p0, Lcom/media/common/util/FrameAnimation$4;->this$0:Lcom/media/common/util/FrameAnimation;

    invoke-static {v0}, Lcom/media/common/util/FrameAnimation;->access$1000(Lcom/media/common/util/FrameAnimation;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 238
    iget-object v0, p0, Lcom/media/common/util/FrameAnimation$4;->this$0:Lcom/media/common/util/FrameAnimation;

    invoke-static {v0}, Lcom/media/common/util/FrameAnimation;->access$300(Lcom/media/common/util/FrameAnimation;)Lcom/media/common/util/FrameAnimation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 239
    iget-object v0, p0, Lcom/media/common/util/FrameAnimation$4;->this$0:Lcom/media/common/util/FrameAnimation;

    invoke-static {v0}, Lcom/media/common/util/FrameAnimation;->access$300(Lcom/media/common/util/FrameAnimation;)Lcom/media/common/util/FrameAnimation$AnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/media/common/util/FrameAnimation$AnimationListener;->onAnimationRepeat()V

    .line 241
    :cond_3
    iget-object p0, p0, Lcom/media/common/util/FrameAnimation$4;->this$0:Lcom/media/common/util/FrameAnimation;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/media/common/util/FrameAnimation;->access$1200(Lcom/media/common/util/FrameAnimation;I)V

    goto :goto_0

    .line 243
    :cond_4
    iget-object v0, p0, Lcom/media/common/util/FrameAnimation$4;->this$0:Lcom/media/common/util/FrameAnimation;

    invoke-static {v0}, Lcom/media/common/util/FrameAnimation;->access$300(Lcom/media/common/util/FrameAnimation;)Lcom/media/common/util/FrameAnimation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 244
    iget-object p0, p0, Lcom/media/common/util/FrameAnimation$4;->this$0:Lcom/media/common/util/FrameAnimation;

    invoke-static {p0}, Lcom/media/common/util/FrameAnimation;->access$300(Lcom/media/common/util/FrameAnimation;)Lcom/media/common/util/FrameAnimation$AnimationListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/media/common/util/FrameAnimation$AnimationListener;->onAnimationEnd()V

    goto :goto_0

    .line 250
    :cond_5
    iget-object v0, p0, Lcom/media/common/util/FrameAnimation$4;->this$0:Lcom/media/common/util/FrameAnimation;

    iget p0, p0, Lcom/media/common/util/FrameAnimation$4;->val$i:I

    add-int/lit8 p0, p0, 0x1

    invoke-static {v0, p0}, Lcom/media/common/util/FrameAnimation;->access$1200(Lcom/media/common/util/FrameAnimation;I)V

    :cond_6
    :goto_0
    return-void
.end method
