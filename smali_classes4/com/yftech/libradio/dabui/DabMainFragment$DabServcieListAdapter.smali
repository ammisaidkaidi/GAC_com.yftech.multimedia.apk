.class Lcom/yftech/libradio/dabui/DabMainFragment$DabServcieListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DabMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dabui/DabMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DabServcieListAdapter"
.end annotation


# static fields
.field private static final VIEW_TYPE_SERVICE_INVALID:I = 0x4f51

.field private static final VIEW_TYPE_SERVICE_NOR:I = 0x4f50


# instance fields
.field private dabChannelInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/libradio/bean/DabChannelInfo;",
            ">;"
        }
    .end annotation
.end field

.field private weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/yftech/libradio/dabui/DabMainFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/yftech/libradio/dabui/DabMainFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/libradio/bean/DabChannelInfo;",
            ">;",
            "Lcom/yftech/libradio/dabui/DabMainFragment;",
            ")V"
        }
    .end annotation

    .line 790
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 791
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment$DabServcieListAdapter;->dabChannelInfos:Ljava/util/List;

    .line 792
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment$DabServcieListAdapter;->weakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$1200(Lcom/yftech/libradio/dabui/DabMainFragment$DabServcieListAdapter;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 784
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$DabServcieListAdapter;->weakReference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 837
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$DabServcieListAdapter;->dabChannelInfos:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$DabServcieListAdapter;->dabChannelInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 842
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$DabServcieListAdapter;->dabChannelInfos:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/libradio/bean/DabChannelInfo;

    .line 843
    instance-of p0, p0, Lcom/yftech/libradio/bean/InvalidDabChannelInfo;

    if-eqz p0, :cond_0

    const/16 p0, 0x4f51

    return p0

    :cond_0
    const/16 p0, 0x4f50

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 815
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$DabServcieListAdapter;->dabChannelInfos:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/libradio/bean/DabChannelInfo;

    .line 817
    instance-of v1, p1, Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder;

    if-eqz v1, :cond_1

    .line 818
    check-cast p1, Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder;

    .line 821
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder;->access$1400(Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 823
    invoke-static {p1, p2}, Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder;->access$1502(Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder;I)I

    .line 824
    invoke-virtual {v0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getImageData()[B

    move-result-object p2

    if-eqz p2, :cond_0

    .line 825
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder;->access$1400(Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p2, p0, Lcom/yftech/libradio/dabui/DabMainFragment$DabServcieListAdapter;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-virtual {p2}, Lcom/yftech/libradio/dabui/DabMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/yftech/libradio/R$mipmap;->pic_default_sel:I

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$DabServcieListAdapter;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {p2, v1, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/16 p2, 0xe

    invoke-virtual {v0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getImageData()[B

    move-result-object v0

    invoke-static {p1, p0, p2, v0}, Lcom/yftech/libradio/Utils;->loadDabSliderShowDataNoCache(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I[B)V

    goto :goto_0

    .line 827
    :cond_0
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder;->access$1400(Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder;)Landroid/widget/ImageView;

    move-result-object p0

    sget p1, Lcom/yftech/libradio/R$mipmap;->pic_default_sel:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 829
    :cond_1
    instance-of p0, p1, Lcom/yftech/libradio/dabui/DabMainFragment$EmptyServiceViewHolder;

    if-eqz p0, :cond_2

    .line 830
    check-cast p1, Lcom/yftech/libradio/dabui/DabMainFragment$EmptyServiceViewHolder;

    .line 831
    invoke-static {p1, p2}, Lcom/yftech/libradio/dabui/DabMainFragment$EmptyServiceViewHolder;->access$1602(Lcom/yftech/libradio/dabui/DabMainFragment$EmptyServiceViewHolder;I)I

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x4f51

    if-ne p2, v1, :cond_0

    .line 799
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/yftech/libradio/R$layout;->item_empty_service_list:I

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 800
    new-instance p1, Lcom/yftech/libradio/dabui/DabMainFragment$EmptyServiceViewHolder;

    invoke-direct {p1, p0}, Lcom/yftech/libradio/dabui/DabMainFragment$EmptyServiceViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 802
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/yftech/libradio/R$layout;->item_service_list:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 803
    new-instance p2, Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder;

    new-instance v0, Lcom/yftech/libradio/dabui/DabMainFragment$DabServcieListAdapter$1;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dabui/DabMainFragment$DabServcieListAdapter$1;-><init>(Lcom/yftech/libradio/dabui/DabMainFragment$DabServcieListAdapter;)V

    const/4 p0, 0x0

    invoke-direct {p2, p1, v0, p0}, Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder;-><init>(Landroid/view/View;Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder$OnItemClickListener;Lcom/yftech/libradio/dabui/DabMainFragment$1;)V

    return-object p2
.end method

.method onDestory()V
    .locals 1

    const/4 v0, 0x0

    .line 851
    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$DabServcieListAdapter;->dabChannelInfos:Ljava/util/List;

    return-void
.end method
