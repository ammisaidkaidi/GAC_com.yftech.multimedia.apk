.class Lcom/media/common/ui/widget/MyTabSelector$1;
.super Ljava/lang/Object;
.source "MyTabSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/media/common/ui/widget/MyTabSelector;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/media/common/ui/widget/MyTabSelector;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/media/common/ui/widget/MyTabSelector;I)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    iput p2, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 121
    invoke-static {}, Lcom/media/common/util/SystemUtil;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v0}, Lcom/media/common/ui/widget/MyTabSelector;->access$000(Lcom/media/common/ui/widget/MyTabSelector;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x6

    const/16 v3, 0x2712

    const/4 v4, 0x3

    const/16 v5, 0x2711

    const/4 v6, -0x2

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v0}, Lcom/media/common/ui/widget/MyTabSelector;->access$100(Lcom/media/common/ui/widget/MyTabSelector;)I

    move-result v0

    if-ltz v0, :cond_9

    iget-object v0, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v0}, Lcom/media/common/ui/widget/MyTabSelector;->access$200(Lcom/media/common/ui/widget/MyTabSelector;)I

    move-result v0

    if-gez v0, :cond_1

    goto/16 :goto_2

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v0}, Lcom/media/common/ui/widget/MyTabSelector;->access$200(Lcom/media/common/ui/widget/MyTabSelector;)I

    move-result v0

    iget v7, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->val$position:I

    if-eq v0, v7, :cond_12

    iget-object v0, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v0}, Lcom/media/common/ui/widget/MyTabSelector;->access$200(Lcom/media/common/ui/widget/MyTabSelector;)I

    move-result v0

    iget-object v7, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v7}, Lcom/media/common/ui/widget/MyTabSelector;->access$600(Lcom/media/common/ui/widget/MyTabSelector;)[Landroid/widget/TextView;

    move-result-object v7

    array-length v7, v7

    if-ge v0, v7, :cond_12

    .line 167
    iget-object v0, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v0}, Lcom/media/common/ui/widget/MyTabSelector;->access$300(Lcom/media/common/ui/widget/MyTabSelector;)Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v0}, Lcom/media/common/ui/widget/MyTabSelector;->access$300(Lcom/media/common/ui/widget/MyTabSelector;)Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;

    move-result-object v0

    iget-object v7, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v7}, Lcom/media/common/ui/widget/MyTabSelector;->access$600(Lcom/media/common/ui/widget/MyTabSelector;)[Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v8}, Lcom/media/common/ui/widget/MyTabSelector;->access$200(Lcom/media/common/ui/widget/MyTabSelector;)I

    move-result v8

    aget-object v7, v7, v8

    iget-object v8, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v8}, Lcom/media/common/ui/widget/MyTabSelector;->access$600(Lcom/media/common/ui/widget/MyTabSelector;)[Landroid/widget/TextView;

    move-result-object v8

    iget v9, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->val$position:I

    aget-object v8, v8, v9

    invoke-interface {v0, v7, v8}, Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;->setTabSelectedStyle(Landroid/widget/TextView;Landroid/widget/TextView;)I

    move-result v0

    if-nez v0, :cond_3

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v0}, Lcom/media/common/ui/widget/MyTabSelector;->access$600(Lcom/media/common/ui/widget/MyTabSelector;)[Landroid/widget/TextView;

    move-result-object v0

    iget-object v7, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v7}, Lcom/media/common/ui/widget/MyTabSelector;->access$200(Lcom/media/common/ui/widget/MyTabSelector;)I

    move-result v7

    aget-object v0, v0, v7

    iget-object v7, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-virtual {v7}, Lcom/media/common/ui/widget/MyTabSelector;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/media/common/ui/widget/R$color;->colorB0BFCC:I

    invoke-static {v7, v8}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    iget-object v0, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v0}, Lcom/media/common/ui/widget/MyTabSelector;->access$600(Lcom/media/common/ui/widget/MyTabSelector;)[Landroid/widget/TextView;

    move-result-object v0

    iget v7, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->val$position:I

    aget-object v0, v0, v7

    iget-object v7, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-virtual {v7}, Lcom/media/common/ui/widget/MyTabSelector;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/media/common/ui/widget/R$color;->colorFDC10A:I

    invoke-static {v7, v8}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    :cond_3
    iget-object v0, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v0}, Lcom/media/common/ui/widget/MyTabSelector;->access$300(Lcom/media/common/ui/widget/MyTabSelector;)Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v0}, Lcom/media/common/ui/widget/MyTabSelector;->access$300(Lcom/media/common/ui/widget/MyTabSelector;)Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;

    move-result-object v0

    invoke-interface {v0}, Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;->getIndexMode()I

    move-result v0

    if-ne v0, v3, :cond_4

    goto :goto_0

    .line 187
    :cond_4
    iget-object v0, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v0}, Lcom/media/common/ui/widget/MyTabSelector;->access$300(Lcom/media/common/ui/widget/MyTabSelector;)Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v0}, Lcom/media/common/ui/widget/MyTabSelector;->access$300(Lcom/media/common/ui/widget/MyTabSelector;)Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;

    move-result-object v0

    invoke-interface {v0}, Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;->getIndexMode()I

    move-result v0

    if-ne v0, v5, :cond_8

    .line 189
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    .line 190
    invoke-static {v1}, Lcom/media/common/ui/widget/MyTabSelector;->access$600(Lcom/media/common/ui/widget/MyTabSelector;)[Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->val$position:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    .line 191
    invoke-static {v2}, Lcom/media/common/ui/widget/MyTabSelector;->access$500(Lcom/media/common/ui/widget/MyTabSelector;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 192
    iget-object v1, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v1}, Lcom/media/common/ui/widget/MyTabSelector;->access$600(Lcom/media/common/ui/widget/MyTabSelector;)[Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 193
    iget-object v1, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v1}, Lcom/media/common/ui/widget/MyTabSelector;->access$300(Lcom/media/common/ui/widget/MyTabSelector;)Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 194
    iget-object v1, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v1}, Lcom/media/common/ui/widget/MyTabSelector;->access$300(Lcom/media/common/ui/widget/MyTabSelector;)Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;->setIndexLineLayoutParamsExtra(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 195
    :cond_5
    iget-object v1, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v1}, Lcom/media/common/ui/widget/MyTabSelector;->access$000(Lcom/media/common/ui/widget/MyTabSelector;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 176
    :cond_6
    :goto_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    .line 177
    invoke-static {v3}, Lcom/media/common/ui/widget/MyTabSelector;->access$600(Lcom/media/common/ui/widget/MyTabSelector;)[Landroid/widget/TextView;

    move-result-object v3

    iget v4, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->val$position:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    invoke-direct {v0, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 179
    iget-object v3, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v3}, Lcom/media/common/ui/widget/MyTabSelector;->access$600(Lcom/media/common/ui/widget/MyTabSelector;)[Landroid/widget/TextView;

    move-result-object v3

    iget v4, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->val$position:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 180
    iget-object v3, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v3}, Lcom/media/common/ui/widget/MyTabSelector;->access$600(Lcom/media/common/ui/widget/MyTabSelector;)[Landroid/widget/TextView;

    move-result-object v3

    iget v4, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->val$position:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/TextView;->getId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 181
    iget-object v2, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v2}, Lcom/media/common/ui/widget/MyTabSelector;->access$600(Lcom/media/common/ui/widget/MyTabSelector;)[Landroid/widget/TextView;

    move-result-object v2

    iget v3, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->val$position:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 182
    iget-object v1, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v1}, Lcom/media/common/ui/widget/MyTabSelector;->access$300(Lcom/media/common/ui/widget/MyTabSelector;)Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 183
    iget-object v1, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v1}, Lcom/media/common/ui/widget/MyTabSelector;->access$300(Lcom/media/common/ui/widget/MyTabSelector;)Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;->setIndexLineLayoutParamsExtra(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 184
    :cond_7
    iget-object v1, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v1}, Lcom/media/common/ui/widget/MyTabSelector;->access$000(Lcom/media/common/ui/widget/MyTabSelector;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v0}, Lcom/media/common/ui/widget/MyTabSelector;->access$000(Lcom/media/common/ui/widget/MyTabSelector;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v1}, Lcom/media/common/ui/widget/MyTabSelector;->access$600(Lcom/media/common/ui/widget/MyTabSelector;)[Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->val$position:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 199
    iget-object v0, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    iget v1, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->val$position:I

    invoke-static {v0, v1}, Lcom/media/common/ui/widget/MyTabSelector;->access$202(Lcom/media/common/ui/widget/MyTabSelector;I)I

    goto/16 :goto_6

    .line 127
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    new-instance v7, Landroid/view/View;

    iget-object v8, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-virtual {v8}, Lcom/media/common/ui/widget/MyTabSelector;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v7}, Lcom/media/common/ui/widget/MyTabSelector;->access$002(Lcom/media/common/ui/widget/MyTabSelector;Landroid/view/View;)Landroid/view/View;

    .line 128
    iget-object v0, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v0}, Lcom/media/common/ui/widget/MyTabSelector;->access$000(Lcom/media/common/ui/widget/MyTabSelector;)Landroid/view/View;

    move-result-object v0

    iget-object v7, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v7}, Lcom/media/common/ui/widget/MyTabSelector;->access$300(Lcom/media/common/ui/widget/MyTabSelector;)Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;

    move-result-object v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v7}, Lcom/media/common/ui/widget/MyTabSelector;->access$400(Lcom/media/common/ui/widget/MyTabSelector;)I

    move-result v7

    goto :goto_3

    :cond_a
    iget-object v7, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v7}, Lcom/media/common/ui/widget/MyTabSelector;->access$300(Lcom/media/common/ui/widget/MyTabSelector;)Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;

    move-result-object v7

    invoke-interface {v7}, Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;->getIndexBackgroundResource()I

    move-result v7

    :goto_3
    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 129
    iget-object v0, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v0}, Lcom/media/common/ui/widget/MyTabSelector;->access$300(Lcom/media/common/ui/widget/MyTabSelector;)Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;

    move-result-object v0

    const/16 v7, 0x13

    const/16 v8, 0x12

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    .line 130
    invoke-static {v0}, Lcom/media/common/ui/widget/MyTabSelector;->access$300(Lcom/media/common/ui/widget/MyTabSelector;)Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;

    move-result-object v0

    invoke-interface {v0}, Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;->getIndexMode()I

    move-result v0

    if-ne v0, v5, :cond_b

    goto/16 :goto_4

    .line 141
    :cond_b
    iget-object v0, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v0}, Lcom/media/common/ui/widget/MyTabSelector;->access$300(Lcom/media/common/ui/widget/MyTabSelector;)Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v0}, Lcom/media/common/ui/widget/MyTabSelector;->access$300(Lcom/media/common/ui/widget/MyTabSelector;)Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;

    move-result-object v0

    invoke-interface {v0}, Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;->getIndexMode()I

    move-result v0

    if-ne v0, v3, :cond_f

    .line 142
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 145
    iget-object v3, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v3}, Lcom/media/common/ui/widget/MyTabSelector;->access$600(Lcom/media/common/ui/widget/MyTabSelector;)[Landroid/widget/TextView;

    move-result-object v3

    iget v4, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->val$position:I

    iget-object v5, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v5}, Lcom/media/common/ui/widget/MyTabSelector;->access$600(Lcom/media/common/ui/widget/MyTabSelector;)[Landroid/widget/TextView;

    move-result-object v5

    array-length v5, v5

    rem-int/2addr v4, v5

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/TextView;->getId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 146
    iget-object v2, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v2}, Lcom/media/common/ui/widget/MyTabSelector;->access$600(Lcom/media/common/ui/widget/MyTabSelector;)[Landroid/widget/TextView;

    move-result-object v2

    iget v3, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->val$position:I

    iget-object v4, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v4}, Lcom/media/common/ui/widget/MyTabSelector;->access$600(Lcom/media/common/ui/widget/MyTabSelector;)[Landroid/widget/TextView;

    move-result-object v4

    array-length v4, v4

    rem-int/2addr v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getId()I

    move-result v2

    invoke-virtual {v0, v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 147
    iget-object v2, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v2}, Lcom/media/common/ui/widget/MyTabSelector;->access$600(Lcom/media/common/ui/widget/MyTabSelector;)[Landroid/widget/TextView;

    move-result-object v2

    iget v3, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->val$position:I

    iget-object v4, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v4}, Lcom/media/common/ui/widget/MyTabSelector;->access$600(Lcom/media/common/ui/widget/MyTabSelector;)[Landroid/widget/TextView;

    move-result-object v4

    array-length v4, v4

    rem-int/2addr v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getId()I

    move-result v2

    invoke-virtual {v0, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 148
    iget-object v2, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v2}, Lcom/media/common/ui/widget/MyTabSelector;->access$600(Lcom/media/common/ui/widget/MyTabSelector;)[Landroid/widget/TextView;

    move-result-object v2

    iget v3, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->val$position:I

    iget-object v4, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v4}, Lcom/media/common/ui/widget/MyTabSelector;->access$600(Lcom/media/common/ui/widget/MyTabSelector;)[Landroid/widget/TextView;

    move-result-object v4

    array-length v4, v4

    rem-int/2addr v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 150
    iget-object v1, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v1}, Lcom/media/common/ui/widget/MyTabSelector;->access$300(Lcom/media/common/ui/widget/MyTabSelector;)Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 151
    iget-object v1, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v1}, Lcom/media/common/ui/widget/MyTabSelector;->access$300(Lcom/media/common/ui/widget/MyTabSelector;)Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;->setIndexLineLayoutParamsExtra(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 152
    :cond_c
    iget-object v1, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    iget-object v2, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v2}, Lcom/media/common/ui/widget/MyTabSelector;->access$000(Lcom/media/common/ui/widget/MyTabSelector;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/media/common/ui/widget/MyTabSelector;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    .line 131
    :cond_d
    :goto_4
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    .line 133
    invoke-static {v1}, Lcom/media/common/ui/widget/MyTabSelector;->access$500(Lcom/media/common/ui/widget/MyTabSelector;)I

    move-result v1

    invoke-direct {v0, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 134
    iget-object v1, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v1}, Lcom/media/common/ui/widget/MyTabSelector;->access$600(Lcom/media/common/ui/widget/MyTabSelector;)[Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->val$position:I

    iget-object v3, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v3}, Lcom/media/common/ui/widget/MyTabSelector;->access$600(Lcom/media/common/ui/widget/MyTabSelector;)[Landroid/widget/TextView;

    move-result-object v3

    array-length v3, v3

    rem-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 135
    iget-object v1, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v1}, Lcom/media/common/ui/widget/MyTabSelector;->access$600(Lcom/media/common/ui/widget/MyTabSelector;)[Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->val$position:I

    iget-object v3, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v3}, Lcom/media/common/ui/widget/MyTabSelector;->access$600(Lcom/media/common/ui/widget/MyTabSelector;)[Landroid/widget/TextView;

    move-result-object v3

    array-length v3, v3

    rem-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    invoke-virtual {v0, v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 136
    iget-object v1, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v1}, Lcom/media/common/ui/widget/MyTabSelector;->access$600(Lcom/media/common/ui/widget/MyTabSelector;)[Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->val$position:I

    iget-object v3, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v3}, Lcom/media/common/ui/widget/MyTabSelector;->access$600(Lcom/media/common/ui/widget/MyTabSelector;)[Landroid/widget/TextView;

    move-result-object v3

    array-length v3, v3

    rem-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    invoke-virtual {v0, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 138
    iget-object v1, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v1}, Lcom/media/common/ui/widget/MyTabSelector;->access$300(Lcom/media/common/ui/widget/MyTabSelector;)Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 139
    iget-object v1, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v1}, Lcom/media/common/ui/widget/MyTabSelector;->access$300(Lcom/media/common/ui/widget/MyTabSelector;)Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;->setIndexLineLayoutParamsExtra(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 140
    :cond_e
    iget-object v1, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    iget-object v2, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v2}, Lcom/media/common/ui/widget/MyTabSelector;->access$000(Lcom/media/common/ui/widget/MyTabSelector;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/media/common/ui/widget/MyTabSelector;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    :cond_f
    :goto_5
    iget-object v0, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v0}, Lcom/media/common/ui/widget/MyTabSelector;->access$300(Lcom/media/common/ui/widget/MyTabSelector;)Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v0}, Lcom/media/common/ui/widget/MyTabSelector;->access$300(Lcom/media/common/ui/widget/MyTabSelector;)Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v2}, Lcom/media/common/ui/widget/MyTabSelector;->access$600(Lcom/media/common/ui/widget/MyTabSelector;)[Landroid/widget/TextView;

    move-result-object v2

    iget v3, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->val$position:I

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;->setTabSelectedStyle(Landroid/widget/TextView;Landroid/widget/TextView;)I

    move-result v0

    if-nez v0, :cond_11

    .line 158
    :cond_10
    iget-object v0, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v0}, Lcom/media/common/ui/widget/MyTabSelector;->access$600(Lcom/media/common/ui/widget/MyTabSelector;)[Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v1}, Lcom/media/common/ui/widget/MyTabSelector;->access$200(Lcom/media/common/ui/widget/MyTabSelector;)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-virtual {v1}, Lcom/media/common/ui/widget/MyTabSelector;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/media/common/ui/widget/R$color;->colorB0BFCC:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    iget-object v0, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v0}, Lcom/media/common/ui/widget/MyTabSelector;->access$600(Lcom/media/common/ui/widget/MyTabSelector;)[Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->val$position:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-virtual {v1}, Lcom/media/common/ui/widget/MyTabSelector;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/media/common/ui/widget/R$color;->colorFDC10A:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    :cond_11
    iget-object v0, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    iget v1, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->val$position:I

    invoke-static {v0, v1}, Lcom/media/common/ui/widget/MyTabSelector;->access$202(Lcom/media/common/ui/widget/MyTabSelector;I)I

    .line 164
    iget-object v0, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    iget v1, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->val$position:I

    invoke-static {v0, v1}, Lcom/media/common/ui/widget/MyTabSelector;->access$102(Lcom/media/common/ui/widget/MyTabSelector;I)I

    .line 203
    :cond_12
    :goto_6
    iget-object v0, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v0}, Lcom/media/common/ui/widget/MyTabSelector;->access$700(Lcom/media/common/ui/widget/MyTabSelector;)Lcom/media/common/ui/widget/MyTabSelector$OnTabClickListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 204
    iget-object v0, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->this$0:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-static {v0}, Lcom/media/common/ui/widget/MyTabSelector;->access$700(Lcom/media/common/ui/widget/MyTabSelector;)Lcom/media/common/ui/widget/MyTabSelector$OnTabClickListener;

    move-result-object v0

    iget p0, p0, Lcom/media/common/ui/widget/MyTabSelector$1;->val$position:I

    invoke-interface {v0, p1, p0}, Lcom/media/common/ui/widget/MyTabSelector$OnTabClickListener;->onTabClick(Landroid/view/View;I)V

    :cond_13
    return-void
.end method
