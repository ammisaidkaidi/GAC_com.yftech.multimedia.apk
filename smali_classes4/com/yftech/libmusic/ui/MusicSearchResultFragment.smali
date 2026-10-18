.class public Lcom/yftech/libmusic/ui/MusicSearchResultFragment;
.super Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;
.source "MusicSearchResultFragment.java"


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "searchState"


# instance fields
.field private callback:Lcom/yftech/car/media/music/CarMusicManager$CarMusicControlCallback;

.field private isUserSwitch:Z

.field private iv_background:Landroid/widget/ImageView;

.field private lin_list:Landroid/widget/LinearLayout;

.field private lin_search_fail:Landroid/widget/LinearLayout;

.field private lin_searching:Landroid/widget/LinearLayout;

.field private musicSearchResultAdapter:Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;

.field private searchState:I

.field private tv_num:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->isUserSwitch:Z

    .line 170
    new-instance v0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment$4;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/ui/MusicSearchResultFragment$4;-><init>(Lcom/yftech/libmusic/ui/MusicSearchResultFragment;)V

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->callback:Lcom/yftech/car/media/music/CarMusicManager$CarMusicControlCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libmusic/ui/MusicSearchResultFragment;)Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->musicSearchResultAdapter:Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/libmusic/ui/MusicSearchResultFragment;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->isUserSwitch:Z

    return p0
.end method

.method static synthetic access$102(Lcom/yftech/libmusic/ui/MusicSearchResultFragment;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->isUserSwitch:Z

    return p1
.end method

.method public static newInstance(I)Lcom/yftech/libmusic/ui/MusicSearchResultFragment;
    .locals 3

    .line 137
    new-instance v0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;

    invoke-direct {v0}, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;-><init>()V

    .line 138
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "searchState"

    .line 139
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    invoke-virtual {v0, v1}, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected createPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSearchState()I
    .locals 0

    .line 205
    iget p0, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->searchState:I

    return p0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 2

    .line 68
    sget v0, Lcom/yftech/libmusic/R$id;->iv_background:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->iv_background:Landroid/widget/ImageView;

    .line 70
    sget v0, Lcom/yftech/libmusic/R$id;->lin_searching:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->lin_searching:Landroid/widget/LinearLayout;

    .line 71
    sget v0, Lcom/yftech/libmusic/R$id;->lin_search_fail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->lin_search_fail:Landroid/widget/LinearLayout;

    .line 72
    sget v0, Lcom/yftech/libmusic/R$id;->lin_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->lin_list:Landroid/widget/LinearLayout;

    .line 74
    sget v0, Lcom/yftech/libmusic/R$id;->tv_num:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->tv_num:Landroid/widget/TextView;

    .line 76
    iget v0, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->searchState:I

    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->setSearchState(I)V

    .line 78
    sget v0, Lcom/yftech/libmusic/R$id;->rv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 79
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 80
    new-instance v0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment$1;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/ui/MusicSearchResultFragment$1;-><init>(Lcom/yftech/libmusic/ui/MusicSearchResultFragment;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 97
    new-instance v0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;

    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->musicSearchResultAdapter:Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;

    .line 98
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->musicSearchResultAdapter:Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;

    new-instance v1, Lcom/yftech/libmusic/ui/MusicSearchResultFragment$2;

    invoke-direct {v1, p0}, Lcom/yftech/libmusic/ui/MusicSearchResultFragment$2;-><init>(Lcom/yftech/libmusic/ui/MusicSearchResultFragment;)V

    invoke-virtual {v0, v1}, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->musicSearchResultAdapter:Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;

    new-instance v1, Lcom/yftech/libmusic/ui/MusicSearchResultFragment$3;

    invoke-direct {v1, p0}, Lcom/yftech/libmusic/ui/MusicSearchResultFragment$3;-><init>(Lcom/yftech/libmusic/ui/MusicSearchResultFragment;)V

    invoke-virtual {v0, v1}, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    .line 133
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->musicSearchResultAdapter:Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method protected onBindView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 63
    sget p0, Lcom/yftech/libmusic/R$layout;->fragment_music_search_result:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 146
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "searchState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->searchState:I

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 163
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onDestroy()V

    .line 166
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->callback:Lcom/yftech/car/media/music/CarMusicManager$CarMusicControlCallback;

    invoke-static {p0}, Lcom/yftech/car/media/music/CarMusicManager;->unregisterMusicControlCallback(Lcom/yftech/car/media/music/CarMusicManager$CarMusicControlCallback;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 155
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onResume()V

    .line 158
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->callback:Lcom/yftech/car/media/music/CarMusicManager$CarMusicControlCallback;

    invoke-static {p0}, Lcom/yftech/car/media/music/CarMusicManager;->registerMusicControlCallback(Lcom/yftech/car/media/music/CarMusicManager$CarMusicControlCallback;)V

    return-void
.end method

.method public setSearchState(I)V
    .locals 2

    .line 212
    iput p1, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->searchState:I

    .line 214
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x8

    packed-switch p1, :pswitch_data_0

    .line 238
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->iv_background:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 239
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->lin_searching:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 240
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->lin_search_fail:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 241
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->lin_list:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 231
    :pswitch_0
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->iv_background:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->lin_searching:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 233
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->lin_search_fail:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 234
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->lin_list:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 225
    :pswitch_1
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->iv_background:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->lin_searching:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 227
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->lin_search_fail:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 228
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->lin_list:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 219
    :pswitch_2
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->iv_background:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->lin_searching:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 221
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->lin_search_fail:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 222
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->lin_list:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setSearchState(ILjava/util/List;Lcom/yftech/car/media/data/entity/MediaFile;Ljava/lang/String;)V
    .locals 2
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/yftech/car/media/data/entity/MediaFile;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/yftech/libmusic/bean/MediaFileItem;",
            ">;",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 250
    iput p1, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->searchState:I

    const/16 v0, 0x8

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 266
    :pswitch_0
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->iv_background:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->lin_searching:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 268
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->lin_search_fail:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 269
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->lin_list:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 272
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->musicSearchResultAdapter:Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;

    if-eqz p1, :cond_0

    .line 273
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->musicSearchResultAdapter:Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;

    invoke-virtual {p3}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, v1}, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->setPlaying(Ljava/lang/String;Z)V

    .line 274
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->musicSearchResultAdapter:Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;

    invoke-virtual {p1, p4, v1}, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->setKeyWords(Ljava/lang/String;Z)V

    .line 275
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->musicSearchResultAdapter:Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;

    invoke-virtual {p1, p2}, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->setNewData(Ljava/util/List;)V

    .line 278
    :cond_0
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->tv_num:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const-string p3, "(%d)"

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p4, v1

    invoke-static {p1, p3, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 260
    :pswitch_1
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->iv_background:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 261
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->lin_searching:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 262
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->lin_search_fail:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 263
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->lin_list:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 254
    :pswitch_2
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->iv_background:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 255
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->lin_searching:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 256
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->lin_search_fail:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 257
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->lin_list:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
