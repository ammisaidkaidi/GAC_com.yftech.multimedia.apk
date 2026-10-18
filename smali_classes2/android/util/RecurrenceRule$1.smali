.class Landroid/util/RecurrenceRule$1;
.super Ljava/lang/Object;
.source "RecurrenceRule.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/RecurrenceRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/util/RecurrenceRule;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/util/RecurrenceRule;
    .locals 1

    .line 143
    new-instance p0, Landroid/util/RecurrenceRule;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/util/RecurrenceRule;-><init>(Landroid/os/Parcel;Landroid/util/RecurrenceRule$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 140
    invoke-virtual {p0, p1}, Landroid/util/RecurrenceRule$1;->createFromParcel(Landroid/os/Parcel;)Landroid/util/RecurrenceRule;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/util/RecurrenceRule;
    .locals 0

    .line 148
    new-array p0, p1, [Landroid/util/RecurrenceRule;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 140
    invoke-virtual {p0, p1}, Landroid/util/RecurrenceRule$1;->newArray(I)[Landroid/util/RecurrenceRule;

    move-result-object p0

    return-object p0
.end method
