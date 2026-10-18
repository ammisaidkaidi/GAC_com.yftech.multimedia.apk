.class public Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;
.super Ljava/lang/Object;
.source "CarouselLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CarouselSavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCenterItemPosition:I

.field private final mSuperState:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1019
    new-instance v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState$1;

    invoke-direct {v0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState$1;-><init>()V

    sput-object v0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 998
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 999
    const-class v0, Landroid/os/Parcelable;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;->mSuperState:Landroid/os/Parcelable;

    .line 1000
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;->mCenterItemPosition:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$1;)V
    .locals 0

    .line 989
    invoke-direct {p0, p1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1    # Landroid/os/Parcelable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 994
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 995
    iput-object p1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;->mSuperState:Landroid/os/Parcelable;

    return-void
.end method

.method protected constructor <init>(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;)V
    .locals 1
    .param p1    # Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1003
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1004
    iget-object v0, p1, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;->mSuperState:Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;->mSuperState:Landroid/os/Parcelable;

    .line 1005
    iget p1, p1, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;->mCenterItemPosition:I

    iput p1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;->mCenterItemPosition:I

    return-void
.end method

.method static synthetic access$200(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;)I
    .locals 0

    .line 989
    iget p0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;->mCenterItemPosition:I

    return p0
.end method

.method static synthetic access$202(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;I)I
    .locals 0

    .line 989
    iput p1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;->mCenterItemPosition:I

    return p1
.end method

.method static synthetic access$700(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;)Landroid/os/Parcelable;
    .locals 0

    .line 989
    iget-object p0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;->mSuperState:Landroid/os/Parcelable;

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1015
    iget-object v0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;->mSuperState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1016
    iget p0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$CarouselSavedState;->mCenterItemPosition:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
