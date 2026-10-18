.class Lcom/yftech/libradio/dialog/RadioFavorDialog$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "RadioFavorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dialog/RadioFavorDialog;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dialog/RadioFavorDialog;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dialog/RadioFavorDialog;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog$1;->this$0:Lcom/yftech/libradio/dialog/RadioFavorDialog;

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

    .line 187
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog$1;->this$0:Lcom/yftech/libradio/dialog/RadioFavorDialog;

    invoke-static {p1}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->access$000(Lcom/yftech/libradio/dialog/RadioFavorDialog;)Z

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-gez p3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    if-eq p1, v1, :cond_2

    .line 190
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog$1;->this$0:Lcom/yftech/libradio/dialog/RadioFavorDialog;

    if-gez p3, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    invoke-static {p1, v1}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->access$002(Lcom/yftech/libradio/dialog/RadioFavorDialog;Z)Z

    .line 194
    :cond_2
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog$1;->this$0:Lcom/yftech/libradio/dialog/RadioFavorDialog;

    if-gez p3, :cond_3

    move p3, v0

    goto :goto_2

    :cond_3
    move p3, p2

    :goto_2
    invoke-static {p1, p3}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->access$002(Lcom/yftech/libradio/dialog/RadioFavorDialog;Z)Z

    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onScrolled:pullUp="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog$1;->this$0:Lcom/yftech/libradio/dialog/RadioFavorDialog;

    invoke-static {p3}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->access$000(Lcom/yftech/libradio/dialog/RadioFavorDialog;)Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 199
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog$1;->this$0:Lcom/yftech/libradio/dialog/RadioFavorDialog;

    invoke-static {p1}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->access$100(Lcom/yftech/libradio/dialog/RadioFavorDialog;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    .line 201
    iget-object p3, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog$1;->this$0:Lcom/yftech/libradio/dialog/RadioFavorDialog;

    invoke-static {p3}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->access$100(Lcom/yftech/libradio/dialog/RadioFavorDialog;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p3

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "firstVisibleItemPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastVisibleItemPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/16 v1, 0x9

    if-le p1, v1, :cond_5

    .line 207
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog$1;->this$0:Lcom/yftech/libradio/dialog/RadioFavorDialog;

    invoke-static {p1}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->access$200(Lcom/yftech/libradio/dialog/RadioFavorDialog;)Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/libradio/dialog/adapter/RadioFavorAdapter;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v0

    if-ge p3, p1, :cond_5

    .line 210
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog$1;->this$0:Lcom/yftech/libradio/dialog/RadioFavorDialog;

    invoke-static {p1}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->access$000(Lcom/yftech/libradio/dialog/RadioFavorDialog;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 211
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog$1;->this$0:Lcom/yftech/libradio/dialog/RadioFavorDialog;

    invoke-static {p1}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->access$300(Lcom/yftech/libradio/dialog/RadioFavorDialog;)Landroid/widget/ImageView;

    move-result-object p1

    sget p2, Lcom/yftech/libradio/R$mipmap;->radio_btn_reach_top:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 212
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog$1;->this$0:Lcom/yftech/libradio/dialog/RadioFavorDialog;

    invoke-static {p0, v0}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->access$400(Lcom/yftech/libradio/dialog/RadioFavorDialog;Z)V

    goto :goto_3

    .line 216
    :cond_4
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog$1;->this$0:Lcom/yftech/libradio/dialog/RadioFavorDialog;

    invoke-static {p1}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->access$300(Lcom/yftech/libradio/dialog/RadioFavorDialog;)Landroid/widget/ImageView;

    move-result-object p1

    sget p2, Lcom/yftech/libradio/R$mipmap;->radio_btn_reach_bottom:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 217
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog$1;->this$0:Lcom/yftech/libradio/dialog/RadioFavorDialog;

    invoke-static {p0, v0}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->access$400(Lcom/yftech/libradio/dialog/RadioFavorDialog;Z)V

    goto :goto_3

    .line 220
    :cond_5
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog$1;->this$0:Lcom/yftech/libradio/dialog/RadioFavorDialog;

    invoke-static {p0, p2}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->access$400(Lcom/yftech/libradio/dialog/RadioFavorDialog;Z)V

    :goto_3
    return-void
.end method
