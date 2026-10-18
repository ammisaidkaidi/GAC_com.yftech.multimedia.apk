.class Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DabMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dabui/DabMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceViewHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder$OnItemClickListener;
    }
.end annotation


# instance fields
.field private imgDabService:Landroid/widget/ImageView;

.field private imgShader:Landroid/widget/ImageView;

.field private imgShadow:Landroid/widget/ImageView;

.field private listener:Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder$OnItemClickListener;

.field private position:I


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder$OnItemClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 868
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 869
    iput-object p2, p0, Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder;->listener:Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder$OnItemClickListener;

    .line 870
    sget v0, Lcom/yftech/libradio/R$id;->img_dab_service:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder;->imgDabService:Landroid/widget/ImageView;

    .line 871
    sget v0, Lcom/yftech/libradio/R$id;->img_shader:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder;->imgShader:Landroid/widget/ImageView;

    .line 872
    sget v0, Lcom/yftech/libradio/R$id;->img_shadow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder;->imgShadow:Landroid/widget/ImageView;

    .line 874
    new-instance v0, Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder$1;

    invoke-direct {v0, p0, p2}, Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder$1;-><init>(Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder;Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder$OnItemClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder$OnItemClickListener;Lcom/yftech/libradio/dabui/DabMainFragment$1;)V
    .locals 0

    .line 855
    invoke-direct {p0, p1, p2}, Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder;-><init>(Landroid/view/View;Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder$OnItemClickListener;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 855
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder;->imgDabService:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder;)I
    .locals 0

    .line 855
    iget p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder;->position:I

    return p0
.end method

.method static synthetic access$1502(Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder;I)I
    .locals 0

    .line 855
    iput p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder;->position:I

    return p1
.end method
