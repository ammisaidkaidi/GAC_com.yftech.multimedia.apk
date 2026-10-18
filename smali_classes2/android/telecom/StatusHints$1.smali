.class Landroid/telecom/StatusHints$1;
.super Ljava/lang/Object;
.source "StatusHints.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/StatusHints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telecom/StatusHints;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telecom/StatusHints;
    .locals 1

    .line 125
    new-instance p0, Landroid/telecom/StatusHints;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/telecom/StatusHints;-><init>(Landroid/os/Parcel;Landroid/telecom/StatusHints$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 123
    invoke-virtual {p0, p1}, Landroid/telecom/StatusHints$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/StatusHints;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/telecom/StatusHints;
    .locals 0

    .line 129
    new-array p0, p1, [Landroid/telecom/StatusHints;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 123
    invoke-virtual {p0, p1}, Landroid/telecom/StatusHints$1;->newArray(I)[Landroid/telecom/StatusHints;

    move-result-object p0

    return-object p0
.end method
