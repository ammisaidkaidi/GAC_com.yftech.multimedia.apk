.class Lcom/yftech/libmusic/ui/MusicMainFragment$3$1;
.super Ljava/lang/Object;
.source "MusicMainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmusic/ui/MusicMainFragment$3;->onSelected(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/libmusic/ui/MusicMainFragment$3;

.field final synthetic val$act:Lcom/yftech/libmusic/MusicMainActivity;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/ui/MusicMainFragment$3;Ljava/lang/String;Lcom/yftech/libmusic/MusicMainActivity;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicMainFragment$3$1;->this$1:Lcom/yftech/libmusic/ui/MusicMainFragment$3;

    iput-object p2, p0, Lcom/yftech/libmusic/ui/MusicMainFragment$3$1;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/yftech/libmusic/ui/MusicMainFragment$3$1;->val$act:Lcom/yftech/libmusic/MusicMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 425
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicMainFragment$3$1;->val$type:Ljava/lang/String;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->newInstance(Ljava/lang/String;)Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    move-result-object v0

    .line 426
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicMainFragment$3$1;->val$act:Lcom/yftech/libmusic/MusicMainActivity;

    invoke-virtual {v1, v0}, Lcom/yftech/libmusic/MusicMainActivity;->switchContent(Landroidx/fragment/app/Fragment;)V

    .line 427
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicMainFragment$3$1;->val$act:Lcom/yftech/libmusic/MusicMainActivity;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/MusicMainActivity;->setSoundEffectVisible(Z)V

    return-void
.end method
