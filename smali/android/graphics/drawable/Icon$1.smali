.class Landroid/graphics/drawable/Icon$1;
.super Ljava/lang/Object;
.source "Icon.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/Icon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/graphics/drawable/Icon;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 833
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/graphics/drawable/Icon;
    .locals 1

    .line 835
    new-instance p0, Landroid/graphics/drawable/Icon;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/graphics/drawable/Icon;-><init>(Landroid/os/Parcel;Landroid/graphics/drawable/Icon$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 833
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon$1;->createFromParcel(Landroid/os/Parcel;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/graphics/drawable/Icon;
    .locals 0

    .line 839
    new-array p0, p1, [Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 833
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon$1;->newArray(I)[Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0
.end method
