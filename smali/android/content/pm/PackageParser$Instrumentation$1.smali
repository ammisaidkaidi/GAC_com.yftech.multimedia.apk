.class Landroid/content/pm/PackageParser$Instrumentation$1;
.super Ljava/lang/Object;
.source "PackageParser.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser$Instrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/pm/PackageParser$Instrumentation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7868
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/PackageParser$Instrumentation;
    .locals 1

    .line 7870
    new-instance p0, Landroid/content/pm/PackageParser$Instrumentation;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/pm/PackageParser$Instrumentation;-><init>(Landroid/os/Parcel;Landroid/content/pm/PackageParser$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 7868
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParser$Instrumentation$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/PackageParser$Instrumentation;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/content/pm/PackageParser$Instrumentation;
    .locals 0

    .line 7874
    new-array p0, p1, [Landroid/content/pm/PackageParser$Instrumentation;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 7868
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParser$Instrumentation$1;->newArray(I)[Landroid/content/pm/PackageParser$Instrumentation;

    move-result-object p0

    return-object p0
.end method
