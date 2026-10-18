.class Landroid/print/PrintDocumentInfo$1;
.super Ljava/lang/Object;
.source "PrintDocumentInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintDocumentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/print/PrintDocumentInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintDocumentInfo;
    .locals 1

    .line 374
    new-instance p0, Landroid/print/PrintDocumentInfo;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/print/PrintDocumentInfo;-><init>(Landroid/os/Parcel;Landroid/print/PrintDocumentInfo$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 371
    invoke-virtual {p0, p1}, Landroid/print/PrintDocumentInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintDocumentInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/print/PrintDocumentInfo;
    .locals 0

    .line 379
    new-array p0, p1, [Landroid/print/PrintDocumentInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 371
    invoke-virtual {p0, p1}, Landroid/print/PrintDocumentInfo$1;->newArray(I)[Landroid/print/PrintDocumentInfo;

    move-result-object p0

    return-object p0
.end method
