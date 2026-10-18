.class Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DabStationFilteredListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilteredStationAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;


# direct methods
.method private constructor <init>(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationAdapter;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$1;)V
    .locals 0

    .line 338
    invoke-direct {p0, p1}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationAdapter;-><init>(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 380
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationAdapter;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    invoke-static {p0}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->access$000(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 338
    check-cast p1, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationAdapter;->onBindViewHolder(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;I)V
    .locals 6
    .param p1    # Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 350
    invoke-static {p1, p2}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;->access$1102(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;I)I

    .line 351
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationAdapter;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->access$000(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yftech/libradio/bean/DabChannelInfo;

    .line 353
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;->access$1200(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 355
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationAdapter;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->access$100(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationAdapter;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    .line 356
    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->access$100(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getFrequency()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/yftech/libradio/bean/DabChannelInfo;->getFrequency()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationAdapter;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    .line 357
    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->access$100(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getServiceId()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/yftech/libradio/bean/DabChannelInfo;->getServiceId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationAdapter;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    .line 358
    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->access$100(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getEnsembleId()I

    move-result v0

    invoke-virtual {p2}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleId()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 359
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;->access$1300(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 360
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;->access$1400(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 361
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;->access$1500(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationAdapter;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    invoke-virtual {v2}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/yftech/libradio/R$color;->colorDD9D09:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 362
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;->access$1500(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "sourcehan-sans-medium"

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 364
    :cond_0
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;->access$1300(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 365
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;->access$1400(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 366
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;->access$1500(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationAdapter;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    invoke-virtual {v2}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/yftech/libradio/R$color;->colorB3FFFFFF:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 367
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;->access$1500(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "sourcehan-sans-regular"

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 369
    :goto_0
    invoke-virtual {p2}, Lcom/yftech/libradio/bean/DabChannelInfo;->getImageData()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 370
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;->access$1200(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationAdapter;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    invoke-virtual {v1}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yftech/libradio/R$mipmap;->pic_list_large_default:I

    iget-object v3, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationAdapter;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    invoke-virtual {v3}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {p2}, Lcom/yftech/libradio/bean/DabChannelInfo;->getImageData()[B

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/yftech/libradio/Utils;->loadDabSliderShowDataNoCache(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I[B)V

    goto :goto_1

    .line 372
    :cond_1
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;->access$1200(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/yftech/libradio/R$mipmap;->pic_list_large_default:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 374
    :goto_1
    invoke-virtual {p2}, Lcom/yftech/libradio/bean/DabChannelInfo;->getPropertieslabel()Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    move-result-object p2

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationAdapter;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    sget v0, Lcom/yftech/libradio/R$string;->radio_unknown:I

    invoke-virtual {p0, v0}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/yftech/libradio/Utils;->getDabLableString(Lcom/yftech/car/media/radio/dab/entity/DabLabel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 375
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;->access$1500(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p0}, Lcom/yftech/libradio/Utils;->convertStationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 338
    invoke-virtual {p0, p1, p2}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 343
    iget-object p2, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationAdapter;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    invoke-virtual {p2}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/yftech/libradio/R$layout;->item_filtered_station_list:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 344
    new-instance p2, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationAdapter;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    invoke-direct {p2, p0, p1}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;-><init>(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;Landroid/view/View;)V

    return-object p2
.end method
