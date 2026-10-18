.class Lcom/yftech/libradio/RadioListActivity$5$2;
.super Ljava/lang/Object;
.source "RadioListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/RadioListActivity$5;->onRdsPtyStatusChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/libradio/RadioListActivity$5;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/RadioListActivity$5;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lcom/yftech/libradio/RadioListActivity$5$2;->this$1:Lcom/yftech/libradio/RadioListActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 514
    iget-object p0, p0, Lcom/yftech/libradio/RadioListActivity$5$2;->this$1:Lcom/yftech/libradio/RadioListActivity$5;

    iget-object p0, p0, Lcom/yftech/libradio/RadioListActivity$5;->this$0:Lcom/yftech/libradio/RadioListActivity;

    invoke-static {p0}, Lcom/yftech/libradio/RadioListActivity;->access$200(Lcom/yftech/libradio/RadioListActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
