.class public final Landroid/media/MediaSession2$CommandButton;
.super Ljava/lang/Object;
.source "MediaSession2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaSession2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommandButton"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaSession2$CommandButton$Builder;
    }
.end annotation


# instance fields
.field private final mProvider:Landroid/media/update/MediaSession2Provider$CommandButtonProvider;


# direct methods
.method public constructor <init>(Landroid/media/update/MediaSession2Provider$CommandButtonProvider;)V
    .locals 0

    .line 772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 773
    iput-object p1, p0, Landroid/media/MediaSession2$CommandButton;->mProvider:Landroid/media/update/MediaSession2Provider$CommandButtonProvider;

    return-void
.end method


# virtual methods
.method public getCommand()Landroid/media/SessionCommand2;
    .locals 0

    .line 784
    iget-object p0, p0, Landroid/media/MediaSession2$CommandButton;->mProvider:Landroid/media/update/MediaSession2Provider$CommandButtonProvider;

    invoke-interface {p0}, Landroid/media/update/MediaSession2Provider$CommandButtonProvider;->getCommand_impl()Landroid/media/SessionCommand2;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 0

    .line 804
    iget-object p0, p0, Landroid/media/MediaSession2$CommandButton;->mProvider:Landroid/media/update/MediaSession2Provider$CommandButtonProvider;

    invoke-interface {p0}, Landroid/media/update/MediaSession2Provider$CommandButtonProvider;->getDisplayName_impl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 0

    .line 813
    iget-object p0, p0, Landroid/media/MediaSession2$CommandButton;->mProvider:Landroid/media/update/MediaSession2Provider$CommandButtonProvider;

    invoke-interface {p0}, Landroid/media/update/MediaSession2Provider$CommandButtonProvider;->getExtras_impl()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getIconResId()I
    .locals 0

    .line 794
    iget-object p0, p0, Landroid/media/MediaSession2$CommandButton;->mProvider:Landroid/media/update/MediaSession2Provider$CommandButtonProvider;

    invoke-interface {p0}, Landroid/media/update/MediaSession2Provider$CommandButtonProvider;->getIconResId_impl()I

    move-result p0

    return p0
.end method

.method public getProvider()Landroid/media/update/MediaSession2Provider$CommandButtonProvider;
    .locals 0

    .line 829
    iget-object p0, p0, Landroid/media/MediaSession2$CommandButton;->mProvider:Landroid/media/update/MediaSession2Provider$CommandButtonProvider;

    return-object p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 822
    iget-object p0, p0, Landroid/media/MediaSession2$CommandButton;->mProvider:Landroid/media/update/MediaSession2Provider$CommandButtonProvider;

    invoke-interface {p0}, Landroid/media/update/MediaSession2Provider$CommandButtonProvider;->isEnabled_impl()Z

    move-result p0

    return p0
.end method
