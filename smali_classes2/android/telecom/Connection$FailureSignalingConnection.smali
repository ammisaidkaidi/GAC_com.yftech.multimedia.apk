.class Landroid/telecom/Connection$FailureSignalingConnection;
.super Landroid/telecom/Connection;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FailureSignalingConnection"
.end annotation


# instance fields
.field private mImmutable:Z


# direct methods
.method public constructor <init>(Landroid/telecom/DisconnectCause;)V
    .locals 1

    .line 2990
    invoke-direct {p0}, Landroid/telecom/Connection;-><init>()V

    const/4 v0, 0x0

    .line 2989
    iput-boolean v0, p0, Landroid/telecom/Connection$FailureSignalingConnection;->mImmutable:Z

    .line 2991
    invoke-virtual {p0, p1}, Landroid/telecom/Connection$FailureSignalingConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    const/4 p1, 0x1

    .line 2992
    iput-boolean p1, p0, Landroid/telecom/Connection$FailureSignalingConnection;->mImmutable:Z

    return-void
.end method


# virtual methods
.method public checkImmutable()V
    .locals 1

    .line 2996
    iget-boolean p0, p0, Landroid/telecom/Connection$FailureSignalingConnection;->mImmutable:Z

    if-nez p0, :cond_0

    return-void

    .line 2997
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Connection is immutable"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
