.class public Landroid/telephony/ims/stub/ImsUtImplBase;
.super Ljava/lang/Object;
.source "ImsUtImplBase.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private mServiceImpl:Lcom/android/ims/internal/IImsUt$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsUtImplBase$1;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase;->mServiceImpl:Lcom/android/ims/internal/IImsUt$Stub;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public getInterface()Lcom/android/ims/internal/IImsUt;
    .locals 0

    .line 345
    iget-object p0, p0, Landroid/telephony/ims/stub/ImsUtImplBase;->mServiceImpl:Lcom/android/ims/internal/IImsUt$Stub;

    return-object p0
.end method

.method public queryCLIP()I
    .locals 0

    .line 191
    invoke-virtual {p0}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryClip()I

    move-result p0

    return p0
.end method

.method public queryCLIR()I
    .locals 0

    .line 183
    invoke-virtual {p0}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryClir()I

    move-result p0

    return p0
.end method

.method public queryCOLP()I
    .locals 0

    .line 207
    invoke-virtual {p0}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryColp()I

    move-result p0

    return p0
.end method

.method public queryCOLR()I
    .locals 0

    .line 199
    invoke-virtual {p0}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryColr()I

    move-result p0

    return p0
.end method

.method public queryCallBarring(I)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public queryCallBarringForServiceClass(II)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public queryCallForward(ILjava/lang/String;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public queryCallWaiting()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public queryClip()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public queryClir()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public queryColp()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public queryColr()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public setListener(Landroid/telephony/ims/ImsUtListener;)V
    .locals 0

    return-void
.end method

.method public transact(Landroid/os/Bundle;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public updateCLIP(Z)I
    .locals 0

    .line 288
    invoke-virtual {p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateClip(Z)I

    move-result p0

    return p0
.end method

.method public updateCLIR(I)I
    .locals 0

    .line 280
    invoke-virtual {p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateClir(I)I

    move-result p0

    return p0
.end method

.method public updateCOLP(Z)I
    .locals 0

    .line 304
    invoke-virtual {p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateColp(Z)I

    move-result p0

    return p0
.end method

.method public updateCOLR(I)I
    .locals 0

    .line 296
    invoke-virtual {p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateColr(I)I

    move-result p0

    return p0
.end method

.method public updateCallBarring(II[Ljava/lang/String;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public updateCallBarringForServiceClass(II[Ljava/lang/String;I)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public updateCallForward(IILjava/lang/String;II)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateCallWaiting(ZI)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public updateClip(Z)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public updateClir(I)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public updateColp(Z)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public updateColr(I)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method
