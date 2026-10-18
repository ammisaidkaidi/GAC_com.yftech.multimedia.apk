.class Lcom/yftech/libradio/RadioMainFragment$2;
.super Ljava/lang/Object;
.source "RadioMainFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/RadioMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/RadioMainFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/RadioMainFragment;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/yftech/libradio/RadioMainFragment$2;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment$2;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {v0}, Lcom/yftech/libradio/RadioMainFragment;->access$500(Lcom/yftech/libradio/RadioMainFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 170
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainFragment$2;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {v0}, Lcom/yftech/libradio/RadioMainFragment;->access$700(Lcom/yftech/libradio/RadioMainFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/libradio/RadioMainFragment$2;->this$0:Lcom/yftech/libradio/RadioMainFragment;

    invoke-static {p0}, Lcom/yftech/libradio/RadioMainFragment;->access$600(Lcom/yftech/libradio/RadioMainFragment;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
