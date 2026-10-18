.class public Landroid/location/LocationProvider;
.super Ljava/lang/Object;
.source "LocationProvider.java"


# static fields
.field public static final AVAILABLE:I = 0x2

.field public static final BAD_CHARS_REGEX:Ljava/lang/String; = "[^a-zA-Z0-9]"

.field public static final OUT_OF_SERVICE:I = 0x0

.field public static final TEMPORARILY_UNAVAILABLE:I = 0x1


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mProperties:Lcom/android/internal/location/ProviderProperties;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "[^a-zA-Z0-9]"

    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iput-object p1, p0, Landroid/location/LocationProvider;->mName:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    return-void

    .line 61
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "provider name contains illegal character: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static propertiesMeetCriteria(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Landroid/location/Criteria;)Z
    .locals 2

    const-string/jumbo v0, "passive"

    .line 87
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    return v0

    .line 97
    :cond_1
    invoke-virtual {p2}, Landroid/location/Criteria;->getAccuracy()I

    move-result p0

    if-eqz p0, :cond_2

    .line 98
    invoke-virtual {p2}, Landroid/location/Criteria;->getAccuracy()I

    move-result p0

    iget v1, p1, Lcom/android/internal/location/ProviderProperties;->mAccuracy:I

    if-ge p0, v1, :cond_2

    return v0

    .line 101
    :cond_2
    invoke-virtual {p2}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result p0

    if-eqz p0, :cond_3

    .line 102
    invoke-virtual {p2}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result p0

    iget v1, p1, Lcom/android/internal/location/ProviderProperties;->mPowerRequirement:I

    if-ge p0, v1, :cond_3

    return v0

    .line 105
    :cond_3
    invoke-virtual {p2}, Landroid/location/Criteria;->isAltitudeRequired()Z

    move-result p0

    if-eqz p0, :cond_4

    iget-boolean p0, p1, Lcom/android/internal/location/ProviderProperties;->mSupportsAltitude:Z

    if-nez p0, :cond_4

    return v0

    .line 108
    :cond_4
    invoke-virtual {p2}, Landroid/location/Criteria;->isSpeedRequired()Z

    move-result p0

    if-eqz p0, :cond_5

    iget-boolean p0, p1, Lcom/android/internal/location/ProviderProperties;->mSupportsSpeed:Z

    if-nez p0, :cond_5

    return v0

    .line 111
    :cond_5
    invoke-virtual {p2}, Landroid/location/Criteria;->isBearingRequired()Z

    move-result p0

    if-eqz p0, :cond_6

    iget-boolean p0, p1, Lcom/android/internal/location/ProviderProperties;->mSupportsBearing:Z

    if-nez p0, :cond_6

    return v0

    .line 114
    :cond_6
    invoke-virtual {p2}, Landroid/location/Criteria;->isCostAllowed()Z

    move-result p0

    if-nez p0, :cond_7

    iget-boolean p0, p1, Lcom/android/internal/location/ProviderProperties;->mHasMonetaryCost:Z

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getAccuracy()I
    .locals 0

    .line 203
    iget-object p0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget p0, p0, Lcom/android/internal/location/ProviderProperties;->mAccuracy:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Landroid/location/LocationProvider;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getPowerRequirement()I
    .locals 0

    .line 192
    iget-object p0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget p0, p0, Lcom/android/internal/location/ProviderProperties;->mPowerRequirement:I

    return p0
.end method

.method public hasMonetaryCost()Z
    .locals 0

    .line 152
    iget-object p0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget-boolean p0, p0, Lcom/android/internal/location/ProviderProperties;->mHasMonetaryCost:Z

    return p0
.end method

.method public meetsCriteria(Landroid/location/Criteria;)Z
    .locals 1

    .line 79
    iget-object v0, p0, Landroid/location/LocationProvider;->mName:Ljava/lang/String;

    iget-object p0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    invoke-static {v0, p0, p1}, Landroid/location/LocationProvider;->propertiesMeetCriteria(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Landroid/location/Criteria;)Z

    move-result p0

    return p0
.end method

.method public requiresCell()Z
    .locals 0

    .line 143
    iget-object p0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget-boolean p0, p0, Lcom/android/internal/location/ProviderProperties;->mRequiresCell:Z

    return p0
.end method

.method public requiresNetwork()Z
    .locals 0

    .line 125
    iget-object p0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget-boolean p0, p0, Lcom/android/internal/location/ProviderProperties;->mRequiresNetwork:Z

    return p0
.end method

.method public requiresSatellite()Z
    .locals 0

    .line 134
    iget-object p0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget-boolean p0, p0, Lcom/android/internal/location/ProviderProperties;->mRequiresSatellite:Z

    return p0
.end method

.method public supportsAltitude()Z
    .locals 0

    .line 162
    iget-object p0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget-boolean p0, p0, Lcom/android/internal/location/ProviderProperties;->mSupportsAltitude:Z

    return p0
.end method

.method public supportsBearing()Z
    .locals 0

    .line 182
    iget-object p0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget-boolean p0, p0, Lcom/android/internal/location/ProviderProperties;->mSupportsBearing:Z

    return p0
.end method

.method public supportsSpeed()Z
    .locals 0

    .line 172
    iget-object p0, p0, Landroid/location/LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    iget-boolean p0, p0, Lcom/android/internal/location/ProviderProperties;->mSupportsSpeed:Z

    return p0
.end method
