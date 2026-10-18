.class Lcom/yftech/libmusic/ui/MusicLyricFragment$4;
.super Ljava/lang/Object;
.source "MusicLyricFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmusic/ui/MusicLyricFragment;->getPathLayoutManager()Lcom/wuyr/pathlayoutmanager/PathLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

.field final synthetic val$path:Landroid/graphics/Path;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/ui/MusicLyricFragment;Landroid/graphics/Path;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$4;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    iput-object p2, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$4;->val$path:Landroid/graphics/Path;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$4;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$1000(Lcom/yftech/libmusic/ui/MusicLyricFragment;)Lcom/media/common/ui/widget/CanvasView;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$4;->val$path:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/CanvasView;->setPath(Landroid/graphics/Path;)V

    .line 298
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicLyricFragment$4;->this$0:Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicLyricFragment;->access$1000(Lcom/yftech/libmusic/ui/MusicLyricFragment;)Lcom/media/common/ui/widget/CanvasView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/media/common/ui/widget/CanvasView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
