.class Lcom/yftech/libradio/dabui/DabMainFragment$8;
.super Ljava/lang/Object;
.source "DabMainFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dabui/DabMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dabui/DabMainFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/DabMainFragment;)V
    .locals 0

    .line 929
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment$8;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 932
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$8;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$1700(Lcom/yftech/libradio/dabui/DabMainFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2714

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 933
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$8;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$600(Lcom/yftech/libradio/dabui/DabMainFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$8;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$1800(Lcom/yftech/libradio/dabui/DabMainFragment;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
