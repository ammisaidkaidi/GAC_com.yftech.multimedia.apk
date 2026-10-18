.class Landroid/security/keymaster/KeyCharacteristics$1;
.super Ljava/lang/Object;
.source "KeyCharacteristics.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keymaster/KeyCharacteristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/security/keymaster/KeyCharacteristics;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/security/keymaster/KeyCharacteristics;
    .locals 0

    .line 38
    new-instance p0, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {p0, p1}, Landroid/security/keymaster/KeyCharacteristics;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Landroid/security/keymaster/KeyCharacteristics$1;->createFromParcel(Landroid/os/Parcel;)Landroid/security/keymaster/KeyCharacteristics;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/security/keymaster/KeyCharacteristics;
    .locals 0

    .line 43
    new-array p0, p1, [Landroid/security/keymaster/KeyCharacteristics;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Landroid/security/keymaster/KeyCharacteristics$1;->newArray(I)[Landroid/security/keymaster/KeyCharacteristics;

    move-result-object p0

    return-object p0
.end method
