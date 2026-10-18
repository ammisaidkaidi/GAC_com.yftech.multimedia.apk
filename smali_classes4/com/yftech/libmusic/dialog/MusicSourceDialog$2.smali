.class Lcom/yftech/libmusic/dialog/MusicSourceDialog$2;
.super Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;
.source "MusicSourceDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmusic/dialog/MusicSourceDialog;
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

    .line 165
    iput-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$2;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-direct {p0}, Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanStatusChange(IZ)V
    .locals 3

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScanStatusChange:usbIndex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isScanner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-nez p2, :cond_5

    .line 202
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/car/media/data/CarMediaDataManager;->getMusicFileExists()I

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v0

    .line 207
    :goto_0
    iget-object v1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$2;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-static {v1}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$100(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 210
    iget-object v1, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$2;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-static {v1}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$100(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

    move-result-object v1

    if-nez p1, :cond_1

    const-string v2, "MUSIC_SOURCE_OF_USB1"

    goto :goto_1

    :cond_1
    const-string v2, "MUSIC_SOURCE_OF_USB2"

    :goto_1
    invoke-virtual {v1, v2}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->getEnable(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    return-void

    .line 214
    :cond_2
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$2;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-static {p0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$100(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

    move-result-object p0

    if-nez p1, :cond_3

    const-string p1, "MUSIC_SOURCE_OF_USB1"

    goto :goto_2

    :cond_3
    const-string p1, "MUSIC_SOURCE_OF_USB2"

    :goto_2
    if-eqz p2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x3

    :goto_3
    invoke-virtual {p0, p1, v0}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->setEnable(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method public onUsbStatusChange(IZ)V
    .locals 2

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUsbStatusChange:usbIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isUsbExists="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 175
    iget-object p2, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$2;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-static {p2}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$100(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 176
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$2;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-static {p0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$100(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

    move-result-object p0

    if-nez p1, :cond_0

    const-string p1, "MUSIC_SOURCE_OF_USB1"

    goto :goto_0

    :cond_0
    const-string p1, "MUSIC_SOURCE_OF_USB2"

    :goto_0
    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->setEnable(Ljava/lang/String;I)V

    goto :goto_3

    .line 180
    :cond_1
    iget-object p2, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$2;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-static {p2}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$100(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 182
    iget-object p2, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$2;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-static {p2}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$200(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$2;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-static {p2}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$200(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object p2

    invoke-virtual {p2}, Lcom/media/common/ui/widget/TipsDialog;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 183
    iget-object p2, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$2;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-static {p2}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$200(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object p2

    invoke-virtual {p2}, Lcom/media/common/ui/widget/TipsDialog;->dismissAllowingStateLoss()V

    .line 184
    iget-object p2, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$2;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$202(Lcom/yftech/libmusic/dialog/MusicSourceDialog;Lcom/media/common/ui/widget/TipsDialog;)Lcom/media/common/ui/widget/TipsDialog;

    .line 186
    :cond_2
    iget-object p2, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$2;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-static {p2}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$100(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->getTypeBySelection()Ljava/lang/String;

    move-result-object p2

    .line 187
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p1, :cond_3

    const-string v0, "MUSIC_SOURCE_OF_USB1"

    goto :goto_1

    :cond_3
    const-string v0, "MUSIC_SOURCE_OF_USB2"

    :goto_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 188
    iget-object p2, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$2;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-static {p2}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$100(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

    move-result-object p2

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->setSelection(I)V

    .line 189
    :cond_4
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSourceDialog$2;->this$0:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-static {p0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->access$100(Lcom/yftech/libmusic/dialog/MusicSourceDialog;)Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

    move-result-object p0

    if-nez p1, :cond_5

    const-string p1, "MUSIC_SOURCE_OF_USB1"

    goto :goto_2

    :cond_5
    const-string p1, "MUSIC_SOURCE_OF_USB2"

    :goto_2
    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->setEnable(Ljava/lang/String;I)V

    :cond_6
    :goto_3
    return-void
.end method
