.class Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DabStationFilteredListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->setBoardVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$6;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 231
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$6;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    invoke-static {p0}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->access$600(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)Landroid/widget/ImageView;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
