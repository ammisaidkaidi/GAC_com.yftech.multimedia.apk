.class Landroid/security/keymaster/OperationResult$1;
.super Ljava/lang/Object;
.source "OperationResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keymaster/OperationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/security/keymaster/OperationResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/security/keymaster/OperationResult;
    .locals 0

    .line 40
    new-instance p0, Landroid/security/keymaster/OperationResult;

    invoke-direct {p0, p1}, Landroid/security/keymaster/OperationResult;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Landroid/security/keymaster/OperationResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/security/keymaster/OperationResult;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/security/keymaster/OperationResult;
    .locals 0

    .line 45
    new-array p0, p1, [Landroid/security/keymaster/OperationResult;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Landroid/security/keymaster/OperationResult$1;->newArray(I)[Landroid/security/keymaster/OperationResult;

    move-result-object p0

    return-object p0
.end method
