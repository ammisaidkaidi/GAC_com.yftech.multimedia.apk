.class public abstract Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewHolder"
.end annotation


# static fields
.field static final FLAG_ADAPTER_FULLUPDATE:I = 0x400

.field static final FLAG_ADAPTER_POSITION_UNKNOWN:I = 0x200

.field static final FLAG_APPEARED_IN_PRE_LAYOUT:I = 0x1000

.field static final FLAG_BOUNCED_FROM_HIDDEN_LIST:I = 0x2000

.field static final FLAG_BOUND:I = 0x1

.field static final FLAG_IGNORE:I = 0x80

.field static final FLAG_INVALID:I = 0x4

.field static final FLAG_MOVED:I = 0x800

.field static final FLAG_NOT_RECYCLABLE:I = 0x10

.field static final FLAG_REMOVED:I = 0x8

.field static final FLAG_RETURNED_FROM_SCRAP:I = 0x20

.field static final FLAG_TMP_DETACHED:I = 0x100

.field static final FLAG_UPDATE:I = 0x2

.field private static final FULLUPDATE_PAYLOADS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final PENDING_ACCESSIBILITY_STATE_NOT_SET:I = -0x1


# instance fields
.field public final itemView:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field mBindingAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mFlags:I

.field mInChangeScrap:Z

.field private mIsRecyclableCount:I

.field mItemId:J

.field mItemViewType:I

.field mNestedRecyclerView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field mOldPosition:I

.field mOwnerRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

.field mPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mPendingAccessibilityState:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mPosition:I

.field mPreLayoutPosition:I

.field mScrapContainer:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

.field mShadowedHolder:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

.field mShadowingHolder:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

.field mUnmodifiedPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mWasImportantForAccessibilityBeforeHidden:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11345
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 11375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11239
    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 11240
    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    const-wide/16 v1, -0x1

    .line 11241
    iput-wide v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 11242
    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 11243
    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v1, 0x0

    .line 11246
    iput-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mShadowedHolder:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    .line 11248
    iput-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    .line 11347
    iput-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    .line 11348
    iput-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    const/4 v2, 0x0

    .line 11350
    iput v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 11354
    iput-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    .line 11356
    iput-boolean v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 11360
    iput v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 11363
    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    if-eqz p1, :cond_0

    .line 11379
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-void

    .line 11377
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "itemView may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createPayloadsIfNeeded()V
    .locals 1

    .line 11687
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-nez v0, :cond_0

    .line 11688
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    .line 11689
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    :cond_0
    return-void
.end method


# virtual methods
.method addChangePayload(Ljava/lang/Object;)V
    .locals 2

    const/16 v0, 0x400

    if-nez p1, :cond_0

    .line 11679
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    goto :goto_0

    .line 11680
    :cond_0
    iget v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 11681
    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->createPayloadsIfNeeded()V

    .line 11682
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method addFlags(I)V
    .locals 1

    .line 11674
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    return-void
.end method

.method clearOldPosition()V
    .locals 1

    const/4 v0, -0x1

    .line 11405
    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 11406
    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    return-void
.end method

.method clearPayload()V
    .locals 1

    .line 11694
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 11695
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11697
    :cond_0
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    return-void
.end method

.method clearReturnedFromScrapFlag()V
    .locals 1

    .line 11621
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    return-void
.end method

.method clearTmpDetachFlag()V
    .locals 1

    .line 11625
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    return-void
.end method

.method doesTransientStatePreventRecycling()Z
    .locals 1

    .line 11832
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method flagRemovedAndOffsetPosition(IIZ)V
    .locals 1

    const/16 v0, 0x8

    .line 11383
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 11384
    invoke-virtual {p0, p2, p3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 11385
    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    return-void
.end method

.method public final getAbsoluteAdapterPosition()I
    .locals 1

    .line 11558
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 11561
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getAdapterPositionInRecyclerView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result p0

    return p0
.end method

.method public final getAdapterPosition()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11470
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p0

    return p0
.end method

.method public final getBindingAdapter()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .line 11573
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method public final getBindingAdapterPosition()I
    .locals 3

    .line 11505
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 11508
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    return v1

    .line 11512
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getAdapter()Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 11516
    :cond_2
    iget-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->getAdapterPositionInRecyclerView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v2

    if-ne v2, v1, :cond_3

    return v1

    .line 11520
    :cond_3
    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1, p0, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->findRelativeAdapterPositionIn(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;I)I

    move-result p0

    return p0
.end method

.method public final getItemId()J
    .locals 2

    .line 11598
    iget-wide v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    return-wide v0
.end method

.method public final getItemViewType()I
    .locals 0

    .line 11605
    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    return p0
.end method

.method public final getLayoutPosition()I
    .locals 2

    .line 11457
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    :goto_0
    return p0
.end method

.method public final getOldPosition()I
    .locals 0

    .line 11588
    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    return p0
.end method

.method public final getPosition()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11430
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    :goto_0
    return p0
.end method

.method getUnmodifiedPayloads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 11701
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2

    .line 11702
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 11707
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    return-object p0

    .line 11704
    :cond_1
    :goto_0
    sget-object p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-object p0

    .line 11710
    :cond_2
    sget-object p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-object p0
.end method

.method hasAnyOfTheFlags(I)Z
    .locals 0

    .line 11654
    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isAdapterPositionUnknown()Z
    .locals 1

    .line 11666
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method isAttachedToTransitionOverlay()Z
    .locals 1

    .line 11662
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isBound()Z
    .locals 1

    .line 11646
    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isInvalid()Z
    .locals 0

    .line 11638
    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isRecyclable()Z
    .locals 1

    .line 11815
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 11816
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isRemoved()Z
    .locals 0

    .line 11650
    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isScrap()Z
    .locals 0

    .line 11609
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isTmpDetached()Z
    .locals 0

    .line 11658
    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isUpdated()Z
    .locals 0

    .line 11836
    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method needsUpdate()Z
    .locals 0

    .line 11642
    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method offsetPosition(IZ)V
    .locals 2

    .line 11389
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 11390
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 11392
    :cond_0
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    if-ne v0, v1, :cond_1

    .line 11393
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    :cond_1
    if-eqz p2, :cond_2

    .line 11396
    iget p2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 11398
    :cond_2
    iget p2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 11399
    iget-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 11400
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    :cond_3
    return-void
.end method

.method onEnteredHiddenState(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 11734
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 11735
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    goto :goto_0

    .line 11737
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 11738
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    :goto_0
    const/4 v0, 0x4

    .line 11740
    invoke-virtual {p1, p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->setChildImportantForAccessibilityInternal(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;I)Z

    return-void
.end method

.method onLeftHiddenState(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 11748
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    invoke-virtual {p1, p0, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->setChildImportantForAccessibilityInternal(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;I)Z

    const/4 p1, 0x0

    .line 11750
    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    return-void
.end method

.method resetInternal()V
    .locals 4

    const/4 v0, 0x0

    .line 11715
    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    const/4 v1, -0x1

    .line 11716
    iput v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 11717
    iput v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    const-wide/16 v2, -0x1

    .line 11718
    iput-wide v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 11719
    iput v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 11720
    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    const/4 v2, 0x0

    .line 11721
    iput-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mShadowedHolder:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    .line 11722
    iput-object v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;

    .line 11723
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->clearPayload()V

    .line 11724
    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 11725
    iput v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 11726
    invoke-static {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method saveOldPosition()V
    .locals 2

    .line 11410
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 11411
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    :cond_0
    return-void
.end method

.method setFlags(II)V
    .locals 2

    .line 11670
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    return-void
.end method

.method public final setIsRecyclable(Z)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 11791
    iget v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    add-int/2addr v1, v0

    :goto_0
    iput v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 11792
    iget v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-gez v1, :cond_1

    const/4 p1, 0x0

    .line 11793
    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    const-string p1, "View"

    .line 11798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    .line 11800
    iget v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-ne v1, v0, :cond_2

    .line 11801
    iget p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 11802
    iget p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-nez p1, :cond_3

    .line 11803
    iget p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    :cond_3
    :goto_1
    return-void
.end method

.method setScrapContainer(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;Z)V
    .locals 0

    .line 11633
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    .line 11634
    iput-boolean p2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    return-void
.end method

.method shouldBeKeptAsChild()Z
    .locals 0

    .line 11824
    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method shouldIgnore()Z
    .locals 0

    .line 11416
    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method stopIgnoring()V
    .locals 1

    .line 11629
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 11756
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ViewHolder"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 11757
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11758
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " position="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " id="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", oldPos="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", pLpos:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11760
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, " scrap "

    .line 11761
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11762
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    if-eqz v0, :cond_1

    const-string v0, "[changeScrap]"

    goto :goto_1

    :cond_1
    const-string v0, "[attachedScrap]"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11764
    :cond_2
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, " invalid"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11765
    :cond_3
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, " unbound"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11766
    :cond_4
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, " update"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11767
    :cond_5
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, " removed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11768
    :cond_6
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, " ignored"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11769
    :cond_7
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, " tmpDetached"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11770
    :cond_8
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " not recyclable("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11771
    :cond_9
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->isAdapterPositionUnknown()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, " undefined adapter position"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11773
    :cond_a
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-nez p0, :cond_b

    const-string p0, " no parent"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string/jumbo p0, "}"

    .line 11774
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11775
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method unScrap()V
    .locals 1

    .line 11613
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Recycler;->unscrapView(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method wasReturnedFromScrap()Z
    .locals 0

    .line 11617
    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
