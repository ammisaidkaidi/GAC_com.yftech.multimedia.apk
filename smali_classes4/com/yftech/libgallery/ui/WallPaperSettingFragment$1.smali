.class Lcom/yftech/libgallery/ui/WallPaperSettingFragment$1;
.super Landroid/os/Handler;
.source "WallPaperSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libgallery/ui/WallPaperSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;Landroid/os/Looper;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$1;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 86
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    .line 87
    iget-object p1, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$1;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    sget v0, Lcom/yftech/libgallery/R$string;->create_wall_success:I

    invoke-virtual {p1, v0}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/media/common/util/ToastUtils;->showNormalMessage(Ljava/lang/String;I)V

    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "send wallpaper data, data is"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$1;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->access$000(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "imagePath:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$1;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->access$100(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 90
    iget-object p1, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$1;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    invoke-virtual {p1}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "wallpaper_original_path"

    iget-object v1, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$1;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    invoke-static {v1}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->access$100(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 91
    iget-object p1, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$1;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    invoke-virtual {p1}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "wallpaper_md5"

    iget-object v1, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$1;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    invoke-static {v1}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->access$100(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/SystemUtil;->getFileMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 94
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.yftech.multimedia.action.wallpaper.setting"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.yftech.multimedia.data.wallpaper.setting"

    .line 95
    iget-object v1, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$1;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    invoke-static {v1}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->access$000(Lcom/yftech/libgallery/ui/WallPaperSettingFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    iget-object v0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$1;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    invoke-virtual {v0}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 99
    iget-object p1, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$1;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    invoke-virtual {p1}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 100
    iget-object p0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$1;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 101
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x14

    if-ne p1, v0, :cond_1

    .line 102
    iget-object p0, p0, Lcom/yftech/libgallery/ui/WallPaperSettingFragment$1;->this$0:Lcom/yftech/libgallery/ui/WallPaperSettingFragment;

    sget p1, Lcom/yftech/libgallery/R$string;->create_wall_fail:I

    invoke-virtual {p0, p1}, Lcom/yftech/libgallery/ui/WallPaperSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/media/common/util/ToastUtils;->showFailMessage(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method
