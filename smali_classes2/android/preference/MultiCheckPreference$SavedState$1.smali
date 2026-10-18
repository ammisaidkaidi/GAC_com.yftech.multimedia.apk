.class Landroid/preference/MultiCheckPreference$SavedState$1;
.super Ljava/lang/Object;
.source "MultiCheckPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/MultiCheckPreference$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/preference/MultiCheckPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/preference/MultiCheckPreference$SavedState;
    .locals 0

    .line 328
    new-instance p0, Landroid/preference/MultiCheckPreference$SavedState;

    invoke-direct {p0, p1}, Landroid/preference/MultiCheckPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 326
    invoke-virtual {p0, p1}, Landroid/preference/MultiCheckPreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/preference/MultiCheckPreference$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/preference/MultiCheckPreference$SavedState;
    .locals 0

    .line 332
    new-array p0, p1, [Landroid/preference/MultiCheckPreference$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 326
    invoke-virtual {p0, p1}, Landroid/preference/MultiCheckPreference$SavedState$1;->newArray(I)[Landroid/preference/MultiCheckPreference$SavedState;

    move-result-object p0

    return-object p0
.end method
