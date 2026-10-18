.class final Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState$1;
.super Ljava/lang/Object;
.source "CarouselLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;
    .locals 1

    .line 1023
    new-instance p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;-><init>(Landroid/os/Parcel;Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1020
    invoke-virtual {p0, p1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;
    .locals 0

    .line 1028
    new-array p0, p1, [Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1020
    invoke-virtual {p0, p1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState$1;->newArray(I)[Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;

    move-result-object p0

    return-object p0
.end method
