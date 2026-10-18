.class Landroid/view/WindowInfo$1;
.super Ljava/lang/Object;
.source "WindowInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/WindowInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/WindowInfo;
    .locals 0

    .line 176
    invoke-static {}, Landroid/view/WindowInfo;->obtain()Landroid/view/WindowInfo;

    move-result-object p0

    .line 177
    invoke-static {p0, p1}, Landroid/view/WindowInfo;->access$000(Landroid/view/WindowInfo;Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 173
    invoke-virtual {p0, p1}, Landroid/view/WindowInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/WindowInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/view/WindowInfo;
    .locals 0

    .line 183
    new-array p0, p1, [Landroid/view/WindowInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 173
    invoke-virtual {p0, p1}, Landroid/view/WindowInfo$1;->newArray(I)[Landroid/view/WindowInfo;

    move-result-object p0

    return-object p0
.end method
