.class Lcom/yftech/libgallery/ui/BrowseImageFragment$1;
.super Landroid/os/Handler;
.source "BrowseImageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libgallery/ui/BrowseImageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libgallery/ui/BrowseImageFragment;Landroid/os/Looper;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$1;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 108
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 110
    iget-object p0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$1;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    const/16 p1, 0x8

    invoke-static {p0, p1}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$000(Lcom/yftech/libgallery/ui/BrowseImageFragment;I)V

    goto :goto_0

    .line 111
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_2

    .line 113
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 116
    iget-object p0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$1;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$100(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView;->callOnClick()Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 118
    iget-object p0, p0, Lcom/yftech/libgallery/ui/BrowseImageFragment$1;->this$0:Lcom/yftech/libgallery/ui/BrowseImageFragment;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/BrowseImageFragment;->access$200(Lcom/yftech/libgallery/ui/BrowseImageFragment;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView;->callOnClick()Z

    :cond_2
    :goto_0
    return-void
.end method
