.class Landroid/service/chooser/ChooserTarget$1;
.super Ljava/lang/Object;
.source "ChooserTarget.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/chooser/ChooserTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/chooser/ChooserTarget;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/chooser/ChooserTarget;
    .locals 0

    .line 209
    new-instance p0, Landroid/service/chooser/ChooserTarget;

    invoke-direct {p0, p1}, Landroid/service/chooser/ChooserTarget;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 206
    invoke-virtual {p0, p1}, Landroid/service/chooser/ChooserTarget$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/chooser/ChooserTarget;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/service/chooser/ChooserTarget;
    .locals 0

    .line 214
    new-array p0, p1, [Landroid/service/chooser/ChooserTarget;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 206
    invoke-virtual {p0, p1}, Landroid/service/chooser/ChooserTarget$1;->newArray(I)[Landroid/service/chooser/ChooserTarget;

    move-result-object p0

    return-object p0
.end method
