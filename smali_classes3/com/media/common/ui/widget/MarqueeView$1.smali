.class Lcom/media/common/ui/widget/MarqueeView$1;
.super Ljava/lang/Object;
.source "MarqueeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/media/common/ui/widget/MarqueeView;->initClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/media/common/ui/widget/MarqueeView;


# direct methods
.method constructor <init>(Lcom/media/common/ui/widget/MarqueeView;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/media/common/ui/widget/MarqueeView$1;->this$0:Lcom/media/common/ui/widget/MarqueeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 97
    iget-object p1, p0, Lcom/media/common/ui/widget/MarqueeView$1;->this$0:Lcom/media/common/ui/widget/MarqueeView;

    invoke-static {p1}, Lcom/media/common/ui/widget/MarqueeView;->access$000(Lcom/media/common/ui/widget/MarqueeView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 98
    iget-object p1, p0, Lcom/media/common/ui/widget/MarqueeView$1;->this$0:Lcom/media/common/ui/widget/MarqueeView;

    invoke-static {p1}, Lcom/media/common/ui/widget/MarqueeView;->access$100(Lcom/media/common/ui/widget/MarqueeView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 99
    iget-object p0, p0, Lcom/media/common/ui/widget/MarqueeView$1;->this$0:Lcom/media/common/ui/widget/MarqueeView;

    invoke-virtual {p0}, Lcom/media/common/ui/widget/MarqueeView;->stopRoll()V

    goto :goto_0

    .line 101
    :cond_0
    iget-object p0, p0, Lcom/media/common/ui/widget/MarqueeView$1;->this$0:Lcom/media/common/ui/widget/MarqueeView;

    invoke-virtual {p0}, Lcom/media/common/ui/widget/MarqueeView;->continueRoll()V

    :cond_1
    :goto_0
    return-void
.end method
