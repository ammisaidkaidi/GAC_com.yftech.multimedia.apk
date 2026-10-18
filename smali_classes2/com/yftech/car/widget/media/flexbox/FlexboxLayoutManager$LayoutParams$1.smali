.class Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutParams$1;
.super Ljava/lang/Object;
.source "FlexboxLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutParams;
    .locals 0

    .line 2852
    new-instance p0, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutParams;

    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutParams;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 2849
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutParams$1;->createFromParcel(Landroid/os/Parcel;)Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutParams;
    .locals 0

    .line 2857
    new-array p0, p1, [Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutParams;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 2849
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutParams$1;->newArray(I)[Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method
