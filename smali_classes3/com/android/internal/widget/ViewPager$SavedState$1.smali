.class Lcom/android/internal/widget/ViewPager$SavedState$1;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ViewPager$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lcom/android/internal/widget/ViewPager$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/widget/ViewPager$SavedState;
    .locals 1

    .line 1233
    new-instance p0, Lcom/android/internal/widget/ViewPager$SavedState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ViewPager$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/android/internal/widget/ViewPager$SavedState;
    .locals 0

    .line 1228
    new-instance p0, Lcom/android/internal/widget/ViewPager$SavedState;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ViewPager$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1225
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/widget/ViewPager$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 1225
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/ViewPager$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/android/internal/widget/ViewPager$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/internal/widget/ViewPager$SavedState;
    .locals 0

    .line 1237
    new-array p0, p1, [Lcom/android/internal/widget/ViewPager$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1225
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager$SavedState$1;->newArray(I)[Lcom/android/internal/widget/ViewPager$SavedState;

    move-result-object p0

    return-object p0
.end method
