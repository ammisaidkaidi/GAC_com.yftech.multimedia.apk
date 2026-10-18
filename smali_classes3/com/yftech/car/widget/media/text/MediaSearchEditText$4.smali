.class Lcom/yftech/car/widget/media/text/MediaSearchEditText$4;
.super Ljava/lang/Object;
.source "MediaSearchEditText.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    .line 255
    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$4;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    if-eqz p3, :cond_7

    .line 259
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const-string v0, "MediaSearchEditText"

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEditorAction: action=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p3

    const/16 v0, 0x42

    if-ne p3, v0, :cond_7

    const/4 p3, 0x1

    if-nez p2, :cond_0

    return p3

    :cond_0
    if-ne p2, p3, :cond_7

    .line 267
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$4;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-virtual {p2}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    .line 268
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 269
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$4;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-static {p1}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->access$400(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 270
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$4;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$4;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-static {p2}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->access$400(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->setError(Ljava/lang/CharSequence;)V

    .line 272
    :cond_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$4;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->setStartSearchText(Ljava/lang/String;)V

    return p3

    :cond_2
    if-eqz p2, :cond_3

    .line 276
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_3
    const-string p2, ""

    :goto_0
    const-string v0, "\\p{P}|\\s"

    const-string v2, ""

    .line 277
    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 278
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$4;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-static {p1}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->access$400(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 279
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$4;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$4;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-static {p2}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->access$400(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->setError(Ljava/lang/CharSequence;)V

    .line 281
    :cond_4
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$4;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->setStartSearchText(Ljava/lang/String;)V

    return p3

    .line 284
    :cond_5
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$4;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-static {p2}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->access$200(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)Lcom/yftech/car/widget/media/text/MediaSearchEditText$OnSearchTextListener;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 285
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaSearchEditText$4;->this$0:Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-static {p0}, Lcom/yftech/car/widget/media/text/MediaSearchEditText;->access$200(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)Lcom/yftech/car/widget/media/text/MediaSearchEditText$OnSearchTextListener;

    move-result-object p0

    check-cast p1, Lcom/yftech/car/widget/media/text/MediaSearchEditText;

    invoke-interface {p0, p1}, Lcom/yftech/car/widget/media/text/MediaSearchEditText$OnSearchTextListener;->onSearchText(Lcom/yftech/car/widget/media/text/MediaSearchEditText;)Z

    move-result p0

    return p0

    :cond_6
    return p3

    :cond_7
    const/4 p0, 0x0

    return p0
.end method
