.class public final Landroid/media/SessionCommandGroup2;
.super Ljava/lang/Object;
.source "SessionCommandGroup2.java"


# instance fields
.field private final mProvider:Landroid/media/update/MediaSession2Provider$CommandGroupProvider;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Landroid/media/update/ApiLoader;->getProvider()Landroid/media/update/StaticProvider;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/media/update/StaticProvider;->createMediaSession2CommandGroup(Landroid/media/SessionCommandGroup2;Landroid/media/SessionCommandGroup2;)Landroid/media/update/MediaSession2Provider$CommandGroupProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/media/SessionCommandGroup2;->mProvider:Landroid/media/update/MediaSession2Provider$CommandGroupProvider;

    return-void
.end method

.method public constructor <init>(Landroid/media/SessionCommandGroup2;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Landroid/media/update/ApiLoader;->getProvider()Landroid/media/update/StaticProvider;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/media/update/StaticProvider;->createMediaSession2CommandGroup(Landroid/media/SessionCommandGroup2;Landroid/media/SessionCommandGroup2;)Landroid/media/update/MediaSession2Provider$CommandGroupProvider;

    move-result-object p1

    iput-object p1, p0, Landroid/media/SessionCommandGroup2;->mProvider:Landroid/media/update/MediaSession2Provider$CommandGroupProvider;

    return-void
.end method

.method public constructor <init>(Landroid/media/update/MediaSession2Provider$CommandGroupProvider;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/media/SessionCommandGroup2;->mProvider:Landroid/media/update/MediaSession2Provider$CommandGroupProvider;

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroid/media/SessionCommandGroup2;
    .locals 1

    .line 104
    invoke-static {}, Landroid/media/update/ApiLoader;->getProvider()Landroid/media/update/StaticProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/update/StaticProvider;->fromBundle_MediaSession2CommandGroup(Landroid/os/Bundle;)Landroid/media/SessionCommandGroup2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addAllPredefinedCommands()V
    .locals 0

    .line 60
    iget-object p0, p0, Landroid/media/SessionCommandGroup2;->mProvider:Landroid/media/update/MediaSession2Provider$CommandGroupProvider;

    invoke-interface {p0}, Landroid/media/update/MediaSession2Provider$CommandGroupProvider;->addAllPredefinedCommands_impl()V

    return-void
.end method

.method public addCommand(I)V
    .locals 0

    return-void
.end method

.method public addCommand(Landroid/media/SessionCommand2;)V
    .locals 0

    .line 52
    iget-object p0, p0, Landroid/media/SessionCommandGroup2;->mProvider:Landroid/media/update/MediaSession2Provider$CommandGroupProvider;

    invoke-interface {p0, p1}, Landroid/media/update/MediaSession2Provider$CommandGroupProvider;->addCommand_impl(Landroid/media/SessionCommand2;)V

    return-void
.end method

.method public getCommands()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/media/SessionCommand2;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object p0, p0, Landroid/media/SessionCommandGroup2;->mProvider:Landroid/media/update/MediaSession2Provider$CommandGroupProvider;

    invoke-interface {p0}, Landroid/media/update/MediaSession2Provider$CommandGroupProvider;->getCommands_impl()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getProvider()Landroid/media/update/MediaSession2Provider$CommandGroupProvider;
    .locals 0

    .line 88
    iget-object p0, p0, Landroid/media/SessionCommandGroup2;->mProvider:Landroid/media/update/MediaSession2Provider$CommandGroupProvider;

    return-object p0
.end method

.method public hasCommand(I)Z
    .locals 0

    .line 76
    iget-object p0, p0, Landroid/media/SessionCommandGroup2;->mProvider:Landroid/media/update/MediaSession2Provider$CommandGroupProvider;

    invoke-interface {p0, p1}, Landroid/media/update/MediaSession2Provider$CommandGroupProvider;->hasCommand_impl(I)Z

    move-result p0

    return p0
.end method

.method public hasCommand(Landroid/media/SessionCommand2;)Z
    .locals 0

    .line 72
    iget-object p0, p0, Landroid/media/SessionCommandGroup2;->mProvider:Landroid/media/update/MediaSession2Provider$CommandGroupProvider;

    invoke-interface {p0, p1}, Landroid/media/update/MediaSession2Provider$CommandGroupProvider;->hasCommand_impl(Landroid/media/SessionCommand2;)Z

    move-result p0

    return p0
.end method

.method public removeCommand(I)V
    .locals 0

    return-void
.end method

.method public removeCommand(Landroid/media/SessionCommand2;)V
    .locals 0

    .line 64
    iget-object p0, p0, Landroid/media/SessionCommandGroup2;->mProvider:Landroid/media/update/MediaSession2Provider$CommandGroupProvider;

    invoke-interface {p0, p1}, Landroid/media/update/MediaSession2Provider$CommandGroupProvider;->removeCommand_impl(Landroid/media/SessionCommand2;)V

    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 0

    .line 96
    iget-object p0, p0, Landroid/media/SessionCommandGroup2;->mProvider:Landroid/media/update/MediaSession2Provider$CommandGroupProvider;

    invoke-interface {p0}, Landroid/media/update/MediaSession2Provider$CommandGroupProvider;->toBundle_impl()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
