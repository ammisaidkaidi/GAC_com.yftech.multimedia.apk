.class Lcom/android/internal/view/menu/MenuItemImpl$1;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/menu/MenuItemImpl;->setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/MenuItemImpl;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/MenuItemImpl;)V
    .locals 0

    .line 746
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl$1;->this$0:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionProviderVisibilityChanged(Z)V
    .locals 0

    .line 748
    iget-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl$1;->this$0:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-static {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->access$000(Lcom/android/internal/view/menu/MenuItemImpl;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/view/menu/MenuItemImpl$1;->this$0:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemVisibleChanged(Lcom/android/internal/view/menu/MenuItemImpl;)V

    return-void
.end method
