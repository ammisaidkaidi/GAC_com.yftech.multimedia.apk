.class public final synthetic Lcom/yftech/car/widget/media/photo/layout/-$$Lambda$CZB4jbJKe4H7VHMQ0XTlIdVSXzU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/yftech/car/widget/media/list/MediaDataList;


# direct methods
.method public synthetic constructor <init>(Lcom/yftech/car/widget/media/list/MediaDataList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/photo/layout/-$$Lambda$CZB4jbJKe4H7VHMQ0XTlIdVSXzU;->f$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/layout/-$$Lambda$CZB4jbJKe4H7VHMQ0XTlIdVSXzU;->f$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateDirectoryList()V

    return-void
.end method
