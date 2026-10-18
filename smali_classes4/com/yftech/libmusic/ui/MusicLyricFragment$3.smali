.class Lcom/yftech/libmusic/ui/MusicLyricFragment$3;
.super Ljava/lang/Object;
.source "MusicLyricFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmusic/ui/MusicLyricFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/ui/MusicLyricFragment;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$3;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$3;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$3;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-static {v1}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$700(Lcom/yftech/libmusic/ui/MusicLyricFragment;)Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$202(Lcom/yftech/libmusic/ui/MusicLyricFragment;Lcom/wuyr/pathlayoutmanager/PathLayoutManager;)Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

    .line 249
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$3;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$800(Lcom/yftech/libmusic/ui/MusicLyricFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$3;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-static {v1}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$200(Lcom/yftech/libmusic/ui/MusicLyricFragment;)Lcom/wuyr/pathlayoutmanager/PathLayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 250
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$3;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$800(Lcom/yftech/libmusic/ui/MusicLyricFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$3;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-static {v1}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$300(Lcom/yftech/libmusic/ui/MusicLyricFragment;)Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 252
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$3;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$900(Lcom/yftech/libmusic/ui/MusicLyricFragment;)V

    return-void
.end method
