.class Lcom/yftech/multimedia/ui/MainFragment$1;
.super Ljava/lang/Object;
.source "MainFragment.java"

# interfaces
.implements Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/multimedia/ui/MainFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/multimedia/ui/MainFragment;


# direct methods
.method constructor <init>(Lcom/yftech/multimedia/ui/MainFragment;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/yftech/multimedia/ui/MainFragment$1;->this$0:Lcom/yftech/multimedia/ui/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndexBackgroundResource()I
    .locals 0

    const p0, 0x7f0e00f6

    return p0
.end method

.method public getIndexMode()I
    .locals 0

    const/16 p0, 0x2712

    return p0
.end method

.method public getStartIndex()I
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/yftech/multimedia/ui/MainFragment$1;->this$0:Lcom/yftech/multimedia/ui/MainFragment;

    invoke-static {v0}, Lcom/yftech/multimedia/ui/MainFragment;->access$000(Lcom/yftech/multimedia/ui/MainFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/multimedia/ui/MainFragment$1;->this$0:Lcom/yftech/multimedia/ui/MainFragment;

    invoke-static {v0}, Lcom/yftech/multimedia/ui/MainFragment;->access$000(Lcom/yftech/multimedia/ui/MainFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/yftech/multimedia/ui/MainFragment$1;->this$0:Lcom/yftech/multimedia/ui/MainFragment;

    invoke-static {v0}, Lcom/yftech/multimedia/ui/MainFragment;->access$000(Lcom/yftech/multimedia/ui/MainFragment;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/yftech/multimedia/ui/MainFragment$1$1;

    invoke-direct {v1, p0}, Lcom/yftech/multimedia/ui/MainFragment$1$1;-><init>(Lcom/yftech/multimedia/ui/MainFragment$1;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 155
    iget-object p0, p0, Lcom/yftech/multimedia/ui/MainFragment$1;->this$0:Lcom/yftech/multimedia/ui/MainFragment;

    invoke-static {p0}, Lcom/yftech/multimedia/ui/MainFragment;->access$000(Lcom/yftech/multimedia/ui/MainFragment;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public setIndexLineLayoutParamsExtra(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    return-void
.end method

.method public setTabLayoutParamsExtra(Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 0

    const/16 p0, 0xf0

    .line 129
    iput p0, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/16 p0, 0x50

    .line 130
    iput p0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    return-void
.end method

.method public setTabSelectedStyle(Landroid/widget/TextView;Landroid/widget/TextView;)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setTabStyle(Landroid/widget/TextView;I)V
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x42000000    # 32.0f

    .line 99
    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v1, 0x11

    .line 100
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 101
    iget-object v1, p0, Lcom/yftech/multimedia/ui/MainFragment$1;->this$0:Lcom/yftech/multimedia/ui/MainFragment;

    invoke-virtual {v1}, Lcom/yftech/multimedia/ui/MainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const v2, 0x7f060096

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 102
    iget-object v1, p0, Lcom/yftech/multimedia/ui/MainFragment$1;->this$0:Lcom/yftech/multimedia/ui/MainFragment;

    invoke-static {v1}, Lcom/yftech/multimedia/ui/MainFragment;->access$000(Lcom/yftech/multimedia/ui/MainFragment;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 103
    iget-object p0, p0, Lcom/yftech/multimedia/ui/MainFragment$1;->this$0:Lcom/yftech/multimedia/ui/MainFragment;

    invoke-static {p0}, Lcom/yftech/multimedia/ui/MainFragment;->access$000(Lcom/yftech/multimedia/ui/MainFragment;)Ljava/util/List;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    return-void
.end method
