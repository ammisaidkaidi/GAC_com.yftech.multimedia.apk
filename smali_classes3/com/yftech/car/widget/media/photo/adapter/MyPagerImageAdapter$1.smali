.class Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter$1;
.super Ljava/lang/Object;
.source "MyPagerImageAdapter.java"

# interfaces
.implements Lcom/yftech/car/widget/media/utils/ImageLoadingManager$OnLoadingImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;

.field final synthetic val$imageView:Lcom/yftech/car/widget/media/photo/photoview/PhotoView;

.field final synthetic val$photoFile:Lcom/yftech/car/media/data/entity/MediaFile;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;Lcom/yftech/car/media/data/entity/MediaFile;Lcom/yftech/car/widget/media/photo/photoview/PhotoView;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter$1;->this$0:Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;

    iput-object p2, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter$1;->val$photoFile:Lcom/yftech/car/media/data/entity/MediaFile;

    iput-object p3, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter$1;->val$imageView:Lcom/yftech/car/widget/media/photo/photoview/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(JI)V
    .locals 2

    .line 97
    iget-object p3, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter$1;->val$photoFile:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {p3}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-nez p1, :cond_1

    .line 98
    iget-object p1, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter$1;->val$imageView:Lcom/yftech/car/widget/media/photo/photoview/PhotoView;

    iget-object p2, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter$1;->this$0:Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;

    invoke-static {p2}, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->access$000(Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_0

    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter$1;->this$0:Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;

    invoke-static {p0}, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->access$000(Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;)I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter$1;->this$0:Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;

    invoke-static {p0}, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->access$100(Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;)I

    move-result p0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method public onLoadFinish(J)V
    .locals 0

    return-void
.end method

.method public onLoadStart(J)V
    .locals 0

    return-void
.end method

.method public onLoading(JII)V
    .locals 0

    return-void
.end method
