.class Landroid/service/autofill/Dataset$DatasetFieldFilter$1;
.super Ljava/lang/Object;
.source "Dataset.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/Dataset$DatasetFieldFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/Dataset$DatasetFieldFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/Dataset$DatasetFieldFilter;
    .locals 1

    .line 579
    new-instance p0, Landroid/service/autofill/Dataset$DatasetFieldFilter;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/service/autofill/Dataset$DatasetFieldFilter;-><init>(Ljava/util/regex/Pattern;Landroid/service/autofill/Dataset$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 575
    invoke-virtual {p0, p1}, Landroid/service/autofill/Dataset$DatasetFieldFilter$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/Dataset$DatasetFieldFilter;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/service/autofill/Dataset$DatasetFieldFilter;
    .locals 0

    .line 584
    new-array p0, p1, [Landroid/service/autofill/Dataset$DatasetFieldFilter;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 575
    invoke-virtual {p0, p1}, Landroid/service/autofill/Dataset$DatasetFieldFilter$1;->newArray(I)[Landroid/service/autofill/Dataset$DatasetFieldFilter;

    move-result-object p0

    return-object p0
.end method
