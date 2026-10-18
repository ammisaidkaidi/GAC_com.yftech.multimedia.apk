.class Lcom/yftech/libmusic/MusicMainActivity$2;
.super Ljava/lang/Object;
.source "MusicMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmusic/MusicMainActivity;->onNewIntent(Landroid/content/Intent;)V
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

    .line 428
    iput-object p1, p0, Lcom/yftech/libmusic/MusicMainActivity$2;->this$0:Lcom/yftech/libmusic/MusicMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity$2;->this$0:Lcom/yftech/libmusic/MusicMainActivity;

    invoke-virtual {v0}, Lcom/yftech/libmusic/MusicMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/yftech/libmusic/ui/MusicMainFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v1, p0, Lcom/yftech/libmusic/MusicMainActivity$2;->this$0:Lcom/yftech/libmusic/MusicMainActivity;

    iput-object v0, v1, Lcom/yftech/libmusic/MusicMainActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmusic/MusicMainActivity$2;->this$0:Lcom/yftech/libmusic/MusicMainActivity;

    invoke-static {v0}, Lcom/yftech/libmusic/MusicMainActivity;->access$000(Lcom/yftech/libmusic/MusicMainActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->newInstance(Ljava/lang/String;)Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    move-result-object v0

    .line 439
    iget-object v1, p0, Lcom/yftech/libmusic/MusicMainActivity$2;->this$0:Lcom/yftech/libmusic/MusicMainActivity;

    invoke-virtual {v1, v0}, Lcom/yftech/libmusic/MusicMainActivity;->switchContent(Landroidx/fragment/app/Fragment;)V

    .line 441
    iget-object p0, p0, Lcom/yftech/libmusic/MusicMainActivity$2;->this$0:Lcom/yftech/libmusic/MusicMainActivity;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/MusicMainActivity;->setSoundEffectVisible(Z)V

    return-void
.end method
