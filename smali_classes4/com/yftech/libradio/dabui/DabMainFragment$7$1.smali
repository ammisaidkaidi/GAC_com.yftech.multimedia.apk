.class Lcom/yftech/libradio/dabui/DabMainFragment$7$1;
.super Ljava/lang/Object;
.source "DabMainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dabui/DabMainFragment$7;->onSlideShowImageChanged([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/libradio/dabui/DabMainFragment$7;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/DabMainFragment$7;)V
    .locals 0

    .line 917
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment$7$1;->this$1:Lcom/yftech/libradio/dabui/DabMainFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 920
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$7$1;->this$1:Lcom/yftech/libradio/dabui/DabMainFragment$7;

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$7;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$600(Lcom/yftech/libradio/dabui/DabMainFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
