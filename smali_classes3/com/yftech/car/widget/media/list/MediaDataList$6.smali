.class Lcom/yftech/car/widget/media/list/MediaDataList$6;
.super Ljava/lang/Object;
.source "MediaDataList.java"

# interfaces
.implements Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder$OnItemClickPathListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/list/MediaDataList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/list/MediaDataList;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/list/MediaDataList;)V
    .locals 0

    .line 758
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList$6;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemPath(Ljava/lang/String;)V
    .locals 0

    .line 761
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$6;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$200(Lcom/yftech/car/widget/media/list/MediaDataList;Ljava/lang/String;)V

    return-void
.end method
