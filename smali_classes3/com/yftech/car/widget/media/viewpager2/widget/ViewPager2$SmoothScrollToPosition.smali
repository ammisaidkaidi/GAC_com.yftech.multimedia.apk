.class Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$SmoothScrollToPosition;
.super Ljava/lang/Object;
.source "ViewPager2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmoothScrollToPosition"
.end annotation


# instance fields
.field private final mPosition:I

.field private final mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(ILcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1132
    iput p1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$SmoothScrollToPosition;->mPosition:I

    .line 1133
    iput-object p2, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$SmoothScrollToPosition;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1138
    iget-object v0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$SmoothScrollToPosition;->mRecyclerView:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;

    iget p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$SmoothScrollToPosition;->mPosition:I

    invoke-virtual {v0, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method
