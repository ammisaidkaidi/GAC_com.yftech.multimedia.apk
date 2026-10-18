.class Lcom/yftech/car/widget/media/list/SearchHistoryList$1;
.super Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SearchHistoryList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/car/widget/media/list/SearchHistoryList;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/list/SearchHistoryList;

.field final synthetic val$bottom:F

.field final synthetic val$left:F

.field final synthetic val$right:F

.field final synthetic val$top:F


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/list/SearchHistoryList;FFFF)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList$1;->this$0:Lcom/yftech/car/widget/media/list/SearchHistoryList;

    iput p2, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList$1;->val$left:F

    iput p3, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList$1;->val$top:F

    iput p4, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList$1;->val$right:F

    iput p5, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList$1;->val$bottom:F

    invoke-direct {p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)V
    .locals 0
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 132
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$State;)V

    .line 133
    iget p2, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList$1;->val$left:F

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 134
    iget p2, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList$1;->val$top:F

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 135
    iget p2, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList$1;->val$right:F

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 136
    iget p0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList$1;->val$bottom:F

    float-to-int p0, p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
