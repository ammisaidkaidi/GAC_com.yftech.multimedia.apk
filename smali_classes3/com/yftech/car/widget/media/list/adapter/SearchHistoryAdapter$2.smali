.class Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter$2;
.super Ljava/lang/Object;
.source "SearchHistoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter$2;->this$0:Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 94
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter$2;->this$0:Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;

    iget-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter$2;->this$0:Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;->access$200(Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;->access$202(Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;Z)Z

    .line 95
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter$2;->this$0:Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;->notifyDataSetChanged()V

    return v1
.end method
