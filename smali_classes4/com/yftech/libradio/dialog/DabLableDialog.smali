.class public Lcom/yftech/libradio/dialog/DabLableDialog;
.super Landroid/app/Dialog;
.source "DabLableDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libradio/dialog/DabLableDialog$LabelListCallback;,
        Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;,
        Lcom/yftech/libradio/dialog/DabLableDialog$LabelAdapter;
    }
.end annotation


# static fields
.field public static final BTN_ACTION:Ljava/lang/String; = "com.systemui.btn.action"

.field public static final BTN_ETR_HOME:I = 0x0

.field public static final BTN_ETR_KEY:Ljava/lang/String; = "key"

.field private static final ITEM_WIDTH_1:I = 0x122

.field private static final ITEM_WIDTH_2:I = 0x256

.field private static final ITEM_WIDTH_3:I = 0x38a


# instance fields
.field private callback:Lcom/yftech/libradio/dialog/DabLableDialog$LabelListCallback;

.field private currentSelectedLabel:Ljava/lang/String;

.field private ivBack:Landroid/widget/ImageView;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private originalLabelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private processedLabelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rvLabelList:Landroidx/recyclerview/widget/RecyclerView;

.field private textPaint:Landroid/text/TextPaint;

.field private title:Ljava/lang/String;

.field private tvTtile:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 67
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabLableDialog;->originalLabelList:Ljava/util/List;

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabLableDialog;->processedLabelList:Ljava/util/List;

    .line 56
    new-instance p1, Lcom/yftech/libradio/dialog/DabLableDialog$1;

    invoke-direct {p1, p0}, Lcom/yftech/libradio/dialog/DabLableDialog$1;-><init>(Lcom/yftech/libradio/dialog/DabLableDialog;)V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabLableDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    invoke-direct {p0}, Lcom/yftech/libradio/dialog/DabLableDialog;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabLableDialog;->originalLabelList:Ljava/util/List;

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabLableDialog;->processedLabelList:Ljava/util/List;

    .line 56
    new-instance p1, Lcom/yftech/libradio/dialog/DabLableDialog$1;

    invoke-direct {p1, p0}, Lcom/yftech/libradio/dialog/DabLableDialog$1;-><init>(Lcom/yftech/libradio/dialog/DabLableDialog;)V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabLableDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    invoke-direct {p0}, Lcom/yftech/libradio/dialog/DabLableDialog;->init()V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabLableDialog;->originalLabelList:Ljava/util/List;

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabLableDialog;->processedLabelList:Ljava/util/List;

    .line 56
    new-instance p1, Lcom/yftech/libradio/dialog/DabLableDialog$1;

    invoke-direct {p1, p0}, Lcom/yftech/libradio/dialog/DabLableDialog$1;-><init>(Lcom/yftech/libradio/dialog/DabLableDialog;)V

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabLableDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    invoke-direct {p0}, Lcom/yftech/libradio/dialog/DabLableDialog;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/libradio/dialog/DabLableDialog;)Ljava/util/List;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabLableDialog;->processedLabelList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/libradio/dialog/DabLableDialog;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabLableDialog;->currentSelectedLabel:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yftech/libradio/dialog/DabLableDialog;)Landroid/text/TextPaint;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabLableDialog;->textPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yftech/libradio/dialog/DabLableDialog;)Lcom/yftech/libradio/dialog/DabLableDialog$LabelListCallback;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabLableDialog;->callback:Lcom/yftech/libradio/dialog/DabLableDialog$LabelListCallback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/yftech/libradio/dialog/DabLableDialog;)Ljava/util/List;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabLableDialog;->originalLabelList:Ljava/util/List;

    return-object p0
.end method

.method private init()V
    .locals 2

    .line 104
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/yftech/libradio/dialog/DabLableDialog;->textPaint:Landroid/text/TextPaint;

    .line 105
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabLableDialog;->textPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 106
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabLableDialog;->textPaint:Landroid/text/TextPaint;

    invoke-static {}, Lcom/media/common/util/BaseApplication;->getInstance()Lcom/media/common/util/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/media/common/util/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Landroid/text/TextPaint;->setTextLocale(Ljava/util/Locale;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 110
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 111
    sget p1, Lcom/yftech/libradio/R$layout;->dialog_dab_lable_select:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dialog/DabLableDialog;->setContentView(I)V

    .line 112
    sget p1, Lcom/yftech/libradio/R$id;->iv_back:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dialog/DabLableDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabLableDialog;->ivBack:Landroid/widget/ImageView;

    .line 113
    sget p1, Lcom/yftech/libradio/R$id;->tv_title_filter_sel:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dialog/DabLableDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabLableDialog;->tvTtile:Landroid/widget/TextView;

    .line 114
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabLableDialog;->ivBack:Landroid/widget/ImageView;

    new-instance v0, Lcom/yftech/libradio/dialog/DabLableDialog$2;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dialog/DabLableDialog$2;-><init>(Lcom/yftech/libradio/dialog/DabLableDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    sget p1, Lcom/yftech/libradio/R$id;->rv_dab_label_list:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dialog/DabLableDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabLableDialog;->rvLabelList:Landroidx/recyclerview/widget/RecyclerView;

    .line 121
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabLableDialog;->rvLabelList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/yftech/libradio/widget/AutoLayoutManager;

    invoke-direct {v0}, Lcom/yftech/libradio/widget/AutoLayoutManager;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 122
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabLableDialog;->rvLabelList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/yftech/libradio/dialog/DabLableDialog$LabelAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yftech/libradio/dialog/DabLableDialog$LabelAdapter;-><init>(Lcom/yftech/libradio/dialog/DabLableDialog;Lcom/yftech/libradio/dialog/DabLableDialog$1;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 123
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabLableDialog;->rvLabelList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/yftech/libradio/dialog/DabLableDialog$3;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dialog/DabLableDialog$3;-><init>(Lcom/yftech/libradio/dialog/DabLableDialog;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 133
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    const-string v0, "onStart()"

    .line 134
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabLableDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x106000d

    .line 137
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 138
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    .line 139
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/16 v2, 0x3f2

    .line 140
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v2, 0x280

    .line 141
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const v2, 0x800033

    .line 142
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0xa8

    .line 143
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 v2, 0x50

    .line 144
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 145
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabLableDialog;->title:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabLableDialog;->tvTtile:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabLableDialog;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.systemui.btn.action"

    .line 151
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabLableDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabLableDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 157
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 158
    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabLableDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabLableDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public setLabelList(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabLableDialog;->originalLabelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 87
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabLableDialog;->originalLabelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 88
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabLableDialog;->processedLabelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 89
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabLableDialog;->processedLabelList:Ljava/util/List;

    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabLableDialog;->textPaint:Landroid/text/TextPaint;

    invoke-static {p1, v1}, Lcom/yftech/libradio/DabLableUtils;->processLables(Ljava/util/List;Landroid/text/TextPaint;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    iput-object p2, p0, Lcom/yftech/libradio/dialog/DabLableDialog;->currentSelectedLabel:Ljava/lang/String;

    .line 91
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabLableDialog;->rvLabelList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    .line 92
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabLableDialog;->rvLabelList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setLabelListCallback(Lcom/yftech/libradio/dialog/DabLableDialog$LabelListCallback;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabLableDialog;->callback:Lcom/yftech/libradio/dialog/DabLableDialog$LabelListCallback;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 97
    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabLableDialog;->title:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabLableDialog;->tvTtile:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 99
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabLableDialog;->tvTtile:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
