.class final Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;
.super Landroid/view/InputEventSender;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImeInputEventSender"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0

    .line 2542
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 2543
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventSender;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onInputEventFinished(IZ)V
    .locals 1

    .line 2548
    iget-object p0, p0, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->finishedInputEvent(IZZ)V

    return-void
.end method
