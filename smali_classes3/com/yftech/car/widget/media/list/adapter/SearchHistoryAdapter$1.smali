.class Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter$1;
.super Ljava/lang/Object;
.source "SearchHistoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 81
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter$1;->this$0:Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter$1;->this$0:Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;->access$000(Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;)Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter$OnSearchHistoryItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter$1;->this$0:Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;->access$000(Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;)Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter$OnSearchHistoryItemClickListener;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter$1;->this$0:Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;

    invoke-static {p0}, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;->access$100(Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter;)Lcom/yftech/car/widget/media/list/SearchHistoryList;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/yftech/car/widget/media/list/adapter/SearchHistoryAdapter$OnSearchHistoryItemClickListener;->onItemDelete(Lcom/yftech/car/widget/media/list/SearchHistoryList;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
