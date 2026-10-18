.class public Lcom/yftech/libgallery/ui/PictureListFragment;
.super Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;
.source "PictureListFragment.java"

# interfaces
.implements Lcom/yftech/libgallery/view/IPictureListActivityView;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment<",
        "Lcom/yftech/libgallery/presenter/PictureListPresenter;",
        ">;",
        "Lcom/yftech/libgallery/view/IPictureListActivityView;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "index"


# instance fields
.field private btn_cancel:Landroid/widget/TextView;

.field private btn_selector:Landroid/widget/TextView;

.field private index:I

.field private isDeleting:Z

.field private pic_usb_name:Landroid/widget/TextView;

.field private pictureListAdapter:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

.field private progressBar:Landroid/widget/ProgressBar;

.field private rv:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->isDeleting:Z

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libgallery/ui/PictureListFragment;)Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->pictureListAdapter:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/libgallery/ui/PictureListFragment;)Landroid/widget/TextView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->btn_cancel:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/libgallery/ui/PictureListFragment;)Landroid/widget/TextView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->btn_selector:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/libgallery/ui/PictureListFragment;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->index:I

    return p0
.end method

.method static synthetic access$400(Lcom/yftech/libgallery/ui/PictureListFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->rv:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yftech/libgallery/ui/PictureListFragment;)Landroid/widget/ProgressBar;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$602(Lcom/yftech/libgallery/ui/PictureListFragment;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->isDeleting:Z

    return p1
.end method

.method private getPictureData()V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 245
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/PictureListFragment;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/yftech/libgallery/presenter/PictureListPresenter;

    iget p0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->index:I

    invoke-virtual {v0, p0}, Lcom/yftech/libgallery/presenter/PictureListPresenter;->getPictureListData(I)V

    return-void
.end method

.method private getPictureDataAfterDeleting()V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 251
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/PictureListFragment;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/yftech/libgallery/presenter/PictureListPresenter;

    iget p0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->index:I

    invoke-virtual {v0, p0}, Lcom/yftech/libgallery/presenter/PictureListPresenter;->getPictureDataAfterDeleting(I)V

    return-void
.end method

.method public static newInstance(I)Lcom/yftech/libgallery/ui/PictureListFragment;
    .locals 3

    .line 75
    new-instance v0, Lcom/yftech/libgallery/ui/PictureListFragment;

    invoke-direct {v0}, Lcom/yftech/libgallery/ui/PictureListFragment;-><init>()V

    .line 76
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "index"

    .line 77
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 78
    invoke-virtual {v0, v1}, Lcom/yftech/libgallery/ui/PictureListFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected createPresenter()Lcom/yftech/libgallery/presenter/PictureListPresenter;
    .locals 1

    .line 71
    new-instance v0, Lcom/yftech/libgallery/presenter/PictureListPresenter;

    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/PictureListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yftech/libgallery/presenter/PictureListPresenter;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/PictureListFragment;->createPresenter()Lcom/yftech/libgallery/presenter/PictureListPresenter;

    move-result-object p0

    return-object p0
.end method

.method public displayPictureDeleteResult(Z)V
    .locals 1

    .line 302
    iget-object p1, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->pictureListAdapter:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    if-eqz p1, :cond_0

    .line 303
    iget-object p0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->pictureListAdapter:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->setSelectorMode(ZZ)V

    :cond_0
    return-void
.end method

.method public displayPictureList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/media/common/entity/QuickMultipleEntity;",
            ">;)V"
        }
    .end annotation

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayPictureList:listSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 277
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    iget v1, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->index:I

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/data/CarMediaDataManager;->isScanner(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->pictureListAdapter:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    if-eqz v0, :cond_1

    .line 281
    iget-object p0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->pictureListAdapter:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    invoke-virtual {p0, p1}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->setNewData(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public displayPictureListAfterDeleting(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/media/common/entity/QuickMultipleEntity;",
            ">;)V"
        }
    .end annotation

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayPictureListAfterDeleting:listSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 290
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/PictureListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 294
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/PictureListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->pictureListAdapter:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    if-eqz v0, :cond_1

    .line 296
    iget-object p0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->pictureListAdapter:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    invoke-virtual {p0, p1}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->setNewData(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 2

    .line 144
    sget v0, Lcom/yftech/libgallery/R$id;->pic_usb_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->pic_usb_name:Landroid/widget/TextView;

    .line 145
    iget v0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->index:I

    if-ltz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->pic_usb_name:Landroid/widget/TextView;

    iget v1, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->index:I

    if-nez v1, :cond_0

    sget v1, Lcom/yftech/libgallery/R$string;->music_source_selection_1:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/yftech/libgallery/R$string;->music_source_selection_2:I

    :goto_0
    invoke-virtual {p0, v1}, Lcom/yftech/libgallery/ui/PictureListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->pic_usb_name:Landroid/widget/TextView;

    const-string v1, "USB"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :goto_1
    iget-object v0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->pic_usb_name:Landroid/widget/TextView;

    new-instance v1, Lcom/yftech/libgallery/ui/PictureListFragment$1;

    invoke-direct {v1, p0}, Lcom/yftech/libgallery/ui/PictureListFragment$1;-><init>(Lcom/yftech/libgallery/ui/PictureListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    sget v0, Lcom/yftech/libgallery/R$id;->btn_selector:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->btn_selector:Landroid/widget/TextView;

    .line 166
    sget v0, Lcom/yftech/libgallery/R$id;->btn_cancel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->btn_cancel:Landroid/widget/TextView;

    .line 168
    iget-object v0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->btn_selector:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->btn_selector:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->btn_cancel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    sget v0, Lcom/yftech/libgallery/R$id;->progressBar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 179
    iget-object v0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 181
    sget v0, Lcom/yftech/libgallery/R$id;->rv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->rv:Landroidx/recyclerview/widget/RecyclerView;

    .line 182
    iget-object p1, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/yftech/libgallery/ui/PictureListFragment$2;

    invoke-direct {v0, p0}, Lcom/yftech/libgallery/ui/PictureListFragment$2;-><init>(Lcom/yftech/libgallery/ui/PictureListFragment;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 191
    new-instance p1, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/PictureListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->index:I

    invoke-direct {p1, v0, v1}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->pictureListAdapter:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    .line 192
    iget-object p1, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->pictureListAdapter:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    new-instance v0, Lcom/yftech/libgallery/ui/PictureListFragment$3;

    invoke-direct {v0, p0}, Lcom/yftech/libgallery/ui/PictureListFragment$3;-><init>(Lcom/yftech/libgallery/ui/PictureListFragment;)V

    invoke-virtual {p1, v0}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->setOnItemClickListener(Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$OnItemClickListener;)V

    .line 209
    iget-object p1, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->pictureListAdapter:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    new-instance v0, Lcom/yftech/libgallery/ui/PictureListFragment$4;

    invoke-direct {v0, p0}, Lcom/yftech/libgallery/ui/PictureListFragment$4;-><init>(Lcom/yftech/libgallery/ui/PictureListFragment;)V

    invoke-virtual {p1, v0}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->setOnLastViewedCallback(Lcom/yftech/libgallery/ui/adapter/PictureListAdapter$OnLastViewedCallback;)V

    .line 217
    iget-object p1, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->rv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->pictureListAdapter:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 220
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/PictureListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x7

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 221
    new-instance v0, Lcom/yftech/libgallery/ui/PictureListFragment$5;

    invoke-direct {v0, p0}, Lcom/yftech/libgallery/ui/PictureListFragment$5;-><init>(Lcom/yftech/libgallery/ui/PictureListFragment;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 236
    iget-object v0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 239
    invoke-direct {p0}, Lcom/yftech/libgallery/ui/PictureListFragment;->getPictureData()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/16 p2, 0x3e8

    if-ne p1, p2, :cond_1

    .line 261
    iget p1, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->index:I

    if-nez p1, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/PictureListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object p1

    const-string p2, "TAG_PHOTO_VIEWED_LAST_FOR_USB_1"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Lcom/media/common/util/SharedPrefsUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/PictureListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object p1

    const-string p2, "TAG_PHOTO_VIEWED_LAST_FOR_USB_2"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Lcom/media/common/util/SharedPrefsUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 266
    :goto_0
    iget-object p2, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->pictureListAdapter:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    if-eqz p2, :cond_1

    .line 268
    iget-object p0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->pictureListAdapter:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    invoke-virtual {p0, p1}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->setLastViewedPath(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onBindView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/ViewGroup;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 120
    sget p0, Lcom/yftech/libgallery/R$layout;->fragment_picture_list:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 312
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libgallery/R$id;->btn_selector:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    .line 314
    iget-object p1, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->pictureListAdapter:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    invoke-virtual {p1}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->isSelectorMode()Z

    move-result p1

    xor-int/2addr p1, v3

    if-eqz p1, :cond_0

    .line 316
    iget-object p1, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->btn_cancel:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 317
    iget-object p1, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->btn_selector:Landroid/widget/TextView;

    sget v0, Lcom/yftech/libgallery/R$string;->common_confirm:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 319
    iget-object p1, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->pictureListAdapter:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    if-eqz p1, :cond_3

    .line 320
    iget-object p0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->pictureListAdapter:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    invoke-virtual {p0, v3, v3}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->setSelectorMode(ZZ)V

    goto :goto_0

    .line 325
    :cond_0
    iget-object p1, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->pictureListAdapter:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    invoke-virtual {p1}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->isSelectedPhoto()Z

    move-result p1

    if-nez p1, :cond_1

    .line 326
    sget p1, Lcom/yftech/libgallery/R$string;->select_image_delete:I

    invoke-virtual {p0, p1}, Lcom/yftech/libgallery/ui/PictureListFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/media/common/util/ToastUtils;->showNormalMessage(Ljava/lang/String;I)V

    return-void

    .line 332
    :cond_1
    sget p1, Lcom/yftech/libgallery/R$string;->sure_to_del_select_pic:I

    invoke-virtual {p0, p1}, Lcom/yftech/libgallery/ui/PictureListFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/ui/widget/TipsExtraDialog;->newInstance(Ljava/lang/String;)Lcom/media/common/ui/widget/TipsExtraDialog;

    move-result-object p1

    .line 333
    new-instance v0, Lcom/yftech/libgallery/ui/PictureListFragment$6;

    invoke-direct {v0, p0}, Lcom/yftech/libgallery/ui/PictureListFragment$6;-><init>(Lcom/yftech/libgallery/ui/PictureListFragment;)V

    invoke-virtual {p1, v0}, Lcom/media/common/ui/widget/TipsExtraDialog;->setOnButtonClickListener(Lcom/media/common/ui/widget/TipsExtraDialog$OnButtonClickListener;)V

    .line 358
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/PictureListFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v0, Lcom/media/common/ui/widget/TipsExtraDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/media/common/ui/widget/TipsExtraDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 360
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/yftech/libgallery/R$id;->btn_cancel:I

    if-ne p1, v0, :cond_3

    .line 362
    iget-object p1, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->btn_cancel:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 363
    iget-object p1, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->btn_selector:Landroid/widget/TextView;

    sget v0, Lcom/yftech/libgallery/R$string;->common_select:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 365
    iget-object p1, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->pictureListAdapter:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    if-eqz p1, :cond_3

    .line 366
    iget-object p0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->pictureListAdapter:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    invoke-virtual {p0, v2, v3}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->setSelectorMode(ZZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 84
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/PictureListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/PictureListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->index:I

    .line 89
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 113
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onDestroy()V

    .line 115
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onPhotoDataChange(Lcom/media/common/event/MediaDataCallbackForPhotoDataChangedEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPhotoDataChange:index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/media/common/event/MediaDataCallbackForPhotoDataChangedEvent;->usbIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/PictureListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p1, Lcom/media/common/event/MediaDataCallbackForPhotoDataChangedEvent;->usbIndex:I

    iget v0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->index:I

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 380
    :cond_0
    invoke-direct {p0}, Lcom/yftech/libgallery/ui/PictureListFragment;->getPictureData()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public onPhotoDeleteResult(Lcom/yftech/libgallery/event/PictureDeleteResultEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "onPhotoDeleteResult"

    .line 387
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 389
    iget-boolean v0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->isDeleting:Z

    if-nez v0, :cond_0

    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->pictureListAdapter:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->pictureListAdapter:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    invoke-virtual {v0, v2, v1}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->setSelectorMode(ZZ)V

    .line 397
    :cond_1
    iget-boolean p1, p1, Lcom/yftech/libgallery/event/PictureDeleteResultEvent;->isSuccessful:Z

    if-eqz p1, :cond_2

    .line 398
    invoke-direct {p0}, Lcom/yftech/libgallery/ui/PictureListFragment;->getPictureDataAfterDeleting()V

    goto :goto_0

    .line 401
    :cond_2
    sget p1, Lcom/yftech/libgallery/R$string;->del_pic_failed:I

    invoke-virtual {p0, p1}, Lcom/yftech/libgallery/ui/PictureListFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/media/common/util/ToastUtils;->showFailMessage(Ljava/lang/String;I)V

    .line 403
    :goto_0
    iput-boolean v2, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->isDeleting:Z

    return-void
.end method

.method public onRefreshData()V
    .locals 3

    const-string v0, "PictureListFragment:onRefreshData"

    .line 95
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->pictureListAdapter:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    if-eqz v0, :cond_1

    .line 100
    iget v0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->index:I

    if-nez v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/PictureListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object v0

    const-string v1, "TAG_PHOTO_VIEWED_LAST_FOR_USB_1"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/media/common/util/SharedPrefsUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/PictureListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object v0

    const-string v1, "TAG_PHOTO_VIEWED_LAST_FOR_USB_2"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/media/common/util/SharedPrefsUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PictureListFragment:lastViewedPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 107
    iget-object p0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->pictureListAdapter:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->setLastViewedPath(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onUSBIndexSwitch(Lcom/media/common/event/USBIndexSwitchEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 411
    iget p1, p1, Lcom/media/common/event/USBIndexSwitchEvent;->index:I

    iget v0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->index:I

    if-eq p1, v0, :cond_0

    .line 414
    iget-object p1, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->pictureListAdapter:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->pictureListAdapter:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    invoke-virtual {p1}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->isSelectorMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 415
    iget-object p1, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->btn_cancel:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 416
    iget-object p1, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->btn_selector:Landroid/widget/TextView;

    sget v0, Lcom/yftech/libgallery/R$string;->common_select:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 417
    iget-object p0, p0, Lcom/yftech/libgallery/ui/PictureListFragment;->pictureListAdapter:Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/yftech/libgallery/ui/adapter/PictureListAdapter;->setSelectorMode(ZZ)V

    :cond_0
    return-void
.end method
