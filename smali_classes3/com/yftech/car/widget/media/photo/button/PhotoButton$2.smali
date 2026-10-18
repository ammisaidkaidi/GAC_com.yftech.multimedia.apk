.class Lcom/yftech/car/widget/media/photo/button/PhotoButton$2;
.super Ljava/lang/Object;
.source "PhotoButton.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/photo/button/PhotoButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/photo/button/PhotoButton;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/photo/button/PhotoButton;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton$2;->this$0:Lcom/yftech/car/widget/media/photo/button/PhotoButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton$2;->this$0:Lcom/yftech/car/widget/media/photo/button/PhotoButton;

    invoke-static {v0}, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->access$000(Lcom/yftech/car/widget/media/photo/button/PhotoButton;)Lcom/yftech/car/widget/media/photo/button/PhotoButton$OnClickFunctionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton$2;->this$0:Lcom/yftech/car/widget/media/photo/button/PhotoButton;

    invoke-static {v0}, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->access$000(Lcom/yftech/car/widget/media/photo/button/PhotoButton;)Lcom/yftech/car/widget/media/photo/button/PhotoButton$OnClickFunctionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton$2;->this$0:Lcom/yftech/car/widget/media/photo/button/PhotoButton;

    invoke-static {v1}, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->access$100(Lcom/yftech/car/widget/media/photo/button/PhotoButton;)I

    move-result v1

    iget-object v2, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton$2;->this$0:Lcom/yftech/car/widget/media/photo/button/PhotoButton;

    invoke-static {v2}, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->access$400(Lcom/yftech/car/widget/media/photo/button/PhotoButton;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/yftech/car/widget/media/photo/button/PhotoButton$OnClickFunctionListener;->onClickFunction(II)V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton$2;->this$0:Lcom/yftech/car/widget/media/photo/button/PhotoButton;

    invoke-static {v0}, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->access$500(Lcom/yftech/car/widget/media/photo/button/PhotoButton;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 168
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton$2;->this$0:Lcom/yftech/car/widget/media/photo/button/PhotoButton;

    invoke-static {p0}, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->access$500(Lcom/yftech/car/widget/media/photo/button/PhotoButton;)Landroid/view/View$OnLongClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
