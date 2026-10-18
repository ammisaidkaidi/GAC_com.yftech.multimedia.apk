.class Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$3;
.super Ljava/lang/Object;
.source "MusicSearchFromHardDiskActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->initW()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$3;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 325
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "EditText Button Click, text length="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$3;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    invoke-static {p3}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->access$100(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",text:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$3;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    invoke-static {p3}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->access$100(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 327
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$3;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->access$100(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 p3, 0x0

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$3;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->access$100(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 p1, 0x3

    if-ne p2, p1, :cond_2

    .line 337
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$3;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    invoke-virtual {p1}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$3;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    invoke-static {p2}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->access$100(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)Landroid/widget/EditText;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lcom/media/common/util/SoftHideKeyBoardUtil;->isShowKeyBoard(Landroid/content/Context;Landroid/view/View;Z)V

    .line 338
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$3;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->access$200(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)Lcom/media/common/ui/widget/FlowLayout;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/media/common/ui/widget/FlowLayout;->setVisibility(I)V

    const-string p1, "searchMusic"

    .line 340
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 342
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$3;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->access$300(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)Lcom/yftech/libmusic/ui/MusicSearchResultFragment;

    move-result-object p1

    if-nez p1, :cond_1

    .line 343
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$3;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    invoke-static {p3}, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->newInstance(I)Lcom/yftech/libmusic/ui/MusicSearchResultFragment;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->access$302(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;Lcom/yftech/libmusic/ui/MusicSearchResultFragment;)Lcom/yftech/libmusic/ui/MusicSearchResultFragment;

    .line 344
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$3;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    iget-object p2, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$3;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    invoke-static {p2}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->access$300(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)Lcom/yftech/libmusic/ui/MusicSearchResultFragment;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->switchContent(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 346
    :cond_1
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$3;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->access$300(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)Lcom/yftech/libmusic/ui/MusicSearchResultFragment;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/yftech/libmusic/ui/MusicSearchResultFragment;->setSearchState(I)V

    .line 350
    :goto_0
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$3;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->access$400(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 351
    iget-object p2, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$3;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    invoke-static {p2}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->access$100(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 352
    iget-object p2, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$3;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    invoke-static {p2}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->access$400(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)Landroid/os/Handler;

    move-result-object p2

    const-wide/16 v0, 0x320

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 354
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$3;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->access$100(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->clearFocus()V

    :cond_2
    return p3

    .line 329
    :cond_3
    :goto_1
    sget p0, Lcom/yftech/libmusic/R$string;->music_search_empty_tips:I

    invoke-static {p0, p3}, Lcom/media/common/util/ToastUtils;->showFailMessage(II)V

    const/4 p0, 0x1

    return p0
.end method
