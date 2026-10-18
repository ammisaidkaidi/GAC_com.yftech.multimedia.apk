.class public Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;
.super Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
.source "MediaDataDirectoryHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder$OnItemClickPathListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaDataDirectoryHolde"


# instance fields
.field private mAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;

.field private mOnItemClickPathListener:Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder$OnItemClickPathListener;

.field private mPath:Ljava/lang/String;

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
.method public constructor <init>(Landroid/view/View;Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;->mTextViewList:Ljava/util/List;

    .line 48
    iput-object p2, p0, Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;->mAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;

    .line 50
    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_3

    .line 51
    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    .line 53
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 54
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 56
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 57
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 58
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 59
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 60
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 62
    :cond_1
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 63
    iget-object v3, p0, Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;->mTextViewList:Ljava/util/List;

    check-cast v2, Landroid/widget/TextView;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_3
    instance-of p2, p1, Landroid/widget/TextView;

    if-eqz p2, :cond_4

    .line 70
    iget-object p2, p0, Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;->mTextViewList:Ljava/util/List;

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_4
    new-instance p2, Lcom/yftech/car/widget/media/list/holder/-$$Lambda$MediaDataDirectoryHolder$6Wj0UJMfNx4x81SNo_Wjymmk1qM;

    invoke-direct {p2, p0}, Lcom/yftech/car/widget/media/list/holder/-$$Lambda$MediaDataDirectoryHolder$6Wj0UJMfNx4x81SNo_Wjymmk1qM;-><init>(Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;Landroid/view/View;)V
    .locals 0

    .line 75
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;->mOnItemClickPathListener:Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder$OnItemClickPathListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;->mPath:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;->mOnItemClickPathListener:Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder$OnItemClickPathListener;

    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;->mPath:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder$OnItemClickPathListener;->onItemPath(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public setDirectoryText(Ljava/lang/String;I)V
    .locals 5

    .line 86
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;->mPath:Ljava/lang/String;

    .line 87
    iget-object p2, p0, Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;->mAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;

    invoke-virtual {p2}, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;->getCurrentDirectoryPath()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;->mPath:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 88
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;->mTextViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;->mAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;

    invoke-virtual {v4}, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;->getBaseRootDirectoryPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_3

    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2f

    if-ne v0, v3, :cond_0

    .line 103
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "/"

    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    add-int/2addr v0, v1

    .line 111
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;->mTextViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 116
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;->mTextViewList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;->mTextViewList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;->mTextViewList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;->mTextViewList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 123
    :cond_3
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;->mTextViewList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v1, :cond_4

    .line 124
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;->mTextViewList:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;->mTextViewList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;->mAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;->getRootDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 127
    :cond_4
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;->mTextViewList:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;->mTextViewList:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;->mAdapter:Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/adapter/MediaDataDirectoryAdapter;->getRootDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 132
    :cond_5
    iget-object v3, p0, Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;->mTextViewList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_6

    .line 133
    iget-object v3, p0, Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;->mTextViewList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;->mTextViewList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 136
    :cond_6
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;->mTextViewList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;->mTextViewList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :cond_7
    :goto_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public setOnItemClickPathListener(Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder$OnItemClickPathListener;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder;->mOnItemClickPathListener:Lcom/yftech/car/widget/media/list/holder/MediaDataDirectoryHolder$OnItemClickPathListener;

    return-void
.end method
