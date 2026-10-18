.class Landroid/app/FragmentState$1;
.super Ljava/lang/Object;
.source "FragmentState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/FragmentState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/FragmentState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/FragmentState;
    .locals 0

    .line 129
    new-instance p0, Landroid/app/FragmentState;

    invoke-direct {p0, p1}, Landroid/app/FragmentState;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Landroid/app/FragmentState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/FragmentState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/app/FragmentState;
    .locals 0

    .line 134
    new-array p0, p1, [Landroid/app/FragmentState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 126
    invoke-virtual {p0, p1}, Landroid/app/FragmentState$1;->newArray(I)[Landroid/app/FragmentState;

    move-result-object p0

    return-object p0
.end method
