.class Lcom/android/internal/backup/LocalTransportParameters;
.super Landroid/util/KeyValueSettingObserver;
.source "LocalTransportParameters.java"


# static fields
.field private static final KEY_FAKE_ENCRYPTION_FLAG:Ljava/lang/String; = "fake_encryption_flag"

.field private static final KEY_NON_INCREMENTAL_ONLY:Ljava/lang/String; = "non_incremental_only"

.field private static final SETTING:Ljava/lang/String; = "backup_local_transport_parameters"

.field private static final TAG:Ljava/lang/String; = "LocalTransportParams"


# instance fields
.field private mFakeEncryptionFlag:Z

.field private mIsNonIncrementalOnly:Z


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 1

    const-string v0, "backup_local_transport_parameters"

    .line 35
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/util/KeyValueSettingObserver;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public getSettingValue(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 0

    const-string p0, "backup_local_transport_parameters"

    .line 47
    invoke-static {p1, p0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method isFakeEncryptionFlag()Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/android/internal/backup/LocalTransportParameters;->mFakeEncryptionFlag:Z

    return p0
.end method

.method isNonIncrementalOnly()Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/android/internal/backup/LocalTransportParameters;->mIsNonIncrementalOnly:Z

    return p0
.end method

.method public update(Landroid/util/KeyValueListParser;)V
    .locals 2

    const-string v0, "fake_encryption_flag"

    const/4 v1, 0x0

    .line 51
    invoke-virtual {p1, v0, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/backup/LocalTransportParameters;->mFakeEncryptionFlag:Z

    const-string v0, "non_incremental_only"

    .line 52
    invoke-virtual {p1, v0, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/backup/LocalTransportParameters;->mIsNonIncrementalOnly:Z

    return-void
.end method
