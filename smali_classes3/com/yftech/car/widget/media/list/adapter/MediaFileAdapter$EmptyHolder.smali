.class Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$EmptyHolder;
.super Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
.source "MediaFileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmptyHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;


# direct methods
.method public constructor <init>(Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 739
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$EmptyHolder;->this$0:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    .line 740
    invoke-direct {p0, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
