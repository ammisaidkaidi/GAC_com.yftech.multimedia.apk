.class Landroid/view/KeyboardShortcutInfo$1;
.super Ljava/lang/Object;
.source "KeyboardShortcutInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/KeyboardShortcutInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/KeyboardShortcutInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/KeyboardShortcutInfo;
    .locals 1

    .line 162
    new-instance p0, Landroid/view/KeyboardShortcutInfo;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/KeyboardShortcutInfo;-><init>(Landroid/os/Parcel;Landroid/view/KeyboardShortcutInfo$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 160
    invoke-virtual {p0, p1}, Landroid/view/KeyboardShortcutInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/KeyboardShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/view/KeyboardShortcutInfo;
    .locals 0

    .line 165
    new-array p0, p1, [Landroid/view/KeyboardShortcutInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 160
    invoke-virtual {p0, p1}, Landroid/view/KeyboardShortcutInfo$1;->newArray(I)[Landroid/view/KeyboardShortcutInfo;

    move-result-object p0

    return-object p0
.end method
