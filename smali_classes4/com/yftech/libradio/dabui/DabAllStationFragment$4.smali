.class Lcom/yftech/libradio/dabui/DabAllStationFragment$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DabAllStationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dabui/DabAllStationFragment;->setBoardVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/DabAllStationFragment;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$4;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$4;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-static {p0}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$800(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Landroid/widget/ImageView;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
