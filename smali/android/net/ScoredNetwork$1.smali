.class Landroid/net/ScoredNetwork$1;
.super Ljava/lang/Object;
.source "ScoredNetwork.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ScoredNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/ScoredNetwork;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/ScoredNetwork;
    .locals 1

    .line 309
    new-instance p0, Landroid/net/ScoredNetwork;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/net/ScoredNetwork;-><init>(Landroid/os/Parcel;Landroid/net/ScoredNetwork$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 306
    invoke-virtual {p0, p1}, Landroid/net/ScoredNetwork$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/ScoredNetwork;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/ScoredNetwork;
    .locals 0

    .line 314
    new-array p0, p1, [Landroid/net/ScoredNetwork;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 306
    invoke-virtual {p0, p1}, Landroid/net/ScoredNetwork$1;->newArray(I)[Landroid/net/ScoredNetwork;

    move-result-object p0

    return-object p0
.end method
