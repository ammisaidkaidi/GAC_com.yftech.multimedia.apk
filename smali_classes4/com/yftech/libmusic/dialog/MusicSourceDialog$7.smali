.class Lcom/yftech/libmusic/dialog/MusicSourceDialog$7;
.super Ljava/lang/Object;
.source "MusicSourceDialog.java"

# interfaces
.implements Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmusic/dialog/MusicSourceDialog;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClickListener(IILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onItemClickListener ,enable=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",type=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-static {v0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$300(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-static {v0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$300(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-static {v0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$300(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_3

    .line 431
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "MUSIC_SOURCE_OF_BLUETOOTH"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 433
    iget-object v2, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-static {v2}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$100(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->isBlueToothEnable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 443
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.systemui.bt.show"

    .line 444
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    iget-object p2, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-virtual {p2}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 447
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 448
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    sget p2, Lcom/yftech/libmusic/R$string;->not_find_bt_setting_entry:I

    invoke-virtual {p1, p2}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/media/common/util/ToastUtils;->showFailMessage(Ljava/lang/String;I)V

    .line 451
    :goto_0
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->dismissAllowingStateLoss()V

    return-void

    .line 457
    :cond_1
    iget-object v1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-static {v1}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$400(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)Lcom/yftech/libmusic/dialog/MusicSourceDialog$OnMusicSourceSelectedListener;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-static {v1}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$100(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->getSelection()I

    move-result v1

    if-eq v1, p1, :cond_2

    .line 458
    iget-object v1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-static {v1}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$400(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)Lcom/yftech/libmusic/dialog/MusicSourceDialog$OnMusicSourceSelectedListener;

    move-result-object v1

    invoke-interface {v1, p3, p2, p4}, Lcom/yftech/libmusic/dialog/MusicSourceDialog$OnMusicSourceSelectedListener;->onSelected(Ljava/lang/String;ILjava/lang/String;)V

    .line 461
    :cond_2
    iget-object p2, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-static {p2}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$100(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->setSelection(I)V

    .line 464
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-static {p1, v0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$002(Lcom/yftech/libmusic/dialog/MusicSourceDialog;Z)Z

    .line 465
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->dismissAllowingStateLoss()V

    goto/16 :goto_3

    :cond_3
    const-string p1, "MUSIC_SOURCE_OF_USB1"

    .line 470
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "MUSIC_SOURCE_OF_USB2"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const-string p1, "MUSIC_SOURCE_OF_CARLIFE"

    .line 490
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "MUSIC_SOURCE_OF_CARPLAY"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 491
    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    iget-object p2, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    sget p4, Lcom/yftech/libmusic/R$string;->music_source_not_connected_tips:I

    invoke-virtual {p2, p4}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array p4, v1, [Ljava/lang/Object;

    aput-object p3, p4, v0

    invoke-static {p1, p2, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/ui/widget/TipsDialog;->newInstance(Ljava/lang/String;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object p1

    .line 492
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class p2, Lcom/media/common/ui/widget/TipsDialog;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/media/common/ui/widget/TipsDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    :goto_1
    if-eq p2, v1, :cond_8

    const/4 p1, 0x3

    if-eq p2, p1, :cond_7

    .line 480
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    sget p2, Lcom/yftech/libmusic/R$string;->music_source_not_found_tips:I

    invoke-virtual {p1, p2}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 477
    :cond_7
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    sget p2, Lcom/yftech/libmusic/R$string;->music_source_usb_music_file_not_found_tips:I

    invoke-virtual {p1, p2}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 474
    :cond_8
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    sget p2, Lcom/yftech/libmusic/R$string;->music_source_loading_tips:I

    invoke-virtual {p1, p2}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 484
    :goto_2
    iget-object p2, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-static {p2}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$200(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 485
    iget-object p2, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-static {p2}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$200(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object p2

    invoke-virtual {p2}, Lcom/media/common/ui/widget/TipsDialog;->dismissAllowingStateLoss()V

    .line 486
    iget-object p2, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$202(Lcom/yftech/libmusic/dialog/MusicSourceDialog;Lcom/media/common/ui/widget/TipsDialog;)Lcom/media/common/ui/widget/TipsDialog;

    .line 488
    :cond_9
    iget-object p2, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-static {p1}, Lcom/media/common/ui/widget/TipsDialog;->newInstance(Ljava/lang/String;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$202(Lcom/yftech/libmusic/dialog/MusicSourceDialog;Lcom/media/common/ui/widget/TipsDialog;)Lcom/media/common/ui/widget/TipsDialog;

    .line 489
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-static {p1}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$200(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class p2, Lcom/media/common/ui/widget/TipsDialog;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/media/common/ui/widget/TipsDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_a
    :goto_3
    return-void
.end method
