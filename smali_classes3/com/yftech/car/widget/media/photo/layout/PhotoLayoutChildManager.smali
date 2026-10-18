.class public Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;
.super Lcom/yftech/car/widget/media/layout/BaseLayoutChildManager;
.source "PhotoLayoutChildManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LayoutChildManager"


# instance fields
.field private isAnimationLoading:Z

.field private mLayout:Landroid/view/ViewGroup;

.field private final mMediaDataDirectoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/list/MediaDataList;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaDataListTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/text/MediaDataListText;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaDataModifyBtnList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaImageLoadingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/view/MediaImageLoading;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaListFolderPathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/text/MediaListFolderPath;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnClickFunctionListener:Lcom/yftech/car/widget/media/photo/button/PhotoButton$OnClickFunctionListener;

.field private final mOnClickVisibilityListener:Lcom/yftech/car/widget/media/text/VisibilityTextButton$OnClickVisibilityListener;

.field private mOnDataChangeCallback:Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeCallback;

.field private final mPhotoButtonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/photo/button/PhotoButton;",
            ">;"
        }
    .end annotation
.end field

.field private final mSideTextRetrievalViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/view/SideTextRetrievalView;",
            ">;"
        }
    .end annotation
.end field

.field private final mSizeCore:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/yftech/car/widget/media/entity/SizeCore;",
            ">;"
        }
    .end annotation
.end field

.field private final mVisibilityTextButtonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/text/VisibilityTextButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/yftech/car/widget/media/layout/BaseLayoutChildManager;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mMediaDataList:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mMediaListFolderPathList:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mMediaDataListTextList:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mVisibilityTextButtonList:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mMediaDataModifyBtnList:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mPhotoButtonList:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mMediaImageLoadingList:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mMediaDataDirectoryList:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mSideTextRetrievalViewList:Ljava/util/List;

    .line 52
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mSizeCore:Ljava/util/Map;

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->isAnimationLoading:Z

    .line 409
    new-instance v0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$2;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$2;-><init>(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mOnClickVisibilityListener:Lcom/yftech/car/widget/media/text/VisibilityTextButton$OnClickVisibilityListener;

    .line 510
    new-instance v0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$3;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$3;-><init>(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mOnClickFunctionListener:Lcom/yftech/car/widget/media/photo/button/PhotoButton$OnClickFunctionListener;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;)Ljava/util/List;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mMediaDataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;)Ljava/util/List;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mMediaImageLoadingList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;)Landroid/view/ViewGroup;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->isAnimationLoading:Z

    return p0
.end method

.method static synthetic access$302(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->isAnimationLoading:Z

    return p1
.end method

.method static synthetic access$400(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;Landroid/view/View;II)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->visibilityVisible(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$500(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;Landroid/view/View;II)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->visibilityGone(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$600(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;)Ljava/util/List;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mVisibilityTextButtonList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;)Ljava/util/List;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mPhotoButtonList:Ljava/util/List;

    return-object p0
.end method

.method private getOnDataChangeCallback()Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeCallback;
    .locals 1

    .line 312
    new-instance v0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$1;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$1;-><init>(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;)V

    return-object v0
.end method

.method static synthetic lambda$initView$0(Lcom/yftech/car/widget/media/list/MediaDataList;)V
    .locals 3

    .line 125
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getUsbIndex()I

    move-result v0

    .line 126
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getMediaDefaultList()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    const/16 v2, 0x64

    if-eq v1, v2, :cond_1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    const-string v0, "LayoutChildManager"

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initView: no MediaDefaultList == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getMediaDefaultList()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 134
    :pswitch_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getArtistsPhoto(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto :goto_0

    .line 131
    :pswitch_1
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getFilePhoto(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFileList(Ljava/util/List;Z)V

    goto :goto_0

    .line 128
    :pswitch_2
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getFolderPhoto(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto :goto_0

    .line 142
    :cond_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getPhotoDirectory(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateDirectoryList(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$initView$1(Lcom/yftech/car/widget/media/text/VisibilityTextButton;Landroid/view/ViewGroup;)V
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->isMediaDataListShow(Landroid/view/View;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->setVisibilityShow(Z)V

    return-void
.end method

.method private visibilityGone(Landroid/view/View;II)V
    .locals 10

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const/4 p0, 0x0

    .line 255
    invoke-static {p1, p3, p0}, Lcom/yftech/car/widget/media/utils/AnimationUtil;->showAlphaAnimation(Landroid/view/View;IZ)V

    goto/16 :goto_1

    .line 214
    :pswitch_1
    iget-object p2, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mSizeCore:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yftech/car/widget/media/entity/SizeCore;

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p2, :cond_0

    .line 218
    iget v1, p2, Lcom/yftech/car/widget/media/entity/SizeCore;->childAtCoreX:F

    .line 219
    iget p2, p2, Lcom/yftech/car/widget/media/entity/SizeCore;->childAtCoreY:F

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    add-float/2addr v1, p2

    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    add-float/2addr p2, v2

    .line 223
    new-instance v2, Lcom/yftech/car/widget/media/entity/SizeCore;

    invoke-direct {v2}, Lcom/yftech/car/widget/media/entity/SizeCore;-><init>()V

    .line 224
    iput v1, v2, Lcom/yftech/car/widget/media/entity/SizeCore;->childAtCoreX:F

    .line 225
    iput p2, v2, Lcom/yftech/car/widget/media/entity/SizeCore;->childAtCoreY:F

    .line 226
    iget-object v3, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mSizeCore:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :goto_0
    iget-object v2, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    .line 230
    iget-object v3, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    cmpg-float v0, v1, v2

    if-gez v0, :cond_1

    sub-float v0, p2, v3

    .line 232
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v4, v1, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    const/4 v6, 0x0

    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p2

    add-float/2addr p0, p2

    neg-float v7, p0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    move v5, p3

    invoke-static/range {v4 .. v9}, Lcom/yftech/car/widget/media/utils/AnimationUtil;->showTranslateAnimation(Landroid/view/View;IFFFF)V

    goto/16 :goto_1

    :cond_1
    cmpg-float v0, p2, v3

    if-gez v0, :cond_2

    sub-float v0, v2, v1

    .line 236
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v4, p2, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 238
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p2

    add-float/2addr p0, p2

    neg-float v9, p0

    move-object v4, p1

    move v5, p3

    invoke-static/range {v4 .. v9}, Lcom/yftech/car/widget/media/utils/AnimationUtil;->showTranslateAnimation(Landroid/view/View;IFFFF)V

    goto :goto_1

    :cond_2
    cmpg-float v0, v2, v1

    if-gez v0, :cond_3

    sub-float/2addr v1, v2

    .line 240
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p2, v0, p2

    if-lez p2, :cond_3

    .line 242
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    sub-float/2addr p0, p2

    const/4 v2, 0x0

    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    add-float v3, p2, p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move v1, p3

    invoke-static/range {v0 .. v5}, Lcom/yftech/car/widget/media/utils/AnimationUtil;->showTranslateAnimation(Landroid/view/View;IFFFF)V

    goto :goto_1

    .line 248
    :cond_3
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    sub-float/2addr p0, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 250
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    add-float v5, p2, p0

    move-object v0, p1

    move v1, p3

    invoke-static/range {v0 .. v5}, Lcom/yftech/car/widget/media/utils/AnimationUtil;->showTranslateAnimation(Landroid/view/View;IFFFF)V

    :goto_1
    const/16 p0, 0x8

    .line 261
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private visibilityVisible(Landroid/view/View;II)V
    .locals 10

    const/4 v0, 0x0

    .line 265
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const/4 p0, 0x1

    .line 304
    invoke-static {p1, p3, p0}, Lcom/yftech/car/widget/media/utils/AnimationUtil;->showAlphaAnimation(Landroid/view/View;IZ)V

    goto/16 :goto_1

    .line 269
    :pswitch_1
    iget-object p2, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mSizeCore:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yftech/car/widget/media/entity/SizeCore;

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p2, :cond_0

    .line 273
    iget v1, p2, Lcom/yftech/car/widget/media/entity/SizeCore;->childAtCoreX:F

    .line 274
    iget p2, p2, Lcom/yftech/car/widget/media/entity/SizeCore;->childAtCoreY:F

    goto :goto_0

    .line 276
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    add-float/2addr v1, p2

    .line 277
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    add-float/2addr p2, v2

    .line 278
    new-instance v2, Lcom/yftech/car/widget/media/entity/SizeCore;

    invoke-direct {v2}, Lcom/yftech/car/widget/media/entity/SizeCore;-><init>()V

    .line 279
    iput v1, v2, Lcom/yftech/car/widget/media/entity/SizeCore;->childAtCoreX:F

    .line 280
    iput p2, v2, Lcom/yftech/car/widget/media/entity/SizeCore;->childAtCoreY:F

    .line 281
    iget-object v3, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mSizeCore:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :goto_0
    iget-object v2, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    .line 285
    iget-object v3, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    cmpg-float v0, v1, v2

    if-gez v0, :cond_1

    sub-float v0, p2, v3

    .line 287
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v4, v1, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    .line 289
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p2

    add-float/2addr p0, p2

    neg-float v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move v1, p3

    invoke-static/range {v0 .. v5}, Lcom/yftech/car/widget/media/utils/AnimationUtil;->showTranslateAnimation(Landroid/view/View;IFFFF)V

    goto/16 :goto_1

    :cond_1
    cmpg-float v0, p2, v3

    if-gez v0, :cond_2

    sub-float v0, v2, v1

    .line 291
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v4, p2, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 293
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p2

    add-float/2addr p0, p2

    neg-float v8, p0

    const/4 v9, 0x0

    move-object v4, p1

    move v5, p3

    invoke-static/range {v4 .. v9}, Lcom/yftech/car/widget/media/utils/AnimationUtil;->showTranslateAnimation(Landroid/view/View;IFFFF)V

    goto :goto_1

    :cond_2
    cmpg-float v0, v2, v1

    if-gez v0, :cond_3

    sub-float/2addr v1, v2

    .line 295
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p2, v0, p2

    if-lez p2, :cond_3

    .line 296
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    sub-float/2addr p0, p2

    .line 297
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    add-float v2, p2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move v1, p3

    invoke-static/range {v0 .. v5}, Lcom/yftech/car/widget/media/utils/AnimationUtil;->showTranslateAnimation(Landroid/view/View;IFFFF)V

    goto :goto_1

    .line 299
    :cond_3
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    sub-float/2addr p0, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 300
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    add-float v4, p2, p0

    const/4 v5, 0x0

    move-object v0, p1

    move v1, p3

    invoke-static/range {v0 .. v5}, Lcom/yftech/car/widget/media/utils/AnimationUtil;->showTranslateAnimation(Landroid/view/View;IFFFF)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public initView(Landroid/view/ViewGroup;)V
    .locals 7

    .line 61
    iput-object p1, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mLayout:Landroid/view/ViewGroup;

    .line 63
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mOnDataChangeCallback:Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeCallback;

    if-nez v0, :cond_13

    .line 64
    invoke-direct {p0}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->getOnDataChangeCallback()Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mOnDataChangeCallback:Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeCallback;

    .line 65
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mOnDataChangeCallback:Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->registerCarDataControlCallback(Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeListener;)V

    .line 68
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 69
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 71
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    .line 72
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 73
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 74
    instance-of v4, v3, Lcom/yftech/car/widget/media/list/MediaDataList;

    if-eqz v4, :cond_1

    .line 75
    check-cast v3, Lcom/yftech/car/widget/media/list/MediaDataList;

    .line 76
    invoke-virtual {v3, v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->setLinkedList(Ljava/util/LinkedList;)V

    .line 77
    iget-object v4, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mMediaDataList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 78
    :cond_1
    instance-of v4, v3, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;

    if-eqz v4, :cond_2

    .line 79
    iget-object v4, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mMediaDataDirectoryList:Ljava/util/List;

    check-cast v3, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 80
    :cond_2
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    .line 81
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 94
    :cond_3
    instance-of v4, v3, Lcom/yftech/car/widget/media/text/MediaListFolderPath;

    if-eqz v4, :cond_4

    .line 95
    iget-object v4, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mMediaListFolderPathList:Ljava/util/List;

    check-cast v3, Lcom/yftech/car/widget/media/text/MediaListFolderPath;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 96
    :cond_4
    instance-of v4, v3, Lcom/yftech/car/widget/media/text/MediaDataListText;

    if-eqz v4, :cond_5

    .line 97
    iget-object v4, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mMediaDataListTextList:Ljava/util/List;

    check-cast v3, Lcom/yftech/car/widget/media/text/MediaDataListText;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 98
    :cond_5
    instance-of v4, v3, Lcom/yftech/car/widget/media/text/VisibilityTextButton;

    if-eqz v4, :cond_6

    .line 99
    iget-object v4, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mVisibilityTextButtonList:Ljava/util/List;

    check-cast v3, Lcom/yftech/car/widget/media/text/VisibilityTextButton;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 100
    :cond_6
    instance-of v4, v3, Lcom/yftech/car/widget/media/photo/button/PhotoButton;

    if-eqz v4, :cond_7

    .line 101
    iget-object v4, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mPhotoButtonList:Ljava/util/List;

    check-cast v3, Lcom/yftech/car/widget/media/photo/button/PhotoButton;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 102
    :cond_7
    instance-of v4, v3, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    if-eqz v4, :cond_8

    .line 103
    iget-object v4, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mMediaDataModifyBtnList:Ljava/util/List;

    check-cast v3, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 104
    :cond_8
    instance-of v4, v3, Lcom/yftech/car/widget/media/view/MediaImageLoading;

    if-eqz v4, :cond_9

    .line 105
    iget-object v4, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mMediaImageLoadingList:Ljava/util/List;

    check-cast v3, Lcom/yftech/car/widget/media/view/MediaImageLoading;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 106
    :cond_9
    instance-of v4, v3, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;

    if-eqz v4, :cond_a

    .line 107
    iget-object v4, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mSideTextRetrievalViewList:Ljava/util/List;

    check-cast v3, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 114
    :cond_b
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mMediaDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 115
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mMediaDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/list/MediaDataList;

    .line 116
    iget-object v2, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mMediaListFolderPathList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/widget/media/text/MediaListFolderPath;

    .line 117
    invoke-virtual {v1, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->setMediaListFolderPath(Lcom/yftech/car/widget/media/text/MediaListFolderPath;)V

    goto :goto_2

    .line 119
    :cond_d
    iget-object v2, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mMediaDataDirectoryList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->setMediaDataDirectoryList(Ljava/util/List;)V

    .line 120
    iget-object v2, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mMediaDataListTextList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->setMediaDataListTextList(Ljava/util/List;)V

    .line 121
    iget-object v2, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mSideTextRetrievalViewList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->setSideTextRetrievalViewList(Ljava/util/List;)V

    .line 122
    iget-object v2, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mMediaDataModifyBtnList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->setMediaDataModifyBtnList(Ljava/util/List;)V

    .line 123
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->getMediaDefaultList()I

    move-result v2

    const/4 v3, 0x2

    .line 124
    new-instance v4, Lcom/yftech/car/widget/media/photo/layout/-$$Lambda$PhotoLayoutChildManager$WpUr5R34WG4x_8g6Z-492o0522Y;

    invoke-direct {v4, v1}, Lcom/yftech/car/widget/media/photo/layout/-$$Lambda$PhotoLayoutChildManager$WpUr5R34WG4x_8g6Z-492o0522Y;-><init>(Lcom/yftech/car/widget/media/list/MediaDataList;)V

    invoke-virtual {v1, v3, v4}, Lcom/yftech/car/widget/media/list/MediaDataList;->setMediaType(ILjava/lang/Runnable;)V

    .line 149
    iget-object v3, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mPhotoButtonList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yftech/car/widget/media/photo/button/PhotoButton;

    add-int/lit16 v5, v2, 0x3e8

    .line 150
    invoke-virtual {v4, v5}, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->isFunction(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->setSelected(Z)V

    goto :goto_3

    .line 152
    :cond_e
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->getUsbIndex()I

    move-result v2

    .line 153
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->isScanner(I)Z

    move-result v2

    .line 154
    iget-object v3, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mMediaImageLoadingList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yftech/car/widget/media/view/MediaImageLoading;

    .line 155
    invoke-virtual {v4}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->getMediaDataListId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_10

    invoke-virtual {v4}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->getMediaDataListId()I

    move-result v5

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->getId()I

    move-result v6

    if-ne v5, v6, :cond_f

    .line 156
    :cond_10
    invoke-virtual {v4, v2}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->setLoadingStatus(Z)V

    goto :goto_4

    .line 162
    :cond_11
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mPhotoButtonList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/photo/button/PhotoButton;

    .line 163
    iget-object v2, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mOnClickFunctionListener:Lcom/yftech/car/widget/media/photo/button/PhotoButton$OnClickFunctionListener;

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->setFunctionListener(Lcom/yftech/car/widget/media/photo/button/PhotoButton$OnClickFunctionListener;)V

    goto :goto_5

    .line 166
    :cond_12
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mVisibilityTextButtonList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/text/VisibilityTextButton;

    .line 167
    iget-object v2, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mOnClickVisibilityListener:Lcom/yftech/car/widget/media/text/VisibilityTextButton$OnClickVisibilityListener;

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->setOnClickVisibilityListener(Lcom/yftech/car/widget/media/text/VisibilityTextButton$OnClickVisibilityListener;)V

    .line 168
    new-instance v2, Lcom/yftech/car/widget/media/photo/layout/-$$Lambda$PhotoLayoutChildManager$Soakz66pHNxAuWpbIyDkhlytvAk;

    invoke-direct {v2, v1, p1}, Lcom/yftech/car/widget/media/photo/layout/-$$Lambda$PhotoLayoutChildManager$Soakz66pHNxAuWpbIyDkhlytvAk;-><init>(Lcom/yftech/car/widget/media/text/VisibilityTextButton;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_13
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method

.method public unregister()V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mOnDataChangeCallback:Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeCallback;

    if-eqz v0, :cond_2

    .line 185
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mOnDataChangeCallback:Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->unregisterCarDataControlCallback(Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeListener;)V

    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mOnDataChangeCallback:Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeCallback;

    .line 187
    iget-object v1, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mMediaListFolderPathList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 188
    iget-object v1, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mMediaDataListTextList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 189
    iget-object v1, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mMediaDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/list/MediaDataList;

    .line 190
    invoke-virtual {v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->release()V

    goto :goto_0

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mMediaDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 193
    iget-object v1, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mMediaDataModifyBtnList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 194
    iget-object v1, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mVisibilityTextButtonList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 195
    iget-object v1, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mPhotoButtonList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 196
    iget-object v1, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mMediaImageLoadingList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 197
    iget-object v1, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mMediaDataDirectoryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;

    .line 198
    invoke-virtual {v2}, Lcom/yftech/car/widget/media/list/MediaDataDirectoryList;->release()V

    goto :goto_1

    .line 200
    :cond_1
    iget-object v1, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mMediaDataDirectoryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 201
    iput-object v0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->mLayout:Landroid/view/ViewGroup;

    :cond_2
    return-void
.end method

.method public updateTouchEvent(Z)V
    .locals 0

    return-void
.end method
