.class Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder$1;
.super Ljava/lang/Object;
.source "DabMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder;-><init>(Landroid/view/View;Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder$OnItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder;

.field final synthetic val$listener:Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder$OnItemClickListener;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder;Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder$OnItemClickListener;)V
    .locals 0

    .line 874
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder$1;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder;

    iput-object p2, p0, Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder$1;->val$listener:Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder$OnItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 877
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder$1;->val$listener:Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder$OnItemClickListener;

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder$1;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder;

    invoke-static {p0}, Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder;->access$1500(Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder$OnItemClickListener;->onItemClick(I)V

    return-void
.end method
