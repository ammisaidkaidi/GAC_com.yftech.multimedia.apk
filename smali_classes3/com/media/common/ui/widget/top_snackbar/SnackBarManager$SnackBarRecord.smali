.class Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;
.super Ljava/lang/Object;
.source "SnackBarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SnackBarRecord"
.end annotation


# instance fields
.field final callback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field duration:I

.field paused:Z


# direct methods
.method constructor <init>(ILcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;)V
    .locals 1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;->callback:Ljava/lang/ref/WeakReference;

    .line 162
    iput p1, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;->duration:I

    return-void
.end method


# virtual methods
.method isSnackBar(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 166
    iget-object p0, p0, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$SnackBarRecord;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
