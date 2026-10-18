.class Lcom/yftech/libradio/dabui/DabMainFragment$DabServcieListAdapter$1;
.super Ljava/lang/Object;
.source "DabMainFragment.java"

# interfaces
.implements Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dabui/DabMainFragment$DabServcieListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dabui/DabMainFragment$DabServcieListAdapter;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/DabMainFragment$DabServcieListAdapter;)V
    .locals 0

    .line 803
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment$DabServcieListAdapter$1;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment$DabServcieListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 0

    .line 807
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$DabServcieListAdapter$1;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment$DabServcieListAdapter;

    invoke-static {p0}, Lcom/yftech/libradio/dabui/DabMainFragment$DabServcieListAdapter;->access$1200(Lcom/yftech/libradio/dabui/DabMainFragment$DabServcieListAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$600(Lcom/yftech/libradio/dabui/DabMainFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method
