.class Landroid/hardware/radio/ProgramSelector$Identifier$1;
.super Ljava/lang/Object;
.source "ProgramSelector.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/ProgramSelector$Identifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/radio/ProgramSelector$Identifier;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/ProgramSelector$Identifier;
    .locals 1

    .line 638
    new-instance p0, Landroid/hardware/radio/ProgramSelector$Identifier;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/hardware/radio/ProgramSelector$Identifier;-><init>(Landroid/os/Parcel;Landroid/hardware/radio/ProgramSelector$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 636
    invoke-virtual {p0, p1}, Landroid/hardware/radio/ProgramSelector$Identifier$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/radio/ProgramSelector$Identifier;
    .locals 0

    .line 642
    new-array p0, p1, [Landroid/hardware/radio/ProgramSelector$Identifier;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 636
    invoke-virtual {p0, p1}, Landroid/hardware/radio/ProgramSelector$Identifier$1;->newArray(I)[Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object p0

    return-object p0
.end method
