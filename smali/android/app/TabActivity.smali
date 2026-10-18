.class public Landroid/app/TabActivity;
.super Landroid/app/ActivityGroup;
.source "TabActivity.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mDefaultTab:Ljava/lang/String;

.field private mDefaultTabIndex:I

.field private mTabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Landroid/app/TabActivity;->mDefaultTab:Ljava/lang/String;

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Landroid/app/TabActivity;->mDefaultTabIndex:I

    return-void
.end method

.method private ensureTabHost()V
    .locals 1

    .line 122
    iget-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    if-nez v0, :cond_0

    const v0, 0x10900fe

    .line 123
    invoke-virtual {p0, v0}, Landroid/app/TabActivity;->setContentView(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getTabHost()Landroid/widget/TabHost;
    .locals 0

    .line 145
    invoke-direct {p0}, Landroid/app/TabActivity;->ensureTabHost()V

    .line 146
    iget-object p0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    return-object p0
.end method

.method public getTabWidget()Landroid/widget/TabWidget;
    .locals 0

    .line 155
    iget-object p0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object p0

    return-object p0
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 1

    .line 131
    invoke-virtual {p0}, Landroid/app/TabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 132
    iget-object p0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p0}, Landroid/widget/TabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 133
    instance-of p1, p0, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 134
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .line 110
    invoke-super {p0}, Landroid/app/ActivityGroup;->onContentChanged()V

    const v0, 0x1020012

    .line 111
    invoke-virtual {p0, v0}, Landroid/app/TabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    .line 113
    iget-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p0}, Landroid/app/TabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TabHost;->setup(Landroid/app/LocalActivityManager;)V

    return-void

    .line 114
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Your content must have a TabHost whose id attribute is \'android.R.id.tabhost\'"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 84
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onPostCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-direct {p0}, Landroid/app/TabActivity;->ensureTabHost()V

    .line 88
    iget-object p1, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 89
    iget-object p0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 68
    invoke-direct {p0}, Landroid/app/TabActivity;->ensureTabHost()V

    const-string v0, "currentTab"

    .line 69
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 71
    iget-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 73
    :cond_0
    iget-object p1, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result p1

    if-gez p1, :cond_2

    .line 74
    iget-object p1, p0, Landroid/app/TabActivity;->mDefaultTab:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 75
    iget-object p1, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object p0, p0, Landroid/app/TabActivity;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_1
    iget p1, p0, Landroid/app/TabActivity;->mDefaultTabIndex:I

    if-ltz p1, :cond_2

    .line 77
    iget-object p1, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    iget p0, p0, Landroid/app/TabActivity;->mDefaultTabIndex:I

    invoke-virtual {p1, p0}, Landroid/widget/TabHost;->setCurrentTab(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 95
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 96
    iget-object p0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "currentTab"

    .line 98
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDefaultTab(I)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Landroid/app/TabActivity;->mDefaultTab:Ljava/lang/String;

    .line 62
    iput p1, p0, Landroid/app/TabActivity;->mDefaultTabIndex:I

    return-void
.end method

.method public setDefaultTab(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Landroid/app/TabActivity;->mDefaultTab:Ljava/lang/String;

    const/4 p1, -0x1

    .line 52
    iput p1, p0, Landroid/app/TabActivity;->mDefaultTabIndex:I

    return-void
.end method
