.class Lcom/yftech/libgallery/ui/FullScreenImageActivity$1;
.super Landroid/os/Handler;
.source "FullScreenImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libgallery/ui/FullScreenImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;


# direct methods
.method constructor <init>(Lcom/yftech/libgallery/ui/FullScreenImageActivity;Landroid/os/Looper;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$1;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 107
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 109
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$1;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    const/16 p1, 0x8

    invoke-static {p0, p1}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->access$000(Lcom/yftech/libgallery/ui/FullScreenImageActivity;I)V

    goto :goto_0

    .line 110
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x63

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 112
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$1;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-static {p1, v2}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->access$102(Lcom/yftech/libgallery/ui/FullScreenImageActivity;I)I

    .line 114
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$1;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$1;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->access$200(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)I

    move-result v0

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$1;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-static {v2}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->access$300(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v0, v2

    invoke-static {p1, v0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->access$202(Lcom/yftech/libgallery/ui/FullScreenImageActivity;I)I

    .line 115
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$1;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->access$400(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)V

    .line 117
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$1;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->access$500(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 118
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_3

    .line 120
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_2

    .line 123
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$1;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->access$600(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView;->callOnClick()Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 125
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$1;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->access$700(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView;->callOnClick()Z

    :cond_3
    :goto_0
    return-void
.end method
