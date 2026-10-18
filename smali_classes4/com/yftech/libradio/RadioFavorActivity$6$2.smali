.class Lcom/yftech/libradio/RadioFavorActivity$6$2;
.super Ljava/lang/Object;
.source "RadioFavorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/RadioFavorActivity$6;->onRdsPtyStatusChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/libradio/RadioFavorActivity$6;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/RadioFavorActivity$6;)V
    .locals 0

    .line 520
    iput-object p1, p0, Lcom/yftech/libradio/RadioFavorActivity$6$2;->this$1:Lcom/yftech/libradio/RadioFavorActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 523
    iget-object p0, p0, Lcom/yftech/libradio/RadioFavorActivity$6$2;->this$1:Lcom/yftech/libradio/RadioFavorActivity$6;

    iget-object p0, p0, Lcom/yftech/libradio/RadioFavorActivity$6;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-static {p0}, Lcom/yftech/libradio/RadioFavorActivity;->access$300(Lcom/yftech/libradio/RadioFavorActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
