.class Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$2;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "DabStationFilteredListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->initView(Landroid/view/View;)V
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

    .line 117
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$2;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 120
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$2;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    invoke-static {p0}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->access$400(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)Z

    move-result p0

    const/16 p2, 0x22

    const/16 p3, 0x30

    const/4 p4, 0x0

    if-eqz p0, :cond_0

    .line 121
    invoke-virtual {p1, p3, p4, p4, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p1, p4, p4, p3, p2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method
