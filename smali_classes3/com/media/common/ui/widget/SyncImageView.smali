.class public Lcom/media/common/ui/widget/SyncImageView;
.super Landroid/widget/ImageView;
.source "SyncImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/media/common/ui/widget/SyncImageView$OnMediaInformationCallback;
    }
.end annotation


# instance fields
.field private final BUNDLE_HEIGHT:Ljava/lang/String;

.field private final BUNDLE_PATH:Ljava/lang/String;

.field private final BUNDLE_THUMBDATA:Ljava/lang/String;

.field private final BUNDLE_WIDTH:Ljava/lang/String;

.field private final TAG_IMAGE_INFORMATION:I

.field private error:I

.field private mHandler:Landroid/os/Handler;

.field private onMediaInformationCallback:Lcom/media/common/ui/widget/SyncImageView$OnMediaInformationCallback;

.field private options:Lcom/bumptech/glide/request/RequestOptions;

.field private placeholder:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 71
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 27
    sget p1, Lcom/media/common/ui/widget/R$color;->color4DFFFFFF:I

    iput p1, p0, Lcom/media/common/ui/widget/SyncImageView;->placeholder:I

    .line 29
    sget p1, Lcom/media/common/ui/widget/R$color;->transparent:I

    iput p1, p0, Lcom/media/common/ui/widget/SyncImageView;->error:I

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/media/common/ui/widget/SyncImageView;->TAG_IMAGE_INFORMATION:I

    const-string p1, "BUNDLE_WIDTH"

    .line 36
    iput-object p1, p0, Lcom/media/common/ui/widget/SyncImageView;->BUNDLE_WIDTH:Ljava/lang/String;

    const-string p1, "BUNDLE_HEIGHT"

    .line 37
    iput-object p1, p0, Lcom/media/common/ui/widget/SyncImageView;->BUNDLE_HEIGHT:Ljava/lang/String;

    const-string p1, "BUNDLE_THUMBDATA"

    .line 38
    iput-object p1, p0, Lcom/media/common/ui/widget/SyncImageView;->BUNDLE_THUMBDATA:Ljava/lang/String;

    const-string p1, "BUNDLE_PATH"

    .line 39
    iput-object p1, p0, Lcom/media/common/ui/widget/SyncImageView;->BUNDLE_PATH:Ljava/lang/String;

    .line 41
    new-instance p1, Lcom/media/common/ui/widget/SyncImageView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/media/common/ui/widget/SyncImageView$1;-><init>(Lcom/media/common/ui/widget/SyncImageView;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/media/common/ui/widget/SyncImageView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    sget v0, Lcom/media/common/ui/widget/R$color;->color4DFFFFFF:I

    iput v0, p0, Lcom/media/common/ui/widget/SyncImageView;->placeholder:I

    .line 29
    sget v0, Lcom/media/common/ui/widget/R$color;->transparent:I

    iput v0, p0, Lcom/media/common/ui/widget/SyncImageView;->error:I

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/media/common/ui/widget/SyncImageView;->TAG_IMAGE_INFORMATION:I

    const-string v0, "BUNDLE_WIDTH"

    .line 36
    iput-object v0, p0, Lcom/media/common/ui/widget/SyncImageView;->BUNDLE_WIDTH:Ljava/lang/String;

    const-string v0, "BUNDLE_HEIGHT"

    .line 37
    iput-object v0, p0, Lcom/media/common/ui/widget/SyncImageView;->BUNDLE_HEIGHT:Ljava/lang/String;

    const-string v0, "BUNDLE_THUMBDATA"

    .line 38
    iput-object v0, p0, Lcom/media/common/ui/widget/SyncImageView;->BUNDLE_THUMBDATA:Ljava/lang/String;

    const-string v0, "BUNDLE_PATH"

    .line 39
    iput-object v0, p0, Lcom/media/common/ui/widget/SyncImageView;->BUNDLE_PATH:Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/media/common/ui/widget/SyncImageView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/media/common/ui/widget/SyncImageView$1;-><init>(Lcom/media/common/ui/widget/SyncImageView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/media/common/ui/widget/SyncImageView;->mHandler:Landroid/os/Handler;

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/media/common/ui/widget/SyncImageView;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    sget p3, Lcom/media/common/ui/widget/R$color;->color4DFFFFFF:I

    iput p3, p0, Lcom/media/common/ui/widget/SyncImageView;->placeholder:I

    .line 29
    sget p3, Lcom/media/common/ui/widget/R$color;->transparent:I

    iput p3, p0, Lcom/media/common/ui/widget/SyncImageView;->error:I

    const/4 p3, 0x0

    .line 31
    iput p3, p0, Lcom/media/common/ui/widget/SyncImageView;->TAG_IMAGE_INFORMATION:I

    const-string p3, "BUNDLE_WIDTH"

    .line 36
    iput-object p3, p0, Lcom/media/common/ui/widget/SyncImageView;->BUNDLE_WIDTH:Ljava/lang/String;

    const-string p3, "BUNDLE_HEIGHT"

    .line 37
    iput-object p3, p0, Lcom/media/common/ui/widget/SyncImageView;->BUNDLE_HEIGHT:Ljava/lang/String;

    const-string p3, "BUNDLE_THUMBDATA"

    .line 38
    iput-object p3, p0, Lcom/media/common/ui/widget/SyncImageView;->BUNDLE_THUMBDATA:Ljava/lang/String;

    const-string p3, "BUNDLE_PATH"

    .line 39
    iput-object p3, p0, Lcom/media/common/ui/widget/SyncImageView;->BUNDLE_PATH:Ljava/lang/String;

    .line 41
    new-instance p3, Lcom/media/common/ui/widget/SyncImageView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, p0, v0}, Lcom/media/common/ui/widget/SyncImageView$1;-><init>(Lcom/media/common/ui/widget/SyncImageView;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/media/common/ui/widget/SyncImageView;->mHandler:Landroid/os/Handler;

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/media/common/ui/widget/SyncImageView;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/media/common/ui/widget/SyncImageView;)Lcom/media/common/ui/widget/SyncImageView$OnMediaInformationCallback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/media/common/ui/widget/SyncImageView;->onMediaInformationCallback:Lcom/media/common/ui/widget/SyncImageView$OnMediaInformationCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/media/common/ui/widget/SyncImageView;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/media/common/ui/widget/SyncImageView;->error:I

    return p0
.end method

.method static synthetic access$200(Lcom/media/common/ui/widget/SyncImageView;)Lcom/bumptech/glide/request/RequestOptions;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/media/common/ui/widget/SyncImageView;->options:Lcom/bumptech/glide/request/RequestOptions;

    return-object p0
.end method

.method static synthetic access$300(Lcom/media/common/ui/widget/SyncImageView;)Landroid/os/Handler;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/media/common/ui/widget/SyncImageView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 86
    sget-object v0, Lcom/media/common/ui/widget/R$styleable;->SyncImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 88
    sget p2, Lcom/media/common/ui/widget/R$styleable;->SyncImageView_placeHolder:I

    iget v0, p0, Lcom/media/common/ui/widget/SyncImageView;->placeholder:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/media/common/ui/widget/SyncImageView;->placeholder:I

    .line 89
    sget p2, Lcom/media/common/ui/widget/R$styleable;->SyncImageView_error:I

    iget v0, p0, Lcom/media/common/ui/widget/SyncImageView;->error:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/media/common/ui/widget/SyncImageView;->error:I

    .line 91
    new-instance p2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p2}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 92
    invoke-virtual {p2}, Lcom/bumptech/glide/request/RequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/request/RequestOptions;

    iget v0, p0, Lcom/media/common/ui/widget/SyncImageView;->placeholder:I

    .line 93
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/request/RequestOptions;

    iget v0, p0, Lcom/media/common/ui/widget/SyncImageView;->error:I

    .line 94
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/request/RequestOptions;

    .line 95
    invoke-virtual {p2}, Lcom/bumptech/glide/request/RequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/request/RequestOptions;

    sget-object v0, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    .line 96
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/request/RequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/request/RequestOptions;

    iput-object p2, p0, Lcom/media/common/ui/widget/SyncImageView;->options:Lcom/bumptech/glide/request/RequestOptions;

    .line 98
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getOnMediaInformationCallback()Lcom/media/common/ui/widget/SyncImageView$OnMediaInformationCallback;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/media/common/ui/widget/SyncImageView;->onMediaInformationCallback:Lcom/media/common/ui/widget/SyncImageView$OnMediaInformationCallback;

    return-object p0
.end method

.method public setMediaFilePath(ILjava/lang/String;II)V
    .locals 8

    .line 107
    iget v0, p0, Lcom/media/common/ui/widget/SyncImageView;->placeholder:I

    invoke-virtual {p0, v0}, Lcom/media/common/ui/widget/SyncImageView;->setImageResource(I)V

    .line 109
    invoke-static {}, Lcom/media/common/util/BaseApplication;->getInstance()Lcom/media/common/util/BaseApplication;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Lcom/media/common/util/BaseApplication;->getFixedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v7, Lcom/media/common/ui/widget/SyncImageView$2;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/media/common/ui/widget/SyncImageView$2;-><init>(Lcom/media/common/ui/widget/SyncImageView;ILjava/lang/String;II)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setOnMediaInformationCallback(Lcom/media/common/ui/widget/SyncImageView$OnMediaInformationCallback;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/media/common/ui/widget/SyncImageView;->onMediaInformationCallback:Lcom/media/common/ui/widget/SyncImageView$OnMediaInformationCallback;

    return-void
.end method
