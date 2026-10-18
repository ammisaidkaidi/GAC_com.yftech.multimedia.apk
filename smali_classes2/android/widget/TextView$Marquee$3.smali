.class Landroid/widget/TextView$Marquee$3;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView$Marquee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView$Marquee;


# direct methods
.method constructor <init>(Landroid/widget/TextView$Marquee;)V
    .locals 0

    .line 12435
    iput-object p1, p0, Landroid/widget/TextView$Marquee$3;->this$0:Landroid/widget/TextView$Marquee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 0

    .line 12438
    iget-object p1, p0, Landroid/widget/TextView$Marquee$3;->this$0:Landroid/widget/TextView$Marquee;

    invoke-static {p1}, Landroid/widget/TextView$Marquee;->access$600(Landroid/widget/TextView$Marquee;)B

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 12439
    iget-object p1, p0, Landroid/widget/TextView$Marquee$3;->this$0:Landroid/widget/TextView$Marquee;

    invoke-static {p1}, Landroid/widget/TextView$Marquee;->access$900(Landroid/widget/TextView$Marquee;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 12440
    iget-object p1, p0, Landroid/widget/TextView$Marquee$3;->this$0:Landroid/widget/TextView$Marquee;

    invoke-static {p1}, Landroid/widget/TextView$Marquee;->access$910(Landroid/widget/TextView$Marquee;)I

    .line 12442
    :cond_0
    iget-object p1, p0, Landroid/widget/TextView$Marquee$3;->this$0:Landroid/widget/TextView$Marquee;

    iget-object p0, p0, Landroid/widget/TextView$Marquee$3;->this$0:Landroid/widget/TextView$Marquee;

    invoke-static {p0}, Landroid/widget/TextView$Marquee;->access$900(Landroid/widget/TextView$Marquee;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView$Marquee;->start(I)V

    :cond_1
    return-void
.end method
