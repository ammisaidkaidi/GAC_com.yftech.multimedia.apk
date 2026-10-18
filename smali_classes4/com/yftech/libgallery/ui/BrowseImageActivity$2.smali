.class Lcom/yftech/libgallery/ui/BrowseImageActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "BrowseImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libgallery/ui/BrowseImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libgallery/ui/BrowseImageActivity;


# direct methods
.method constructor <init>(Lcom/yftech/libgallery/ui/BrowseImageActivity;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity$2;->this$0:Lcom/yftech/libgallery/ui/BrowseImageActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 163
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "test"

    .line 164
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "value"

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    .line 168
    iget-object p0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity$2;->this$0:Lcom/yftech/libgallery/ui/BrowseImageActivity;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/BrowseImageActivity;->access$300(Lcom/yftech/libgallery/ui/BrowseImageActivity;)Lcom/yftech/car/input/CarInputManager$CarInputCallback;

    move-result-object p0

    new-instance p1, Lcom/yftech/car/input/CarKey;

    const/4 p2, 0x1

    invoke-direct {p1, p2, v0}, Lcom/yftech/car/input/CarKey;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/yftech/car/input/CarInputManager$CarInputCallback;->onInputKey(Lcom/yftech/car/input/CarKey;)V

    goto :goto_0

    .line 170
    :cond_0
    iget-object p0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity$2;->this$0:Lcom/yftech/libgallery/ui/BrowseImageActivity;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/BrowseImageActivity;->access$300(Lcom/yftech/libgallery/ui/BrowseImageActivity;)Lcom/yftech/car/input/CarInputManager$CarInputCallback;

    move-result-object p0

    new-instance p1, Lcom/yftech/car/input/CarKey;

    const/4 p2, 0x2

    invoke-direct {p1, p2, v0}, Lcom/yftech/car/input/CarKey;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/yftech/car/input/CarInputManager$CarInputCallback;->onInputKey(Lcom/yftech/car/input/CarKey;)V

    :cond_1
    :goto_0
    return-void
.end method
