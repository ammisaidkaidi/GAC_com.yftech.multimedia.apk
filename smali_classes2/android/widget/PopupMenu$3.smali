.class Landroid/widget/PopupMenu$3;
.super Landroid/widget/ForwardingListener;
.source "PopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/PopupMenu;->getDragToOpenListener()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/PopupMenu;


# direct methods
.method constructor <init>(Landroid/widget/PopupMenu;Landroid/view/View;)V
    .locals 0

    .line 166
    iput-object p1, p0, Landroid/widget/PopupMenu$3;->this$0:Landroid/widget/PopupMenu;

    invoke-direct {p0, p2}, Landroid/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Lcom/android/internal/view/menu/ShowableListMenu;
    .locals 0

    .line 182
    iget-object p0, p0, Landroid/widget/PopupMenu$3;->this$0:Landroid/widget/PopupMenu;

    invoke-static {p0}, Landroid/widget/PopupMenu;->access$200(Landroid/widget/PopupMenu;)Lcom/android/internal/view/menu/MenuPopupHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->getPopup()Lcom/android/internal/view/menu/MenuPopup;

    move-result-object p0

    return-object p0
.end method

.method protected onForwardingStarted()Z
    .locals 0

    .line 169
    iget-object p0, p0, Landroid/widget/PopupMenu$3;->this$0:Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Landroid/widget/PopupMenu;->show()V

    const/4 p0, 0x1

    return p0
.end method

.method protected onForwardingStopped()Z
    .locals 0

    .line 175
    iget-object p0, p0, Landroid/widget/PopupMenu$3;->this$0:Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Landroid/widget/PopupMenu;->dismiss()V

    const/4 p0, 0x1

    return p0
.end method
