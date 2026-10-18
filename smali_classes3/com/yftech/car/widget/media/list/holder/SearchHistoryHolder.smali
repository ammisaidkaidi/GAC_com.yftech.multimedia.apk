.class public Lcom/yftech/car/widget/media/list/holder/SearchHistoryHolder;
.super Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
.source "SearchHistoryHolder.java"


# instance fields
.field private mDeleteBtn:Landroid/widget/Button;

.field private mDeleteImage:Landroid/widget/ImageView;

.field private final mTextViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    .line 24
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/list/holder/SearchHistoryHolder;->mTextViewList:Ljava/util/List;

    .line 25
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 26
    check-cast p1, Landroid/view/ViewGroup;

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 29
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    .line 31
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 32
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 33
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 34
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 38
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 40
    :cond_1
    instance-of v3, v2, Landroid/widget/Button;

    if-eqz v3, :cond_2

    .line 41
    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/yftech/car/widget/media/list/holder/SearchHistoryHolder;->mDeleteBtn:Landroid/widget/Button;

    goto :goto_1

    .line 42
    :cond_2
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 43
    iget-object v3, p0, Lcom/yftech/car/widget/media/list/holder/SearchHistoryHolder;->mTextViewList:Ljava/util/List;

    check-cast v2, Landroid/widget/TextView;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 44
    :cond_3
    instance-of v3, v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    .line 45
    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/yftech/car/widget/media/list/holder/SearchHistoryHolder;->mDeleteImage:Landroid/widget/ImageView;

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_5
    instance-of v0, p1, Landroid/widget/Button;

    if-eqz v0, :cond_6

    .line 52
    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/yftech/car/widget/media/list/holder/SearchHistoryHolder;->mDeleteBtn:Landroid/widget/Button;

    goto :goto_2

    .line 53
    :cond_6
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 54
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/SearchHistoryHolder;->mTextViewList:Ljava/util/List;

    check-cast p1, Landroid/widget/TextView;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 55
    :cond_7
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 56
    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/yftech/car/widget/media/list/holder/SearchHistoryHolder;->mDeleteImage:Landroid/widget/ImageView;

    :cond_8
    :goto_2
    return-void
.end method


# virtual methods
.method public setDeleteOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/SearchHistoryHolder;->mDeleteBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/SearchHistoryHolder;->mDeleteBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/SearchHistoryHolder;->mDeleteImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 67
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/SearchHistoryHolder;->mDeleteImage:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public setDeleteVisibility(I)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/SearchHistoryHolder;->mDeleteBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/SearchHistoryHolder;->mDeleteBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/SearchHistoryHolder;->mDeleteImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 76
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/SearchHistoryHolder;->mDeleteImage:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setItemData(Ljava/lang/String;I)V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/SearchHistoryHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/SearchHistoryHolder;->mDeleteBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/SearchHistoryHolder;->mDeleteBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/SearchHistoryHolder;->mDeleteImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/SearchHistoryHolder;->mDeleteImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/SearchHistoryHolder;->mTextViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 89
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/SearchHistoryHolder;->mTextViewList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    add-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/SearchHistoryHolder;->mTextViewList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 92
    :cond_2
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/SearchHistoryHolder;->mTextViewList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 93
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
