.class Landroid/content/pm/LabeledIntent$1;
.super Ljava/lang/Object;
.source "LabeledIntent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/LabeledIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/pm/LabeledIntent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/LabeledIntent;
    .locals 0

    .line 186
    new-instance p0, Landroid/content/pm/LabeledIntent;

    invoke-direct {p0, p1}, Landroid/content/pm/LabeledIntent;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 184
    invoke-virtual {p0, p1}, Landroid/content/pm/LabeledIntent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/LabeledIntent;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/content/pm/LabeledIntent;
    .locals 0

    .line 189
    new-array p0, p1, [Landroid/content/pm/LabeledIntent;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 184
    invoke-virtual {p0, p1}, Landroid/content/pm/LabeledIntent$1;->newArray(I)[Landroid/content/pm/LabeledIntent;

    move-result-object p0

    return-object p0
.end method
