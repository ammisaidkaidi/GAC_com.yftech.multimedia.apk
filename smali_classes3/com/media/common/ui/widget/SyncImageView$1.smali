.class Lcom/media/common/ui/widget/SyncImageView$1;
.super Landroid/os/Handler;
.source "SyncImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/media/common/ui/widget/SyncImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/media/common/ui/widget/SyncImageView;


# direct methods
.method constructor <init>(Lcom/media/common/ui/widget/SyncImageView;Landroid/os/Looper;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/media/common/ui/widget/SyncImageView$1;->this$0:Lcom/media/common/ui/widget/SyncImageView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 44
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_3

    .line 47
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "BUNDLE_THUMBDATA"

    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "BUNDLE_WIDTH"

    .line 49
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "BUNDLE_HEIGHT"

    .line 50
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "BUNDLE_PATH"

    .line 51
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 53
    iget-object v3, p0, Lcom/media/common/ui/widget/SyncImageView$1;->this$0:Lcom/media/common/ui/widget/SyncImageView;

    invoke-static {v3}, Lcom/media/common/ui/widget/SyncImageView;->access$000(Lcom/media/common/ui/widget/SyncImageView;)Lcom/media/common/ui/widget/SyncImageView$OnMediaInformationCallback;

    move-result-object v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_1

    .line 55
    array-length p1, v0

    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    iget-object p1, p0, Lcom/media/common/ui/widget/SyncImageView$1;->this$0:Lcom/media/common/ui/widget/SyncImageView;

    invoke-virtual {p1}, Lcom/media/common/ui/widget/SyncImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/media/common/ui/widget/SyncImageView$1;->this$0:Lcom/media/common/ui/widget/SyncImageView;

    invoke-static {v0}, Lcom/media/common/ui/widget/SyncImageView;->access$200(Lcom/media/common/ui/widget/SyncImageView;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/media/common/ui/widget/SyncImageView$1;->this$0:Lcom/media/common/ui/widget/SyncImageView;

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_1

    .line 56
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/media/common/ui/widget/SyncImageView$1;->this$0:Lcom/media/common/ui/widget/SyncImageView;

    iget-object p0, p0, Lcom/media/common/ui/widget/SyncImageView$1;->this$0:Lcom/media/common/ui/widget/SyncImageView;

    invoke-static {p0}, Lcom/media/common/ui/widget/SyncImageView;->access$100(Lcom/media/common/ui/widget/SyncImageView;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/media/common/ui/widget/SyncImageView;->setImageResource(I)V

    goto :goto_1

    .line 63
    :cond_2
    iget-object p0, p0, Lcom/media/common/ui/widget/SyncImageView$1;->this$0:Lcom/media/common/ui/widget/SyncImageView;

    invoke-static {p0}, Lcom/media/common/ui/widget/SyncImageView;->access$000(Lcom/media/common/ui/widget/SyncImageView;)Lcom/media/common/ui/widget/SyncImageView$OnMediaInformationCallback;

    move-result-object p0

    invoke-interface {p0, p1, v0, v1, v2}, Lcom/media/common/ui/widget/SyncImageView$OnMediaInformationCallback;->onMediaImageCallback(Ljava/lang/String;[BII)V

    :cond_3
    :goto_1
    return-void
.end method
