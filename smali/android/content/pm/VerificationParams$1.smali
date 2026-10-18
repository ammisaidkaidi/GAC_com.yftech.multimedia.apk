.class Landroid/content/pm/VerificationParams$1;
.super Ljava/lang/Object;
.source "VerificationParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/VerificationParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/pm/VerificationParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/VerificationParams;
    .locals 1

    .line 204
    new-instance p0, Landroid/content/pm/VerificationParams;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/pm/VerificationParams;-><init>(Landroid/os/Parcel;Landroid/content/pm/VerificationParams$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 202
    invoke-virtual {p0, p1}, Landroid/content/pm/VerificationParams$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/VerificationParams;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/content/pm/VerificationParams;
    .locals 0

    .line 208
    new-array p0, p1, [Landroid/content/pm/VerificationParams;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 202
    invoke-virtual {p0, p1}, Landroid/content/pm/VerificationParams$1;->newArray(I)[Landroid/content/pm/VerificationParams;

    move-result-object p0

    return-object p0
.end method
