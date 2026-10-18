.class public final synthetic Lcom/yftech/car/widget/media/list/-$$Lambda$SearchHistoryList$5eIisvura9rIXkD-Bic9fZRaaX8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/yftech/car/widget/media/list/SearchHistoryList;

.field private final synthetic f$1:Lcom/yftech/car/widget/media/text/SearchEditButton;


# direct methods
.method public synthetic constructor <init>(Lcom/yftech/car/widget/media/list/SearchHistoryList;Lcom/yftech/car/widget/media/text/SearchEditButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/list/-$$Lambda$SearchHistoryList$5eIisvura9rIXkD-Bic9fZRaaX8;->f$0:Lcom/yftech/car/widget/media/list/SearchHistoryList;

    iput-object p2, p0, Lcom/yftech/car/widget/media/list/-$$Lambda$SearchHistoryList$5eIisvura9rIXkD-Bic9fZRaaX8;->f$1:Lcom/yftech/car/widget/media/text/SearchEditButton;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/yftech/car/widget/media/list/-$$Lambda$SearchHistoryList$5eIisvura9rIXkD-Bic9fZRaaX8;->f$0:Lcom/yftech/car/widget/media/list/SearchHistoryList;

    iget-object p0, p0, Lcom/yftech/car/widget/media/list/-$$Lambda$SearchHistoryList$5eIisvura9rIXkD-Bic9fZRaaX8;->f$1:Lcom/yftech/car/widget/media/text/SearchEditButton;

    invoke-static {v0, p0}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->lambda$setSearchEditButton$0(Lcom/yftech/car/widget/media/list/SearchHistoryList;Lcom/yftech/car/widget/media/text/SearchEditButton;)V

    return-void
.end method
