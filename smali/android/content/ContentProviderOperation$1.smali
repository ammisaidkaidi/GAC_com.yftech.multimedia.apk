.class Landroid/content/ContentProviderOperation$1;
.super Ljava/lang/Object;
.source "ContentProviderOperation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProviderOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/ContentProviderOperation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/ContentProviderOperation;
    .locals 1

    .line 458
    new-instance p0, Landroid/content/ContentProviderOperation;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/ContentProviderOperation;-><init>(Landroid/os/Parcel;Landroid/content/ContentProviderOperation$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 456
    invoke-virtual {p0, p1}, Landroid/content/ContentProviderOperation$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/ContentProviderOperation;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/content/ContentProviderOperation;
    .locals 0

    .line 462
    new-array p0, p1, [Landroid/content/ContentProviderOperation;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 456
    invoke-virtual {p0, p1}, Landroid/content/ContentProviderOperation$1;->newArray(I)[Landroid/content/ContentProviderOperation;

    move-result-object p0

    return-object p0
.end method
