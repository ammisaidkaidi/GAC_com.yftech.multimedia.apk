.class Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper$1;
.super Landroid/media/ISessionTokensListener$Stub;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;


# direct methods
.method constructor <init>(Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;)V
    .locals 0

    .line 958
    iput-object p1, p0, Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper$1;->this$0:Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;

    invoke-direct {p0}, Landroid/media/ISessionTokensListener$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onSessionTokensChanged$0(Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper$1;Ljava/util/List;)V
    .locals 1

    .line 964
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper$1;->this$0:Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;

    invoke-static {v0}, Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;->access$800(Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;)Landroid/content/Context;

    move-result-object v0

    .line 965
    iget-object p0, p0, Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper$1;->this$0:Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;

    invoke-static {p0}, Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;->access$900(Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;)Landroid/media/session/MediaSessionManager$OnSessionTokensChangedListener;

    move-result-object p0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 967
    invoke-static {p1}, Landroid/media/session/MediaSessionManager;->access$1000(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/media/session/MediaSessionManager$OnSessionTokensChangedListener;->onSessionTokensChanged(Ljava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onSessionTokensChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 961
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper$1;->this$0:Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;

    invoke-static {v0}, Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;->access$700(Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 963
    new-instance v1, Landroid/media/session/-$$Lambda$MediaSessionManager$SessionTokensChangedWrapper$1$wkYv3P0_Sdm0wRGnCFHp-AGf3Dw;

    invoke-direct {v1, p0, p1}, Landroid/media/session/-$$Lambda$MediaSessionManager$SessionTokensChangedWrapper$1$wkYv3P0_Sdm0wRGnCFHp-AGf3Dw;-><init>(Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper$1;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
