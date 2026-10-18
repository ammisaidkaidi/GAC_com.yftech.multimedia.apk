.class Landroid/preference/PreferenceScreen$SavedState$1;
.super Ljava/lang/Object;
.source "PreferenceScreen.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/PreferenceScreen$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/preference/PreferenceScreen$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/preference/PreferenceScreen$SavedState;
    .locals 0

    .line 310
    new-instance p0, Landroid/preference/PreferenceScreen$SavedState;

    invoke-direct {p0, p1}, Landroid/preference/PreferenceScreen$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 308
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceScreen$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/preference/PreferenceScreen$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/preference/PreferenceScreen$SavedState;
    .locals 0

    .line 314
    new-array p0, p1, [Landroid/preference/PreferenceScreen$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 308
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceScreen$SavedState$1;->newArray(I)[Landroid/preference/PreferenceScreen$SavedState;

    move-result-object p0

    return-object p0
.end method
