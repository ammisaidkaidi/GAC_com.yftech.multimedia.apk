.class public final synthetic Lcom/yftech/car/widget/media/photo/layout/-$$Lambda$PhotoLayoutChildManager$Soakz66pHNxAuWpbIyDkhlytvAk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/yftech/car/widget/media/text/VisibilityTextButton;

.field private final synthetic f$1:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/yftech/car/widget/media/text/VisibilityTextButton;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/photo/layout/-$$Lambda$PhotoLayoutChildManager$Soakz66pHNxAuWpbIyDkhlytvAk;->f$0:Lcom/yftech/car/widget/media/text/VisibilityTextButton;

    iput-object p2, p0, Lcom/yftech/car/widget/media/photo/layout/-$$Lambda$PhotoLayoutChildManager$Soakz66pHNxAuWpbIyDkhlytvAk;->f$1:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/layout/-$$Lambda$PhotoLayoutChildManager$Soakz66pHNxAuWpbIyDkhlytvAk;->f$0:Lcom/yftech/car/widget/media/text/VisibilityTextButton;

    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/layout/-$$Lambda$PhotoLayoutChildManager$Soakz66pHNxAuWpbIyDkhlytvAk;->f$1:Landroid/view/ViewGroup;

    invoke-static {v0, p0}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->lambda$initView$1(Lcom/yftech/car/widget/media/text/VisibilityTextButton;Landroid/view/ViewGroup;)V

    return-void
.end method
