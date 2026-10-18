.class Lcom/media/common/ui/widget/FlowRadioGroup$PassThroughHierarchyChangeListener;
.super Ljava/lang/Object;
.source "FlowRadioGroup.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/media/common/ui/widget/FlowRadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PassThroughHierarchyChangeListener"
.end annotation


# instance fields
.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field final synthetic this$0:Lcom/media/common/ui/widget/FlowRadioGroup;


# direct methods
.method private constructor <init>(Lcom/media/common/ui/widget/FlowRadioGroup;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/media/common/ui/widget/FlowRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/media/common/ui/widget/FlowRadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/media/common/ui/widget/FlowRadioGroup;Lcom/media/common/ui/widget/FlowRadioGroup$1;)V
    .locals 0

    .line 447
    invoke-direct {p0, p1}, Lcom/media/common/ui/widget/FlowRadioGroup$PassThroughHierarchyChangeListener;-><init>(Lcom/media/common/ui/widget/FlowRadioGroup;)V

    return-void
.end method

.method static synthetic access$602(Lcom/media/common/ui/widget/FlowRadioGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/media/common/ui/widget/FlowRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-object p1
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 452
    iget-object v0, p0, Lcom/media/common/ui/widget/FlowRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/media/common/ui/widget/FlowRadioGroup;

    if-ne p1, v0, :cond_2

    instance-of v0, p2, Landroid/widget/RadioButton;

    if-eqz v0, :cond_2

    .line 453
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 456
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 457
    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/media/common/ui/widget/FlowRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/media/common/ui/widget/FlowRadioGroup;

    invoke-static {v0}, Lcom/media/common/ui/widget/FlowRadioGroup;->access$700(Lcom/media/common/ui/widget/FlowRadioGroup;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    move-object v0, p2

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/media/common/ui/widget/FlowRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/media/common/ui/widget/FlowRadioGroup;

    .line 461
    invoke-static {v1}, Lcom/media/common/ui/widget/FlowRadioGroup;->access$800(Lcom/media/common/ui/widget/FlowRadioGroup;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/media/common/ui/widget/FlowRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/media/common/ui/widget/FlowRadioGroup;

    invoke-static {v0}, Lcom/media/common/ui/widget/FlowRadioGroup;->access$900(Lcom/media/common/ui/widget/FlowRadioGroup;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 464
    :cond_2
    iget-object v0, p0, Lcom/media/common/ui/widget/FlowRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/media/common/ui/widget/FlowRadioGroup;

    if-ne p1, v0, :cond_3

    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 467
    iget-object v0, p0, Lcom/media/common/ui/widget/FlowRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/media/common/ui/widget/FlowRadioGroup;

    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/media/common/ui/widget/FlowRadioGroup;->access$1000(Lcom/media/common/ui/widget/FlowRadioGroup;Landroid/view/ViewGroup;)V

    .line 470
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/media/common/ui/widget/FlowRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_4

    .line 471
    iget-object p0, p0, Lcom/media/common/ui/widget/FlowRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {p0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    .line 476
    iget-object v0, p0, Lcom/media/common/ui/widget/FlowRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/media/common/ui/widget/FlowRadioGroup;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    instance-of v0, p2, Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 477
    move-object v0, p2

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/media/common/ui/widget/FlowRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/media/common/ui/widget/FlowRadioGroup;

    if-ne p1, v0, :cond_1

    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/media/common/ui/widget/FlowRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/media/common/ui/widget/FlowRadioGroup;

    move-object v2, p2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Lcom/media/common/ui/widget/FlowRadioGroup;->findRadioButton(Landroid/view/ViewGroup;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 483
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/media/common/ui/widget/FlowRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_2

    .line 484
    iget-object p0, p0, Lcom/media/common/ui/widget/FlowRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {p0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    :cond_2
    return-void
.end method
