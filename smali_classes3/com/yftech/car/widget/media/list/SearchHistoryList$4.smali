.class Lcom/yftech/car/widget/media/list/SearchHistoryList$4;
.super Ljava/lang/Object;
.source "SearchHistoryList.java"

# interfaces
.implements Lcom/yftech/car/widget/media/dialog/ConfirmDialog$OnConfirmDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/list/SearchHistoryList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/list/SearchHistoryList;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/list/SearchHistoryList;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList$4;->this$0:Lcom/yftech/car/widget/media/list/SearchHistoryList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 372
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList$4;->this$0:Lcom/yftech/car/widget/media/list/SearchHistoryList;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->clearSearchList()V

    :cond_0
    return-void
.end method
