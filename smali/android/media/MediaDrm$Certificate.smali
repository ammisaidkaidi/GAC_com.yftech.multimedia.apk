.class public final Landroid/media/MediaDrm$Certificate;
.super Ljava/lang/Object;
.source "MediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Certificate"
.end annotation


# instance fields
.field private mCertificateData:[B

.field private mWrappedKey:[B


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()[B
    .locals 1

    .line 1536
    iget-object v0, p0, Landroid/media/MediaDrm$Certificate;->mCertificateData:[B

    if-eqz v0, :cond_0

    .line 1542
    iget-object p0, p0, Landroid/media/MediaDrm$Certificate;->mCertificateData:[B

    return-object p0

    .line 1540
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Cerfificate is not initialized"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getWrappedPrivateKey()[B
    .locals 1

    .line 1522
    iget-object v0, p0, Landroid/media/MediaDrm$Certificate;->mWrappedKey:[B

    if-eqz v0, :cond_0

    .line 1528
    iget-object p0, p0, Landroid/media/MediaDrm$Certificate;->mWrappedKey:[B

    return-object p0

    .line 1526
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Cerfificate is not initialized"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
