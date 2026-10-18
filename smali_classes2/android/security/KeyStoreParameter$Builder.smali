.class public final Landroid/security/KeyStoreParameter$Builder;
.super Ljava/lang/Object;
.source "KeyStoreParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/KeyStoreParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mFlags:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    return-void

    .line 113
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "context == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public build()Landroid/security/KeyStoreParameter;
    .locals 2

    .line 148
    new-instance v0, Landroid/security/KeyStoreParameter;

    iget p0, p0, Landroid/security/KeyStoreParameter$Builder;->mFlags:I

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreParameter;-><init>(ILandroid/security/KeyStoreParameter$1;)V

    return-object v0
.end method

.method public setEncryptionRequired(Z)Landroid/security/KeyStoreParameter$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 133
    iget p1, p0, Landroid/security/KeyStoreParameter$Builder;->mFlags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/security/KeyStoreParameter$Builder;->mFlags:I

    goto :goto_0

    .line 135
    :cond_0
    iget p1, p0, Landroid/security/KeyStoreParameter$Builder;->mFlags:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Landroid/security/KeyStoreParameter$Builder;->mFlags:I

    :goto_0
    return-object p0
.end method
