.class Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter$1;
.super Ljava/lang/Object;
.source "MediaDataDirectoryAdapter.java"

# interfaces
.implements Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder$OnItemClickPathListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter$1;->this$0:Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemPath(Ljava/lang/String;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter$1;->this$0:Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;->access$000(Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;)Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder$OnItemClickPathListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter$1;->this$0:Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;

    invoke-static {p0}, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;->access$000(Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;)Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder$OnItemClickPathListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder$OnItemClickPathListener;->onItemPath(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
