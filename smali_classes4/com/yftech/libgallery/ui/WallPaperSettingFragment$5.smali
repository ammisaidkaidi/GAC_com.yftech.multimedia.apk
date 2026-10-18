.class Lcom/yftech/libgallery/ui/WallPaperSettingFragment$5;
.super Ljava/lang/Object;
.source "WallPaperSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->recycleImageViewBitmap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$5;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 400
    iget-object p0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$5;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->access$400(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)Lcom/yftech/libgallery/view/ClipImageView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yftech/libgallery/view/ClipImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
