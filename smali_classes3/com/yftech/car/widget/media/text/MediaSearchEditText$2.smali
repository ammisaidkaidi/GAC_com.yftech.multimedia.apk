.class Lcom/yftech/car/widget/media/text/MediaSearchEditText$2;
.super Ljava/lang/Object;
.source "MediaSearchEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/text/MediaSearchEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$2;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    const-string p0, "MediaSearchEditText"

    const-string p1, "afterTextChanged: "

    .line 189
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p0, "MediaSearchEditText"

    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "beforeTextChanged: start=="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",count=="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .line 150
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x2

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-nez p1, :cond_2

    .line 151
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$2;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-static {p0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->access$000(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/widget/media/text/SearchEditButton;

    .line 152
    invoke-virtual {p1, p3}, Lcom/yftech/car/widget/media/text/SearchEditButton;->isSearchType(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/text/SearchEditButton;->isSearchType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    :cond_1
    invoke-virtual {p1, p4}, Lcom/yftech/car/widget/media/text/SearchEditButton;->setVisibility(I)V

    goto :goto_0

    .line 158
    :cond_2
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$2;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-static {p1}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->access$000(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/text/SearchEditButton;

    .line 159
    invoke-virtual {v0, p3}, Lcom/yftech/car/widget/media/text/SearchEditButton;->isSearchType(I)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0, p2}, Lcom/yftech/car/widget/media/text/SearchEditButton;->isSearchType(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 160
    :cond_4
    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/text/SearchEditButton;->setVisibility(I)V

    goto :goto_1

    .line 163
    :cond_5
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$2;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-static {p1}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->access$100(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)Lcom/yftech/car/widget/media/list/SearchHistoryList;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 164
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$2;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-static {p1}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->access$100(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)Lcom/yftech/car/widget/media/list/SearchHistoryList;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->setVisibility(I)V

    .line 165
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$2;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-static {p1}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->access$100(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)Lcom/yftech/car/widget/media/list/SearchHistoryList;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->setSearchEditButtonVisibility(I)V

    .line 166
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$2;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-static {p1}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->access$200(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)Lcom/yftech/car/widget/media/text/MediaSearchEditText$OnSearchTextListener;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 167
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$2;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-static {p1}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->access$200(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)Lcom/yftech/car/widget/media/text/MediaSearchEditText$OnSearchTextListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/yftech/car/widget/media/text/MediaSearchEditText$OnSearchTextListener;->onCancelSearch()V

    .line 169
    :cond_6
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$2;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-static {p1}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->access$300(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)Lcom/yftech/car/widget/media/list/MediaDataList;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 170
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$2;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-static {p1}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->access$300(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)Lcom/yftech/car/widget/media/list/MediaDataList;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->setVisibility(I)V

    .line 173
    :cond_7
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$2;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-static {p1}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->access$000(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yftech/car/widget/media/text/SearchEditButton;

    const/4 p3, 0x3

    .line 174
    invoke-virtual {p2, p3}, Lcom/yftech/car/widget/media/text/SearchEditButton;->isSearchType(I)Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-virtual {p2}, Lcom/yftech/car/widget/media/text/SearchEditButton;->getMediaSearchHistoryListId()I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_9

    invoke-virtual {p2}, Lcom/yftech/car/widget/media/text/SearchEditButton;->getMediaSearchHistoryListId()I

    move-result p3

    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$2;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-static {v0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->access$100(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)Lcom/yftech/car/widget/media/list/SearchHistoryList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->getId()I

    move-result v0

    if-ne p3, v0, :cond_8

    .line 175
    :cond_9
    iget-object p3, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$2;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-static {p3}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->access$100(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)Lcom/yftech/car/widget/media/list/SearchHistoryList;

    move-result-object p3

    invoke-virtual {p3}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->getVisibility()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/yftech/car/widget/media/text/SearchEditButton;->setVisibility(I)V

    goto :goto_2

    .line 179
    :cond_a
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$2;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-static {p0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->access$000(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/widget/media/text/SearchEditButton;

    .line 180
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/text/SearchEditButton;->getSearchVisibilityShow()I

    move-result p2

    if-lez p2, :cond_b

    .line 181
    invoke-virtual {p1, v1}, Lcom/yftech/car/widget/media/text/SearchEditButton;->isSearchVisibilityShow(I)Z

    move-result p2

    if-eqz p2, :cond_c

    move p2, p4

    goto :goto_4

    :cond_c
    move p2, v1

    :goto_4
    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/text/SearchEditButton;->setVisibility(I)V

    goto :goto_3

    :cond_d
    return-void
.end method
