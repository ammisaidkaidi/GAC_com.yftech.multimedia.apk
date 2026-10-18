.class Landroid/app/BackStackState$1;
.super Ljava/lang/Object;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/BackStackState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/BackStackState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/BackStackState;
    .locals 0

    .line 161
    new-instance p0, Landroid/app/BackStackState;

    invoke-direct {p0, p1}, Landroid/app/BackStackState;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 159
    invoke-virtual {p0, p1}, Landroid/app/BackStackState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/BackStackState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/app/BackStackState;
    .locals 0

    .line 165
    new-array p0, p1, [Landroid/app/BackStackState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 159
    invoke-virtual {p0, p1}, Landroid/app/BackStackState$1;->newArray(I)[Landroid/app/BackStackState;

    move-result-object p0

    return-object p0
.end method
