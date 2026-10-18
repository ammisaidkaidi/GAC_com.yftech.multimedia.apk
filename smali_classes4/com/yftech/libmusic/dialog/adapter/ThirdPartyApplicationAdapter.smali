.class public Lcom/yftech/libmusic/dialog/adapter/ThirdPartyApplicationAdapter;
.super Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;
.source "ThirdPartyApplicationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter<",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private type_Tag_Resource:[I

.field private types_name:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 31
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;-><init>()V

    const/4 v0, 0x6

    .line 26
    new-array v0, v0, [I

    sget v1, Lcom/yftech/libmusic/R$mipmap;->xm:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/yftech/libmusic/R$mipmap;->kg:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/yftech/libmusic/R$mipmap;->wyy:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/yftech/libmusic/R$mipmap;->xm:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/yftech/libmusic/R$mipmap;->kg:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sget v1, Lcom/yftech/libmusic/R$mipmap;->wyy:I

    const/4 v2, 0x5

    aput v1, v0, v2

    iput-object v0, p0, Lcom/yftech/libmusic/dialog/adapter/ThirdPartyApplicationAdapter;->type_Tag_Resource:[I

    .line 32
    iput-object p1, p0, Lcom/yftech/libmusic/dialog/adapter/ThirdPartyApplicationAdapter;->mContext:Landroid/content/Context;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/yftech/libmusic/R$array;->music_source_by_third_party_application:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/libmusic/dialog/adapter/ThirdPartyApplicationAdapter;->types_name:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/adapter/ThirdPartyApplicationAdapter;->type_Tag_Resource:[I

    array-length p0, p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 21
    check-cast p1, Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/libmusic/dialog/adapter/ThirdPartyApplicationAdapter;->onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;I)V
    .locals 2
    .param p1    # Lcom/chad/library/adapter/base/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 53
    sget v0, Lcom/yftech/libmusic/R$id;->iv_icon:I

    iget-object v1, p0, Lcom/yftech/libmusic/dialog/adapter/ThirdPartyApplicationAdapter;->type_Tag_Resource:[I

    aget v1, v1, p2

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p1

    sget v0, Lcom/yftech/libmusic/R$id;->tv_name:I

    iget-object p0, p0, Lcom/yftech/libmusic/dialog/adapter/ThirdPartyApplicationAdapter;->types_name:[Ljava/lang/String;

    aget-object p0, p0, p2

    .line 54
    invoke-virtual {p1, v0, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method public onCreateLayoutHelper()Lcom/alibaba/android/vlayout/LayoutHelper;
    .locals 1

    .line 39
    new-instance p0, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;-><init>(I)V

    const/16 v0, 0x14

    .line 40
    invoke-virtual {p0, v0}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->setVGap(I)V

    const/16 v0, 0xa

    .line 41
    invoke-virtual {p0, v0}, Lcom/alibaba/android/vlayout/layout/GridLayoutHelper;->setHGap(I)V

    return-object p0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/yftech/libmusic/dialog/adapter/ThirdPartyApplicationAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 48
    new-instance p2, Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object p0, p0, Lcom/yftech/libmusic/dialog/adapter/ThirdPartyApplicationAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/yftech/libmusic/R$layout;->item_third_party_application:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/chad/library/adapter/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
