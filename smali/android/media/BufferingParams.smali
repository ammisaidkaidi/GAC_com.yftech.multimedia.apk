.class public final Landroid/media/BufferingParams;
.super Ljava/lang/Object;
.source "BufferingParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/BufferingParams$Builder;
    }
.end annotation


# static fields
.field private static final BUFFERING_NO_MARK:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/BufferingParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mInitialMarkMs:I

.field private mResumePlaybackMarkMs:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 170
    new-instance v0, Landroid/media/BufferingParams$1;

    invoke-direct {v0}, Landroid/media/BufferingParams$1;-><init>()V

    sput-object v0, Landroid/media/BufferingParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 72
    iput v0, p0, Landroid/media/BufferingParams;->mInitialMarkMs:I

    .line 74
    iput v0, p0, Landroid/media/BufferingParams;->mResumePlaybackMarkMs:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/BufferingParams$1;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Landroid/media/BufferingParams;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 72
    iput v0, p0, Landroid/media/BufferingParams;->mInitialMarkMs:I

    .line 74
    iput v0, p0, Landroid/media/BufferingParams;->mResumePlaybackMarkMs:I

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/BufferingParams;->mInitialMarkMs:I

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/media/BufferingParams;->mResumePlaybackMarkMs:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/BufferingParams$1;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Landroid/media/BufferingParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$000(Landroid/media/BufferingParams;)I
    .locals 0

    .line 68
    iget p0, p0, Landroid/media/BufferingParams;->mInitialMarkMs:I

    return p0
.end method

.method static synthetic access$002(Landroid/media/BufferingParams;I)I
    .locals 0

    .line 68
    iput p1, p0, Landroid/media/BufferingParams;->mInitialMarkMs:I

    return p1
.end method

.method static synthetic access$100(Landroid/media/BufferingParams;)I
    .locals 0

    .line 68
    iget p0, p0, Landroid/media/BufferingParams;->mResumePlaybackMarkMs:I

    return p0
.end method

.method static synthetic access$102(Landroid/media/BufferingParams;I)I
    .locals 0

    .line 68
    iput p1, p0, Landroid/media/BufferingParams;->mResumePlaybackMarkMs:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getInitialMarkMs()I
    .locals 0

    .line 84
    iget p0, p0, Landroid/media/BufferingParams;->mInitialMarkMs:I

    return p0
.end method

.method public getResumePlaybackMarkMs()I
    .locals 0

    .line 92
    iget p0, p0, Landroid/media/BufferingParams;->mResumePlaybackMarkMs:I

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 191
    iget p2, p0, Landroid/media/BufferingParams;->mInitialMarkMs:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget p0, p0, Landroid/media/BufferingParams;->mResumePlaybackMarkMs:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
