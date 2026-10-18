.class Landroid/widget/Spinner$SavedState$1;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Spinner$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/widget/Spinner$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/widget/Spinner$SavedState;
    .locals 1

    .line 937
    new-instance p0, Landroid/widget/Spinner$SavedState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Spinner$SavedState;-><init>(Landroid/os/Parcel;Landroid/widget/Spinner$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 935
    invoke-virtual {p0, p1}, Landroid/widget/Spinner$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/widget/Spinner$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/widget/Spinner$SavedState;
    .locals 0

    .line 941
    new-array p0, p1, [Landroid/widget/Spinner$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 935
    invoke-virtual {p0, p1}, Landroid/widget/Spinner$SavedState$1;->newArray(I)[Landroid/widget/Spinner$SavedState;

    move-result-object p0

    return-object p0
.end method
