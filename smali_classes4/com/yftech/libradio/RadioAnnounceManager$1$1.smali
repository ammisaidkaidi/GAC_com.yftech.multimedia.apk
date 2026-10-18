.class Lcom/yftech/libradio/RadioAnnounceManager$1$1;
.super Ljava/lang/Object;
.source "RadioAnnounceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/RadioAnnounceManager$1;->onLocationTimeSchedule(Lcom/yftech/car/media/radio/dab/entity/epg/Programme;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/libradio/RadioAnnounceManager$1;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/RadioAnnounceManager$1;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/yftech/libradio/RadioAnnounceManager$1$1;->this$1:Lcom/yftech/libradio/RadioAnnounceManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 73
    iget-object p0, p0, Lcom/yftech/libradio/RadioAnnounceManager$1$1;->this$1:Lcom/yftech/libradio/RadioAnnounceManager$1;

    iget-object p0, p0, Lcom/yftech/libradio/RadioAnnounceManager$1;->this$0:Lcom/yftech/libradio/RadioAnnounceManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/yftech/libradio/RadioAnnounceManager;->access$102(Lcom/yftech/libradio/RadioAnnounceManager;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
