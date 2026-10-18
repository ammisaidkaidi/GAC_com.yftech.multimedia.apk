.class Lcom/wuyr/pathlayoutmanager/PathLayoutManager$4;
.super Ljava/lang/Object;
.source "PathLayoutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->delayNotifyDataSetChanged(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

.field final synthetic val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/wuyr/pathlayoutmanager/PathLayoutManager;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1053
    iput-object p1, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager$4;->this$0:Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

    iput-object p2, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager$4;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1056
    iget-object v0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager$4;->this$0:Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

    iget-object p0, p0, Lcom/wuyr/pathlayoutmanager/PathLayoutManager$4;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, p0}, Lcom/wuyr/pathlayoutmanager/PathLayoutManager;->access$600(Lcom/wuyr/pathlayoutmanager/PathLayoutManager;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
