.class public final Landroid/media/session/MediaSessionManager$RemoteUserInfo;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RemoteUserInfo"
.end annotation


# instance fields
.field private final mCallerBinder:Landroid/os/IBinder;

.field private final mPackageName:Ljava/lang/String;

.field private final mPid:I

.field private final mUid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    .line 836
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;IILandroid/os/IBinder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILandroid/os/IBinder;)V
    .locals 0

    .line 842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 843
    iput-object p1, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mPackageName:Ljava/lang/String;

    .line 844
    iput p2, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mPid:I

    .line 845
    iput p3, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mUid:I

    .line 846
    iput-object p4, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mCallerBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 884
    instance-of v0, p1, Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 890
    :cond_1
    check-cast p1, Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 891
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mCallerBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mCallerBinder:Landroid/os/IBinder;

    if-nez v0, :cond_2

    goto :goto_0

    .line 892
    :cond_2
    iget-object p0, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mCallerBinder:Landroid/os/IBinder;

    iget-object p1, p1, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mCallerBinder:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_3
    :goto_0
    return v1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 853
    iget-object p0, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPid()I
    .locals 0

    .line 860
    iget p0, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mPid:I

    return p0
.end method

.method public getUid()I
    .locals 0

    .line 867
    iget p0, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mUid:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 897
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mPid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget p0, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mUid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
