.class public Landroid/security/KeyStore;
.super Ljava/lang/Object;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeyStore$State;
    }
.end annotation


# static fields
.field public static final CANNOT_ATTEST_IDS:I = -0x42

.field public static final CONFIRMATIONUI_ABORTED:I = 0x2

.field public static final CONFIRMATIONUI_CANCELED:I = 0x1

.field public static final CONFIRMATIONUI_IGNORED:I = 0x4

.field public static final CONFIRMATIONUI_OK:I = 0x0

.field public static final CONFIRMATIONUI_OPERATION_PENDING:I = 0x3

.field public static final CONFIRMATIONUI_SYSTEM_ERROR:I = 0x5

.field public static final CONFIRMATIONUI_UIERROR:I = 0x10000

.field public static final CONFIRMATIONUI_UIERROR_MALFORMED_UTF8_ENCODING:I = 0x10003

.field public static final CONFIRMATIONUI_UIERROR_MESSAGE_TOO_LONG:I = 0x10002

.field public static final CONFIRMATIONUI_UIERROR_MISSING_GLYPH:I = 0x10001

.field public static final CONFIRMATIONUI_UNEXPECTED:I = 0x7

.field public static final CONFIRMATIONUI_UNIMPLEMENTED:I = 0x6

.field public static final FLAG_CRITICAL_TO_DEVICE_ENCRYPTION:I = 0x8

.field public static final FLAG_ENCRYPTED:I = 0x1

.field public static final FLAG_NONE:I = 0x0

.field public static final FLAG_SOFTWARE:I = 0x2

.field public static final FLAG_STRONGBOX:I = 0x10

.field public static final HARDWARE_TYPE_UNAVAILABLE:I = -0x44

.field public static final KEY_NOT_FOUND:I = 0x7

.field public static final LOCKED:I = 0x2

.field public static final NO_ERROR:I = 0x1

.field public static final OP_AUTH_NEEDED:I = 0xf

.field public static final PERMISSION_DENIED:I = 0x6

.field public static final PROTOCOL_ERROR:I = 0x5

.field public static final SYSTEM_ERROR:I = 0x4

.field private static final TAG:Ljava/lang/String; = "KeyStore"

.field public static final UID_SELF:I = -0x1

.field public static final UNDEFINED_ACTION:I = 0x9

.field public static final UNINITIALIZED:I = 0x3

.field public static final VALUE_CORRUPTED:I = 0x8

.field public static final WRONG_PASSWORD:I = 0xa


# instance fields
.field private final mBinder:Landroid/security/IKeystoreService;

.field private final mContext:Landroid/content/Context;

.field private mError:I

.field private mToken:Landroid/os/IBinder;


# direct methods
.method private constructor <init>(Landroid/security/IKeystoreService;)V
    .locals 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 133
    iput v0, p0, Landroid/security/KeyStore;->mError:I

    .line 141
    iput-object p1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    .line 142
    invoke-static {}, Landroid/security/KeyStore;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/security/KeyStore;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 2

    .line 146
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to obtain application Context from ActivityThread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getFingerprintOnlySid()J
    .locals 3

    .line 917
    iget-object v0, p0, Landroid/security/KeyStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    .line 918
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 921
    :cond_0
    iget-object p0, p0, Landroid/security/KeyStore;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/fingerprint/FingerprintManager;

    if-nez p0, :cond_1

    return-wide v1

    .line 928
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getAuthenticatorId()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInstance()Landroid/security/KeyStore;
    .locals 2

    const-string v0, "android.security.keystore"

    .line 156
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 155
    invoke-static {v0}, Landroid/security/IKeystoreService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/IKeystoreService;

    move-result-object v0

    .line 157
    new-instance v1, Landroid/security/KeyStore;

    invoke-direct {v1, v0}, Landroid/security/KeyStore;-><init>(Landroid/security/IKeystoreService;)V

    return-object v1
.end method

.method public static getKeyStoreException(I)Landroid/security/KeyStoreException;
    .locals 2

    if-lez p0, :cond_1

    const/16 v0, 0xf

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 838
    new-instance v0, Landroid/security/KeyStoreException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 834
    :pswitch_0
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key blob corrupted"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 832
    :pswitch_1
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key not found"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 830
    :pswitch_2
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Permission denied"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 828
    :pswitch_3
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "System error"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 826
    :pswitch_4
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Keystore not initialized"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 824
    :pswitch_5
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "User authentication required"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 822
    :pswitch_6
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "OK"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 836
    :cond_0
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Operation requires authorization"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_1
    const/16 v0, -0x10

    if-eq p0, v0, :cond_2

    .line 849
    new-instance v0, Landroid/security/KeyStoreException;

    .line 850
    invoke-static {p0}, Landroid/security/keymaster/KeymasterDefs;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 846
    :cond_2
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Invalid user authentication validity duration"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized getToken()Landroid/os/IBinder;
    .locals 1

    monitor-enter p0

    .line 161
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/security/KeyStore;->mToken:Landroid/os/IBinder;

    .line 164
    :cond_0
    iget-object v0, p0, Landroid/security/KeyStore;->mToken:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 160
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public abort(Landroid/os/IBinder;)I
    .locals 1

    .line 594
    :try_start_0
    iget-object p0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {p0, p1}, Landroid/security/IKeystoreService;->abort(Landroid/os/IBinder;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "KeyStore"

    const-string v0, "Cannot connect to keystore"

    .line 596
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x4

    return p0
.end method

.method public addAuthToken([B)I
    .locals 1

    .line 625
    :try_start_0
    iget-object p0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {p0, p1}, Landroid/security/IKeystoreService;->addAuthToken([B)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "KeyStore"

    const-string v0, "Cannot connect to keystore"

    .line 627
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x4

    return p0
.end method

.method public addRngEntropy([BI)Z
    .locals 1

    const/4 v0, 0x0

    .line 459
    :try_start_0
    iget-object p0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {p0, p1, p2}, Landroid/security/IKeystoreService;->addRngEntropy([BI)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    return p1

    :catch_0
    move-exception p0

    const-string p1, "KeyStore"

    const-string p2, "Cannot connect to keystore"

    .line 461
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public attestDeviceIds(Landroid/security/keymaster/KeymasterArguments;Landroid/security/keymaster/KeymasterCertificateChain;)I
    .locals 0

    if-nez p1, :cond_0

    .line 724
    :try_start_0
    new-instance p1, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {p1}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    .line 727
    new-instance p2, Landroid/security/keymaster/KeymasterCertificateChain;

    invoke-direct {p2}, Landroid/security/keymaster/KeymasterCertificateChain;-><init>()V

    .line 729
    :cond_1
    iget-object p0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {p0, p1, p2}, Landroid/security/IKeystoreService;->attestDeviceIds(Landroid/security/keymaster/KeymasterArguments;Landroid/security/keymaster/KeymasterCertificateChain;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_1
    const-string p1, "KeyStore"

    const-string p2, "Cannot connect to keystore"

    .line 731
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x4

    return p0
.end method

.method public attestKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;Landroid/security/keymaster/KeymasterCertificateChain;)I
    .locals 0

    if-nez p2, :cond_0

    .line 709
    :try_start_0
    new-instance p2, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {p2}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    if-nez p3, :cond_1

    .line 712
    new-instance p3, Landroid/security/keymaster/KeymasterCertificateChain;

    invoke-direct {p3}, Landroid/security/keymaster/KeymasterCertificateChain;-><init>()V

    .line 714
    :cond_1
    iget-object p0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {p0, p1, p2, p3}, Landroid/security/IKeystoreService;->attestKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;Landroid/security/keymaster/KeymasterCertificateChain;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_1
    const-string p1, "KeyStore"

    const-string p2, "Cannot connect to keystore"

    .line 716
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x4

    return p0
.end method

.method public begin(Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;
    .locals 7

    if-eqz p5, :cond_0

    :goto_0
    move-object v5, p5

    goto :goto_1

    :cond_0
    const/4 p5, 0x0

    .line 559
    new-array p5, p5, [B

    goto :goto_0

    :goto_1
    if-eqz p4, :cond_1

    :goto_2
    move-object v4, p4

    goto :goto_3

    .line 560
    :cond_1
    new-instance p4, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {p4}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    goto :goto_2

    :goto_3
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 561
    invoke-virtual/range {v0 .. v6}, Landroid/security/KeyStore;->begin(Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[BI)Landroid/security/keymaster/OperationResult;

    move-result-object p0

    return-object p0
.end method

.method public begin(Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[BI)Landroid/security/keymaster/OperationResult;
    .locals 8

    if-eqz p4, :cond_0

    :goto_0
    move-object v5, p4

    goto :goto_1

    .line 548
    :cond_0
    :try_start_0
    new-instance p4, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {p4}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    goto :goto_0

    :goto_1
    if-eqz p5, :cond_1

    :goto_2
    move-object v6, p5

    goto :goto_3

    :cond_1
    const/4 p4, 0x0

    .line 549
    new-array p5, p4, [B

    goto :goto_2

    .line 550
    :goto_3
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-direct {p0}, Landroid/security/KeyStore;->getToken()Landroid/os/IBinder;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v7, p6

    invoke-interface/range {v0 .. v7}, Landroid/security/IKeystoreService;->begin(Landroid/os/IBinder;Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[BI)Landroid/security/keymaster/OperationResult;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "KeyStore"

    const-string p2, "Cannot connect to keystore"

    .line 552
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public cancelConfirmationPrompt(Landroid/os/IBinder;)I
    .locals 1

    .line 792
    :try_start_0
    iget-object p0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {p0, p1}, Landroid/security/IKeystoreService;->cancelConfirmationPrompt(Landroid/os/IBinder;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "KeyStore"

    const-string v0, "Cannot connect to keystore"

    .line 794
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x5

    return p0
.end method

.method public clearUid(I)Z
    .locals 3

    const/4 v0, 0x0

    .line 446
    :try_start_0
    iget-object p0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    int-to-long v1, p1

    invoke-interface {p0, v1, v2}, Landroid/security/IKeystoreService;->clear_uid(J)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    return p1

    :catch_0
    move-exception p0

    const-string p1, "KeyStore"

    const-string v1, "Cannot connect to keystore"

    .line 448
    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, -0x1

    .line 249
    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public contains(Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 241
    :try_start_0
    iget-object p0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {p0, p1, p2}, Landroid/security/IKeystoreService;->exist(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    return p1

    :catch_0
    move-exception p0

    const-string p1, "KeyStore"

    const-string p2, "Cannot connect to keystore"

    .line 243
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, -0x1

    .line 236
    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public delete(Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 227
    :try_start_0
    iget-object p0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {p0, p1, p2}, Landroid/security/IKeystoreService;->del(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p2, 0x7

    if-ne p0, p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :cond_1
    :goto_0
    return p1

    :catch_0
    move-exception p0

    const-string p1, "KeyStore"

    const-string p2, "Cannot connect to keystore"

    .line 230
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;)Landroid/security/keymaster/ExportResult;
    .locals 6

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 542
    invoke-virtual/range {v0 .. v5}, Landroid/security/KeyStore;->exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;I)Landroid/security/keymaster/ExportResult;

    move-result-object p0

    return-object p0
.end method

.method public exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;I)Landroid/security/keymaster/ExportResult;
    .locals 8

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    :goto_0
    move-object v5, p3

    goto :goto_1

    .line 532
    :cond_0
    :try_start_0
    new-instance p3, Landroid/security/keymaster/KeymasterBlob;

    new-array v1, v0, [B

    invoke-direct {p3, v1}, Landroid/security/keymaster/KeymasterBlob;-><init>([B)V

    goto :goto_0

    :goto_1
    if-eqz p4, :cond_1

    :goto_2
    move-object v6, p4

    goto :goto_3

    .line 533
    :cond_1
    new-instance p4, Landroid/security/keymaster/KeymasterBlob;

    new-array p3, v0, [B

    invoke-direct {p4, p3}, Landroid/security/keymaster/KeymasterBlob;-><init>([B)V

    goto :goto_2

    .line 534
    :goto_3
    iget-object v2, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    move-object v3, p1

    move v4, p2

    move v7, p5

    invoke-interface/range {v2 .. v7}, Landroid/security/IKeystoreService;->exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;I)Landroid/security/keymaster/ExportResult;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "KeyStore"

    const-string p2, "Cannot connect to keystore"

    .line 536
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;
    .locals 1

    const/4 v0, 0x0

    .line 589
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/security/KeyStore;->finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B)Landroid/security/keymaster/OperationResult;

    move-result-object p0

    return-object p0
.end method

.method public finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B)Landroid/security/keymaster/OperationResult;
    .locals 1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 578
    :cond_0
    :try_start_0
    new-instance p2, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {p2}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    :goto_0
    const/4 v0, 0x0

    if-eqz p4, :cond_1

    goto :goto_1

    .line 579
    :cond_1
    new-array p4, v0, [B

    :goto_1
    if-eqz p3, :cond_2

    goto :goto_2

    .line 580
    :cond_2
    new-array p3, v0, [B

    .line 581
    :goto_2
    iget-object p0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/security/IKeystoreService;->finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B)Landroid/security/keymaster/OperationResult;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "KeyStore"

    const-string p2, "Cannot connect to keystore"

    .line 583
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public generate(Ljava/lang/String;IIII[[B)Z
    .locals 8

    const/4 v0, 0x0

    .line 344
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    new-instance v7, Landroid/security/KeystoreArguments;

    invoke-direct {v7, p6}, Landroid/security/KeystoreArguments;-><init>([[B)V

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v7}, Landroid/security/IKeystoreService;->generate(Ljava/lang/String;IIIILandroid/security/KeystoreArguments;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    return p1

    :catch_0
    move-exception p0

    const-string p1, "KeyStore"

    const-string p2, "Cannot connect to keystore"

    .line 347
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 7

    if-eqz p3, :cond_0

    :goto_0
    move-object v3, p3

    goto :goto_1

    :cond_0
    const/4 p3, 0x0

    .line 469
    :try_start_0
    new-array p3, p3, [B

    goto :goto_0

    :goto_1
    if-eqz p2, :cond_1

    :goto_2
    move-object v2, p2

    goto :goto_3

    .line 470
    :cond_1
    new-instance p2, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {p2}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    goto :goto_2

    .line 471
    :goto_3
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    move-object v1, p1

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/security/IKeystoreService;->generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "KeyStore"

    const-string p2, "Cannot connect to keystore"

    .line 473
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x4

    return p0
.end method

.method public generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 7

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    .line 480
    invoke-virtual/range {v0 .. v6}, Landroid/security/KeyStore;->generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result p0

    return p0
.end method

.method public get(Ljava/lang/String;)[B
    .locals 1

    const/4 v0, -0x1

    .line 206
    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public get(Ljava/lang/String;I)[B
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string p1, ""

    .line 195
    :goto_0
    iget-object p0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {p0, p1, p2}, Landroid/security/IKeystoreService;->get(Ljava/lang/String;I)[B

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "KeyStore"

    const-string p2, "KeyStore exception"

    .line 200
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :catch_1
    move-exception p0

    const-string p1, "KeyStore"

    const-string p2, "Cannot connect to keystore"

    .line 197
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public getInvalidKeyException(Ljava/lang/String;II)Ljava/security/InvalidKeyException;
    .locals 0

    .line 937
    invoke-static {p3}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/security/KeyStore;->getInvalidKeyException(Ljava/lang/String;ILandroid/security/KeyStoreException;)Ljava/security/InvalidKeyException;

    move-result-object p0

    return-object p0
.end method

.method public getInvalidKeyException(Ljava/lang/String;ILandroid/security/KeyStoreException;)Ljava/security/InvalidKeyException;
    .locals 6

    .line 861
    invoke-virtual {p3}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 912
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "Keystore operation failed"

    invoke-direct {p0, p1, p3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0

    .line 910
    :pswitch_0
    new-instance p0, Landroid/security/keystore/KeyPermanentlyInvalidatedException;

    invoke-direct {p0}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;-><init>()V

    return-object p0

    .line 863
    :pswitch_1
    new-instance p0, Landroid/security/keystore/UserNotAuthenticatedException;

    invoke-direct {p0}, Landroid/security/keystore/UserNotAuthenticatedException;-><init>()V

    return-object p0

    .line 867
    :pswitch_2
    new-instance p0, Landroid/security/keystore/KeyNotYetValidException;

    invoke-direct {p0}, Landroid/security/keystore/KeyNotYetValidException;-><init>()V

    return-object p0

    .line 865
    :pswitch_3
    new-instance p0, Landroid/security/keystore/KeyExpiredException;

    invoke-direct {p0}, Landroid/security/keystore/KeyExpiredException;-><init>()V

    return-object p0

    .line 876
    :cond_0
    :pswitch_4
    new-instance p3, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {p3}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    .line 878
    invoke-virtual/range {v0 .. v5}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    .line 881
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p2, "Failed to obtained key characteristics"

    .line 883
    invoke-static {p1}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0

    :cond_1
    const p1, -0x5ffffe0a

    .line 886
    invoke-virtual {p3, p1}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedLongs(I)Ljava/util/List;

    move-result-object p1

    .line 887
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 889
    new-instance p0, Landroid/security/keystore/KeyPermanentlyInvalidatedException;

    invoke-direct {p0}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;-><init>()V

    return-object p0

    .line 891
    :cond_2
    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_3

    .line 892
    invoke-static {p2, p3}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 895
    new-instance p0, Landroid/security/keystore/UserNotAuthenticatedException;

    invoke-direct {p0}, Landroid/security/keystore/UserNotAuthenticatedException;-><init>()V

    return-object p0

    .line 898
    :cond_3
    invoke-direct {p0}, Landroid/security/KeyStore;->getFingerprintOnlySid()J

    move-result-wide p2

    cmp-long p0, p2, v0

    if-eqz p0, :cond_4

    .line 900
    invoke-static {p2, p3}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 903
    new-instance p0, Landroid/security/keystore/UserNotAuthenticatedException;

    invoke-direct {p0}, Landroid/security/keystore/UserNotAuthenticatedException;-><init>()V

    return-object p0

    .line 907
    :cond_4
    new-instance p0, Landroid/security/keystore/KeyPermanentlyInvalidatedException;

    invoke-direct {p0}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x1a
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 8

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :goto_0
    move-object v4, p2

    goto :goto_1

    .line 486
    :cond_0
    :try_start_0
    new-instance p2, Landroid/security/keymaster/KeymasterBlob;

    new-array v1, v0, [B

    invoke-direct {p2, v1}, Landroid/security/keymaster/KeymasterBlob;-><init>([B)V

    goto :goto_0

    :goto_1
    if-eqz p3, :cond_1

    :goto_2
    move-object v5, p3

    goto :goto_3

    .line 487
    :cond_1
    new-instance p3, Landroid/security/keymaster/KeymasterBlob;

    new-array p2, v0, [B

    invoke-direct {p3, p2}, Landroid/security/keymaster/KeymasterBlob;-><init>([B)V

    goto :goto_2

    .line 488
    :goto_3
    iget-object v2, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    move-object v3, p1

    move v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Landroid/security/IKeystoreService;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "KeyStore"

    const-string p2, "Cannot connect to keystore"

    .line 490
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x4

    return p0
.end method

.method public getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeyCharacteristics;)I
    .locals 6

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 497
    invoke-virtual/range {v0 .. v5}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    move-result p0

    return p0
.end method

.method public getLastError()I
    .locals 0

    .line 454
    iget p0, p0, Landroid/security/KeyStore;->mError:I

    return p0
.end method

.method public getmtime(Ljava/lang/String;)J
    .locals 1

    const/4 v0, -0x1

    .line 427
    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->getmtime(Ljava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getmtime(Ljava/lang/String;I)J
    .locals 2

    const-wide/16 v0, -0x1

    .line 414
    :try_start_0
    iget-object p0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {p0, p1, p2}, Landroid/security/IKeystoreService;->getmtime(Ljava/lang/String;I)J

    move-result-wide p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p2, p0, v0

    if-nez p2, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    return-wide p0

    :catch_0
    move-exception p0

    const-string p1, "KeyStore"

    const-string p2, "Cannot connect to keystore"

    .line 421
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v0
.end method

.method public grant(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 390
    :try_start_0
    iget-object p0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {p0, p1, p2}, Landroid/security/IKeystoreService;->grant(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string p1, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, p1, :cond_0

    return-object v0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "KeyStore"

    const-string p2, "Cannot connect to keystore"

    .line 394
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 8

    .line 503
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/security/IKeystoreService;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "KeyStore"

    const-string p2, "Cannot connect to keystore"

    .line 506
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x4

    return p0
.end method

.method public importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 8

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    move-object v7, p6

    .line 513
    invoke-virtual/range {v0 .. v7}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result p0

    return p0
.end method

.method public importKey(Ljava/lang/String;[BII)Z
    .locals 1

    const/4 v0, 0x0

    .line 354
    :try_start_0
    iget-object p0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/security/IKeystoreService;->import_key(Ljava/lang/String;[BII)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    return p1

    :catch_0
    move-exception p0

    const-string p1, "KeyStore"

    const-string p2, "Cannot connect to keystore"

    .line 356
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public importWrappedKey(Ljava/lang/String;[BLjava/lang/String;[BLandroid/security/keymaster/KeymasterArguments;JJILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 11

    move-object v0, p0

    .line 521
    :try_start_0
    iget-object v0, v0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v10, p11

    invoke-interface/range {v0 .. v10}, Landroid/security/IKeystoreService;->importWrappedKey(Ljava/lang/String;[BLjava/lang/String;[BLandroid/security/keymaster/KeymasterArguments;JJLandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    .line 524
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x4

    return v0
.end method

.method public insert(Ljava/lang/String;[BII)I
    .locals 0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 216
    :try_start_0
    new-array p2, p2, [B

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 218
    :cond_0
    :goto_0
    iget-object p0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/security/IKeystoreService;->insert(Ljava/lang/String;[BII)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_1
    const-string p1, "KeyStore"

    const-string p2, "Cannot connect to keystore"

    .line 220
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x4

    return p0
.end method

.method public isConfirmationPromptSupported()Z
    .locals 2

    .line 806
    :try_start_0
    iget-object p0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {p0}, Landroid/security/IKeystoreService;->isConfirmationPromptSupported()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "KeyStore"

    const-string v1, "Cannot connect to keystore"

    .line 808
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isEmpty()Z
    .locals 1

    .line 338
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->isEmpty(I)Z

    move-result p0

    return p0
.end method

.method public isEmpty(I)Z
    .locals 2

    const/4 v0, 0x0

    .line 330
    :try_start_0
    iget-object p0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {p0, p1}, Landroid/security/IKeystoreService;->isEmpty(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    const-string p1, "KeyStore"

    const-string v1, "Cannot connect to keystore"

    .line 332
    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public isHardwareBacked()Z
    .locals 1

    const-string v0, "RSA"

    .line 432
    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->isHardwareBacked(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isHardwareBacked(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 437
    :try_start_0
    iget-object p0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/security/IKeystoreService;->is_hardware_backed(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    return p1

    :catch_0
    move-exception p0

    const-string p1, "KeyStore"

    const-string v1, "Cannot connect to keystore"

    .line 439
    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public isOperationAuthorized(Landroid/os/IBinder;)Z
    .locals 1

    .line 609
    :try_start_0
    iget-object p0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {p0, p1}, Landroid/security/IKeystoreService;->isOperationAuthorized(Landroid/os/IBinder;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "KeyStore"

    const-string v0, "Cannot connect to keystore"

    .line 611
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isUnlocked()Z
    .locals 1

    .line 189
    invoke-virtual {p0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object p0

    sget-object v0, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public list(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    .line 268
    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public list(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 257
    :try_start_0
    iget-object p0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {p0, p1, p2}, Landroid/security/IKeystoreService;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "KeyStore"

    const-string p2, "KeyStore exception"

    .line 262
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :catch_1
    move-exception p0

    const-string p1, "KeyStore"

    const-string p2, "Cannot connect to keystore"

    .line 259
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public lock()Z
    .locals 1

    .line 296
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->lock(I)Z

    move-result p0

    return p0
.end method

.method public lock(I)Z
    .locals 2

    const/4 v0, 0x0

    .line 288
    :try_start_0
    iget-object p0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {p0, p1}, Landroid/security/IKeystoreService;->lock(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    return p1

    :catch_0
    move-exception p0

    const-string p1, "KeyStore"

    const-string v1, "Cannot connect to keystore"

    .line 290
    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public onDeviceOffBody()V
    .locals 2

    .line 741
    :try_start_0
    iget-object p0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {p0}, Landroid/security/IKeystoreService;->onDeviceOffBody()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "KeyStore"

    const-string v1, "Cannot connect to keystore"

    .line 743
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onUserAdded(I)V
    .locals 1

    const/4 v0, -0x1

    .line 674
    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->onUserAdded(II)V

    return-void
.end method

.method public onUserAdded(II)V
    .locals 0

    .line 662
    :try_start_0
    iget-object p0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {p0, p1, p2}, Landroid/security/IKeystoreService;->onUserAdded(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "KeyStore"

    const-string p2, "Cannot connect to keystore"

    .line 664
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onUserLockedStateChanged(IZ)V
    .locals 2

    .line 699
    :try_start_0
    iget-object p0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {p0, p2, p1}, Landroid/security/IKeystoreService;->onKeyguardVisibilityChanged(ZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p2, "KeyStore"

    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to update user locked state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onUserPasswordChanged(ILjava/lang/String;)Z
    .locals 1

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const/4 v0, 0x0

    .line 645
    :try_start_0
    iget-object p0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {p0, p1, p2}, Landroid/security/IKeystoreService;->onUserPasswordChanged(ILjava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    return p1

    :catch_0
    move-exception p0

    const-string p1, "KeyStore"

    const-string p2, "Cannot connect to keystore"

    .line 647
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public onUserPasswordChanged(Ljava/lang/String;)Z
    .locals 1

    .line 691
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/security/KeyStore;->onUserPasswordChanged(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onUserRemoved(I)V
    .locals 1

    .line 684
    :try_start_0
    iget-object p0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {p0, p1}, Landroid/security/IKeystoreService;->onUserRemoved(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "KeyStore"

    const-string v0, "Cannot connect to keystore"

    .line 686
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public presentConfirmationPrompt(Landroid/os/IBinder;Ljava/lang/String;[BLjava/lang/String;I)I
    .locals 6

    .line 775
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/security/IKeystoreService;->presentConfirmationPrompt(Landroid/os/IBinder;Ljava/lang/String;[BLjava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "KeyStore"

    const-string p2, "Cannot connect to keystore"

    .line 778
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x5

    return p0
.end method

.method public put(Ljava/lang/String;[BII)Z
    .locals 0

    .line 210
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/security/KeyStore;->insert(Ljava/lang/String;[BII)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public reset()Z
    .locals 3

    const/4 v0, 0x0

    .line 273
    :try_start_0
    iget-object p0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {p0}, Landroid/security/IKeystoreService;->reset()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    .line 275
    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public sign(Ljava/lang/String;[B)[B
    .locals 1

    const/4 v0, 0x0

    .line 363
    :try_start_0
    iget-object p0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {p0, p1, p2}, Landroid/security/IKeystoreService;->sign(Ljava/lang/String;[B)[B

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "KeyStore"

    const-string p2, "KeyStore exception"

    .line 368
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :catch_1
    move-exception p0

    const-string p1, "KeyStore"

    const-string p2, "Cannot connect to keystore"

    .line 365
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public state()Landroid/security/KeyStore$State;
    .locals 1

    .line 185
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object p0

    return-object p0
.end method

.method public state(I)Landroid/security/KeyStore$State;
    .locals 1

    .line 170
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1}, Landroid/security/IKeystoreService;->getState(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch p1, :pswitch_data_0

    .line 180
    new-instance p1, Ljava/lang/AssertionError;

    iget p0, p0, Landroid/security/KeyStore;->mError:I

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(I)V

    throw p1

    .line 179
    :pswitch_0
    sget-object p0, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    return-object p0

    .line 178
    :pswitch_1
    sget-object p0, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    return-object p0

    .line 177
    :pswitch_2
    sget-object p0, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "KeyStore"

    const-string v0, "Cannot connect to keystore"

    .line 172
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ungrant(Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 401
    :try_start_0
    iget-object p0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {p0, p1, p2}, Landroid/security/IKeystoreService;->ungrant(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    return p1

    :catch_0
    move-exception p0

    const-string p1, "KeyStore"

    const-string p2, "Cannot connect to keystore"

    .line 403
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public unlock(ILjava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string p2, ""

    .line 313
    :goto_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->unlock(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/security/KeyStore;->mError:I

    .line 314
    iget p0, p0, Landroid/security/KeyStore;->mError:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    return p1

    :catch_0
    move-exception p0

    const-string p1, "KeyStore"

    const-string p2, "Cannot connect to keystore"

    .line 316
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public unlock(Ljava/lang/String;)Z
    .locals 1

    .line 322
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/security/KeyStore;->unlock(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public update(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 566
    :cond_0
    :try_start_0
    new-instance p2, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {p2}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    :goto_0
    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    .line 567
    new-array p3, p3, [B

    .line 568
    :goto_1
    iget-object p0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {p0, p1, p2, p3}, Landroid/security/IKeystoreService;->update(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "KeyStore"

    const-string p2, "Cannot connect to keystore"

    .line 570
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public verify(Ljava/lang/String;[B[B)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    goto :goto_0

    .line 376
    :cond_0
    :try_start_0
    new-array p3, v0, [B

    .line 377
    :goto_0
    iget-object p0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {p0, p1, p2, p3}, Landroid/security/IKeystoreService;->verify(Ljava/lang/String;[B[B)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    return p1

    :catch_0
    move-exception p0

    const-string p1, "KeyStore"

    const-string p2, "KeyStore exception"

    .line 382
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    :catch_1
    move-exception p0

    const-string p1, "KeyStore"

    const-string p2, "Cannot connect to keystore"

    .line 379
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method
