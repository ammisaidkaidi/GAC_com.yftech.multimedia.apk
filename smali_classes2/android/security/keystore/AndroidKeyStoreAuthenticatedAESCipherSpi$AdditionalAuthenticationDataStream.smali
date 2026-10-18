.class Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;
.super Ljava/lang/Object;
.source "AndroidKeyStoreAuthenticatedAESCipherSpi.java"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdditionalAuthenticationDataStream"
.end annotation


# instance fields
.field private final mKeyStore:Landroid/security/KeyStore;

.field private final mOperationToken:Landroid/os/IBinder;


# direct methods
.method private constructor <init>(Landroid/security/KeyStore;Landroid/os/IBinder;)V
    .locals 0

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;->mKeyStore:Landroid/security/KeyStore;

    .line 410
    iput-object p2, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;->mOperationToken:Landroid/os/IBinder;

    return-void
.end method

.method synthetic constructor <init>(Landroid/security/KeyStore;Landroid/os/IBinder;Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$1;)V
    .locals 0

    .line 403
    invoke-direct {p0, p1, p2}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;-><init>(Landroid/security/KeyStore;Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public finish([B[B)Landroid/security/keymaster/OperationResult;
    .locals 8

    if-eqz p2, :cond_1

    .line 436
    array-length p1, p2

    if-gtz p1, :cond_0

    goto :goto_0

    .line 437
    :cond_0
    new-instance p0, Ljava/security/ProviderException;

    const-string p1, "AAD stream does not support additional entropy"

    invoke-direct {p0, p1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 439
    :cond_1
    :goto_0
    new-instance p1, Landroid/security/keymaster/OperationResult;

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;->mOperationToken:Landroid/os/IBinder;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    sget-object v6, Llibcore/util/EmptyArray;->BYTE:[B

    new-instance v7, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v7}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/security/keymaster/OperationResult;-><init>(ILandroid/os/IBinder;JI[BLandroid/security/keymaster/KeymasterArguments;)V

    return-object p1
.end method

.method public update([B)Landroid/security/keymaster/OperationResult;
    .locals 10

    .line 415
    new-instance v0, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    const v1, -0x6ffffc18

    .line 416
    invoke-virtual {v0, v1, p1}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    .line 421
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;->mKeyStore:Landroid/security/KeyStore;

    iget-object p0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;->mOperationToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Landroid/security/KeyStore;->update(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;

    move-result-object p0

    .line 422
    iget v0, p0, Landroid/security/keymaster/OperationResult;->resultCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 423
    new-instance v0, Landroid/security/keymaster/OperationResult;

    iget v3, p0, Landroid/security/keymaster/OperationResult;->resultCode:I

    iget-object v4, p0, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    iget-wide v5, p0, Landroid/security/keymaster/OperationResult;->operationHandle:J

    array-length v7, p1

    iget-object v8, p0, Landroid/security/keymaster/OperationResult;->output:[B

    iget-object v9, p0, Landroid/security/keymaster/OperationResult;->outParams:Landroid/security/keymaster/KeymasterArguments;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/security/keymaster/OperationResult;-><init>(ILandroid/os/IBinder;JI[BLandroid/security/keymaster/KeymasterArguments;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method
