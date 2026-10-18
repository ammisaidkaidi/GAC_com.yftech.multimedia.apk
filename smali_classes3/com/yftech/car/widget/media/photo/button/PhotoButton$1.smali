.class Lcom/yftech/car/widget/media/photo/button/PhotoButton$1;
.super Ljava/lang/Object;
.source "PhotoButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 147
    iput-object p1, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton$1;->this$0:Lcom/yftech/car/widget/media/photo/button/PhotoButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton$1;->this$0:Lcom/yftech/car/widget/media/photo/button/PhotoButton;

    invoke-static {v0}, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->access$000(Lcom/yftech/car/widget/media/photo/button/PhotoButton;)Lcom/yftech/car/widget/media/photo/button/PhotoButton$OnClickFunctionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton$1;->this$0:Lcom/yftech/car/widget/media/photo/button/PhotoButton;

    invoke-static {v0}, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->access$000(Lcom/yftech/car/widget/media/photo/button/PhotoButton;)Lcom/yftech/car/widget/media/photo/button/PhotoButton$OnClickFunctionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton$1;->this$0:Lcom/yftech/car/widget/media/photo/button/PhotoButton;

    invoke-static {v1}, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->access$100(Lcom/yftech/car/widget/media/photo/button/PhotoButton;)I

    move-result v1

    iget-object v2, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton$1;->this$0:Lcom/yftech/car/widget/media/photo/button/PhotoButton;

    invoke-static {v2}, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->access$200(Lcom/yftech/car/widget/media/photo/button/PhotoButton;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/yftech/car/widget/media/photo/button/PhotoButton$OnClickFunctionListener;->onClickFunction(II)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton$1;->this$0:Lcom/yftech/car/widget/media/photo/button/PhotoButton;

    invoke-static {v0}, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->access$300(Lcom/yftech/car/widget/media/photo/button/PhotoButton;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 155
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/button/PhotoButton$1;->this$0:Lcom/yftech/car/widget/media/photo/button/PhotoButton;

    invoke-static {p0}, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->access$300(Lcom/yftech/car/widget/media/photo/button/PhotoButton;)Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method
