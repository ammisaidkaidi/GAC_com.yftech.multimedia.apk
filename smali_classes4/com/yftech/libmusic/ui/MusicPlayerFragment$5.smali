.class Lcom/yftech/libmusic/ui/MusicPlayerFragment$5;
.super Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;
.source "MusicPlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmusic/ui/MusicPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$5;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-direct {p0}, Lcom/yftech/car/bluetooth/callback/CarBluetoothPhoneCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothPhoneCallStateChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/bluetooth/model/PhoneCall;",
            ">;)V"
        }
    .end annotation

    const-string v0, "MUSIC_SOURCE_OF_USB1"

    .line 431
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$5;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1200(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "MUSIC_SOURCE_OF_USB2"

    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$5;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1200(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_3

    .line 435
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 436
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/bluetooth/model/PhoneCall;

    const/4 v0, 0x1

    .line 439
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$5;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-virtual {v1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/yftech/libmusic/MusicMainActivity;

    if-eqz v1, :cond_1

    .line 440
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$5;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-virtual {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yftech/libmusic/MusicMainActivity;

    .line 441
    iget-boolean v0, v0, Lcom/yftech/libmusic/MusicMainActivity;->isDisplaying:Z

    :cond_1
    if-eqz v0, :cond_2

    .line 445
    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 447
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$5;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->onPause()V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 450
    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/model/PhoneCall;->getCallState()I

    move-result p1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_3

    .line 452
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$5;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->onResume()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method
