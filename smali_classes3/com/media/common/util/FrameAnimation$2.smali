.class Lcom/media/common/util/FrameAnimation$2;
.super Ljava/lang/Object;
.source "FrameAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/media/common/util/FrameAnimation;->playAndDelay(I)V
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

    .line 144
    iput-object p1, p0, Lcom/media/common/util/FrameAnimation$2;->this$0:Lcom/media/common/util/FrameAnimation;

    iput p2, p0, Lcom/media/common/util/FrameAnimation$2;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 148
    iget-object v0, p0, Lcom/media/common/util/FrameAnimation$2;->this$0:Lcom/media/common/util/FrameAnimation;

    invoke-static {v0}, Lcom/media/common/util/FrameAnimation;->access$000(Lcom/media/common/util/FrameAnimation;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/media/common/util/FrameAnimation$2;->this$0:Lcom/media/common/util/FrameAnimation;

    invoke-static {v0}, Lcom/media/common/util/FrameAnimation;->access$000(Lcom/media/common/util/FrameAnimation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/media/common/util/FrameAnimation$2;->this$0:Lcom/media/common/util/FrameAnimation;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/media/common/util/FrameAnimation;->access$102(Lcom/media/common/util/FrameAnimation;I)I

    .line 151
    iget-object v0, p0, Lcom/media/common/util/FrameAnimation$2;->this$0:Lcom/media/common/util/FrameAnimation;

    iget p0, p0, Lcom/media/common/util/FrameAnimation$2;->val$i:I

    invoke-static {v0, p0}, Lcom/media/common/util/FrameAnimation;->access$202(Lcom/media/common/util/FrameAnimation;I)I

    return-void

    :cond_0
    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/media/common/util/FrameAnimation$2;->this$0:Lcom/media/common/util/FrameAnimation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/media/common/util/FrameAnimation;->access$702(Lcom/media/common/util/FrameAnimation;Z)Z

    .line 157
    iget v0, p0, Lcom/media/common/util/FrameAnimation$2;->val$i:I

    if-nez v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/media/common/util/FrameAnimation$2;->this$0:Lcom/media/common/util/FrameAnimation;

    invoke-static {v0}, Lcom/media/common/util/FrameAnimation;->access$300(Lcom/media/common/util/FrameAnimation;)Lcom/media/common/util/FrameAnimation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/media/common/util/FrameAnimation$2;->this$0:Lcom/media/common/util/FrameAnimation;

    invoke-static {v0}, Lcom/media/common/util/FrameAnimation;->access$300(Lcom/media/common/util/FrameAnimation;)Lcom/media/common/util/FrameAnimation$AnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/media/common/util/FrameAnimation$AnimationListener;->onAnimationStart()V

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/media/common/util/FrameAnimation$2;->this$0:Lcom/media/common/util/FrameAnimation;

    invoke-static {v0}, Lcom/media/common/util/FrameAnimation;->access$500(Lcom/media/common/util/FrameAnimation;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/media/common/util/FrameAnimation$2;->this$0:Lcom/media/common/util/FrameAnimation;

    invoke-static {v2}, Lcom/media/common/util/FrameAnimation;->access$400(Lcom/media/common/util/FrameAnimation;)[I

    move-result-object v2

    iget v3, p0, Lcom/media/common/util/FrameAnimation$2;->val$i:I

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 163
    iget v0, p0, Lcom/media/common/util/FrameAnimation$2;->val$i:I

    iget-object v2, p0, Lcom/media/common/util/FrameAnimation$2;->this$0:Lcom/media/common/util/FrameAnimation;

    invoke-static {v2}, Lcom/media/common/util/FrameAnimation;->access$600(Lcom/media/common/util/FrameAnimation;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_4

    .line 164
    iget-object v0, p0, Lcom/media/common/util/FrameAnimation$2;->this$0:Lcom/media/common/util/FrameAnimation;

    invoke-static {v0}, Lcom/media/common/util/FrameAnimation;->access$300(Lcom/media/common/util/FrameAnimation;)Lcom/media/common/util/FrameAnimation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 165
    iget-object v0, p0, Lcom/media/common/util/FrameAnimation$2;->this$0:Lcom/media/common/util/FrameAnimation;

    invoke-static {v0}, Lcom/media/common/util/FrameAnimation;->access$300(Lcom/media/common/util/FrameAnimation;)Lcom/media/common/util/FrameAnimation$AnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/media/common/util/FrameAnimation$AnimationListener;->onAnimationRepeat()V

    .line 167
    :cond_3
    iget-object v0, p0, Lcom/media/common/util/FrameAnimation$2;->this$0:Lcom/media/common/util/FrameAnimation;

    invoke-static {v0, v3}, Lcom/media/common/util/FrameAnimation;->access$702(Lcom/media/common/util/FrameAnimation;Z)Z

    .line 168
    iget-object p0, p0, Lcom/media/common/util/FrameAnimation$2;->this$0:Lcom/media/common/util/FrameAnimation;

    invoke-static {p0, v1}, Lcom/media/common/util/FrameAnimation;->access$900(Lcom/media/common/util/FrameAnimation;I)V

    goto :goto_0

    .line 170
    :cond_4
    iget-object v0, p0, Lcom/media/common/util/FrameAnimation$2;->this$0:Lcom/media/common/util/FrameAnimation;

    iget p0, p0, Lcom/media/common/util/FrameAnimation$2;->val$i:I

    add-int/2addr p0, v3

    invoke-static {v0, p0}, Lcom/media/common/util/FrameAnimation;->access$900(Lcom/media/common/util/FrameAnimation;I)V

    :goto_0
    return-void
.end method
