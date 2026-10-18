.class public Lcom/yftech/libradio/dabui/DabSortListActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "DabSortListActivity.java"


# static fields
.field private static final TAB_TYPE_ALL_STATION:I = 0x4e23

.field private static final TAB_TYPE_SORTED_LIST:I = 0x4e25

.field private static final TAB_TYPE_STATION_LIST:I = 0x4e24


# instance fields
.field private FRAGMENT_TAG1:Ljava/lang/String;

.field private FRAGMENT_TAG2:Ljava/lang/String;

.field private FRAGMENT_TAG3:Ljava/lang/String;

.field private allStationFragment:Lcom/yftech/libradio/dabui/DabAllStationFragment;

.field private rbAllStation:Landroid/widget/RadioButton;

.field private rbSortedList:Landroid/widget/RadioButton;

.field private rbStationList:Landroid/widget/RadioButton;

.field private rgDabList:Landroid/widget/RadioGroup;

.field private sortedListFragment:Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;

.field private stationListFragment:Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;

.field private viewSearch:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "fragment_allStationFragment"

    .line 38
    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabSortListActivity;->FRAGMENT_TAG1:Ljava/lang/String;

    const-string v0, "fragment_stationListFragment"

    .line 39
    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabSortListActivity;->FRAGMENT_TAG2:Ljava/lang/String;

    const-string v0, "fragment_sortedListFragment"

    .line 40
    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabSortListActivity;->FRAGMENT_TAG3:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libradio/dabui/DabSortListActivity;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/yftech/libradio/dabui/DabSortListActivity;->showTypeView(I)V

    return-void
.end method

.method private showFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 116
    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabSortListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 117
    sget v0, Lcom/yftech/libradio/R$id;->fragment_group_dab_list:I

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private showTypeView(I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x4e23

    if-ne v1, p1, :cond_0

    .line 122
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabSortListActivity;->rbAllStation:Landroid/widget/RadioButton;

    const-string v1, "sourcehan-sans-regular"

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 123
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabSortListActivity;->rbAllStation:Landroid/widget/RadioButton;

    sget v1, Lcom/yftech/libradio/R$color;->colorFFFFFF:I

    invoke-virtual {p0, v1}, Lcom/yftech/libradio/dabui/DabSortListActivity;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 124
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabSortListActivity;->rbStationList:Landroid/widget/RadioButton;

    const-string v1, "sourcehan-sans-medium"

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 125
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabSortListActivity;->rbStationList:Landroid/widget/RadioButton;

    sget v1, Lcom/yftech/libradio/R$color;->colorB3FFFFFF:I

    invoke-virtual {p0, v1}, Lcom/yftech/libradio/dabui/DabSortListActivity;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 126
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabSortListActivity;->rbSortedList:Landroid/widget/RadioButton;

    const-string v1, "sourcehan-sans-medium"

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 127
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabSortListActivity;->rbSortedList:Landroid/widget/RadioButton;

    sget v0, Lcom/yftech/libradio/R$color;->colorB3FFFFFF:I

    invoke-virtual {p0, v0}, Lcom/yftech/libradio/dabui/DabSortListActivity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 128
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabSortListActivity;->allStationFragment:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-direct {p0, p1}, Lcom/yftech/libradio/dabui/DabSortListActivity;->showFragment(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x4e24

    if-ne v1, p1, :cond_1

    .line 130
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabSortListActivity;->rbAllStation:Landroid/widget/RadioButton;

    const-string v1, "sourcehan-sans-medium"

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 131
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabSortListActivity;->rbAllStation:Landroid/widget/RadioButton;

    sget v1, Lcom/yftech/libradio/R$color;->colorB3FFFFFF:I

    invoke-virtual {p0, v1}, Lcom/yftech/libradio/dabui/DabSortListActivity;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 132
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabSortListActivity;->rbStationList:Landroid/widget/RadioButton;

    const-string v1, "sourcehan-sans-regular"

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 133
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabSortListActivity;->rbStationList:Landroid/widget/RadioButton;

    sget v1, Lcom/yftech/libradio/R$color;->colorFFFFFF:I

    invoke-virtual {p0, v1}, Lcom/yftech/libradio/dabui/DabSortListActivity;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 134
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabSortListActivity;->rbSortedList:Landroid/widget/RadioButton;

    const-string v1, "sourcehan-sans-medium"

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 135
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabSortListActivity;->rbSortedList:Landroid/widget/RadioButton;

    sget v0, Lcom/yftech/libradio/R$color;->colorB3FFFFFF:I

    invoke-virtual {p0, v0}, Lcom/yftech/libradio/dabui/DabSortListActivity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 136
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabSortListActivity;->stationListFragment:Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;

    invoke-direct {p0, p1}, Lcom/yftech/libradio/dabui/DabSortListActivity;->showFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x4e25

    if-ne v1, p1, :cond_2

    .line 138
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabSortListActivity;->rbAllStation:Landroid/widget/RadioButton;

    const-string v1, "sourcehan-sans-medium"

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 139
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabSortListActivity;->rbAllStation:Landroid/widget/RadioButton;

    sget v1, Lcom/yftech/libradio/R$color;->colorB3FFFFFF:I

    invoke-virtual {p0, v1}, Lcom/yftech/libradio/dabui/DabSortListActivity;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 140
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabSortListActivity;->rbStationList:Landroid/widget/RadioButton;

    const-string v1, "sourcehan-sans-medium"

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 141
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabSortListActivity;->rbStationList:Landroid/widget/RadioButton;

    sget v1, Lcom/yftech/libradio/R$color;->colorB3FFFFFF:I

    invoke-virtual {p0, v1}, Lcom/yftech/libradio/dabui/DabSortListActivity;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 142
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabSortListActivity;->rbSortedList:Landroid/widget/RadioButton;

    const-string v1, "sourcehan-sans-regular"

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 143
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabSortListActivity;->rbSortedList:Landroid/widget/RadioButton;

    sget v0, Lcom/yftech/libradio/R$color;->colorFFFFFF:I

    invoke-virtual {p0, v0}, Lcom/yftech/libradio/dabui/DabSortListActivity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 144
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabSortListActivity;->sortedListFragment:Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;

    invoke-direct {p0, p1}, Lcom/yftech/libradio/dabui/DabSortListActivity;->showFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_2
    const-string p0, "tab switch showTypeView error---"

    .line 146
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 43
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    sget p1, Lcom/yftech/libradio/R$layout;->activity_dab_sort_list:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dabui/DabSortListActivity;->setContentView(I)V

    .line 45
    sget p1, Lcom/yftech/libradio/R$id;->rb_dab_all_station:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dabui/DabSortListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabSortListActivity;->rbAllStation:Landroid/widget/RadioButton;

    .line 46
    sget p1, Lcom/yftech/libradio/R$id;->rb_dab_station_list:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dabui/DabSortListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabSortListActivity;->rbStationList:Landroid/widget/RadioButton;

    .line 47
    sget p1, Lcom/yftech/libradio/R$id;->rb_dab_sort_station_list:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dabui/DabSortListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabSortListActivity;->rbSortedList:Landroid/widget/RadioButton;

    .line 48
    sget p1, Lcom/yftech/libradio/R$id;->tab_dab_list:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dabui/DabSortListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabSortListActivity;->rgDabList:Landroid/widget/RadioGroup;

    .line 49
    sget p1, Lcom/yftech/libradio/R$id;->layout_dab_search:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dabui/DabSortListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabSortListActivity;->viewSearch:Landroid/view/View;

    .line 50
    new-instance p1, Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-direct {p1}, Lcom/yftech/libradio/dabui/DabAllStationFragment;-><init>()V

    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabSortListActivity;->allStationFragment:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    .line 51
    new-instance p1, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;

    invoke-direct {p1}, Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;-><init>()V

    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabSortListActivity;->stationListFragment:Lcom/yftech/libradio/dabui/DabStationFilterByEnsembleFragment;

    .line 52
    new-instance p1, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;

    invoke-direct {p1}, Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;-><init>()V

    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabSortListActivity;->sortedListFragment:Lcom/yftech/libradio/dabui/DabStationFilterByPtyFragment;

    .line 53
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabSortListActivity;->rgDabList:Landroid/widget/RadioGroup;

    new-instance v0, Lcom/yftech/libradio/dabui/DabSortListActivity$1;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dabui/DabSortListActivity$1;-><init>(Lcom/yftech/libradio/dabui/DabSortListActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 65
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabSortListActivity;->viewSearch:Landroid/view/View;

    new-instance v0, Lcom/yftech/libradio/dabui/DabSortListActivity$2;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dabui/DabSortListActivity$2;-><init>(Lcom/yftech/libradio/dabui/DabSortListActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 99
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 93
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 94
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabSortListActivity;->rbAllStation:Landroid/widget/RadioButton;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method
