.class Lcom/yftech/car/widget/media/list/MediaDataList$5;
.super Ljava/lang/Object;
.source "MediaDataList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 751
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList$5;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 754
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$5;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->backDirectoryFolder()Z

    return-void
.end method
