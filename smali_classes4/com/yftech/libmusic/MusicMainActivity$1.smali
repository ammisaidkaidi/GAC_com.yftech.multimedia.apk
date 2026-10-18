.class Lcom/yftech/libmusic/MusicMainActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MusicMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmusic/MusicMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/MusicMainActivity;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/MusicMainActivity;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/yftech/libmusic/MusicMainActivity$1;->this$0:Lcom/yftech/libmusic/MusicMainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 102
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "test"

    .line 103
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "value"

    const/4 p1, -0x1

    .line 105
    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    :cond_0
    return-void
.end method
