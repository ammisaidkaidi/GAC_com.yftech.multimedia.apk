.class Lcom/yftech/car/widget/media/text/MediaSearchEditText$3;
.super Ljava/lang/Object;
.source "MediaSearchEditText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 203
    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$3;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onClick$0(Lcom/yftech/car/widget/media/text/MediaSearchEditText$3;)V
    .locals 0

    .line 241
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$3;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->requestFocus()Z

    return-void
.end method

.method public static synthetic lambda$onClick$1(Lcom/yftech/car/widget/media/text/MediaSearchEditText$3;)V
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$3;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->requestFocus()Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 206
    check-cast p1, Lcom/yftech/car/widget/media/text/SearchEditButton;

    .line 207
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/text/SearchEditButton;->getSearchType()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 245
    :pswitch_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$3;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$3;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    new-instance v0, Lcom/yftech/car/widget/media/text/-$$Lambda$MediaSearchEditText$3$nO3Q8-vHTufzsKpgo8Di2KPHtF8;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/text/-$$Lambda$MediaSearchEditText$3$nO3Q8-vHTufzsKpgo8Di2KPHtF8;-><init>(Lcom/yftech/car/widget/media/text/MediaSearchEditText$3;)V

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 237
    :pswitch_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$3;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 238
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 239
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$3;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-interface {p1, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$3;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->setSelection(I)V

    .line 241
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$3;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    new-instance v0, Lcom/yftech/car/widget/media/text/-$$Lambda$MediaSearchEditText$3$mspPHhM8wpCn5XnKbYzL96wgI3U;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/text/-$$Lambda$MediaSearchEditText$3$mspPHhM8wpCn5XnKbYzL96wgI3U;-><init>(Lcom/yftech/car/widget/media/text/MediaSearchEditText$3;)V

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 209
    :pswitch_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$3;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-static {v0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->access$200(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)Lcom/yftech/car/widget/media/text/MediaSearchEditText$OnSearchTextListener;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 210
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$3;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 211
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 212
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$3;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-static {p1}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->access$400(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 213
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$3;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$3;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-static {v0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->access$400(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->setError(Ljava/lang/CharSequence;)V

    .line 215
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$3;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-virtual {p0, v3}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->setStartSearchText(Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 219
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    const-string v2, "\\p{P}|\\s"

    const-string v4, ""

    .line 220
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 221
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$3;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-static {p1}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->access$400(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 222
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$3;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$3;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-static {v0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->access$400(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->setError(Ljava/lang/CharSequence;)V

    .line 224
    :cond_3
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$3;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-virtual {p0, v3}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->setStartSearchText(Ljava/lang/String;)V

    return-void

    .line 227
    :cond_4
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/text/SearchEditButton;->getSearchFindFlag()I

    move-result v0

    if-lez v0, :cond_6

    .line 228
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$3;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/text/SearchEditButton;->getSearchFindFlag()I

    move-result p1

    invoke-static {v0, p1}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->access$502(Lcom/yftech/car/widget/media/text/MediaSearchEditText;I)I

    .line 229
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$3;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-static {p1}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->access$000(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/text/SearchEditButton;

    .line 230
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/text/SearchEditButton;->getSearchFindFlag()I

    move-result v2

    iget-object v3, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$3;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-static {v3}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->access$500(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)I

    move-result v3

    if-ne v2, v3, :cond_5

    move v2, v1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0, v2}, Lcom/yftech/car/widget/media/text/SearchEditButton;->setSelected(Z)V

    goto :goto_1

    .line 233
    :cond_6
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$3;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-static {p1}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->access$200(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)Lcom/yftech/car/widget/media/text/MediaSearchEditText$OnSearchTextListener;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$3;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-interface {p1, p0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText$OnSearchTextListener;->onSearchText(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)Z

    :cond_7
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
