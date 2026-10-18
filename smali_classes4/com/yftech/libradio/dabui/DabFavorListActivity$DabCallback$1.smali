.class Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback$1;
.super Ljava/lang/Object;
.source "DabFavorListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback;->onPlayStatusChange(Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback$1;->this$1:Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback$1;->this$1:Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback;

    iget-object v0, v0, Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->access$200(Lcom/yftech/libradio/dabui/DabFavorListActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 382
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback$1;->this$1:Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback;

    iget-object v0, v0, Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback$1;->this$1:Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback;

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    invoke-static {p0}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->access$1300(Lcom/yftech/libradio/dabui/DabFavorListActivity;)I

    move-result p0

    invoke-static {v0, p0}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->access$1700(Lcom/yftech/libradio/dabui/DabFavorListActivity;I)V

    return-void
.end method
