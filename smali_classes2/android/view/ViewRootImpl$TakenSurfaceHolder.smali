.class Landroid/view/ViewRootImpl$TakenSurfaceHolder;
.super Lcom/android/internal/view/BaseSurfaceHolder;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TakenSurfaceHolder"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0

    .line 7866
    iput-object p1, p0, Landroid/view/ViewRootImpl$TakenSurfaceHolder;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Lcom/android/internal/view/BaseSurfaceHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public isCreating()Z
    .locals 0

    .line 7895
    iget-object p0, p0, Landroid/view/ViewRootImpl$TakenSurfaceHolder;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean p0, p0, Landroid/view/ViewRootImpl;->mIsCreating:Z

    return p0
.end method

.method public onAllowLockCanvas()Z
    .locals 0

    .line 7869
    iget-object p0, p0, Landroid/view/ViewRootImpl$TakenSurfaceHolder;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean p0, p0, Landroid/view/ViewRootImpl;->mDrawingAllowed:Z

    return p0
.end method

.method public onRelayoutContainer()V
    .locals 0

    return-void
.end method

.method public onUpdateSurface()V
    .locals 1

    .line 7890
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Shouldn\'t be here"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFixedSize(II)V
    .locals 0

    .line 7900
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Currently only support sizing from layout"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFormat(I)V
    .locals 0

    .line 7879
    iget-object p0, p0, Landroid/view/ViewRootImpl$TakenSurfaceHolder;->this$0:Landroid/view/ViewRootImpl;

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/internal/view/RootViewSurfaceTaker;

    invoke-interface {p0, p1}, Lcom/android/internal/view/RootViewSurfaceTaker;->setSurfaceFormat(I)V

    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 0

    .line 7906
    iget-object p0, p0, Landroid/view/ViewRootImpl$TakenSurfaceHolder;->this$0:Landroid/view/ViewRootImpl;

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/internal/view/RootViewSurfaceTaker;

    invoke-interface {p0, p1}, Lcom/android/internal/view/RootViewSurfaceTaker;->setSurfaceKeepScreenOn(Z)V

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 7884
    iget-object p0, p0, Landroid/view/ViewRootImpl$TakenSurfaceHolder;->this$0:Landroid/view/ViewRootImpl;

    iget-object p0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/internal/view/RootViewSurfaceTaker;

    invoke-interface {p0, p1}, Lcom/android/internal/view/RootViewSurfaceTaker;->setSurfaceType(I)V

    return-void
.end method
