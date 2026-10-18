.class Lcom/yftech/libmusic/dialog/MusicSongListDialog$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "MusicSongListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmusic/dialog/MusicSongListDialog;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/dialog/MusicSongListDialog;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/dialog/MusicSongListDialog;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog$3;->this$0:Lcom/yftech/libmusic/dialog/MusicSongListDialog;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 281
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog$3;->this$0:Lcom/yftech/libmusic/dialog/MusicSongListDialog;

    invoke-static {p1}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->access$300(Lcom/yftech/libmusic/dialog/MusicSongListDialog;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 282
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog$3;->this$0:Lcom/yftech/libmusic/dialog/MusicSongListDialog;

    invoke-static {p1}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->access$300(Lcom/yftech/libmusic/dialog/MusicSongListDialog;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 283
    :cond_0
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog$3;->this$0:Lcom/yftech/libmusic/dialog/MusicSongListDialog;

    invoke-static {p1}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->access$300(Lcom/yftech/libmusic/dialog/MusicSongListDialog;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v0, 0x3a98

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 286
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog$3;->this$0:Lcom/yftech/libmusic/dialog/MusicSongListDialog;

    invoke-static {p1}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->access$400(Lcom/yftech/libmusic/dialog/MusicSongListDialog;)Z

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-gez p3, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, p2

    :goto_0
    if-eq p1, v1, :cond_3

    .line 289
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog$3;->this$0:Lcom/yftech/libmusic/dialog/MusicSongListDialog;

    if-gez p3, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, p2

    :goto_1
    invoke-static {p1, v1}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->access$402(Lcom/yftech/libmusic/dialog/MusicSongListDialog;Z)Z

    .line 293
    :cond_3
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog$3;->this$0:Lcom/yftech/libmusic/dialog/MusicSongListDialog;

    if-gez p3, :cond_4

    move p3, v0

    goto :goto_2

    :cond_4
    move p3, p2

    :goto_2
    invoke-static {p1, p3}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->access$402(Lcom/yftech/libmusic/dialog/MusicSongListDialog;Z)Z

    .line 295
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onScrolled:pullUp="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog$3;->this$0:Lcom/yftech/libmusic/dialog/MusicSongListDialog;

    invoke-static {p3}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->access$400(Lcom/yftech/libmusic/dialog/MusicSongListDialog;)Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 298
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog$3;->this$0:Lcom/yftech/libmusic/dialog/MusicSongListDialog;

    invoke-static {p1}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->access$500(Lcom/yftech/libmusic/dialog/MusicSongListDialog;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    .line 300
    iget-object p3, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog$3;->this$0:Lcom/yftech/libmusic/dialog/MusicSongListDialog;

    invoke-static {p3}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->access$500(Lcom/yftech/libmusic/dialog/MusicSongListDialog;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p3

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "firstVisibleItemPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastVisibleItemPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v1, 0x7

    if-le p1, v1, :cond_6

    .line 306
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog$3;->this$0:Lcom/yftech/libmusic/dialog/MusicSongListDialog;

    invoke-static {p1}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->access$200(Lcom/yftech/libmusic/dialog/MusicSongListDialog;)Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/libmusic/dialog/adapter/MusicSongListAdapter;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v0

    if-ge p3, p1, :cond_6

    .line 309
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog$3;->this$0:Lcom/yftech/libmusic/dialog/MusicSongListDialog;

    invoke-static {p1}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->access$400(Lcom/yftech/libmusic/dialog/MusicSongListDialog;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 310
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog$3;->this$0:Lcom/yftech/libmusic/dialog/MusicSongListDialog;

    invoke-static {p1}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->access$600(Lcom/yftech/libmusic/dialog/MusicSongListDialog;)Landroid/widget/ImageView;

    move-result-object p1

    sget p2, Lcom/yftech/libmusic/R$mipmap;->music_btn_reach_top:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 311
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog$3;->this$0:Lcom/yftech/libmusic/dialog/MusicSongListDialog;

    invoke-static {p0, v0}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->access$700(Lcom/yftech/libmusic/dialog/MusicSongListDialog;Z)V

    goto :goto_3

    .line 315
    :cond_5
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog$3;->this$0:Lcom/yftech/libmusic/dialog/MusicSongListDialog;

    invoke-static {p1}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->access$600(Lcom/yftech/libmusic/dialog/MusicSongListDialog;)Landroid/widget/ImageView;

    move-result-object p1

    sget p2, Lcom/yftech/libmusic/R$mipmap;->music_btn_reach_bottom:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 316
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog$3;->this$0:Lcom/yftech/libmusic/dialog/MusicSongListDialog;

    invoke-static {p0, v0}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->access$700(Lcom/yftech/libmusic/dialog/MusicSongListDialog;Z)V

    goto :goto_3

    .line 319
    :cond_6
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSongListDialog$3;->this$0:Lcom/yftech/libmusic/dialog/MusicSongListDialog;

    invoke-static {p0, p2}, Lcom/yftech/libmusic/dialog/MusicSongListDialog;->access$700(Lcom/yftech/libmusic/dialog/MusicSongListDialog;Z)V

    :goto_3
    return-void
.end method
