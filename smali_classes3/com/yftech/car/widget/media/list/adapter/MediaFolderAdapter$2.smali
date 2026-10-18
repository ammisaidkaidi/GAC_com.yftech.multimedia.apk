.class Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter$2;
.super Ljava/lang/Object;
.source "MediaFolderAdapter.java"

# interfaces
.implements Lcom/yftech/car/widget/media/list/holder/MediaFolderHolder$OnClickFolderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter$2;->this$0:Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemFolder(Lcom/yftech/car/media/data/entity/MediaFolder;I)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter$2;->this$0:Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->access$200(Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;)Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter$OnItemFolderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter$2;->this$0:Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;

    invoke-static {p0}, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;->access$200(Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter;)Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter$OnItemFolderListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/yftech/car/widget/media/list/adapter/MediaFolderAdapter$OnItemFolderListener;->onItemFolder(Lcom/yftech/car/media/data/entity/MediaFolder;I)V

    :cond_0
    return-void
.end method
