.class Landroid/widget/AbsListView$SavedState$1;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/widget/AbsListView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1770
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/widget/AbsListView$SavedState;
    .locals 1

    .line 1773
    new-instance p0, Landroid/widget/AbsListView$SavedState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AbsListView$SavedState;-><init>(Landroid/os/Parcel;Landroid/widget/AbsListView$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1770
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/widget/AbsListView$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/widget/AbsListView$SavedState;
    .locals 0

    .line 1778
    new-array p0, p1, [Landroid/widget/AbsListView$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1770
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView$SavedState$1;->newArray(I)[Landroid/widget/AbsListView$SavedState;

    move-result-object p0

    return-object p0
.end method
