.class Landroid/widget/CompoundButton$SavedState$1;
.super Ljava/lang/Object;
.source "CompoundButton.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CompoundButton$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/widget/CompoundButton$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/widget/CompoundButton$SavedState;
    .locals 1

    .line 541
    new-instance p0, Landroid/widget/CompoundButton$SavedState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CompoundButton$SavedState;-><init>(Landroid/os/Parcel;Landroid/widget/CompoundButton$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 538
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/widget/CompoundButton$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/widget/CompoundButton$SavedState;
    .locals 0

    .line 546
    new-array p0, p1, [Landroid/widget/CompoundButton$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 538
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton$SavedState$1;->newArray(I)[Landroid/widget/CompoundButton$SavedState;

    move-result-object p0

    return-object p0
.end method
