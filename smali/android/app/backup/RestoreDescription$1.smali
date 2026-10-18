.class Landroid/app/backup/RestoreDescription$1;
.super Ljava/lang/Object;
.source "RestoreDescription.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/RestoreDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/backup/RestoreDescription;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/backup/RestoreDescription;
    .locals 1

    .line 95
    new-instance p0, Landroid/app/backup/RestoreDescription;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/backup/RestoreDescription;-><init>(Landroid/os/Parcel;Landroid/app/backup/RestoreDescription$1;)V

    const-string p1, "NO_MORE_PACKAGES"

    .line 96
    invoke-static {p0}, Landroid/app/backup/RestoreDescription;->access$100(Landroid/app/backup/RestoreDescription;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 97
    sget-object p0, Landroid/app/backup/RestoreDescription;->NO_MORE_PACKAGES:Landroid/app/backup/RestoreDescription;

    :cond_0
    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Landroid/app/backup/RestoreDescription$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/backup/RestoreDescription;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/app/backup/RestoreDescription;
    .locals 0

    .line 102
    new-array p0, p1, [Landroid/app/backup/RestoreDescription;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Landroid/app/backup/RestoreDescription$1;->newArray(I)[Landroid/app/backup/RestoreDescription;

    move-result-object p0

    return-object p0
.end method
