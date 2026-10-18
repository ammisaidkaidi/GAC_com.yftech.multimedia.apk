.class Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$1;
.super Landroid/os/Handler;
.source "EpgBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;Landroid/os/Looper;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$1;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 62
    iget p1, p1, Landroid/os/Message;->what:I

    const v0, 0xaa2b

    if-ne p1, v0, :cond_0

    .line 63
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getEpgDateTimeUpdate()J

    move-result-wide v1

    .line 64
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 65
    invoke-virtual {p1, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 66
    iget-object v1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$1;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    iget-object v1, v1, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 67
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$1;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    iget-object v1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$1;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-static {v1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->access$000(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->getProgrammeList(Ljava/util/Calendar;)V

    .line 68
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$1;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    iget-object p1, p1, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->mHanlder:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 70
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$1;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->mHanlder:Landroid/os/Handler;

    const-wide/32 v1, 0xea60

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
