.class Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SavedState$1;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SavedState;
    .locals 1

    .line 12766
    new-instance p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SavedState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SavedState;
    .locals 0

    .line 12761
    new-instance p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SavedState;

    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 12758
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 12758
    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SavedState;
    .locals 0

    .line 12771
    new-array p0, p1, [Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 12758
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SavedState$1;->newArray(I)[Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$SavedState;

    move-result-object p0

    return-object p0
.end method
