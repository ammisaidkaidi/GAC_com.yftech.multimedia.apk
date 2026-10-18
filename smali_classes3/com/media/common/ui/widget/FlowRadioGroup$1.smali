.class Lcom/media/common/ui/widget/FlowRadioGroup$1;
.super Ljava/lang/Object;
.source "FlowRadioGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/media/common/ui/widget/FlowRadioGroup;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/media/common/ui/widget/FlowRadioGroup;


# direct methods
.method constructor <init>(Lcom/media/common/ui/widget/FlowRadioGroup;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/media/common/ui/widget/FlowRadioGroup$1;->this$0:Lcom/media/common/ui/widget/FlowRadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/media/common/ui/widget/FlowRadioGroup$1;->this$0:Lcom/media/common/ui/widget/FlowRadioGroup;

    invoke-static {v0}, Lcom/media/common/ui/widget/FlowRadioGroup;->access$200(Lcom/media/common/ui/widget/FlowRadioGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/media/common/ui/widget/FlowRadioGroup$1;->this$0:Lcom/media/common/ui/widget/FlowRadioGroup;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/media/common/ui/widget/FlowRadioGroup;->access$202(Lcom/media/common/ui/widget/FlowRadioGroup;Z)Z

    .line 69
    iget-object v0, p0, Lcom/media/common/ui/widget/FlowRadioGroup$1;->this$0:Lcom/media/common/ui/widget/FlowRadioGroup;

    invoke-static {v0}, Lcom/media/common/ui/widget/FlowRadioGroup;->access$300(Lcom/media/common/ui/widget/FlowRadioGroup;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/media/common/ui/widget/FlowRadioGroup$1;->this$0:Lcom/media/common/ui/widget/FlowRadioGroup;

    invoke-static {v0}, Lcom/media/common/ui/widget/FlowRadioGroup;->access$300(Lcom/media/common/ui/widget/FlowRadioGroup;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 70
    iget-object v0, p0, Lcom/media/common/ui/widget/FlowRadioGroup$1;->this$0:Lcom/media/common/ui/widget/FlowRadioGroup;

    iget-object v1, p0, Lcom/media/common/ui/widget/FlowRadioGroup$1;->this$0:Lcom/media/common/ui/widget/FlowRadioGroup;

    invoke-static {v1}, Lcom/media/common/ui/widget/FlowRadioGroup;->access$300(Lcom/media/common/ui/widget/FlowRadioGroup;)I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/media/common/ui/widget/FlowRadioGroup;->access$400(Lcom/media/common/ui/widget/FlowRadioGroup;IZ)V

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/media/common/ui/widget/FlowRadioGroup$1;->this$0:Lcom/media/common/ui/widget/FlowRadioGroup;

    invoke-static {v0, v2}, Lcom/media/common/ui/widget/FlowRadioGroup;->access$202(Lcom/media/common/ui/widget/FlowRadioGroup;Z)Z

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 75
    iget-object p0, p0, Lcom/media/common/ui/widget/FlowRadioGroup$1;->this$0:Lcom/media/common/ui/widget/FlowRadioGroup;

    invoke-static {p0, p1}, Lcom/media/common/ui/widget/FlowRadioGroup;->access$500(Lcom/media/common/ui/widget/FlowRadioGroup;I)V

    return-void
.end method
