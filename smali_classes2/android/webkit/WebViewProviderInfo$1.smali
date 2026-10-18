.class Landroid/webkit/WebViewProviderInfo$1;
.super Ljava/lang/Object;
.source "WebViewProviderInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewProviderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/webkit/WebViewProviderInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/webkit/WebViewProviderInfo;
    .locals 1

    .line 51
    new-instance p0, Landroid/webkit/WebViewProviderInfo;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebViewProviderInfo;-><init>(Landroid/os/Parcel;Landroid/webkit/WebViewProviderInfo$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Landroid/webkit/WebViewProviderInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/webkit/WebViewProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/webkit/WebViewProviderInfo;
    .locals 0

    .line 55
    new-array p0, p1, [Landroid/webkit/WebViewProviderInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Landroid/webkit/WebViewProviderInfo$1;->newArray(I)[Landroid/webkit/WebViewProviderInfo;

    move-result-object p0

    return-object p0
.end method
