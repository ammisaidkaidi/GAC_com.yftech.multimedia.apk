.class Lcom/yftech/libradio/dabui/DabMainFragment$EmptyServiceViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DabMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dabui/DabMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyServiceViewHolder"
.end annotation


# instance fields
.field private position:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 887
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 888
    new-instance v0, Lcom/yftech/libradio/dabui/DabMainFragment$EmptyServiceViewHolder$1;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dabui/DabMainFragment$EmptyServiceViewHolder$1;-><init>(Lcom/yftech/libradio/dabui/DabMainFragment$EmptyServiceViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$1602(Lcom/yftech/libradio/dabui/DabMainFragment$EmptyServiceViewHolder;I)I
    .locals 0

    .line 883
    iput p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment$EmptyServiceViewHolder;->position:I

    return p1
.end method
