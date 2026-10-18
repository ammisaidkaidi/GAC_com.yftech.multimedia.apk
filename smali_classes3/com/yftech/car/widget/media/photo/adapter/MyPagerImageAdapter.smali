.class public Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "MyPagerImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter$OnImageTouchListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MyPagerImageAdapter"


# instance fields
.field private ExceptionId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isLoop:Z

.field private listener:Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter$OnImageTouchListener;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mFailedResId:I

.field private final mImageOnTouch:Lcom/yftech/car/widget/media/photo/photoview/ImageOnTouch;

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mResId:I

.field private photoView:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;I)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->mFailedResId:I

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->isLoop:Z

    .line 147
    new-instance v0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter$2;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter$2;-><init>(Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 154
    new-instance v0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter$3;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter$3;-><init>(Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->mImageOnTouch:Lcom/yftech/car/widget/media/photo/photoview/ImageOnTouch;

    .line 44
    iput-object p1, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->mList:Ljava/util/List;

    .line 45
    iput p2, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->mResId:I

    .line 46
    iget-object p1, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->ExceptionId:Ljava/util/List;

    if-nez p1, :cond_0

    .line 47
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->ExceptionId:Ljava/util/List;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->mFailedResId:I

    return p0
.end method

.method static synthetic access$100(Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->mResId:I

    return p0
.end method

.method static synthetic access$200(Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;)Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter$OnImageTouchListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->listener:Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter$OnImageTouchListener;

    return-object p0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 167
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->isLoop:Z

    if-eqz v0, :cond_0

    const p0, 0xccccccc

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->mList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getCurrentPosition(I)I
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->mList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    rem-int/2addr p1, p0

    return p1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    .line 117
    check-cast p1, Landroid/view/View;

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, -0x2

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getListSize()I
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->mList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getPrimaryItem()Landroid/view/View;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->photoView:Landroid/view/View;

    return-object p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 7
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 67
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->mList:Ljava/util/List;

    iget-object v1, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr p2, v1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yftech/car/media/data/entity/MediaFile;

    .line 69
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->listener:Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter$OnImageTouchListener;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->listener:Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter$OnImageTouchListener;

    invoke-interface {v0, p2}, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter$OnImageTouchListener;->getItemView(Lcom/yftech/car/media/data/entity/MediaFile;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0

    .line 77
    :cond_0
    new-instance v6, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;-><init>(Landroid/content/Context;)V

    .line 79
    new-instance v5, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter$1;

    invoke-direct {v5, p0, p2, v6}, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter$1;-><init>(Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;Lcom/yftech/car/media/data/entity/MediaFile;Lcom/yftech/car/widget/media/photo/photoview/PhotoView;)V

    .line 103
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->mResId:I

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->mResId:I

    invoke-static {v0, v1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 107
    :cond_1
    invoke-static {}, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->getInstance()Lcom/yftech/car/widget/media/utils/ImageLoadingManager;

    move-result-object v0

    iget-object v3, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object v1, p2

    move-object v2, v6

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/yftech/car/widget/media/utils/ImageLoadingManager;->loadImage(Lcom/yftech/car/media/data/entity/MediaFile;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/view/View;Lcom/yftech/car/widget/media/utils/ImageLoadingManager$OnLoadingImageListener;)V

    .line 108
    invoke-virtual {v6, p2}, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->setTag(Ljava/lang/Object;)V

    .line 109
    iget-object p2, v6, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->mAttacher:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->mImageOnTouch:Lcom/yftech/car/widget/media/photo/photoview/ImageOnTouch;

    invoke-virtual {p2, p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->setOnTouchListener(Lcom/yftech/car/widget/media/photo/photoview/ImageOnTouch;)V

    const/16 p0, 0x12c

    .line 110
    invoke-virtual {v6, p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoView;->setZoomTransitionDuration(I)V

    .line 111
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v6
.end method

.method public bridge synthetic instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setFailedResId(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->mFailedResId:I

    return-void
.end method

.method public setLoop(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->isLoop:Z

    return-void
.end method

.method public setOnImageTouchLisetener(Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter$OnImageTouchListener;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->listener:Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter$OnImageTouchListener;

    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 5

    .line 134
    iget-object p1, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->ExceptionId:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 135
    iget-object p1, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->ExceptionId:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 136
    iget-object v1, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->mList:Ljava/util/List;

    iget-object v2, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int v2, p2, v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v1}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v1

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const-string p1, "TAG3"

    .line 137
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setPrimaryItem==position===="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->mList:Ljava/util/List;

    iget-object v1, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr p2, v1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {p2}, Lcom/yftech/car/media/data/entity/MediaFile;->getFileName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->ExceptionId:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void

    .line 144
    :cond_1
    check-cast p3, Landroid/view/View;

    iput-object p3, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->photoView:Landroid/view/View;

    return-void
.end method
