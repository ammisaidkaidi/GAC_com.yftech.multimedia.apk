.class Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment$1;
.super Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;
.source "EpgAllProgramFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment$1;->this$0:Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;

    invoke-direct {p0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayStatusChange(Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;->onPlayStatusChange(Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;)V

    .line 32
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment$1;->this$0:Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;

    invoke-static {p0, p1}, Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;->access$000(Lcom/yftech/libradio/dabui/epg/EpgAllProgramFragment;Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;)V

    return-void
.end method
