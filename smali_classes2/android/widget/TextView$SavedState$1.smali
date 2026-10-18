.class Landroid/widget/TextView$SavedState$1;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/widget/TextView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/widget/TextView$SavedState;
    .locals 1

    .line 12276
    new-instance p0, Landroid/widget/TextView$SavedState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextView$SavedState;-><init>(Landroid/os/Parcel;Landroid/widget/TextView$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 12274
    invoke-virtual {p0, p1}, Landroid/widget/TextView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/widget/TextView$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/widget/TextView$SavedState;
    .locals 0

    .line 12280
    new-array p0, p1, [Landroid/widget/TextView$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 12274
    invoke-virtual {p0, p1}, Landroid/widget/TextView$SavedState$1;->newArray(I)[Landroid/widget/TextView$SavedState;

    move-result-object p0

    return-object p0
.end method
