.class public Lcom/media/common/ui/widget/MyTabSelector;
.super Landroid/widget/RelativeLayout;
.source "MyTabSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/media/common/ui/widget/MyTabSelector$IndexMode;,
        Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;,
        Lcom/media/common/ui/widget/MyTabSelector$IndexModeType;,
        Lcom/media/common/ui/widget/MyTabSelector$OnTabClickListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private customStyle:Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;

.field private default_textSize:F

.field private index:I

.field private index_line:Landroid/view/View;

.field private index_line_height:I

.field private line_reference:I

.field private onTabClickListener:Lcom/media/common/ui/widget/MyTabSelector$OnTabClickListener;

.field private start_Index:I

.field private tabs:[Landroid/widget/TextView;

.field private tabs_title:[Ljava/lang/String;

.field private v_tips_dot:[Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const-class p1, Lcom/media/common/ui/widget/MyTabSelector;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/media/common/ui/widget/MyTabSelector;->TAG:Ljava/lang/String;

    const/4 p1, 0x3

    .line 31
    new-array p2, p1, [Landroid/widget/TextView;

    iput-object p2, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs:[Landroid/widget/TextView;

    const-string p2, "Tab1"

    const-string v0, "Tab2"

    const-string v1, "Tab3"

    .line 32
    filled-new-array {p2, v0, v1}, [Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs_title:[Ljava/lang/String;

    .line 33
    new-array p1, p1, [Landroid/view/View;

    iput-object p1, p0, Lcom/media/common/ui/widget/MyTabSelector;->v_tips_dot:[Landroid/view/View;

    const/4 p1, -0x1

    .line 35
    iput p1, p0, Lcom/media/common/ui/widget/MyTabSelector;->index:I

    .line 36
    iput p1, p0, Lcom/media/common/ui/widget/MyTabSelector;->start_Index:I

    .line 62
    invoke-virtual {p0}, Lcom/media/common/ui/widget/MyTabSelector;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/media/common/ui/widget/R$dimen;->dp_14:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/media/common/ui/widget/MyTabSelector;->default_textSize:F

    .line 63
    invoke-virtual {p0}, Lcom/media/common/ui/widget/MyTabSelector;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/media/common/ui/widget/R$dimen;->dp_6:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/media/common/ui/widget/MyTabSelector;->index_line_height:I

    .line 65
    sget p1, Lcom/media/common/ui/widget/R$drawable;->shape_tab_index:I

    iput p1, p0, Lcom/media/common/ui/widget/MyTabSelector;->line_reference:I

    .line 69
    invoke-direct {p0}, Lcom/media/common/ui/widget/MyTabSelector;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/media/common/ui/widget/MyTabSelector;)Landroid/view/View;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/media/common/ui/widget/MyTabSelector;->index_line:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$002(Lcom/media/common/ui/widget/MyTabSelector;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/media/common/ui/widget/MyTabSelector;->index_line:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Lcom/media/common/ui/widget/MyTabSelector;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/media/common/ui/widget/MyTabSelector;->start_Index:I

    return p0
.end method

.method static synthetic access$102(Lcom/media/common/ui/widget/MyTabSelector;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/media/common/ui/widget/MyTabSelector;->start_Index:I

    return p1
.end method

.method static synthetic access$200(Lcom/media/common/ui/widget/MyTabSelector;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/media/common/ui/widget/MyTabSelector;->index:I

    return p0
.end method

.method static synthetic access$202(Lcom/media/common/ui/widget/MyTabSelector;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/media/common/ui/widget/MyTabSelector;->index:I

    return p1
.end method

.method static synthetic access$300(Lcom/media/common/ui/widget/MyTabSelector;)Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/media/common/ui/widget/MyTabSelector;->customStyle:Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;

    return-object p0
.end method

.method static synthetic access$400(Lcom/media/common/ui/widget/MyTabSelector;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/media/common/ui/widget/MyTabSelector;->line_reference:I

    return p0
.end method

.method static synthetic access$500(Lcom/media/common/ui/widget/MyTabSelector;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/media/common/ui/widget/MyTabSelector;->index_line_height:I

    return p0
.end method

.method static synthetic access$600(Lcom/media/common/ui/widget/MyTabSelector;)[Landroid/widget/TextView;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs:[Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/media/common/ui/widget/MyTabSelector;)Lcom/media/common/ui/widget/MyTabSelector$OnTabClickListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/media/common/ui/widget/MyTabSelector;->onTabClickListener:Lcom/media/common/ui/widget/MyTabSelector$OnTabClickListener;

    return-object p0
.end method

.method private init()V
    .locals 10

    .line 74
    invoke-virtual {p0}, Lcom/media/common/ui/widget/MyTabSelector;->removeAllViews()V

    .line 77
    iget-object v0, p0, Lcom/media/common/ui/widget/MyTabSelector;->customStyle:Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/media/common/ui/widget/MyTabSelector;->customStyle:Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;

    invoke-interface {v0}, Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;->getStartIndex()I

    move-result v0

    iput v0, p0, Lcom/media/common/ui/widget/MyTabSelector;->start_Index:I

    .line 79
    iget v0, p0, Lcom/media/common/ui/widget/MyTabSelector;->start_Index:I

    iput v0, p0, Lcom/media/common/ui/widget/MyTabSelector;->index:I

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 83
    :goto_0
    iget-object v2, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs:[Landroid/widget/TextView;

    array-length v2, v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    .line 84
    iget-object v2, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs:[Landroid/widget/TextView;

    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/media/common/ui/widget/MyTabSelector;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v4, v2, v1

    .line 85
    iget-object v2, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setElevation(F)V

    .line 86
    iget-object v2, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    invoke-static {}, Lcom/media/common/ui/widget/MyTabSelector;->generateViewId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setId(I)V

    .line 88
    iget-object v2, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 89
    iget-object v2, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 91
    iget-object v2, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs_title:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v2, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 93
    iget-object v2, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    invoke-virtual {p0}, Lcom/media/common/ui/widget/MyTabSelector;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/media/common/ui/widget/R$dimen;->dp_9:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 94
    invoke-virtual {p0}, Lcom/media/common/ui/widget/MyTabSelector;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/media/common/ui/widget/R$dimen;->dp_8:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 95
    invoke-virtual {p0}, Lcom/media/common/ui/widget/MyTabSelector;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/media/common/ui/widget/R$dimen;->dp_9:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 96
    invoke-virtual {p0}, Lcom/media/common/ui/widget/MyTabSelector;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/media/common/ui/widget/R$dimen;->dp_8:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 93
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 98
    iget-object v2, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    iget v3, p0, Lcom/media/common/ui/widget/MyTabSelector;->default_textSize:F

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 104
    iget-object v2, p0, Lcom/media/common/ui/widget/MyTabSelector;->customStyle:Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;

    if-eqz v2, :cond_1

    .line 105
    iget-object v2, p0, Lcom/media/common/ui/widget/MyTabSelector;->customStyle:Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;

    iget-object v3, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    invoke-interface {v2, v3, v1}, Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;->setTabStyle(Landroid/widget/TextView;I)V

    goto :goto_1

    .line 107
    :cond_1
    iget v2, p0, Lcom/media/common/ui/widget/MyTabSelector;->start_Index:I

    if-ne v1, v2, :cond_2

    .line 108
    iget-object v2, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    invoke-virtual {p0}, Lcom/media/common/ui/widget/MyTabSelector;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/media/common/ui/widget/R$color;->colorFDC10A:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 110
    :cond_2
    iget-object v2, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    invoke-virtual {p0}, Lcom/media/common/ui/widget/MyTabSelector;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/media/common/ui/widget/R$color;->colorB0BFCC:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    :goto_1
    iget-object v2, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    new-instance v3, Lcom/media/common/ui/widget/MyTabSelector$1;

    invoke-direct {v3, p0, v1}, Lcom/media/common/ui/widget/MyTabSelector$1;-><init>(Lcom/media/common/ui/widget/MyTabSelector;I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 210
    :cond_3
    iget v1, p0, Lcom/media/common/ui/widget/MyTabSelector;->start_Index:I

    const/4 v2, -0x2

    if-ltz v1, :cond_9

    .line 211
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/media/common/ui/widget/MyTabSelector;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/media/common/ui/widget/MyTabSelector;->index_line:Landroid/view/View;

    .line 212
    iget-object v1, p0, Lcom/media/common/ui/widget/MyTabSelector;->index_line:Landroid/view/View;

    iget-object v4, p0, Lcom/media/common/ui/widget/MyTabSelector;->customStyle:Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;

    if-nez v4, :cond_4

    iget v4, p0, Lcom/media/common/ui/widget/MyTabSelector;->line_reference:I

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/media/common/ui/widget/MyTabSelector;->customStyle:Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;

    invoke-interface {v4}, Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;->getIndexBackgroundResource()I

    move-result v4

    :goto_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 213
    iget-object v1, p0, Lcom/media/common/ui/widget/MyTabSelector;->customStyle:Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;

    const/16 v4, 0x13

    const/16 v5, 0x12

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/media/common/ui/widget/MyTabSelector;->customStyle:Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;

    .line 214
    invoke-interface {v1}, Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;->getIndexMode()I

    move-result v1

    const/16 v6, 0x2711

    if-ne v1, v6, :cond_5

    goto :goto_3

    .line 225
    :cond_5
    iget-object v1, p0, Lcom/media/common/ui/widget/MyTabSelector;->customStyle:Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/media/common/ui/widget/MyTabSelector;->customStyle:Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;

    invoke-interface {v1}, Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;->getIndexMode()I

    move-result v1

    const/16 v6, 0x2712

    if-ne v1, v6, :cond_9

    .line 226
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v6, 0x6

    .line 229
    iget-object v7, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs:[Landroid/widget/TextView;

    iget v8, p0, Lcom/media/common/ui/widget/MyTabSelector;->start_Index:I

    iget-object v9, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs:[Landroid/widget/TextView;

    array-length v9, v9

    rem-int/2addr v8, v9

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/widget/TextView;->getId()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 230
    iget-object v6, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs:[Landroid/widget/TextView;

    iget v7, p0, Lcom/media/common/ui/widget/MyTabSelector;->start_Index:I

    iget-object v8, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs:[Landroid/widget/TextView;

    array-length v8, v8

    rem-int/2addr v7, v8

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/TextView;->getId()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 231
    iget-object v5, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs:[Landroid/widget/TextView;

    iget v6, p0, Lcom/media/common/ui/widget/MyTabSelector;->start_Index:I

    iget-object v7, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs:[Landroid/widget/TextView;

    array-length v7, v7

    rem-int/2addr v6, v7

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/widget/TextView;->getId()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, 0x8

    .line 232
    iget-object v5, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs:[Landroid/widget/TextView;

    iget v6, p0, Lcom/media/common/ui/widget/MyTabSelector;->start_Index:I

    iget-object v7, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs:[Landroid/widget/TextView;

    array-length v7, v7

    rem-int/2addr v6, v7

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/widget/TextView;->getId()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 234
    iget-object v4, p0, Lcom/media/common/ui/widget/MyTabSelector;->customStyle:Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;

    if-eqz v4, :cond_6

    .line 235
    iget-object v4, p0, Lcom/media/common/ui/widget/MyTabSelector;->customStyle:Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;

    invoke-interface {v4, v1}, Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;->setIndexLineLayoutParamsExtra(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 236
    :cond_6
    iget-object v4, p0, Lcom/media/common/ui/widget/MyTabSelector;->index_line:Landroid/view/View;

    invoke-virtual {p0, v4, v1}, Lcom/media/common/ui/widget/MyTabSelector;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 215
    :cond_7
    :goto_3
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p0, Lcom/media/common/ui/widget/MyTabSelector;->index_line_height:I

    invoke-direct {v1, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v6, 0x3

    .line 218
    iget-object v7, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs:[Landroid/widget/TextView;

    iget v8, p0, Lcom/media/common/ui/widget/MyTabSelector;->start_Index:I

    iget-object v9, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs:[Landroid/widget/TextView;

    array-length v9, v9

    rem-int/2addr v8, v9

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/widget/TextView;->getId()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 219
    iget-object v6, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs:[Landroid/widget/TextView;

    iget v7, p0, Lcom/media/common/ui/widget/MyTabSelector;->start_Index:I

    iget-object v8, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs:[Landroid/widget/TextView;

    array-length v8, v8

    rem-int/2addr v7, v8

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/widget/TextView;->getId()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 220
    iget-object v5, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs:[Landroid/widget/TextView;

    iget v6, p0, Lcom/media/common/ui/widget/MyTabSelector;->start_Index:I

    iget-object v7, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs:[Landroid/widget/TextView;

    array-length v7, v7

    rem-int/2addr v6, v7

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/widget/TextView;->getId()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 222
    iget-object v4, p0, Lcom/media/common/ui/widget/MyTabSelector;->customStyle:Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;

    if-eqz v4, :cond_8

    .line 223
    iget-object v4, p0, Lcom/media/common/ui/widget/MyTabSelector;->customStyle:Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;

    invoke-interface {v4, v1}, Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;->setIndexLineLayoutParamsExtra(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 224
    :cond_8
    iget-object v4, p0, Lcom/media/common/ui/widget/MyTabSelector;->index_line:Landroid/view/View;

    invoke-virtual {p0, v4, v1}, Lcom/media/common/ui/widget/MyTabSelector;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    :cond_9
    :goto_4
    iget-object v1, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs:[Landroid/widget/TextView;

    array-length v1, v1

    if-ge v0, v1, :cond_c

    .line 243
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xf

    const/4 v5, -0x1

    .line 246
    invoke-virtual {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-lez v0, :cond_a

    .line 248
    iget-object v4, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs:[Landroid/widget/TextView;

    add-int/lit8 v5, v0, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/widget/TextView;->getId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 250
    :cond_a
    iget-object v4, p0, Lcom/media/common/ui/widget/MyTabSelector;->customStyle:Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;

    if-eqz v4, :cond_b

    .line 251
    iget-object v4, p0, Lcom/media/common/ui/widget/MyTabSelector;->customStyle:Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;

    invoke-interface {v4, v1, v0}, Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;->setTabLayoutParamsExtra(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 252
    :cond_b
    iget-object v4, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs:[Landroid/widget/TextView;

    aget-object v4, v4, v0

    invoke-virtual {p0, v4, v1}, Lcom/media/common/ui/widget/MyTabSelector;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_c
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 0

    .line 273
    iget p0, p0, Lcom/media/common/ui/widget/MyTabSelector;->index:I

    return p0
.end method

.method public getTabCount()I
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs_title:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 324
    iget-object p0, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs_title:[Ljava/lang/String;

    array-length p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setCustomStyle(Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/media/common/ui/widget/MyTabSelector;->customStyle:Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;

    .line 266
    invoke-direct {p0}, Lcom/media/common/ui/widget/MyTabSelector;->init()V

    return-void
.end method

.method public setIndexTab(I)V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs:[Landroid/widget/TextView;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 281
    iget-object p0, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs:[Landroid/widget/TextView;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Landroid/widget/TextView;->callOnClick()Z

    :cond_0
    return-void
.end method

.method public setOnTabClickListener(Lcom/media/common/ui/widget/MyTabSelector$OnTabClickListener;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/media/common/ui/widget/MyTabSelector;->onTabClickListener:Lcom/media/common/ui/widget/MyTabSelector$OnTabClickListener;

    return-void
.end method

.method public setTabArray([Ljava/lang/String;)V
    .locals 1
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 333
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 336
    iput-object p1, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs_title:[Ljava/lang/String;

    .line 337
    iget-object p1, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs_title:[Ljava/lang/String;

    array-length p1, p1

    new-array p1, p1, [Landroid/widget/TextView;

    iput-object p1, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs:[Landroid/widget/TextView;

    .line 338
    iget-object p1, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs_title:[Ljava/lang/String;

    array-length p1, p1

    new-array p1, p1, [Landroid/view/View;

    iput-object p1, p0, Lcom/media/common/ui/widget/MyTabSelector;->v_tips_dot:[Landroid/view/View;

    .line 340
    invoke-direct {p0}, Lcom/media/common/ui/widget/MyTabSelector;->init()V

    return-void

    .line 334
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tab\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTabEnable(IZ)V
    .locals 5

    .line 290
    iget-object v0, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    const/4 v0, -0x1

    if-nez p2, :cond_2

    const/4 p2, 0x0

    const/4 v1, 0x1

    move v2, v1

    .line 297
    :goto_0
    iget-object v3, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs:[Landroid/widget/TextView;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    add-int v3, p1, v2

    .line 298
    iget-object v4, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs:[Landroid/widget/TextView;

    array-length v4, v4

    rem-int/2addr v3, v4

    .line 299
    iget-object v4, p0, Lcom/media/common/ui/widget/MyTabSelector;->tabs:[Landroid/widget/TextView;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/widget/TextView;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 300
    invoke-virtual {p0, v3}, Lcom/media/common/ui/widget/MyTabSelector;->setIndexTab(I)V

    move p2, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez p2, :cond_3

    .line 308
    iget-object p1, p0, Lcom/media/common/ui/widget/MyTabSelector;->index_line:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/media/common/ui/widget/MyTabSelector;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 309
    iput-object p1, p0, Lcom/media/common/ui/widget/MyTabSelector;->index_line:Landroid/view/View;

    .line 310
    iput v0, p0, Lcom/media/common/ui/widget/MyTabSelector;->index:I

    goto :goto_2

    .line 314
    :cond_2
    iget p2, p0, Lcom/media/common/ui/widget/MyTabSelector;->index:I

    if-ne p2, v0, :cond_3

    .line 315
    invoke-virtual {p0, p1}, Lcom/media/common/ui/widget/MyTabSelector;->setIndexTab(I)V

    :cond_3
    :goto_2
    return-void
.end method
