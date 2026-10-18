.class Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$MoveInfo;
.super Ljava/lang/Object;
.source "RepairedItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveInfo"
.end annotation


# instance fields
.field fromX:I

.field fromY:I

.field holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field toX:I

.field toY:I


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 51
    iput p2, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$MoveInfo;->fromX:I

    .line 52
    iput p3, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$MoveInfo;->fromY:I

    .line 53
    iput p4, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$MoveInfo;->toX:I

    .line 54
    iput p5, p0, Lcom/wuyr/pathlayoutmanager/RepairedItemAnimator$MoveInfo;->toY:I

    return-void
.end method
