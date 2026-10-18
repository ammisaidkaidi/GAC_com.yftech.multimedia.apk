.class Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "EpgBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpgListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;


# direct methods
.method private constructor <init>(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgListAdapter;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$1;)V
    .locals 0

    .line 307
    invoke-direct {p0, p1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgListAdapter;-><init>(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 358
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgListAdapter;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-static {p0}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->access$700(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)Ljava/util/List;

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

    .line 307
    check-cast p1, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgListAdapter;->onBindViewHolder(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;I)V
    .locals 3
    .param p1    # Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 319
    invoke-static {p1, p2}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->access$902(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;I)I

    .line 320
    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgListAdapter;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->access$700(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yftech/car/media/radio/dab/entity/epg/Programme;

    if-nez p2, :cond_0

    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgListAdapter;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    sget v1, Lcom/yftech/libradio/R$string;->radio_unknown:I

    invoke-virtual {v0, v1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 326
    iget-object v1, p2, Lcom/yftech/car/media/radio/dab/entity/epg/Programme;->name:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 327
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 328
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 330
    :cond_1
    invoke-static {p1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->access$1000(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v0, p2, Lcom/yftech/car/media/radio/dab/entity/epg/Programme;->mLocations:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/media/radio/dab/entity/epg/Location;

    iget-object v0, v0, Lcom/yftech/car/media/radio/dab/entity/epg/Location;->time:Ljava/lang/String;

    .line 333
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 334
    invoke-static {p1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->access$1100(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    :cond_2
    invoke-static {p1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->access$1000(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 337
    iget-object v2, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgListAdapter;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    iget-object v2, v2, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->currentDate:Ljava/util/Calendar;

    invoke-static {v2, p2}, Lcom/yftech/libradio/dabui/epg/EpgUtils;->isProgramPlaying(Ljava/util/Calendar;Lcom/yftech/car/media/radio/dab/entity/epg/Programme;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 338
    invoke-static {p1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->access$1200(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 339
    invoke-static {p1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->access$1300(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;)Landroid/widget/ImageView;

    move-result-object p2

    sget v1, Lcom/yftech/libradio/R$mipmap;->icon_epg_live:I

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 340
    invoke-static {p1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->access$1000(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgListAdapter;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/yftech/libradio/R$color;->colorDD9D09:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p0, 0x52

    .line 341
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_1

    .line 343
    :cond_3
    invoke-static {p1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->access$1000(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgListAdapter;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v2, Lcom/yftech/libradio/R$color;->colorFFFFFF:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 344
    invoke-static {p1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->access$1200(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;)Landroid/widget/ImageView;

    move-result-object p0

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 345
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->isEpgProgramme(Lcom/yftech/car/media/radio/dab/entity/epg/Programme;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 347
    invoke-static {p1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->access$1300(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;)Landroid/widget/ImageView;

    move-result-object p0

    sget p2, Lcom/yftech/libradio/R$mipmap;->btn_epg_unreserve:I

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 349
    :cond_4
    invoke-static {p1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->access$1300(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;)Landroid/widget/ImageView;

    move-result-object p0

    sget p2, Lcom/yftech/libradio/R$mipmap;->btn_epg_reserve:I

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    const/16 p0, 0x20

    .line 351
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 353
    :goto_1
    invoke-static {p1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->access$1400(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;)Landroid/widget/ImageView;

    move-result-object p0

    sget p1, Lcom/yftech/libradio/R$mipmap;->pic_list_tiny_default:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

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

    .line 307
    invoke-virtual {p0, p1, p2}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 312
    iget-object p2, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgListAdapter;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-virtual {p2}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/yftech/libradio/R$layout;->item_dab_epg_list:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 313
    new-instance p2, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;

    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgListAdapter;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-direct {p2, p0, p1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;-><init>(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;Landroid/view/View;)V

    return-object p2
.end method
