.class Landroid/content/Intent$1;
.super Ljava/lang/Object;
.source "Intent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/Intent;
    .locals 0

    .line 9995
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 9993
    invoke-virtual {p0, p1}, Landroid/content/Intent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/content/Intent;
    .locals 0

    .line 9998
    new-array p0, p1, [Landroid/content/Intent;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 9993
    invoke-virtual {p0, p1}, Landroid/content/Intent$1;->newArray(I)[Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method
