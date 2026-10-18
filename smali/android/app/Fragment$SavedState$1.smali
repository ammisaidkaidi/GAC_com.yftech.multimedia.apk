.class Landroid/app/Fragment$SavedState$1;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Fragment$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroid/app/Fragment$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/Fragment$SavedState;
    .locals 1

    .line 453
    new-instance p0, Landroid/app/Fragment$SavedState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/Fragment$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/app/Fragment$SavedState;
    .locals 0

    .line 457
    new-instance p0, Landroid/app/Fragment$SavedState;

    invoke-direct {p0, p1, p2}, Landroid/app/Fragment$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 451
    invoke-virtual {p0, p1}, Landroid/app/Fragment$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/Fragment$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 451
    invoke-virtual {p0, p1, p2}, Landroid/app/Fragment$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/app/Fragment$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/app/Fragment$SavedState;
    .locals 0

    .line 461
    new-array p0, p1, [Landroid/app/Fragment$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 451
    invoke-virtual {p0, p1}, Landroid/app/Fragment$SavedState$1;->newArray(I)[Landroid/app/Fragment$SavedState;

    move-result-object p0

    return-object p0
.end method
