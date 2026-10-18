.class Lcom/yftech/libradio/dabui/DabFavorListActivity$FavorListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DabFavorListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dabui/DabFavorListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FavorListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;


# direct methods
.method private constructor <init>(Lcom/yftech/libradio/dabui/DabFavorListActivity;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$FavorListAdapter;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/libradio/dabui/DabFavorListActivity;Lcom/yftech/libradio/dabui/DabFavorListActivity$1;)V
    .locals 0

    .line 228
    invoke-direct {p0, p1}, Lcom/yftech/libradio/dabui/DabFavorListActivity$FavorListAdapter;-><init>(Lcom/yftech/libradio/dabui/DabFavorListActivity;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 297
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$FavorListAdapter;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    invoke-static {p0}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->access$700(Lcom/yftech/libradio/dabui/DabFavorListActivity;)Ljava/util/List;

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

    .line 228
    check-cast p1, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/libradio/dabui/DabFavorListActivity$FavorListAdapter;->onBindViewHolder(Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;I)V
    .locals 6
    .param p1    # Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 240
    invoke-static {p1, p2}, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;->access$602(Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;I)I

    .line 241
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$FavorListAdapter;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->access$700(Lcom/yftech/libradio/dabui/DabFavorListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/libradio/bean/DabChannelInfo;

    .line 243
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;->access$800(Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    if-nez v0, :cond_0

    return-void

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$FavorListAdapter;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    sget v2, Lcom/yftech/libradio/R$string;->radio_unknown:I

    invoke-virtual {v1, v2}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-virtual {v0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getStatPty()I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {v0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getStatPty()I

    move-result v2

    iget-object v3, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$FavorListAdapter;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    invoke-static {v3}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->access$900(Lcom/yftech/libradio/dabui/DabFavorListActivity;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 250
    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$FavorListAdapter;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    invoke-static {v1}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->access$900(Lcom/yftech/libradio/dabui/DabFavorListActivity;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getStatPty()I

    move-result v2

    aget-object v1, v1, v2

    .line 252
    :cond_1
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;->access$1000(Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v1}, Lcom/yftech/libradio/Utils;->convertStationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$FavorListAdapter;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    sget v2, Lcom/yftech/libradio/R$string;->radio_unknown:I

    invoke-virtual {v1, v2}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 255
    invoke-virtual {v0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getPropertieslabel()Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 257
    invoke-virtual {v2}, Lcom/yftech/car/media/radio/dab/entity/DabLabel;->getLabelString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/yftech/car/media/radio/dab/entity/DabLabel;->getLabelString()Ljava/lang/String;

    move-result-object v1

    .line 259
    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;->access$1100(Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v1}, Lcom/yftech/libradio/Utils;->convertStationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$FavorListAdapter;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    sget v2, Lcom/yftech/libradio/R$string;->radio_unknown:I

    invoke-virtual {v1, v2}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-virtual {v0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleLabel()Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 264
    invoke-virtual {v2}, Lcom/yftech/car/media/radio/dab/entity/DabLabel;->getLabelString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Lcom/yftech/car/media/radio/dab/entity/DabLabel;->getLabelString()Ljava/lang/String;

    move-result-object v1

    .line 266
    :cond_5
    :goto_1
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;->access$1200(Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v1}, Lcom/yftech/libradio/Utils;->convertStationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;->access$1100(Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 269
    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$FavorListAdapter;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    invoke-static {v2}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->access$1300(Lcom/yftech/libradio/dabui/DabFavorListActivity;)I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-ne v2, p2, :cond_6

    .line 270
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;->access$1400(Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 271
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;->access$1500(Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 p2, 0x106

    .line 272
    invoke-virtual {v1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 273
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;->access$1000(Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$FavorListAdapter;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    sget v5, Lcom/yftech/libradio/R$color;->colorB3DD9D09:I

    invoke-virtual {v2, v5}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 274
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;->access$1100(Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$FavorListAdapter;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    sget v5, Lcom/yftech/libradio/R$color;->colorDD9D09:I

    invoke-virtual {v2, v5}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 275
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;->access$1200(Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$FavorListAdapter;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    sget v5, Lcom/yftech/libradio/R$color;->colorB3DD9D09:I

    invoke-virtual {v2, v5}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 276
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;->access$1100(Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    const-string v2, "sourcehan-sans-medium"

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_2

    .line 278
    :cond_6
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;->access$1400(Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 279
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;->access$1500(Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 p2, 0xd4

    .line 280
    invoke-virtual {v1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 281
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;->access$1000(Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$FavorListAdapter;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    sget v5, Lcom/yftech/libradio/R$color;->colorB3FFFFFF:I

    invoke-virtual {v2, v5}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 282
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;->access$1100(Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$FavorListAdapter;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    sget v5, Lcom/yftech/libradio/R$color;->colorFFFFFF:I

    invoke-virtual {v2, v5}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 283
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;->access$1200(Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$FavorListAdapter;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    sget v5, Lcom/yftech/libradio/R$color;->colorB3FFFFFF:I

    invoke-virtual {v2, v5}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 284
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;->access$1100(Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    const-string v2, "sourcehan-sans-regular"

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 286
    :goto_2
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;->access$1100(Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    invoke-virtual {v0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getImageData()[B

    move-result-object p2

    if-eqz p2, :cond_7

    const-string p2, "sky-->DabFavorListActivity->getImageData is have value"

    .line 288
    invoke-static {p2}, Lcom/media/common/util/LogUtil;->w(Ljava/lang/String;)V

    .line 289
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;->access$800(Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$FavorListAdapter;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    sget p2, Lcom/yftech/libradio/R$mipmap;->pic_list_tiny_default:I

    invoke-virtual {p0, p2}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getImageData()[B

    move-result-object p2

    invoke-static {p1, p0, v3, p2}, Lcom/yftech/libradio/Utils;->loadDabSliderShowDataNoCache(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I[B)V

    goto :goto_3

    .line 291
    :cond_7
    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;->access$800(Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;)Landroid/widget/ImageView;

    move-result-object p0

    sget p1, Lcom/yftech/libradio/R$mipmap;->pic_list_tiny_default:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
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

    .line 228
    invoke-virtual {p0, p1, p2}, Lcom/yftech/libradio/dabui/DabFavorListActivity$FavorListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 233
    iget-object p2, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$FavorListAdapter;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/yftech/libradio/R$layout;->item_dab_favor_list:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 234
    new-instance p2, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$FavorListAdapter;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    invoke-direct {p2, p0, p1}, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;-><init>(Lcom/yftech/libradio/dabui/DabFavorListActivity;Landroid/view/View;)V

    return-object p2
.end method
