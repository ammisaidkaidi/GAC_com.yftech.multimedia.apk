.class Landroid/widget/ProgressBar$SavedState$1;
.super Ljava/lang/Object;
.source "ProgressBar.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ProgressBar$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/widget/ProgressBar$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1904
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/widget/ProgressBar$SavedState;
    .locals 1

    .line 1906
    new-instance p0, Landroid/widget/ProgressBar$SavedState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ProgressBar$SavedState;-><init>(Landroid/os/Parcel;Landroid/widget/ProgressBar$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1904
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/widget/ProgressBar$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/widget/ProgressBar$SavedState;
    .locals 0

    .line 1910
    new-array p0, p1, [Landroid/widget/ProgressBar$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1904
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar$SavedState$1;->newArray(I)[Landroid/widget/ProgressBar$SavedState;

    move-result-object p0

    return-object p0
.end method
