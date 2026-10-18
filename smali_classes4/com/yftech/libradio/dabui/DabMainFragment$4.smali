.class Lcom/yftech/libradio/dabui/DabMainFragment$4;
.super Ljava/lang/Object;
.source "DabMainFragment.java"

# interfaces
.implements Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$OnCenterItemSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dabui/DabMainFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dabui/DabMainFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/DabMainFragment;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment$4;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCenterItemChanged(I)V
    .locals 0

    .line 304
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$4;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {p0, p1}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$902(Lcom/yftech/libradio/dabui/DabMainFragment;I)I

    return-void
.end method
