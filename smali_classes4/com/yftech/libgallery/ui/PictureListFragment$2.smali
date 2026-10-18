.class Lcom/yftech/libgallery/ui/PictureListFragment$2;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "PictureListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libgallery/ui/PictureListFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libgallery/ui/PictureListFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libgallery/ui/PictureListFragment;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/yftech/libgallery/ui/PictureListFragment$2;->this$0:Lcom/yftech/libgallery/ui/PictureListFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x6

    .line 186
    iput p0, p1, Landroid/graphics/Rect;->top:I

    .line 187
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
