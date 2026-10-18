.class Landroid/database/BulkCursorDescriptor$1;
.super Ljava/lang/Object;
.source "BulkCursorDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/BulkCursorDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/database/BulkCursorDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/database/BulkCursorDescriptor;
    .locals 0

    .line 33
    new-instance p0, Landroid/database/BulkCursorDescriptor;

    invoke-direct {p0}, Landroid/database/BulkCursorDescriptor;-><init>()V

    .line 34
    invoke-virtual {p0, p1}, Landroid/database/BulkCursorDescriptor;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Landroid/database/BulkCursorDescriptor$1;->createFromParcel(Landroid/os/Parcel;)Landroid/database/BulkCursorDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/database/BulkCursorDescriptor;
    .locals 0

    .line 40
    new-array p0, p1, [Landroid/database/BulkCursorDescriptor;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Landroid/database/BulkCursorDescriptor$1;->newArray(I)[Landroid/database/BulkCursorDescriptor;

    move-result-object p0

    return-object p0
.end method
