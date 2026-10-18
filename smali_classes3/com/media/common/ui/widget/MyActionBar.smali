.class public Lcom/media/common/ui/widget/MyActionBar;
.super Landroid/widget/RelativeLayout;
.source "MyActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/media/common/ui/widget/MyActionBar$TitleGravity;
    }
.end annotation


# static fields
.field public static final TAG_TITLE_GRAVITY_CENTER:I = 0x0

.field public static final TAG_TITLE_GRAVITY_LEFT:I = 0x1


# instance fields
.field private context:Landroid/content/Context;

.field private showLine:Z

.field private title:Ljava/lang/String;

.field private titleColor:Landroid/content/res/ColorStateList;

.field private titleGravity:I

.field private tvTitle:Landroid/widget/TextView;

.field private viewLine:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    iput-object p1, p0, Lcom/media/common/ui/widget/MyActionBar;->context:Landroid/content/Context;

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/media/common/ui/widget/R$layout;->actionbar:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 58
    sget-object v0, Lcom/media/common/ui/widget/R$styleable;->MyActionBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 59
    sget v0, Lcom/media/common/ui/widget/R$styleable;->MyActionBar_title:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/media/common/ui/widget/MyActionBar;->title:Ljava/lang/String;

    .line 60
    sget v0, Lcom/media/common/ui/widget/R$styleable;->MyActionBar_titleColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_0

    sget v0, Lcom/media/common/ui/widget/R$color;->color_title_default:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget p1, Lcom/media/common/ui/widget/R$styleable;->MyActionBar_titleColor:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/media/common/ui/widget/MyActionBar;->titleColor:Landroid/content/res/ColorStateList;

    .line 61
    sget p1, Lcom/media/common/ui/widget/R$styleable;->MyActionBar_showLine:I

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/media/common/ui/widget/MyActionBar;->showLine:Z

    .line 62
    sget p1, Lcom/media/common/ui/widget/R$styleable;->MyActionBar_titleGravity:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/media/common/ui/widget/MyActionBar;->titleGravity:I

    .line 64
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/media/common/ui/widget/MyActionBar;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/media/common/ui/widget/MyActionBar;->context:Landroid/content/Context;

    return-object p0
.end method

.method private setTitleColor(I)V
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/media/common/ui/widget/MyActionBar;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private setTitleColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/media/common/ui/widget/MyActionBar;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private setTitleGravity(I)V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/media/common/ui/widget/MyActionBar;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz v0, :cond_0

    const/4 p1, -0x2

    .line 143
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/media/common/ui/widget/MyActionBar;->tvTitle:Landroid/widget/TextView;

    const v1, 0x800013

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :pswitch_1
    if-eqz v0, :cond_1

    const/4 p1, -0x1

    .line 138
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 139
    :cond_1
    iget-object p1, p0, Lcom/media/common/ui/widget/MyActionBar;->tvTitle:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 148
    :goto_0
    iget-object p0, p0, Lcom/media/common/ui/widget/MyActionBar;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getTitle()Landroid/widget/TextView;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/media/common/ui/widget/MyActionBar;->tvTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 72
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 75
    sget v0, Lcom/media/common/ui/widget/R$id;->tv_actionbar_title:I

    invoke-virtual {p0, v0}, Lcom/media/common/ui/widget/MyActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/media/common/ui/widget/MyActionBar;->tvTitle:Landroid/widget/TextView;

    .line 76
    sget v0, Lcom/media/common/ui/widget/R$id;->view_line:I

    invoke-virtual {p0, v0}, Lcom/media/common/ui/widget/MyActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/media/common/ui/widget/MyActionBar;->viewLine:Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/media/common/ui/widget/MyActionBar;->tvTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/high16 v2, 0x42100000    # 36.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 80
    iget-object v0, p0, Lcom/media/common/ui/widget/MyActionBar;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/media/common/ui/widget/MyActionBar;->title:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/media/common/ui/widget/MyActionBar;->setTitleText(Ljava/lang/String;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/media/common/ui/widget/MyActionBar;->titleColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/media/common/ui/widget/MyActionBar;->setTitleColor(Landroid/content/res/ColorStateList;)V

    .line 84
    iget v0, p0, Lcom/media/common/ui/widget/MyActionBar;->titleGravity:I

    invoke-direct {p0, v0}, Lcom/media/common/ui/widget/MyActionBar;->setTitleGravity(I)V

    .line 86
    iget-boolean v0, p0, Lcom/media/common/ui/widget/MyActionBar;->showLine:Z

    invoke-virtual {p0, v0}, Lcom/media/common/ui/widget/MyActionBar;->showLine(Z)V

    .line 88
    new-instance v0, Lcom/media/common/ui/widget/MyActionBar$1;

    invoke-direct {v0, p0}, Lcom/media/common/ui/widget/MyActionBar$1;-><init>(Lcom/media/common/ui/widget/MyActionBar;)V

    invoke-virtual {p0, v0}, Lcom/media/common/ui/widget/MyActionBar;->setOnBackPressClickListner(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnBackPressClickListner(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/media/common/ui/widget/MyActionBar;->tvTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 165
    iget-object p0, p0, Lcom/media/common/ui/widget/MyActionBar;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/media/common/ui/widget/MyActionBar;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showLine(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 103
    iget-object p0, p0, Lcom/media/common/ui/widget/MyActionBar;->viewLine:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object p0, p0, Lcom/media/common/ui/widget/MyActionBar;->viewLine:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
