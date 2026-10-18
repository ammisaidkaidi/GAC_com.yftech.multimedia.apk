.class Lcom/android/internal/widget/ResolverDrawerLayout$SavedState$1;
.super Ljava/lang/Object;
.source "ResolverDrawerLayout.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 998
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;
    .locals 1

    .line 1001
    new-instance p0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;-><init>(Landroid/os/Parcel;Lcom/android/internal/widget/ResolverDrawerLayout$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 998
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;
    .locals 0

    .line 1006
    new-array p0, p1, [Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 998
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState$1;->newArray(I)[Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;

    move-result-object p0

    return-object p0
.end method
