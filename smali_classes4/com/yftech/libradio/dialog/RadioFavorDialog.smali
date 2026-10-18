.class public Lcom/yftech/libradio/dialog/RadioFavorDialog;
.super Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;
.source "RadioFavorDialog.java"

# interfaces
.implements Lcom/yftech/libradio/view/IRadioFavorDialogView;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment<",
        "Lcom/yftech/libradio/presenter/RadioFavorPresenter;",
        ">;",
        "Lcom/yftech/libradio/view/IRadioFavorDialogView;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "band"


# instance fields
.field private band:I

.field private isFirstFlag:Z

.field private iv_toBoard:Landroid/widget/ImageView;

.field private linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private final mCarRadioControlCallback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

.field private pb_list:Landroid/widget/ProgressBar;

.field private pullUp:Z

.field private radioFavorAdapter:Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;

.field private rl_search_fail:Landroid/widget/RelativeLayout;

.field private rv:Landroidx/recyclerview/widget/RecyclerView;

.field private tv_num:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->pullUp:Z

    .line 65
    iput-boolean v0, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->isFirstFlag:Z

    .line 377
    new-instance v0, Lcom/yftech/libradio/dialog/RadioFavorDialog$5;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dialog/RadioFavorDialog$5;-><init>(Lcom/yftech/libradio/dialog/RadioFavorDialog;)V

    iput-object v0, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->mCarRadioControlCallback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libradio/dialog/RadioFavorDialog;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->pullUp:Z

    return p0
.end method

.method static synthetic access$002(Lcom/yftech/libradio/dialog/RadioFavorDialog;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->pullUp:Z

    return p1
.end method

.method static synthetic access$100(Lcom/yftech/libradio/dialog/RadioFavorDialog;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/libradio/dialog/RadioFavorDialog;)Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->radioFavorAdapter:Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/libradio/dialog/RadioFavorDialog;)Landroid/widget/ImageView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->iv_toBoard:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/libradio/dialog/RadioFavorDialog;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->setBoardVisible(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/yftech/libradio/dialog/RadioFavorDialog;)Landroid/widget/TextView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->tv_num:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yftech/libradio/dialog/RadioFavorDialog;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->rl_search_fail:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/yftech/libradio/dialog/RadioFavorDialog;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->band:I

    return p0
.end method

.method public static newInstance(ILcom/yftech/libmvpmodule/mvp/BaseDialogFragment$OnDestotyListener;)Lcom/yftech/libradio/dialog/RadioFavorDialog;
    .locals 3

    .line 77
    new-instance v0, Lcom/yftech/libradio/dialog/RadioFavorDialog;

    invoke-direct {v0}, Lcom/yftech/libradio/dialog/RadioFavorDialog;-><init>()V

    .line 78
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "band"

    .line 79
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    invoke-virtual {v0, v1}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->setArguments(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {v0, p1}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->setOnDestotyListener(Lcom/yftech/libmvpmodule/mvp/BaseDialogFragment$OnDestotyListener;)V

    return-object v0
.end method

.method private setBoardVisible(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 293
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->iv_toBoard:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 294
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->iv_toBoard:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->iv_toBoard:Landroid/widget/ImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 298
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->iv_toBoard:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/yftech/libradio/dialog/RadioFavorDialog$4;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dialog/RadioFavorDialog$4;-><init>(Lcom/yftech/libradio/dialog/RadioFavorDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 304
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 308
    :cond_0
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->iv_toBoard:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 309
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->iv_toBoard:Landroid/widget/ImageView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;
    .locals 0

    .line 50
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->createPresenter()Lcom/yftech/libradio/presenter/RadioFavorPresenter;

    move-result-object p0

    return-object p0
.end method

.method protected createPresenter()Lcom/yftech/libradio/presenter/RadioFavorPresenter;
    .locals 1

    .line 73
    new-instance v0, Lcom/yftech/libradio/presenter/RadioFavorPresenter;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yftech/libradio/presenter/RadioFavorPresenter;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public displayFavorList(ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/yftech/libradio/bean/RadioChannelInfo;",
            ">;)V"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->pb_list:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 318
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 324
    :cond_0
    iget-object v3, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->tv_num:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "(%d)"

    new-array v6, v0, [Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v3, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->rl_search_fail:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 328
    iget-object v1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->radioFavorAdapter:Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;

    if-eqz v1, :cond_4

    .line 329
    iget-object v1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->radioFavorAdapter:Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;

    invoke-virtual {v1, p1, v2}, Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;->setPlayingIndex(IZ)V

    .line 332
    iget-object v1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->radioFavorAdapter:Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;

    invoke-virtual {v1, p2}, Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;->setNewData(Ljava/util/List;)V

    if-ltz p1, :cond_4

    .line 335
    iget-boolean v1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->isFirstFlag:Z

    if-eqz v1, :cond_4

    .line 336
    iput-boolean v2, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->isFirstFlag:Z

    if-eqz p1, :cond_2

    .line 338
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, p1

    const/4 v1, 0x4

    if-gt p2, v1, :cond_1

    goto :goto_0

    .line 347
    :cond_1
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_2

    .line 340
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_2

    .line 319
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->rl_search_fail:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 321
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->tv_num:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const-string p2, "(%d)"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p1, p2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_2
    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 9

    .line 158
    sget v0, Lcom/yftech/libradio/R$id;->tv_num:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->tv_num:Landroid/widget/TextView;

    .line 159
    sget v0, Lcom/yftech/libradio/R$id;->iv_close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    .line 160
    iput-boolean v0, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->isFirstFlag:Z

    .line 161
    sget v0, Lcom/yftech/libradio/R$id;->rl_search_fail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->rl_search_fail:Landroid/widget/RelativeLayout;

    .line 162
    sget v0, Lcom/yftech/libradio/R$id;->iv_toBoard:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->iv_toBoard:Landroid/widget/ImageView;

    .line 163
    iget-object v0, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->iv_toBoard:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    sget v0, Lcom/yftech/libradio/R$id;->pb_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->pb_list:Landroid/widget/ProgressBar;

    .line 165
    sget v0, Lcom/yftech/libradio/R$id;->rv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->rv:Landroidx/recyclerview/widget/RecyclerView;

    .line 166
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 167
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->rv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 176
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    sget v0, Lcom/yftech/libradio/R$drawable;->thumb_drawable:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/graphics/drawable/StateListDrawable;

    .line 177
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    sget v0, Lcom/yftech/libradio/R$drawable;->line_drawable:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 179
    new-instance v0, Lcom/media/common/util/FastScroller;

    iget-object v1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->rv:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v6, 0x14

    const/16 v7, 0x64

    const/16 v8, 0x14

    move-object v2, v4

    move-object v3, v5

    invoke-direct/range {v0 .. v8}, Lcom/media/common/util/FastScroller;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V

    .line 181
    :cond_0
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/yftech/libradio/dialog/RadioFavorDialog$1;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dialog/RadioFavorDialog$1;-><init>(Lcom/yftech/libradio/dialog/RadioFavorDialog;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 224
    new-instance p1, Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->radioFavorAdapter:Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;

    .line 225
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->radioFavorAdapter:Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;

    new-instance v0, Lcom/yftech/libradio/dialog/RadioFavorDialog$2;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dialog/RadioFavorDialog$2;-><init>(Lcom/yftech/libradio/dialog/RadioFavorDialog;)V

    invoke-virtual {p1, v0}, Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    .line 268
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->radioFavorAdapter:Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;

    new-instance v0, Lcom/yftech/libradio/dialog/RadioFavorDialog$3;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dialog/RadioFavorDialog$3;-><init>(Lcom/yftech/libradio/dialog/RadioFavorDialog;)V

    invoke-virtual {p1, v0}, Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 281
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->rv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->radioFavorAdapter:Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 284
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->pb_list:Landroid/widget/ProgressBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected onBindView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 153
    sget p0, Lcom/yftech/libradio/R$layout;->dialog_radio_favor:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 358
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libradio/R$id;->iv_close:I

    if-ne v0, v1, :cond_0

    .line 359
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->dismiss()V

    goto :goto_0

    .line 362
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/yftech/libradio/R$id;->iv_toBoard:I

    if-ne p1, v0, :cond_2

    .line 364
    iget-boolean p1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->pullUp:Z

    if-eqz p1, :cond_1

    .line 366
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->rv:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    .line 369
    :cond_1
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->radioFavorAdapter:Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;

    invoke-virtual {p1}, Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_2

    .line 371
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 87
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "band"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->band:I

    .line 91
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate() band:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->band:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 92
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->mCarRadioControlCallback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

    invoke-static {p0}, Lcom/yftech/car/media/radio/CarRadioManager;->registerRadioControlCallback(Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 97
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onDestroy()V

    const-string v0, "onDestroy()"

    .line 98
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 99
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->mCarRadioControlCallback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

    invoke-static {p0}, Lcom/yftech/car/media/radio/CarRadioManager;->unregisterRadioControlCallback(Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 141
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onPause()V

    const-string p0, "onPause()"

    .line 142
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 134
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onResume()V

    const-string v0, "onResume()"

    .line 135
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/yftech/libradio/presenter/RadioFavorPresenter;

    iget p0, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog;->band:I

    invoke-virtual {v0, p0}, Lcom/yftech/libradio/presenter/RadioFavorPresenter;->getFavors(I)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 104
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onStart()V

    const-string v0, "onStart()"

    .line 105
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 116
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x106000d

    .line 118
    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 119
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    .line 120
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 121
    sget v1, Lcom/yftech/libradio/R$style;->DialogRightAnimation:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v1, 0x250

    .line 122
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x2b0

    .line 123
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const v1, 0x800033

    .line 124
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x9e

    .line 125
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 v1, 0x3e

    .line 126
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 127
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 147
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onStop()V

    const-string p0, "onStop()"

    .line 148
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method
