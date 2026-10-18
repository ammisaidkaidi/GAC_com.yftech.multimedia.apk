.class public Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;
.super Ljava/lang/Object;
.source "VirtualLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/vlayout/VirtualLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutStateWrapper"
.end annotation


# static fields
.field static final INVALID_LAYOUT:I = -0x80000000

.field public static final ITEM_DIRECTION_HEAD:I = -0x1

.field public static final ITEM_DIRECTION_TAIL:I = 0x1

.field public static final LAYOUT_END:I = 0x1

.field public static final LAYOUT_START:I = -0x1

.field static final SCOLLING_OFFSET_NaN:I = -0x80000000


# instance fields
.field private mLayoutState:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 946
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;)V
    .locals 0

    .line 950
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 951
    iput-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->mLayoutState:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;

    return-void
.end method

.method static synthetic access$102(Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;)Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;
    .locals 0

    .line 931
    iput-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->mLayoutState:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;

    return-object p1
.end method


# virtual methods
.method public getAvailable()I
    .locals 0

    .line 990
    iget-object p0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->mLayoutState:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;

    iget p0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;->mAvailable:I

    return p0
.end method

.method public getCurrentPosition()I
    .locals 0

    .line 960
    iget-object p0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->mLayoutState:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;

    iget p0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;->mCurrentPosition:I

    return p0
.end method

.method public getExtra()I
    .locals 0

    .line 1025
    iget-object p0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->mLayoutState:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;

    iget p0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;->mExtra:I

    return p0
.end method

.method public getItemDirection()I
    .locals 0

    .line 999
    iget-object p0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->mLayoutState:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;

    iget p0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;->mItemDirection:I

    return p0
.end method

.method public getLayoutDirection()I
    .locals 0

    .line 1007
    iget-object p0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->mLayoutState:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;

    iget p0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;->mLayoutDirection:I

    return p0
.end method

.method public getOffset()I
    .locals 0

    .line 956
    iget-object p0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->mLayoutState:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;

    iget p0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;->mOffset:I

    return p0
.end method

.method public getScrollingOffset()I
    .locals 0

    .line 1016
    iget-object p0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->mLayoutState:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;

    iget p0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;->mScrollingOffset:I

    return p0
.end method

.method public hasMore(Landroidx/recyclerview/widget/RecyclerView$State;)Z
    .locals 0

    .line 1039
    iget-object p0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->mLayoutState:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;->hasMore(Landroidx/recyclerview/widget/RecyclerView$State;)Z

    move-result p0

    return p0
.end method

.method public hasScrapList()Z
    .locals 0

    .line 964
    iget-object p0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->mLayoutState:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;

    iget-object p0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;->mScrapList:Ljava/util/List;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPreLayout()Z
    .locals 0

    .line 1034
    iget-object p0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->mLayoutState:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;

    iget-boolean p0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;->mIsPreLayout:Z

    return p0
.end method

.method public isRecycle()Z
    .locals 0

    .line 975
    iget-object p0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->mLayoutState:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;

    iget-boolean p0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;->mRecycle:Z

    return p0
.end method

.method public isRefreshLayout()Z
    .locals 0

    .line 983
    iget-object p0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->mLayoutState:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;

    iget-boolean p0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;->mOnRefresLayout:Z

    return p0
.end method

.method public next(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;
    .locals 0

    .line 1043
    iget-object p0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->mLayoutState:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;->next(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public retrieve(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)Landroid/view/View;
    .locals 2

    .line 1049
    iget-object v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->mLayoutState:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;

    iget v0, v0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;->mCurrentPosition:I

    .line 1050
    iget-object v1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->mLayoutState:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;

    iput p2, v1, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;->mCurrentPosition:I

    .line 1051
    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->next(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object p1

    .line 1052
    iget-object p0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->mLayoutState:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;

    iput v0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;->mCurrentPosition:I

    return-object p1
.end method

.method public skipCurrentPosition()V
    .locals 2

    .line 968
    iget-object v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->mLayoutState:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;

    iget v1, v0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;->mCurrentPosition:I

    iget-object p0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutStateWrapper;->mLayoutState:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;

    iget p0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;->mItemDirection:I

    add-int/2addr v1, p0

    iput v1, v0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$LayoutState;->mCurrentPosition:I

    return-void
.end method
