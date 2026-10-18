.class public Landroid/media/MediaSessionService2$MediaNotification;
.super Ljava/lang/Object;
.source "MediaSessionService2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaSessionService2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaNotification"
.end annotation


# instance fields
.field private final mProvider:Landroid/media/update/MediaSessionService2Provider$MediaNotificationProvider;


# direct methods
.method public constructor <init>(ILandroid/app/Notification;)V
    .locals 1

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    invoke-static {}, Landroid/media/update/ApiLoader;->getProvider()Landroid/media/update/StaticProvider;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/media/update/StaticProvider;->createMediaSessionService2MediaNotification(Landroid/media/MediaSessionService2$MediaNotification;ILandroid/app/Notification;)Landroid/media/update/MediaSessionService2Provider$MediaNotificationProvider;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaSessionService2$MediaNotification;->mProvider:Landroid/media/update/MediaSessionService2Provider$MediaNotificationProvider;

    return-void
.end method


# virtual methods
.method public getNotification()Landroid/app/Notification;
    .locals 0

    .line 230
    iget-object p0, p0, Landroid/media/MediaSessionService2$MediaNotification;->mProvider:Landroid/media/update/MediaSessionService2Provider$MediaNotificationProvider;

    invoke-interface {p0}, Landroid/media/update/MediaSessionService2Provider$MediaNotificationProvider;->getNotification_impl()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationId()I
    .locals 0

    .line 226
    iget-object p0, p0, Landroid/media/MediaSessionService2$MediaNotification;->mProvider:Landroid/media/update/MediaSessionService2Provider$MediaNotificationProvider;

    invoke-interface {p0}, Landroid/media/update/MediaSessionService2Provider$MediaNotificationProvider;->getNotificationId_impl()I

    move-result p0

    return p0
.end method
