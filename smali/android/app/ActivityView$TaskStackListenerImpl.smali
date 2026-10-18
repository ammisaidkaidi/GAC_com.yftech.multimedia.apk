.class Landroid/app/ActivityView$TaskStackListenerImpl;
.super Landroid/app/TaskStackListener;
.source "ActivityView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskStackListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityView;


# direct methods
.method private constructor <init>(Landroid/app/ActivityView;)V
    .locals 0

    .line 440
    iput-object p1, p0, Landroid/app/ActivityView$TaskStackListenerImpl;->this$0:Landroid/app/ActivityView;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityView;Landroid/app/ActivityView$1;)V
    .locals 0

    .line 440
    invoke-direct {p0, p1}, Landroid/app/ActivityView$TaskStackListenerImpl;-><init>(Landroid/app/ActivityView;)V

    return-void
.end method

.method private getTopMostStackInfo()Landroid/app/ActivityManager$StackInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 476
    iget-object v0, p0, Landroid/app/ActivityView$TaskStackListenerImpl;->this$0:Landroid/app/ActivityView;

    invoke-static {v0}, Landroid/app/ActivityView;->access$300(Landroid/app/ActivityView;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    .line 477
    iget-object p0, p0, Landroid/app/ActivityView$TaskStackListenerImpl;->this$0:Landroid/app/ActivityView;

    invoke-static {p0}, Landroid/app/ActivityView;->access$1000(Landroid/app/ActivityView;)Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityManager;->getAllStackInfos()Ljava/util/List;

    move-result-object p0

    .line 480
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 482
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$StackInfo;

    .line 484
    iget v4, v3, Landroid/app/ActivityManager$StackInfo;->displayId:I

    if-eq v4, v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v3

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public onTaskDescriptionChanged(ILandroid/app/ActivityManager$TaskDescription;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 445
    iget-object v0, p0, Landroid/app/ActivityView$TaskStackListenerImpl;->this$0:Landroid/app/ActivityView;

    invoke-static {v0}, Landroid/app/ActivityView;->access$300(Landroid/app/ActivityView;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 449
    :cond_0
    invoke-direct {p0}, Landroid/app/ActivityView$TaskStackListenerImpl;->getTopMostStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 455
    :cond_1
    iget-object v1, v0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    iget-object v0, v0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    if-ne p1, v0, :cond_2

    .line 456
    iget-object p0, p0, Landroid/app/ActivityView$TaskStackListenerImpl;->this$0:Landroid/app/ActivityView;

    invoke-static {p0}, Landroid/app/ActivityView;->access$200(Landroid/app/ActivityView;)Landroid/view/SurfaceView;

    move-result-object p0

    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setResizeBackgroundColor(I)V

    :cond_2
    return-void
.end method

.method public onTaskMovedToFront(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 462
    iget-object v0, p0, Landroid/app/ActivityView$TaskStackListenerImpl;->this$0:Landroid/app/ActivityView;

    invoke-static {v0}, Landroid/app/ActivityView;->access$500(Landroid/app/ActivityView;)Landroid/app/ActivityView$StateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 463
    invoke-direct {p0}, Landroid/app/ActivityView$TaskStackListenerImpl;->getTopMostStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v1, v0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    iget-object v2, v0, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    if-ne p1, v1, :cond_0

    .line 468
    iget-object p0, p0, Landroid/app/ActivityView$TaskStackListenerImpl;->this$0:Landroid/app/ActivityView;

    invoke-static {p0}, Landroid/app/ActivityView;->access$500(Landroid/app/ActivityView;)Landroid/app/ActivityView$StateCallback;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/ActivityView$StateCallback;->onTaskMovedToFront(Landroid/app/ActivityManager$StackInfo;)V

    :cond_0
    return-void
.end method
