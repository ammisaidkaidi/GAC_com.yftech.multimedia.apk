.class public Lcom/yftech/libradio/dabui/epg/EpgActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "EpgActivity.java"


# static fields
.field private static final KEY_SP_TAB_INDEX:Ljava/lang/String; = "yftech.epg.tab"

.field private static final TAB_TYPE_EPG_LIST:I = 0x4e26

.field private static final TAB_TYPE_EPG_SUBSCRIBE:I = 0x4e27


# instance fields
.field private allEgpList:Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;

.field private rbAllList:Landroid/widget/RadioButton;

.field private rbSubscribeList:Landroid/widget/RadioButton;

.field private rgEpg:Landroid/widget/RadioGroup;

.field private subsCribedFragment:Lcom/yftech/libradio/dabui/epg/EpgSubsCribedProgramFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libradio/dabui/epg/EpgActivity;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/yftech/libradio/dabui/epg/EpgActivity;->showTypeView(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/libradio/dabui/epg/EpgActivity;Ljava/lang/String;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/yftech/libradio/dabui/epg/EpgActivity;->saveSharedTabIndex(Ljava/lang/String;I)V

    return-void
.end method

.method private getSharedTabIndex(Ljava/lang/String;I)I
    .locals 2

    const-string v0, "yf_radio_app_data"

    const/4 v1, 0x0

    .line 93
    invoke-virtual {p0, v0, v1}, Lcom/yftech/libradio/dabui/epg/EpgActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private saveSharedTabIndex(Ljava/lang/String;I)V
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveSharedRadioData() key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    const-string v0, "yf_radio_app_data"

    const/4 v1, 0x0

    .line 98
    invoke-virtual {p0, v0, v1}, Lcom/yftech/libradio/dabui/epg/EpgActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private showFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/epg/EpgActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 71
    sget v0, Lcom/yftech/libradio/R$id;->fragment_egp:I

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private showTypeView(I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x4e26

    if-ne v1, p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgActivity;->rbAllList:Landroid/widget/RadioButton;

    const-string v1, "sourcehan-sans-regular"

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 77
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgActivity;->rbAllList:Landroid/widget/RadioButton;

    sget v1, Lcom/yftech/libradio/R$color;->colorFFFFFF:I

    invoke-virtual {p0, v1}, Lcom/yftech/libradio/dabui/epg/EpgActivity;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 78
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgActivity;->rbSubscribeList:Landroid/widget/RadioButton;

    const-string v1, "sourcehan-sans-medium"

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 79
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgActivity;->rbSubscribeList:Landroid/widget/RadioButton;

    sget v0, Lcom/yftech/libradio/R$color;->colorB3FFFFFF:I

    invoke-virtual {p0, v0}, Lcom/yftech/libradio/dabui/epg/EpgActivity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 80
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgActivity;->allEgpList:Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;

    invoke-direct {p0, p1}, Lcom/yftech/libradio/dabui/epg/EpgActivity;->showFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x4e27

    if-ne v1, p1, :cond_1

    .line 82
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgActivity;->rbAllList:Landroid/widget/RadioButton;

    const-string v1, "sourcehan-sans-medium"

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 83
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgActivity;->rbAllList:Landroid/widget/RadioButton;

    sget v1, Lcom/yftech/libradio/R$color;->colorB3FFFFFF:I

    invoke-virtual {p0, v1}, Lcom/yftech/libradio/dabui/epg/EpgActivity;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 84
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgActivity;->rbSubscribeList:Landroid/widget/RadioButton;

    const-string v1, "sourcehan-sans-regular"

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 85
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgActivity;->rbSubscribeList:Landroid/widget/RadioButton;

    sget v0, Lcom/yftech/libradio/R$color;->colorFFFFFF:I

    invoke-virtual {p0, v0}, Lcom/yftech/libradio/dabui/epg/EpgActivity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 86
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgActivity;->subsCribedFragment:Lcom/yftech/libradio/dabui/epg/EpgSubsCribedProgramFragment;

    invoke-direct {p0, p1}, Lcom/yftech/libradio/dabui/epg/EpgActivity;->showFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_1
    const-string p0, "tab switch showTypeView error---"

    .line 88
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

    .line 30
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    sget p1, Lcom/yftech/libradio/R$layout;->activity_epg:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dabui/epg/EpgActivity;->setContentView(I)V

    .line 32
    sget p1, Lcom/yftech/libradio/R$id;->rb_epg_all_list:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dabui/epg/EpgActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgActivity;->rbAllList:Landroid/widget/RadioButton;

    .line 33
    sget p1, Lcom/yftech/libradio/R$id;->rb_epg_subscribed_list:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dabui/epg/EpgActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgActivity;->rbSubscribeList:Landroid/widget/RadioButton;

    .line 34
    sget p1, Lcom/yftech/libradio/R$id;->tab_epg:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dabui/epg/EpgActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgActivity;->rgEpg:Landroid/widget/RadioGroup;

    .line 35
    new-instance p1, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;

    invoke-direct {p1}, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;-><init>()V

    iput-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgActivity;->allEgpList:Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;

    .line 36
    new-instance p1, Lcom/yftech/libradio/dabui/epg/EpgSubsCribedProgramFragment;

    invoke-direct {p1}, Lcom/yftech/libradio/dabui/epg/EpgSubsCribedProgramFragment;-><init>()V

    iput-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgActivity;->subsCribedFragment:Lcom/yftech/libradio/dabui/epg/EpgSubsCribedProgramFragment;

    .line 37
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgActivity;->rgEpg:Landroid/widget/RadioGroup;

    new-instance v0, Lcom/yftech/libradio/dabui/epg/EpgActivity$1;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dabui/epg/EpgActivity$1;-><init>(Lcom/yftech/libradio/dabui/epg/EpgActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 66
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onStart()V
    .locals 4

    .line 53
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    const-string v0, "yftech.epg.tab"

    const/16 v1, 0x4e26

    .line 54
    invoke-direct {p0, v0, v1}, Lcom/yftech/libradio/dabui/epg/EpgActivity;->getSharedTabIndex(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x4e27

    if-ne v0, v3, :cond_0

    .line 56
    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgActivity;->rbSubscribeList:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 57
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgActivity;->rbAllList:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgActivity;->rbAllList:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 60
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgActivity;->rbSubscribeList:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    return-void
.end method
