.class Lcom/media/common/ui/widget/FlowRadioGroup$CheckedStateTracker;
.super Ljava/lang/Object;
.source "FlowRadioGroup.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/media/common/ui/widget/FlowRadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckedStateTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/media/common/ui/widget/FlowRadioGroup;


# direct methods
.method private constructor <init>(Lcom/media/common/ui/widget/FlowRadioGroup;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/media/common/ui/widget/FlowRadioGroup$CheckedStateTracker;->this$0:Lcom/media/common/ui/widget/FlowRadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/media/common/ui/widget/FlowRadioGroup;Lcom/media/common/ui/widget/FlowRadioGroup$1;)V
    .locals 0

    .line 420
    invoke-direct {p0, p1}, Lcom/media/common/ui/widget/FlowRadioGroup$CheckedStateTracker;-><init>(Lcom/media/common/ui/widget/FlowRadioGroup;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 425
    iget-object p2, p0, Lcom/media/common/ui/widget/FlowRadioGroup$CheckedStateTracker;->this$0:Lcom/media/common/ui/widget/FlowRadioGroup;

    invoke-static {p2}, Lcom/media/common/ui/widget/FlowRadioGroup;->access$200(Lcom/media/common/ui/widget/FlowRadioGroup;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 429
    :cond_0
    iget-object p2, p0, Lcom/media/common/ui/widget/FlowRadioGroup$CheckedStateTracker;->this$0:Lcom/media/common/ui/widget/FlowRadioGroup;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/media/common/ui/widget/FlowRadioGroup;->access$202(Lcom/media/common/ui/widget/FlowRadioGroup;Z)Z

    .line 430
    iget-object p2, p0, Lcom/media/common/ui/widget/FlowRadioGroup$CheckedStateTracker;->this$0:Lcom/media/common/ui/widget/FlowRadioGroup;

    invoke-static {p2}, Lcom/media/common/ui/widget/FlowRadioGroup;->access$300(Lcom/media/common/ui/widget/FlowRadioGroup;)I

    move-result p2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    .line 431
    iget-object p2, p0, Lcom/media/common/ui/widget/FlowRadioGroup$CheckedStateTracker;->this$0:Lcom/media/common/ui/widget/FlowRadioGroup;

    iget-object v0, p0, Lcom/media/common/ui/widget/FlowRadioGroup$CheckedStateTracker;->this$0:Lcom/media/common/ui/widget/FlowRadioGroup;

    invoke-static {v0}, Lcom/media/common/ui/widget/FlowRadioGroup;->access$300(Lcom/media/common/ui/widget/FlowRadioGroup;)I

    move-result v0

    invoke-static {p2, v0, v1}, Lcom/media/common/ui/widget/FlowRadioGroup;->access$400(Lcom/media/common/ui/widget/FlowRadioGroup;IZ)V

    .line 433
    :cond_1
    iget-object p2, p0, Lcom/media/common/ui/widget/FlowRadioGroup$CheckedStateTracker;->this$0:Lcom/media/common/ui/widget/FlowRadioGroup;

    invoke-static {p2, v1}, Lcom/media/common/ui/widget/FlowRadioGroup;->access$202(Lcom/media/common/ui/widget/FlowRadioGroup;Z)Z

    .line 435
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    .line 436
    iget-object p0, p0, Lcom/media/common/ui/widget/FlowRadioGroup$CheckedStateTracker;->this$0:Lcom/media/common/ui/widget/FlowRadioGroup;

    invoke-static {p0, p1}, Lcom/media/common/ui/widget/FlowRadioGroup;->access$500(Lcom/media/common/ui/widget/FlowRadioGroup;I)V

    return-void
.end method
