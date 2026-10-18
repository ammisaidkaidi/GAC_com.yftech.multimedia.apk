.class Lcom/yftech/car/widget/media/music/button/MusicButton$2;
.super Ljava/lang/Object;
.source "MusicButton.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/music/button/MusicButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/music/button/MusicButton;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$2;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 453
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$2;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    iget-object v1, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$2;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    invoke-static {v1}, Lcom/yftech/car/widget/media/music/button/MusicButton;->access$600(Lcom/yftech/car/widget/media/music/button/MusicButton;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/yftech/car/widget/media/music/button/MusicButton;->access$200(Lcom/yftech/car/widget/media/music/button/MusicButton;I)V

    .line 454
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$2;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/button/MusicButton;->access$700(Lcom/yftech/car/widget/media/music/button/MusicButton;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 455
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/button/MusicButton$2;->this$0:Lcom/yftech/car/widget/media/music/button/MusicButton;

    invoke-static {p0}, Lcom/yftech/car/widget/media/music/button/MusicButton;->access$700(Lcom/yftech/car/widget/media/music/button/MusicButton;)Landroid/view/View$OnLongClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
