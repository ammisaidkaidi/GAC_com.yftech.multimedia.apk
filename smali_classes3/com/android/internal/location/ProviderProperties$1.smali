.class Lcom/android/internal/location/ProviderProperties$1;
.super Ljava/lang/Object;
.source "ProviderProperties.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/ProviderProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/location/ProviderProperties;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/location/ProviderProperties;
    .locals 12

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v0

    .line 117
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-ne p0, v1, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v0

    .line 118
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-ne p0, v1, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v0

    .line 119
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-ne p0, v1, :cond_3

    move v6, v1

    goto :goto_3

    :cond_3
    move v6, v0

    .line 120
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-ne p0, v1, :cond_4

    move v7, v1

    goto :goto_4

    :cond_4
    move v7, v0

    .line 121
    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-ne p0, v1, :cond_5

    move v8, v1

    goto :goto_5

    :cond_5
    move v8, v0

    .line 122
    :goto_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-ne p0, v1, :cond_6

    move v9, v1

    goto :goto_6

    :cond_6
    move v9, v0

    .line 123
    :goto_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 125
    new-instance p0, Lcom/android/internal/location/ProviderProperties;

    move-object v2, p0

    invoke-direct/range {v2 .. v11}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/internal/location/ProviderProperties$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/location/ProviderProperties;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/internal/location/ProviderProperties;
    .locals 0

    .line 131
    new-array p0, p1, [Lcom/android/internal/location/ProviderProperties;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/internal/location/ProviderProperties$1;->newArray(I)[Lcom/android/internal/location/ProviderProperties;

    move-result-object p0

    return-object p0
.end method
