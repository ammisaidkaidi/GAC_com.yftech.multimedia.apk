.class public Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field static final STEP_ANIMATIONS:I = 0x4

.field static final STEP_LAYOUT:I = 0x2

.field static final STEP_START:I = 0x1


# instance fields
.field private mData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mDeletedInvisibleItemCountSincePreviousLayout:I

.field mFocusedItemId:J

.field mFocusedItemPosition:I

.field mFocusedSubChildId:I

.field mInPreLayout:Z

.field mIsMeasuring:Z

.field mItemCount:I

.field mLayoutStep:I

.field mPreviousLayoutItemCount:I

.field mRemainingScrollHorizontal:I

.field mRemainingScrollVertical:I

.field mRunPredictiveAnimations:Z

.field mRunSimpleAnimations:Z

.field mStructureChanged:Z

.field mTargetPosition:I

.field mTrackOldChangeHolders:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 12801
    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mTargetPosition:I

    const/4 v0, 0x0

    .line 12812
    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    .line 12818
    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    const/4 v1, 0x1

    .line 12831
    iput v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mLayoutStep:I

    .line 12837
    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mItemCount:I

    .line 12839
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    .line 12846
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 12848
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    .line 12850
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 12856
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 12858
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    return-void
.end method


# virtual methods
.method assertLayoutStep(I)V
    .locals 3

    .line 12792
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mLayoutStep:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    return-void

    .line 12793
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout state should be one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12794
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but it is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mLayoutStep:I

    .line 12795
    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public didStructureChange()Z
    .locals 0

    .line 13011
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    return p0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .line 12963
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 12966
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemCount()I
    .locals 1

    .line 13039
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    if-eqz v0, :cond_0

    .line 13040
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    sub-int/2addr v0, p0

    goto :goto_0

    .line 13041
    :cond_0
    iget v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mItemCount:I

    :goto_0
    return v0
.end method

.method public getRemainingScrollHorizontal()I
    .locals 0

    .line 13052
    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mRemainingScrollHorizontal:I

    return p0
.end method

.method public getRemainingScrollVertical()I
    .locals 0

    .line 13063
    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mRemainingScrollVertical:I

    return p0
.end method

.method public getTargetScrollPosition()I
    .locals 0

    .line 12993
    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mTargetPosition:I

    return p0
.end method

.method public hasTargetScrollPosition()Z
    .locals 1

    .line 13003
    iget p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mTargetPosition:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMeasuring()Z
    .locals 0

    .line 12906
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mIsMeasuring:Z

    return p0
.end method

.method public isPreLayout()Z
    .locals 0

    .line 12915
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    return p0
.end method

.method prepareForNestedPrefetch(Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    const/4 v0, 0x1

    .line 12884
    iput v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mLayoutStep:I

    .line 12885
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mItemCount:I

    const/4 p1, 0x0

    .line 12886
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 12887
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    .line 12888
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mIsMeasuring:Z

    return-void
.end method

.method public put(ILjava/lang/Object;)V
    .locals 1

    .line 12978
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 12979
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    .line 12981
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public remove(I)V
    .locals 1

    .line 12947
    iget-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    return-void

    .line 12950
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 13068
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State{mTargetPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mTargetPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsMeasuring="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mIsMeasuring:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviousLayoutItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDeletedInvisibleItemCountSincePreviousLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mStructureChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mInPreLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRunSimpleAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRunPredictiveAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public willRunPredictiveAnimations()Z
    .locals 0

    .line 12926
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    return p0
.end method

.method public willRunSimpleAnimations()Z
    .locals 0

    .line 12937
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    return p0
.end method
