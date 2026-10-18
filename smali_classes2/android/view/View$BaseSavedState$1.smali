.class Landroid/view/View$BaseSavedState$1;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View$BaseSavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroid/view/View$BaseSavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/View$BaseSavedState;
    .locals 0

    .line 26282
    new-instance p0, Landroid/view/View$BaseSavedState;

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/view/View$BaseSavedState;
    .locals 0

    .line 26287
    new-instance p0, Landroid/view/View$BaseSavedState;

    invoke-direct {p0, p1, p2}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 26279
    invoke-virtual {p0, p1}, Landroid/view/View$BaseSavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/View$BaseSavedState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 26279
    invoke-virtual {p0, p1, p2}, Landroid/view/View$BaseSavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/view/View$BaseSavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/view/View$BaseSavedState;
    .locals 0

    .line 26292
    new-array p0, p1, [Landroid/view/View$BaseSavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 26279
    invoke-virtual {p0, p1}, Landroid/view/View$BaseSavedState$1;->newArray(I)[Landroid/view/View$BaseSavedState;

    move-result-object p0

    return-object p0
.end method
