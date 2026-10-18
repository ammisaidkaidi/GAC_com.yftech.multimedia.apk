.class Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;
.super Lcom/yftech/car/widget/media/video/VideoPlayer$VideoCallback;
.source "VideoPlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)V
    .locals 0

    .line 1162
    iput-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer$VideoCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)Z
    .locals 4

    const-string v0, "sys.atc.carplay.app.show_ui"

    const/4 v1, 0x0

    .line 1441
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAudioFocusChange:focusChange="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isCarPlayDisplaying="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, -0x2

    if-nez v0, :cond_2

    .line 1446
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :cond_1
    :goto_0
    invoke-static {p0, v2}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$3902(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)Z

    goto :goto_1

    :cond_2
    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_3

    .line 1449
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0, v1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$602(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)Z

    :cond_3
    :goto_1
    return v1
.end method

.method public onDoubleClick(Z)V
    .locals 3

    .line 1298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDoubleClick:isDoubleClick="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",isFinish:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$3200(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1299
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-virtual {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/media/common/util/AudioSettingUtil;->playSystemClickSoundEffect(Landroid/content/Context;)V

    .line 1307
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$4000(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result p1

    const/16 v0, 0xa

    if-nez p1, :cond_1

    .line 1308
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$000(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;I)V

    .line 1310
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1311
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1314
    :cond_0
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1316
    :cond_1
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$000(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;I)V

    .line 1318
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1319
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPlayChange(Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 5

    .line 1167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayChange:path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1168
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$2600(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$2600(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 1170
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$902(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)Z

    .line 1171
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/car/widget/media/video/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setOnTouchGesture(Z)V

    .line 1172
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$2600(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1173
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$2700(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1174
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0xa

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1179
    :cond_1
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$2800(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/media/common/ui/widget/MyActionBar;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/media/common/ui/widget/MyActionBar;->setTitleText(Ljava/lang/String;)V

    .line 1182
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$2900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1183
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-virtual {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object v0

    const-string v2, "TAG_VIDEO_VIEWED_LAST_FOR_USB_1"

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/media/common/util/SharedPrefsUtil;->save(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1185
    :cond_2
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-virtual {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object v0

    const-string v2, "TAG_VIDEO_VIEWED_LAST_FOR_USB_2"

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/media/common/util/SharedPrefsUtil;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1188
    :goto_0
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0, v1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$3000(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)V

    return-void
.end method

.method public onPlayException(I)Z
    .locals 4

    .line 1327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayException:code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isPreview="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1300(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1330
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$3100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1332
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/car/widget/media/video/VideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->getCurrentPlay()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 1334
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v2}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$4100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1336
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1, v1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$902(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)Z

    .line 1338
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    sget v2, Lcom/yftech/libmedia/R$string;->video_play_error_tips:I

    invoke-virtual {p1, v2}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/ui/widget/TipsDialog;->newInstance(Ljava/lang/String;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object p1

    .line 1339
    new-instance v2, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13$1;

    invoke-direct {v2, p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13$1;-><init>(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;)V

    invoke-virtual {p1, v2}, Lcom/media/common/ui/widget/TipsDialog;->setOnConfirmClickListener(Lcom/media/common/ui/widget/TipsDialog$OnConfirmClickListener;)V

    .line 1349
    iget-object v2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-virtual {v2}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v3, "onPlayerError"

    invoke-virtual {p1, v2, v3}, Lcom/media/common/ui/widget/TipsDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 1352
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0, v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$3000(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)V

    return v1

    .line 1357
    :cond_0
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1300(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1359
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x2

    .line 1360
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 1361
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v1

    :cond_1
    return v0
.end method

.method public onPlaySequenceCompletion()V
    .locals 2

    const-string v0, "onPlaySequenceCompletion"

    .line 1280
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1282
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$3202(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)Z

    .line 1285
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/car/widget/media/video/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1286
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/car/widget/media/video/VideoPlayer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setPlayState(I)Z

    .line 1289
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$000(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;I)V

    .line 1291
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1292
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method public onPlayerError(II)Z
    .locals 3

    .line 1374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayerError:what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    if-ne p2, v0, :cond_0

    return v0

    .line 1381
    :cond_0
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$3100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1383
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/car/widget/media/video/VideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->getCurrentPlay()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 1385
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$4100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1387
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1, v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$902(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)Z

    const-string p1, "onPlayerError: is click to enter"

    .line 1401
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1402
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$2600(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1403
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$2700(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1405
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object p1

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1406
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1408
    :cond_1
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1, p2}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$000(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;I)V

    .line 1410
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1, p2}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$3000(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)V

    .line 1412
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/car/widget/media/video/VideoPlayer;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setOnTouchGesture(Z)V

    return v0

    .line 1420
    :cond_2
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1300(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "onPlayerError: isPreview"

    .line 1421
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1422
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x3c

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x2

    .line 1423
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 1424
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v0

    :cond_3
    const-string p0, "onPlayerError: autoplay jump"

    .line 1430
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return p2
.end method

.method public onPlayingChange(Z)V
    .locals 4

    .line 1242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayingChange:isPlaying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isConfirm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1500(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1243
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1244
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1245
    iget-object v2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v2}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1246
    iget-object v2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v2}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1248
    :cond_0
    iget-object v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1500(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1249
    iget-object v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1251
    :cond_1
    iget-object v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x258

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1254
    :goto_0
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$3800(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1255
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0, p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$602(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)Z

    .line 1257
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$3802(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)Z

    goto :goto_1

    .line 1259
    :cond_2
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$3902(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)Z

    :goto_1
    return-void
.end method

.method public onPrepared(I)V
    .locals 2

    .line 1194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1197
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$3100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1199
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$3202(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)Z

    .line 1202
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$3300(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1205
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0, p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$3402(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;I)I

    .line 1207
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$3500(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/widget/TextView;

    move-result-object p0

    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/media/common/util/DateUtil;->getTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onProgress(I)V
    .locals 2

    .line 1222
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1300(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 1223
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1302(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)Z

    .line 1225
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$3600(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1235
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$3700(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/widget/TextView;

    move-result-object p0

    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/media/common/util/DateUtil;->getTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onSlideProgress(ZIJZ)V
    .locals 2

    .line 1462
    invoke-super/range {p0 .. p5}, Lcom/yftech/car/widget/media/video/VideoPlayer$VideoCallback;->onSlideProgress(ZIJZ)V

    .line 1463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSlideProgress:isSlide="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",videoSeek:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ", mSlideForward:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1464
    iget-object p3, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    const/4 p4, 0x0

    invoke-static {p3, p2, p4, p4, p5}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$4200(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;IZIZ)V

    const/16 p2, 0xa

    if-eqz p1, :cond_0

    .line 1466
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1467
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1470
    :cond_0
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1471
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1472
    :cond_1
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$13;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 p3, 0x1388

    invoke-virtual {p0, p2, p3, p4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    return-void
.end method
