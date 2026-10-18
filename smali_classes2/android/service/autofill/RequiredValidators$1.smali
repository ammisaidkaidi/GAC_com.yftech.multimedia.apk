.class Landroid/service/autofill/RequiredValidators$1;
.super Ljava/lang/Object;
.source "RequiredValidators.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/RequiredValidators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/RequiredValidators;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/RequiredValidators;
    .locals 2

    .line 85
    new-instance p0, Landroid/service/autofill/RequiredValidators;

    const-class v0, Landroid/service/autofill/InternalValidator;

    const/4 v1, 0x0

    .line 86
    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, [Landroid/service/autofill/InternalValidator;

    invoke-direct {p0, p1}, Landroid/service/autofill/RequiredValidators;-><init>([Landroid/service/autofill/InternalValidator;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Landroid/service/autofill/RequiredValidators$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/RequiredValidators;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/service/autofill/RequiredValidators;
    .locals 0

    .line 91
    new-array p0, p1, [Landroid/service/autofill/RequiredValidators;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Landroid/service/autofill/RequiredValidators$1;->newArray(I)[Landroid/service/autofill/RequiredValidators;

    move-result-object p0

    return-object p0
.end method
