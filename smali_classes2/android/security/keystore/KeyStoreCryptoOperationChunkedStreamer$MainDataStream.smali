.class public Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;
.super Ljava/lang/Object;
.source "KeyStoreCryptoOperationChunkedStreamer.java"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainDataStream"
.end annotation


# instance fields
.field private final mKeyStore:Landroid/security/KeyStore;

.field private final mOperationToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/security/KeyStore;Landroid/os/IBinder;)V
    .locals 0

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iput-object p1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;->mKeyStore:Landroid/security/KeyStore;

    .line 328
    iput-object p2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;->mOperationToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public finish([B[B)Landroid/security/keymaster/OperationResult;
    .locals 2

    .line 338
    iget-object v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;->mKeyStore:Landroid/security/KeyStore;

    iget-object p0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;->mOperationToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1, p2}, Landroid/security/KeyStore;->finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B)Landroid/security/keymaster/OperationResult;

    move-result-object p0

    return-object p0
.end method

.method public update([B)Landroid/security/keymaster/OperationResult;
    .locals 2

    .line 333
    iget-object v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;->mKeyStore:Landroid/security/KeyStore;

    iget-object p0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;->mOperationToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/security/KeyStore;->update(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;

    move-result-object p0

    return-object p0
.end method
