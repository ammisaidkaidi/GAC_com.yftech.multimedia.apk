.class Lcom/yftech/multimedia/ui/MainFragment$5;
.super Ljava/lang/Object;
.source "MainFragment.java"

# interfaces
.implements Lcom/media/common/ui/widget/TipsDialog$OnConfirmClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/multimedia/ui/MainFragment;->onUSBPushOutInPhotoDisplaying(Lcom/media/common/event/USBPushOutInPhotoDisplayingEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/multimedia/ui/MainFragment;


# direct methods
.method constructor <init>(Lcom/yftech/multimedia/ui/MainFragment;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/yftech/multimedia/ui/MainFragment$5;->this$0:Lcom/yftech/multimedia/ui/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm()V
    .locals 1

    const-string p0, "com.yftech.multimedia.show_alert_dialog"

    const/4 v0, 0x0

    .line 451
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
