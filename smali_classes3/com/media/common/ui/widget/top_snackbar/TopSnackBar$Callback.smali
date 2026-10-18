.class public Lcom/media/common/ui/widget/top_snackbar/TopSnackBar$Callback;
.super Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$BaseCallback;
.source "TopSnackBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$BaseCallback<",
        "Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;",
        ">;"
    }
.end annotation


# static fields
.field public static final DISMISS_EVENT_ACTION:I = 0x1

.field public static final DISMISS_EVENT_CONSECUTIVE:I = 0x4

.field public static final DISMISS_EVENT_MANUAL:I = 0x3

.field public static final DISMISS_EVENT_SWIPE:I = 0x0

.field public static final DISMISS_EVENT_TIMEOUT:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$BaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onDismissed(Ljava/lang/Object;I)V
    .locals 0

    .line 76
    check-cast p1, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;

    invoke-virtual {p0, p1, p2}, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar$Callback;->onDismissed(Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;I)V

    return-void
.end method

.method public onShown(Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onShown(Ljava/lang/Object;)V
    .locals 0

    .line 76
    check-cast p1, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;

    invoke-virtual {p0, p1}, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar$Callback;->onShown(Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;)V

    return-void
.end method
