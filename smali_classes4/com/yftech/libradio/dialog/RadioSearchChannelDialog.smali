.class public Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;
.super Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;
.source "RadioSearchChannelDialog.java"

# interfaces
.implements Lcom/yftech/libradio/view/IRadioSearchChannelDialogView;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment<",
        "Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter;",
        ">;",
        "Lcom/yftech/libradio/view/IRadioSearchChannelDialogView;",
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

.field private radioSearchChannelAdapter:Lcom/yftech/libradio/dialog/adapter/RadioSearchChannelAdapter;

.field private rl_search_fail:Landroid/widget/RelativeLayout;

.field private rv:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->pullUp:Z

    .line 63
    iput-boolean v0, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->isFirstFlag:Z

    .line 351
    new-instance v0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog$4;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog$4;-><init>(Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;)V

    iput-object v0, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->mCarRadioControlCallback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->pullUp:Z

    return p0
.end method

.method static synthetic access$002(Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->pullUp:Z

    return p1
.end method

.method static synthetic access$100(Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;)Lcom/yftech/libradio/dialog/adapter/RadioSearchChannelAdapter;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->radioSearchChannelAdapter:Lcom/yftech/libradio/dialog/adapter/RadioSearchChannelAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;)Landroid/widget/ImageView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->iv_toBoard:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->setBoardVisible(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->band:I

    return p0
.end method

.method public static newInstance(ILcom/yftech/libmvpmodule/mvp/BaseDialogFragment$OnDestotyListener;)Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;
    .locals 3

    .line 199
    new-instance v0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;

    invoke-direct {v0}, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;-><init>()V

    .line 200
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "band"

    .line 201
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 202
    invoke-virtual {v0, v1}, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->setArguments(Landroid/os/Bundle;)V

    .line 203
    invoke-virtual {v0, p1}, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->setOnDestotyListener(Lcom/yftech/libmvpmodule/mvp/BaseDialogFragment$OnDestotyListener;)V

    return-object v0
.end method

.method private setBoardVisible(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 178
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->iv_toBoard:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 179
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->iv_toBoard:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->iv_toBoard:Landroid/widget/ImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 183
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->iv_toBoard:Landroid/widget/ImageView;

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

    new-instance v0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog$3;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog$3;-><init>(Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 189
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 193
    :cond_0
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->iv_toBoard:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 194
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->iv_toBoard:Landroid/widget/ImageView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->createPresenter()Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter;

    move-result-object p0

    return-object p0
.end method

.method protected createPresenter()Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter;
    .locals 1

    .line 71
    new-instance v0, Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public displaySearchList(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/radio/entity/DataOfRadio;",
            ">;)V"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->pb_list:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v0, 0x4

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 279
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 284
    :cond_0
    iget-object v3, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->rl_search_fail:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 285
    iget-object v1, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 287
    iget-object v1, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->radioSearchChannelAdapter:Lcom/yftech/libradio/dialog/adapter/RadioSearchChannelAdapter;

    if-eqz v1, :cond_4

    .line 288
    iget-object v1, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->radioSearchChannelAdapter:Lcom/yftech/libradio/dialog/adapter/RadioSearchChannelAdapter;

    invoke-virtual {v1, p1, v2}, Lcom/yftech/libradio/dialog/adapter/RadioSearchChannelAdapter;->setPlayingIndex(IZ)V

    .line 291
    iget-object v1, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->radioSearchChannelAdapter:Lcom/yftech/libradio/dialog/adapter/RadioSearchChannelAdapter;

    invoke-virtual {v1, p2}, Lcom/yftech/libradio/dialog/adapter/RadioSearchChannelAdapter;->setNewData(Ljava/util/List;)V

    if-ltz p1, :cond_4

    .line 293
    iget-boolean v1, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->isFirstFlag:Z

    if-eqz v1, :cond_4

    .line 294
    iput-boolean v2, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->isFirstFlag:Z

    if-eqz p1, :cond_2

    .line 296
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, p1

    if-gt p2, v0, :cond_1

    goto :goto_0

    .line 305
    :cond_1
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_2

    .line 298
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_2

    .line 280
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->rl_search_fail:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 281
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 9

    .line 82
    sget v0, Lcom/yftech/libradio/R$id;->tv_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    sget v0, Lcom/yftech/libradio/R$id;->iv_search:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    sget v0, Lcom/yftech/libradio/R$id;->iv_close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->isFirstFlag:Z

    .line 86
    sget v0, Lcom/yftech/libradio/R$id;->rl_search_fail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->rl_search_fail:Landroid/widget/RelativeLayout;

    .line 87
    sget v0, Lcom/yftech/libradio/R$id;->iv_toBoard:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->iv_toBoard:Landroid/widget/ImageView;

    .line 88
    iget-object v0, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->iv_toBoard:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    sget v0, Lcom/yftech/libradio/R$id;->pb_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->pb_list:Landroid/widget/ProgressBar;

    .line 90
    sget v0, Lcom/yftech/libradio/R$id;->rv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->rv:Landroidx/recyclerview/widget/RecyclerView;

    .line 91
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 92
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->rv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 94
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    sget v0, Lcom/yftech/libradio/R$drawable;->thumb_drawable:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/graphics/drawable/StateListDrawable;

    .line 95
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    sget v0, Lcom/yftech/libradio/R$drawable;->line_drawable:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 97
    new-instance v0, Lcom/media/common/util/FastScroller;

    iget-object v1, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->rv:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v6, 0x14

    const/16 v7, 0x64

    const/16 v8, 0x14

    move-object v2, v4

    move-object v3, v5

    invoke-direct/range {v0 .. v8}, Lcom/media/common/util/FastScroller;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog$1;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog$1;-><init>(Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 149
    new-instance p1, Lcom/yftech/libradio/dialog/adapter/RadioSearchChannelAdapter;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/yftech/libradio/dialog/adapter/RadioSearchChannelAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->radioSearchChannelAdapter:Lcom/yftech/libradio/dialog/adapter/RadioSearchChannelAdapter;

    .line 150
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->radioSearchChannelAdapter:Lcom/yftech/libradio/dialog/adapter/RadioSearchChannelAdapter;

    new-instance v0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog$2;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog$2;-><init>(Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;)V

    invoke-virtual {p1, v0}, Lcom/yftech/libradio/dialog/adapter/RadioSearchChannelAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 166
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->rv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->radioSearchChannelAdapter:Lcom/yftech/libradio/dialog/adapter/RadioSearchChannelAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 169
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->pb_list:Landroid/widget/ProgressBar;

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

    .line 76
    sget p0, Lcom/yftech/libradio/R$layout;->dialog_radio_search_channel:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 317
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libradio/R$id;->iv_close:I

    if-ne v0, v1, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->dismiss()V

    goto :goto_1

    .line 321
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libradio/R$id;->iv_search:I

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libradio/R$id;->tv_title:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 337
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/yftech/libradio/R$id;->iv_toBoard:I

    if-ne p1, v0, :cond_5

    .line 338
    iget-boolean p1, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->pullUp:Z

    if-eqz p1, :cond_2

    .line 340
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->rv:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_1

    .line 343
    :cond_2
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->radioSearchChannelAdapter:Lcom/yftech/libradio/dialog/adapter/RadioSearchChannelAdapter;

    invoke-virtual {p1}, Lcom/yftech/libradio/dialog/adapter/RadioSearchChannelAdapter;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_5

    .line 345
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_1

    .line 322
    :cond_3
    :goto_0
    invoke-static {}, Lcom/yftech/libradio/Utils;->isQuickClick()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p0, "iv_search or tv_title quick click"

    .line 323
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    return-void

    .line 326
    :cond_4
    sget p1, Lcom/yftech/libradio/R$string;->radio_channel_search_dialog_search_scanning:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->band:I

    invoke-static {p1, v0}, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->newInstance(Ljava/lang/String;I)Lcom/yftech/libradio/dialog/RadioSearchingDialog;

    move-result-object p1

    .line 334
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 209
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 210
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "band"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->band:I

    .line 213
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate() band:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->band:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 214
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->mCarRadioControlCallback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

    invoke-static {p0}, Lcom/yftech/car/media/radio/CarRadioManager;->registerRadioControlCallback(Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 219
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onDestroy()V

    const-string v0, "onDestroy()"

    .line 220
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 221
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->mCarRadioControlCallback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

    invoke-static {p0}, Lcom/yftech/car/media/radio/CarRadioManager;->unregisterRadioControlCallback(Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 263
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onPause()V

    const-string p0, "onPause()"

    .line 264
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 256
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onResume()V

    const-string v0, "onResume()"

    .line 257
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter;

    iget p0, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->band:I

    invoke-virtual {v0, p0}, Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter;->getSearchList(I)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 226
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onStart()V

    const-string v0, "onStart()"

    .line 227
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 238
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x106000d

    .line 240
    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 241
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    .line 242
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 243
    sget v1, Lcom/yftech/libradio/R$style;->DialogRightAnimation:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v1, 0x250

    .line 244
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x2b0

    .line 245
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const v1, 0x800033

    .line 246
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x9e

    .line 247
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 v1, 0x3e

    .line 248
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 249
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 269
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onStop()V

    const-string p0, "onStop()"

    .line 270
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method
