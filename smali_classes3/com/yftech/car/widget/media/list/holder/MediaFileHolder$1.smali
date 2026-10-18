.class Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$1;
.super Ljava/lang/Object;
.source "MediaFileHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$1;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 73
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$1;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-static {p1}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->access$000(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->getClickModify()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 74
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$1;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-static {p1}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->access$100(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$1;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-static {p1}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->access$100(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result p1

    if-nez p1, :cond_0

    .line 80
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$1;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->access$100(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/manager/MusicManager;->addCollectItem(Lcom/yftech/car/media/data/entity/MediaFile;)V

    .line 81
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$1;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->access$100(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/manager/MusicManager;->isCollectMusic(Lcom/yftech/car/media/data/entity/MediaFile;)Z

    move-result p1

    .line 82
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$1;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-static {p0}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->access$000(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->setSelected(Z)V

    :cond_0
    return-void
.end method
