.class Landroid/print/PrinterCapabilitiesInfo$1;
.super Ljava/lang/Object;
.source "PrinterCapabilitiesInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrinterCapabilitiesInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/print/PrinterCapabilitiesInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/print/PrinterCapabilitiesInfo;
    .locals 1

    .line 653
    new-instance p0, Landroid/print/PrinterCapabilitiesInfo;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/print/PrinterCapabilitiesInfo;-><init>(Landroid/os/Parcel;Landroid/print/PrinterCapabilitiesInfo$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 650
    invoke-virtual {p0, p1}, Landroid/print/PrinterCapabilitiesInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrinterCapabilitiesInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/print/PrinterCapabilitiesInfo;
    .locals 0

    .line 658
    new-array p0, p1, [Landroid/print/PrinterCapabilitiesInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 650
    invoke-virtual {p0, p1}, Landroid/print/PrinterCapabilitiesInfo$1;->newArray(I)[Landroid/print/PrinterCapabilitiesInfo;

    move-result-object p0

    return-object p0
.end method
