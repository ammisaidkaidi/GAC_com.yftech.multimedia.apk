.class public final Landroid/security/net/config/Domain;
.super Ljava/lang/Object;
.source "Domain.java"


# instance fields
.field public final hostname:Ljava/lang/String;

.field public final subdomainsIncluded:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 36
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    .line 37
    iput-boolean p2, p0, Landroid/security/net/config/Domain;->subdomainsIncluded:Z

    return-void

    .line 34
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Hostname must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 50
    :cond_0
    instance-of v1, p1, Landroid/security/net/config/Domain;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 53
    :cond_1
    check-cast p1, Landroid/security/net/config/Domain;

    .line 54
    iget-boolean v1, p1, Landroid/security/net/config/Domain;->subdomainsIncluded:Z

    iget-boolean v3, p0, Landroid/security/net/config/Domain;->subdomainsIncluded:Z

    if-ne v1, v3, :cond_2

    iget-object p1, p1, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    iget-object p0, p0, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    .line 55
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 42
    iget-object v0, p0, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-boolean p0, p0, Landroid/security/net/config/Domain;->subdomainsIncluded:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 p0, 0x4d5

    :goto_0
    xor-int/2addr p0, v0

    return p0
.end method
