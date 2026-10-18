.class Lcom/media/common/util/SoftHideKeyBoardUtil$1;
.super Ljava/lang/Object;
.source "SoftHideKeyBoardUtil.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/media/common/util/SoftHideKeyBoardUtil;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/media/common/util/SoftHideKeyBoardUtil;


# direct methods
.method constructor <init>(Lcom/media/common/util/SoftHideKeyBoardUtil;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/media/common/util/SoftHideKeyBoardUtil$1;->this$0:Lcom/media/common/util/SoftHideKeyBoardUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/media/common/util/SoftHideKeyBoardUtil$1;->this$0:Lcom/media/common/util/SoftHideKeyBoardUtil;

    invoke-static {v0}, Lcom/media/common/util/SoftHideKeyBoardUtil;->access$000(Lcom/media/common/util/SoftHideKeyBoardUtil;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/media/common/util/SoftHideKeyBoardUtil$1;->this$0:Lcom/media/common/util/SoftHideKeyBoardUtil;

    iget-object v1, p0, Lcom/media/common/util/SoftHideKeyBoardUtil$1;->this$0:Lcom/media/common/util/SoftHideKeyBoardUtil;

    invoke-static {v1}, Lcom/media/common/util/SoftHideKeyBoardUtil;->access$200(Lcom/media/common/util/SoftHideKeyBoardUtil;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/media/common/util/SoftHideKeyBoardUtil;->access$102(Lcom/media/common/util/SoftHideKeyBoardUtil;I)I

    .line 35
    iget-object v0, p0, Lcom/media/common/util/SoftHideKeyBoardUtil$1;->this$0:Lcom/media/common/util/SoftHideKeyBoardUtil;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/media/common/util/SoftHideKeyBoardUtil;->access$002(Lcom/media/common/util/SoftHideKeyBoardUtil;Z)Z

    .line 37
    :cond_0
    iget-object p0, p0, Lcom/media/common/util/SoftHideKeyBoardUtil$1;->this$0:Lcom/media/common/util/SoftHideKeyBoardUtil;

    invoke-static {p0}, Lcom/media/common/util/SoftHideKeyBoardUtil;->access$300(Lcom/media/common/util/SoftHideKeyBoardUtil;)V

    return-void
.end method
