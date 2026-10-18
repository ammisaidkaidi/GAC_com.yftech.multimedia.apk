.class Landroid/view/AppTransitionAnimationSpec$1;
.super Ljava/lang/Object;
.source "AppTransitionAnimationSpec.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AppTransitionAnimationSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/AppTransitionAnimationSpec;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/AppTransitionAnimationSpec;
    .locals 0

    .line 48
    new-instance p0, Landroid/view/AppTransitionAnimationSpec;

    invoke-direct {p0, p1}, Landroid/view/AppTransitionAnimationSpec;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Landroid/view/AppTransitionAnimationSpec$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/AppTransitionAnimationSpec;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/view/AppTransitionAnimationSpec;
    .locals 0

    .line 52
    new-array p0, p1, [Landroid/view/AppTransitionAnimationSpec;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Landroid/view/AppTransitionAnimationSpec$1;->newArray(I)[Landroid/view/AppTransitionAnimationSpec;

    move-result-object p0

    return-object p0
.end method
