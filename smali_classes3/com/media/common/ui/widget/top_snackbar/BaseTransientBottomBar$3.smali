.class Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$3;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$3;->this$0:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(I)V
    .locals 4

    .line 386
    sget-object v0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->sHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$3;->this$0:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public show()V
    .locals 3

    .line 381
    sget-object v0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->sHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$3;->this$0:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
