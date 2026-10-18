.class public Lcom/media/common/ui/widget/FlowRadioGroup;
.super Landroid/widget/LinearLayout;
.source "FlowRadioGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/media/common/ui/widget/FlowRadioGroup$PassThroughHierarchyChangeListener;,
        Lcom/media/common/ui/widget/FlowRadioGroup$CheckedStateTracker;,
        Lcom/media/common/ui/widget/FlowRadioGroup$OnCheckedChangeListener;,
        Lcom/media/common/ui/widget/FlowRadioGroup$LayoutParams;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FlowRadioGroup"


# instance fields
.field private mCheckedId:I

.field private mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mChildOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnCheckedChangeListener:Lcom/media/common/ui/widget/FlowRadioGroup$OnCheckedChangeListener;

.field private mPassThroughListener:Lcom/media/common/ui/widget/FlowRadioGroup$PassThroughHierarchyChangeListener;

.field private mProtectFromCheckedChange:Z

.field private onlyForChange:Z

.field private radioButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/RadioButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 34
    iput p1, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->mCheckedId:I

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->mProtectFromCheckedChange:Z

    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->onlyForChange:Z

    .line 51
    invoke-direct {p0}, Lcom/media/common/ui/widget/FlowRadioGroup;->init()V

    return-void
.end method

.method static synthetic access$1000(Lcom/media/common/ui/widget/FlowRadioGroup;Landroid/view/ViewGroup;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/media/common/ui/widget/FlowRadioGroup;->setCheckedId(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$200(Lcom/media/common/ui/widget/FlowRadioGroup;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->mProtectFromCheckedChange:Z

    return p0
.end method

.method static synthetic access$202(Lcom/media/common/ui/widget/FlowRadioGroup;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->mProtectFromCheckedChange:Z

    return p1
.end method

.method static synthetic access$300(Lcom/media/common/ui/widget/FlowRadioGroup;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->mCheckedId:I

    return p0
.end method

.method static synthetic access$400(Lcom/media/common/ui/widget/FlowRadioGroup;IZ)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/media/common/ui/widget/FlowRadioGroup;->setCheckedStateForView(IZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/media/common/ui/widget/FlowRadioGroup;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/media/common/ui/widget/FlowRadioGroup;->setCheckedId(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/media/common/ui/widget/FlowRadioGroup;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->onlyForChange:Z

    return p0
.end method

.method static synthetic access$800(Lcom/media/common/ui/widget/FlowRadioGroup;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/media/common/ui/widget/FlowRadioGroup;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->mChildOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private init()V
    .locals 2

    .line 55
    new-instance v0, Lcom/media/common/ui/widget/FlowRadioGroup$CheckedStateTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/media/common/ui/widget/FlowRadioGroup$CheckedStateTracker;-><init>(Lcom/media/common/ui/widget/FlowRadioGroup;Lcom/media/common/ui/widget/FlowRadioGroup$1;)V

    iput-object v0, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 56
    new-instance v0, Lcom/media/common/ui/widget/FlowRadioGroup$PassThroughHierarchyChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/media/common/ui/widget/FlowRadioGroup$PassThroughHierarchyChangeListener;-><init>(Lcom/media/common/ui/widget/FlowRadioGroup;Lcom/media/common/ui/widget/FlowRadioGroup$1;)V

    iput-object v0, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->mPassThroughListener:Lcom/media/common/ui/widget/FlowRadioGroup$PassThroughHierarchyChangeListener;

    .line 57
    iget-object v0, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->mPassThroughListener:Lcom/media/common/ui/widget/FlowRadioGroup$PassThroughHierarchyChangeListener;

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->radioButtons:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Lcom/media/common/ui/widget/FlowRadioGroup$1;

    invoke-direct {v0, p0}, Lcom/media/common/ui/widget/FlowRadioGroup$1;-><init>(Lcom/media/common/ui/widget/FlowRadioGroup;)V

    iput-object v0, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->mChildOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private setCheckedId(I)V
    .locals 1

    .line 238
    iput p1, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->mCheckedId:I

    .line 239
    iget-object p1, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->mOnCheckedChangeListener:Lcom/media/common/ui/widget/FlowRadioGroup$OnCheckedChangeListener;

    if-eqz p1, :cond_0

    .line 240
    iget-object p1, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->mOnCheckedChangeListener:Lcom/media/common/ui/widget/FlowRadioGroup$OnCheckedChangeListener;

    iget v0, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->mCheckedId:I

    invoke-interface {p1, p0, v0}, Lcom/media/common/ui/widget/FlowRadioGroup$OnCheckedChangeListener;->onCheckedChanged(Lcom/media/common/ui/widget/FlowRadioGroup;I)V

    :cond_0
    return-void
.end method

.method private setCheckedId(Landroid/view/ViewGroup;)V
    .locals 5

    .line 147
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 149
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/RadioButton;

    if-eqz v2, :cond_2

    .line 150
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 151
    invoke-virtual {v2}, Landroid/widget/RadioButton;->getId()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 154
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 155
    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setId(I)V

    .line 157
    :cond_0
    iget-boolean v3, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->onlyForChange:Z

    if-eqz v3, :cond_1

    .line 158
    iget-object v3, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    .line 160
    :cond_1
    iget-object v3, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->mChildOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 161
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    .line 162
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 163
    invoke-direct {p0, v2}, Lcom/media/common/ui/widget/FlowRadioGroup;->setCheckedId(Landroid/view/ViewGroup;)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private setCheckedStateForView(IZ)V
    .locals 0

    .line 245
    invoke-virtual {p0, p1}, Lcom/media/common/ui/widget/FlowRadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 246
    instance-of p1, p0, Landroid/widget/RadioButton;

    if-eqz p1, :cond_0

    .line 247
    check-cast p0, Landroid/widget/RadioButton;

    invoke-virtual {p0, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private setCheckedView(Landroid/view/ViewGroup;)V
    .locals 6

    .line 124
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 126
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/RadioButton;

    if-eqz v3, :cond_1

    .line 127
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 129
    iget-object v4, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->radioButtons:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    .line 131
    iput-boolean v4, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->mProtectFromCheckedChange:Z

    .line 132
    iget v4, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->mCheckedId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 133
    iget v4, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->mCheckedId:I

    invoke-direct {p0, v4, v1}, Lcom/media/common/ui/widget/FlowRadioGroup;->setCheckedStateForView(IZ)V

    .line 135
    :cond_0
    iput-boolean v1, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->mProtectFromCheckedChange:Z

    .line 136
    invoke-virtual {v3}, Landroid/widget/RadioButton;->getId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/media/common/ui/widget/FlowRadioGroup;->setCheckedId(I)V

    goto :goto_1

    .line 138
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 139
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 140
    invoke-direct {p0, v3}, Lcom/media/common/ui/widget/FlowRadioGroup;->setCheckedView(Landroid/view/ViewGroup;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .line 101
    instance-of v0, p1, Landroid/widget/RadioButton;

    if-eqz v0, :cond_1

    .line 102
    move-object v0, p1

    check-cast v0, Landroid/widget/RadioButton;

    .line 103
    iget-object v1, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->radioButtons:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 106
    iput-boolean v1, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->mProtectFromCheckedChange:Z

    .line 107
    iget v1, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->mCheckedId:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 108
    iget v1, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->mCheckedId:I

    invoke-direct {p0, v1, v3}, Lcom/media/common/ui/widget/FlowRadioGroup;->setCheckedStateForView(IZ)V

    .line 110
    :cond_0
    iput-boolean v3, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->mProtectFromCheckedChange:Z

    .line 111
    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/media/common/ui/widget/FlowRadioGroup;->setCheckedId(I)V

    goto :goto_0

    .line 113
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 115
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 116
    invoke-direct {p0, v0}, Lcom/media/common/ui/widget/FlowRadioGroup;->setCheckedView(Landroid/view/ViewGroup;)V

    .line 119
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public check(I)V
    .locals 4

    .line 208
    iget-boolean v0, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->onlyForChange:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v0, :cond_2

    if-eq p1, v3, :cond_0

    .line 210
    iget v0, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->mCheckedId:I

    if-ne p1, v0, :cond_0

    return-void

    .line 214
    :cond_0
    iget v0, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->mCheckedId:I

    if-eq v0, v3, :cond_1

    .line 215
    iget v0, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->mCheckedId:I

    invoke-direct {p0, v0, v2}, Lcom/media/common/ui/widget/FlowRadioGroup;->setCheckedStateForView(IZ)V

    :cond_1
    if-eq p1, v3, :cond_5

    .line 219
    invoke-direct {p0, p1, v1}, Lcom/media/common/ui/widget/FlowRadioGroup;->setCheckedStateForView(IZ)V

    goto :goto_0

    .line 226
    :cond_2
    iget v0, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->mCheckedId:I

    if-eq v0, v3, :cond_3

    .line 227
    iget v0, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->mCheckedId:I

    invoke-direct {p0, v0, v2}, Lcom/media/common/ui/widget/FlowRadioGroup;->setCheckedStateForView(IZ)V

    :cond_3
    if-eq p1, v3, :cond_4

    .line 230
    invoke-direct {p0, p1, v1}, Lcom/media/common/ui/widget/FlowRadioGroup;->setCheckedStateForView(IZ)V

    .line 233
    :cond_4
    invoke-direct {p0, p1}, Lcom/media/common/ui/widget/FlowRadioGroup;->setCheckedId(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 306
    instance-of p0, p1, Lcom/media/common/ui/widget/FlowRadioGroup$LayoutParams;

    return p0
.end method

.method public clearCheck()V
    .locals 1

    const/4 v0, -0x1

    .line 277
    invoke-virtual {p0, v0}, Lcom/media/common/ui/widget/FlowRadioGroup;->check(I)V

    return-void
.end method

.method public findRadioButton(Landroid/view/ViewGroup;)Landroid/widget/RadioButton;
    .locals 4

    .line 171
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 173
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/RadioButton;

    if-eqz v3, :cond_0

    .line 174
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    goto :goto_1

    .line 175
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 176
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/media/common/ui/widget/FlowRadioGroup;->findRadioButton(Landroid/view/ViewGroup;)Landroid/widget/RadioButton;

    move-result-object v1

    .line 177
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/media/common/ui/widget/FlowRadioGroup;->findRadioButton(Landroid/view/ViewGroup;)Landroid/widget/RadioButton;

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/media/common/ui/widget/FlowRadioGroup;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 311
    new-instance p0, Lcom/media/common/ui/widget/FlowRadioGroup$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Lcom/media/common/ui/widget/FlowRadioGroup$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/media/common/ui/widget/FlowRadioGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/media/common/ui/widget/FlowRadioGroup$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/media/common/ui/widget/FlowRadioGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/media/common/ui/widget/FlowRadioGroup$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/media/common/ui/widget/FlowRadioGroup$LayoutParams;
    .locals 1

    .line 298
    new-instance v0, Lcom/media/common/ui/widget/FlowRadioGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/media/common/ui/widget/FlowRadioGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/media/common/ui/widget/FlowRadioGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getCheckedRadioButtonId()I
    .locals 0

    .line 263
    iget p0, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->mCheckedId:I

    return p0
.end method

.method public getRadioButton(I)Landroid/widget/RadioButton;
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->radioButtons:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioButton;

    return-object p0
.end method

.method public getRadioButtonCount()I
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->radioButtons:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 88
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 91
    iget v0, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->mCheckedId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->mProtectFromCheckedChange:Z

    .line 93
    iget v1, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->mCheckedId:I

    invoke-direct {p0, v1, v0}, Lcom/media/common/ui/widget/FlowRadioGroup;->setCheckedStateForView(IZ)V

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->mProtectFromCheckedChange:Z

    .line 95
    iget v0, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->mCheckedId:I

    invoke-direct {p0, v0}, Lcom/media/common/ui/widget/FlowRadioGroup;->setCheckedId(I)V

    :cond_0
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/media/common/ui/widget/FlowRadioGroup$OnCheckedChangeListener;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->mOnCheckedChangeListener:Lcom/media/common/ui/widget/FlowRadioGroup$OnCheckedChangeListener;

    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->mPassThroughListener:Lcom/media/common/ui/widget/FlowRadioGroup$PassThroughHierarchyChangeListener;

    invoke-static {p0, p1}, Lcom/media/common/ui/widget/FlowRadioGroup$PassThroughHierarchyChangeListener;->access$602(Lcom/media/common/ui/widget/FlowRadioGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method public setOnlyForChange(Z)V
    .locals 4

    .line 494
    iput-boolean p1, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->onlyForChange:Z

    .line 495
    iget-object v0, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->radioButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 497
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    iget-object v2, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 500
    :cond_0
    iget-object v3, p0, Lcom/media/common/ui/widget/FlowRadioGroup;->mChildOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method
