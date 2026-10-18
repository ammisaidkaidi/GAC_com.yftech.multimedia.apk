.class public Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
.source "VirtualLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/vlayout/VirtualLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final INVALIDE_SIZE:I = -0x80000000


# instance fields
.field public mAspectRatio:F

.field private mOriginHeight:I

.field private mOriginWidth:I

.field public zIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 890
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 853
    iput p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->zIndex:I

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 855
    iput p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->mAspectRatio:F

    const/high16 p1, -0x80000000

    .line 857
    iput p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->mOriginWidth:I

    .line 858
    iput p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->mOriginHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 886
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 853
    iput p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->zIndex:I

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 855
    iput p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->mAspectRatio:F

    const/high16 p1, -0x80000000

    .line 857
    iput p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->mOriginWidth:I

    .line 858
    iput p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->mOriginHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 898
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 853
    iput p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->zIndex:I

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 855
    iput p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->mAspectRatio:F

    const/high16 p1, -0x80000000

    .line 857
    iput p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->mOriginWidth:I

    .line 858
    iput p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->mOriginHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 894
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x0

    .line 853
    iput p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->zIndex:I

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 855
    iput p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->mAspectRatio:F

    const/high16 p1, -0x80000000

    .line 857
    iput p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->mOriginWidth:I

    .line 858
    iput p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->mOriginHeight:I

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V
    .locals 0

    .line 902
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    const/4 p1, 0x0

    .line 853
    iput p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->zIndex:I

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 855
    iput p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->mAspectRatio:F

    const/high16 p1, -0x80000000

    .line 857
    iput p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->mOriginWidth:I

    .line 858
    iput p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->mOriginHeight:I

    return-void
.end method


# virtual methods
.method public restoreOriginHeight()V
    .locals 2

    .line 880
    iget v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->mOriginHeight:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 881
    iget v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->mOriginHeight:I

    iput v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->height:I

    :cond_0
    return-void
.end method

.method public restoreOriginWidth()V
    .locals 2

    .line 874
    iget v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->mOriginWidth:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 875
    iget v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->mOriginWidth:I

    iput v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->width:I

    :cond_0
    return-void
.end method

.method public storeOriginHeight()V
    .locals 2

    .line 868
    iget v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->mOriginHeight:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 869
    iget v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->height:I

    iput v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->mOriginHeight:I

    :cond_0
    return-void
.end method

.method public storeOriginWidth()V
    .locals 2

    .line 862
    iget v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->mOriginWidth:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 863
    iget v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->width:I

    iput v0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutManager$LayoutParams;->mOriginWidth:I

    :cond_0
    return-void
.end method
