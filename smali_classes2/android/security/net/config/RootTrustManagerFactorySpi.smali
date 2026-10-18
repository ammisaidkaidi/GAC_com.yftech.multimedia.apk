.class public Landroid/security/net/config/RootTrustManagerFactorySpi;
.super Ljavax/net/ssl/TrustManagerFactorySpi;
.source "RootTrustManagerFactorySpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/net/config/RootTrustManagerFactorySpi$ApplicationConfigParameters;
    }
.end annotation


# instance fields
.field private mApplicationConfig:Landroid/security/net/config/ApplicationConfig;

.field private mConfig:Landroid/security/net/config/NetworkSecurityConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljavax/net/ssl/TrustManagerFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGetTrustManagers()[Ljavax/net/ssl/TrustManager;
    .locals 2

    .line 62
    iget-object v0, p0, Landroid/security/net/config/RootTrustManagerFactorySpi;->mApplicationConfig:Landroid/security/net/config/ApplicationConfig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 65
    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    iget-object p0, p0, Landroid/security/net/config/RootTrustManagerFactorySpi;->mApplicationConfig:Landroid/security/net/config/ApplicationConfig;

    invoke-virtual {p0}, Landroid/security/net/config/ApplicationConfig;->getTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object p0

    aput-object p0, v0, v1

    return-object v0

    .line 63
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "TrustManagerFactory not initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineInit(Ljava/security/KeyStore;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 54
    new-instance v0, Landroid/security/net/config/ApplicationConfig;

    new-instance v1, Landroid/security/net/config/KeyStoreConfigSource;

    invoke-direct {v1, p1}, Landroid/security/net/config/KeyStoreConfigSource;-><init>(Ljava/security/KeyStore;)V

    invoke-direct {v0, v1}, Landroid/security/net/config/ApplicationConfig;-><init>(Landroid/security/net/config/ConfigSource;)V

    iput-object v0, p0, Landroid/security/net/config/RootTrustManagerFactorySpi;->mApplicationConfig:Landroid/security/net/config/ApplicationConfig;

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {}, Landroid/security/net/config/ApplicationConfig;->getDefaultInstance()Landroid/security/net/config/ApplicationConfig;

    move-result-object p1

    iput-object p1, p0, Landroid/security/net/config/RootTrustManagerFactorySpi;->mApplicationConfig:Landroid/security/net/config/ApplicationConfig;

    :goto_0
    return-void
.end method

.method public engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 43
    instance-of v0, p1, Landroid/security/net/config/RootTrustManagerFactorySpi$ApplicationConfigParameters;

    if-eqz v0, :cond_0

    .line 48
    check-cast p1, Landroid/security/net/config/RootTrustManagerFactorySpi$ApplicationConfigParameters;

    iget-object p1, p1, Landroid/security/net/config/RootTrustManagerFactorySpi$ApplicationConfigParameters;->config:Landroid/security/net/config/ApplicationConfig;

    iput-object p1, p0, Landroid/security/net/config/RootTrustManagerFactorySpi;->mApplicationConfig:Landroid/security/net/config/ApplicationConfig;

    return-void

    .line 44
    :cond_0
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported spec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Only "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p1, Landroid/security/net/config/RootTrustManagerFactorySpi$ApplicationConfigParameters;

    .line 45
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " supported"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
