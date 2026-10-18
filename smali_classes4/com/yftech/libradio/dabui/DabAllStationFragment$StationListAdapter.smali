.class Lcom/yftech/libradio/dabui/DabAllStationFragment$StationListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DabAllStationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dabui/DabAllStationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StationListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;


# direct methods
.method private constructor <init>(Lcom/yftech/libradio/dabui/DabAllStationFragment;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationListAdapter;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/libradio/dabui/DabAllStationFragment;Lcom/yftech/libradio/dabui/DabAllStationFragment$1;)V
    .locals 0

    .line 281
    invoke-direct {p0, p1}, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationListAdapter;-><init>(Lcom/yftech/libradio/dabui/DabAllStationFragment;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 355
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationListAdapter;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-static {p0}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$000(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Ljava/util/List;

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

    .line 281
    check-cast p1, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationListAdapter;->onBindViewHolder(Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;I)V
    .locals 9
    .param p1    # Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 293
    invoke-static {p1, p2}, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->access$1202(Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;I)I

    .line 294
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationListAdapter;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$000(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/libradio/bean/DabChannelInfo;

    .line 296
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->access$1300(Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    if-nez v0, :cond_0

    return-void

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationListAdapter;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    sget v2, Lcom/yftech/libradio/R$string;->radio_unknown:I

    invoke-virtual {v1, v2}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-virtual {v0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getStatPty()I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {v0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getStatPty()I

    move-result v2

    iget-object v3, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationListAdapter;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-static {v3}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$1400(Lcom/yftech/libradio/dabui/DabAllStationFragment;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 303
    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationListAdapter;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-static {v1}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$1400(Lcom/yftech/libradio/dabui/DabAllStationFragment;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getStatPty()I

    move-result v2

    aget-object v1, v1, v2

    .line 305
    :cond_1
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->access$1500(Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v1}, Lcom/yftech/libradio/Utils;->convertStationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationListAdapter;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    sget v2, Lcom/yftech/libradio/R$string;->radio_unknown:I

    invoke-virtual {v1, v2}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 308
    invoke-virtual {v0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getPropertieslabel()Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 310
    invoke-virtual {v2}, Lcom/yftech/car/media/radio/dab/entity/DabLabel;->getLabelString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/yftech/car/media/radio/dab/entity/DabLabel;->getLabelString()Ljava/lang/String;

    move-result-object v1

    .line 312
    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->access$1600(Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v1}, Lcom/yftech/libradio/Utils;->convertStationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationListAdapter;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    sget v2, Lcom/yftech/libradio/R$string;->radio_unknown:I

    invoke-virtual {v1, v2}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 315
    invoke-virtual {v0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleLabel()Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 317
    invoke-virtual {v2}, Lcom/yftech/car/media/radio/dab/entity/DabLabel;->getLabelString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Lcom/yftech/car/media/radio/dab/entity/DabLabel;->getLabelString()Ljava/lang/String;

    move-result-object v1

    .line 319
    :cond_5
    :goto_1
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->access$1700(Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v1}, Lcom/yftech/libradio/Utils;->convertStationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->access$1600(Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 322
    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationListAdapter;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-static {v2}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$500(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationListAdapter;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    .line 323
    invoke-static {v2}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$500(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getFrequency()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getFrequency()J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-nez v2, :cond_6

    .line 324
    invoke-virtual {v0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getServiceId()J

    move-result-wide v5

    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationListAdapter;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-static {v2}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$500(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getServiceId()J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-nez v2, :cond_6

    .line 325
    invoke-virtual {v0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleId()I

    move-result v2

    iget-object v5, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationListAdapter;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-static {v5}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$500(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getEnsembleId()I

    move-result v5

    if-ne v2, v5, :cond_6

    .line 326
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->access$1800(Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 327
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->access$1900(Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v2, 0x100

    .line 328
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 329
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->access$1500(Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v5, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationListAdapter;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-virtual {v5}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/yftech/libradio/R$color;->colorB3DD9D09:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 330
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->access$1600(Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v5, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationListAdapter;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-virtual {v5}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/yftech/libradio/R$color;->colorDD9D09:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 331
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->access$1700(Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v5, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationListAdapter;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-virtual {v5}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/yftech/libradio/R$color;->colorB3DD9D09:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 332
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->access$2000(Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v5, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationListAdapter;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-virtual {v5}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/yftech/libradio/R$color;->colorDD9D09:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 333
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->access$1600(Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    const-string v5, "sourcehan-sans-medium"

    invoke-static {v5, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_2

    .line 335
    :cond_6
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->access$1800(Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 336
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->access$1900(Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v2, 0xce

    .line 337
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 338
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->access$1500(Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v5, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationListAdapter;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-virtual {v5}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/yftech/libradio/R$color;->colorB3FFFFFF:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 339
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->access$1600(Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v5, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationListAdapter;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-virtual {v5}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/yftech/libradio/R$color;->colorFFFFFF:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 340
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->access$1700(Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v5, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationListAdapter;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-virtual {v5}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/yftech/libradio/R$color;->colorB3FFFFFF:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 341
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->access$2000(Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v5, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationListAdapter;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-virtual {v5}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/yftech/libradio/R$color;->colorFFFFFF:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 342
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->access$1600(Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    const-string v5, "sourcehan-sans-regular"

    invoke-static {v5, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 344
    :goto_2
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->access$1600(Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    invoke-virtual {v0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getImageData()[B

    move-result-object v1

    if-eqz v1, :cond_7

    .line 346
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->access$1300(Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationListAdapter;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-virtual {v2}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/yftech/libradio/R$mipmap;->pic_list_tiny_default:I

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationListAdapter;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v2, v4, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getImageData()[B

    move-result-object v0

    invoke-static {v1, p0, v3, v0}, Lcom/yftech/libradio/Utils;->loadDabSliderShowDataNoCache(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I[B)V

    goto :goto_3

    .line 348
    :cond_7
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->access$1300(Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;)Landroid/widget/ImageView;

    move-result-object p0

    sget v0, Lcom/yftech/libradio/R$mipmap;->pic_list_tiny_default:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 350
    :goto_3
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->access$2000(Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;)Landroid/widget/TextView;

    move-result-object p0

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

    .line 281
    invoke-virtual {p0, p1, p2}, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 286
    iget-object p2, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationListAdapter;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-virtual {p2}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/yftech/libradio/R$layout;->item_all_station_list:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 287
    new-instance p2, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationListAdapter;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-direct {p2, p0, p1}, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;-><init>(Lcom/yftech/libradio/dabui/DabAllStationFragment;Landroid/view/View;)V

    return-object p2
.end method
