.class Landroid/os/ShellCallback$1;
.super Ljava/lang/Object;
.source "ShellCallback.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ShellCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/ShellCallback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/ShellCallback;
    .locals 0

    .line 116
    new-instance p0, Landroid/os/ShellCallback;

    invoke-direct {p0, p1}, Landroid/os/ShellCallback;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 114
    invoke-virtual {p0, p1}, Landroid/os/ShellCallback$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/ShellCallback;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/os/ShellCallback;
    .locals 0

    .line 119
    new-array p0, p1, [Landroid/os/ShellCallback;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 114
    invoke-virtual {p0, p1}, Landroid/os/ShellCallback$1;->newArray(I)[Landroid/os/ShellCallback;

    move-result-object p0

    return-object p0
.end method
