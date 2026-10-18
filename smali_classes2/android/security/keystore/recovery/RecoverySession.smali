.class public Landroid/security/keystore/recovery/RecoverySession;
.super Ljava/lang/Object;
.source "RecoverySession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final SESSION_ID_LENGTH_BYTES:I = 0x10

.field private static final TAG:Ljava/lang/String; = "RecoverySession"


# instance fields
.field private final mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

.field private final mSessionId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/security/keystore/recovery/RecoveryController;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroid/security/keystore/recovery/RecoverySession;->mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

    .line 55
    iput-object p2, p0, Landroid/security/keystore/recovery/RecoverySession;->mSessionId:Ljava/lang/String;

    return-void
.end method

.method private getKeysFromGrants(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/Key;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .line 215
    new-instance v0, Landroid/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 216
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 217
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 220
    :try_start_0
    iget-object v4, p0, Landroid/security/keystore/recovery/RecoverySession;->mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

    invoke-virtual {v4, v3}, Landroid/security/keystore/recovery/RecoveryController;->getKeyFromGrant(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v4
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    invoke-virtual {v0, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 222
    new-instance p1, Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const-string v2, "Failed to get key \'%s\' from grant \'%s\'"

    .line 223
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/security/keystore/recovery/InternalRecoveryServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    return-object v0
.end method

.method static newInstance(Landroid/security/keystore/recovery/RecoveryController;)Landroid/security/keystore/recovery/RecoverySession;
    .locals 2

    .line 63
    new-instance v0, Landroid/security/keystore/recovery/RecoverySession;

    invoke-static {}, Landroid/security/keystore/recovery/RecoverySession;->newSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/security/keystore/recovery/RecoverySession;-><init>(Landroid/security/keystore/recovery/RecoveryController;Ljava/lang/String;)V

    return-object v0
.end method

.method private static newSessionId()Ljava/lang/String;
    .locals 6

    .line 70
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x10

    .line 71
    new-array v1, v1, [B

    .line 72
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-byte v5, v1, v4

    .line 75
    invoke-static {v5, v3}, Ljava/lang/Byte;->toHexString(BZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 250
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoverySession;->mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

    invoke-virtual {v0}, Landroid/security/keystore/recovery/RecoveryController;->getBinder()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iget-object p0, p0, Landroid/security/keystore/recovery/RecoverySession;->mSessionId:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/android/internal/widget/ILockSettings;->closeSession(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "RecoverySession"

    const-string v1, "Unexpected error trying to close session"

    .line 252
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method getSessionId()Ljava/lang/String;
    .locals 0

    .line 240
    iget-object p0, p0, Landroid/security/keystore/recovery/RecoverySession;->mSessionId:Ljava/lang/String;

    return-object p0
.end method

.method public recoverKeyChainSnapshot([BLjava/util/List;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/WrappedApplicationKey;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/Key;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/SessionExpiredException;,
            Landroid/security/keystore/recovery/DecryptionFailedException;,
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .line 195
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoverySession;->mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

    .line 196
    invoke-virtual {v0}, Landroid/security/keystore/recovery/RecoveryController;->getBinder()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iget-object v1, p0, Landroid/security/keystore/recovery/RecoverySession;->mSessionId:Ljava/lang/String;

    .line 197
    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/widget/ILockSettings;->recoverKeyChainSnapshot(Ljava/lang/String;[BLjava/util/List;)Ljava/util/Map;

    move-result-object p1

    .line 198
    invoke-direct {p0, p1}, Landroid/security/keystore/recovery/RecoverySession;->getKeysFromGrants(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 202
    iget p2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v0, 0x1a

    if-eq p2, v0, :cond_1

    .line 205
    iget p2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v0, 0x18

    if-ne p2, v0, :cond_0

    .line 206
    new-instance p0, Landroid/security/keystore/recovery/SessionExpiredException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/security/keystore/recovery/SessionExpiredException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 208
    :cond_0
    iget-object p0, p0, Landroid/security/keystore/recovery/RecoverySession;->mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

    invoke-virtual {p0, p1}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object p0

    throw p0

    .line 203
    :cond_1
    new-instance p0, Landroid/security/keystore/recovery/DecryptionFailedException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/security/keystore/recovery/DecryptionFailedException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    .line 200
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public recoverKeys([BLjava/util/List;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/WrappedApplicationKey;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/SessionExpiredException;,
            Landroid/security/keystore/recovery/DecryptionFailedException;,
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 175
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public start(Ljava/lang/String;Ljava/security/cert/CertPath;[B[BLjava/util/List;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/security/cert/CertPath;",
            "[B[B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/KeyChainProtectionParams;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .line 142
    invoke-static {p2}, Landroid/security/keystore/recovery/RecoveryCertPath;->createRecoveryCertPath(Ljava/security/cert/CertPath;)Landroid/security/keystore/recovery/RecoveryCertPath;

    move-result-object v3

    .line 144
    :try_start_0
    iget-object p2, p0, Landroid/security/keystore/recovery/RecoverySession;->mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

    .line 145
    invoke-virtual {p2}, Landroid/security/keystore/recovery/RecoveryController;->getBinder()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iget-object v1, p0, Landroid/security/keystore/recovery/RecoverySession;->mSessionId:Ljava/lang/String;

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/widget/ILockSettings;->startRecoverySessionWithCertPath(Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/recovery/RecoveryCertPath;[B[BLjava/util/List;)[B

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 156
    iget p2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 p3, 0x19

    if-eq p2, p3, :cond_1

    iget p2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 p3, 0x1c

    if-ne p2, p3, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    iget-object p0, p0, Landroid/security/keystore/recovery/RecoverySession;->mRecoveryController:Landroid/security/keystore/recovery/RecoveryController;

    invoke-virtual {p0, p1}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object p0

    throw p0

    .line 158
    :cond_1
    :goto_0
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string p2, "Invalid certificate for recovery session"

    invoke-direct {p0, p2, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :catch_1
    move-exception p0

    .line 154
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public start(Ljava/security/cert/CertPath;[B[BLjava/util/List;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/CertPath;",
            "[B[B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/KeyChainProtectionParams;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 107
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public start([B[B[BLjava/util/List;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/KeyChainProtectionParams;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 92
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
