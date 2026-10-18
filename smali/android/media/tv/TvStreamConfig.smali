.class public Landroid/media/tv/TvStreamConfig;
.super Ljava/lang/Object;
.source "TvStreamConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvStreamConfig$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/TvStreamConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final STREAM_TYPE_BUFFER_PRODUCER:I = 0x2

.field public static final STREAM_TYPE_INDEPENDENT_VIDEO_SOURCE:I = 0x1

.field static final TAG:Ljava/lang/String; = "TvStreamConfig"


# instance fields
.field private mGeneration:I

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mStreamId:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Landroid/media/tv/TvStreamConfig$1;

    invoke-direct {v0}, Landroid/media/tv/TvStreamConfig$1;-><init>()V

    sput-object v0, Landroid/media/tv/TvStreamConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/TvStreamConfig$1;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/media/tv/TvStreamConfig;-><init>()V

    return-void
.end method

.method static synthetic access$102(Landroid/media/tv/TvStreamConfig;I)I
    .locals 0

    .line 28
    iput p1, p0, Landroid/media/tv/TvStreamConfig;->mStreamId:I

    return p1
.end method

.method static synthetic access$202(Landroid/media/tv/TvStreamConfig;I)I
    .locals 0

    .line 28
    iput p1, p0, Landroid/media/tv/TvStreamConfig;->mType:I

    return p1
.end method

.method static synthetic access$302(Landroid/media/tv/TvStreamConfig;I)I
    .locals 0

    .line 28
    iput p1, p0, Landroid/media/tv/TvStreamConfig;->mMaxWidth:I

    return p1
.end method

.method static synthetic access$402(Landroid/media/tv/TvStreamConfig;I)I
    .locals 0

    .line 28
    iput p1, p0, Landroid/media/tv/TvStreamConfig;->mMaxHeight:I

    return p1
.end method

.method static synthetic access$502(Landroid/media/tv/TvStreamConfig;I)I
    .locals 0

    .line 28
    iput p1, p0, Landroid/media/tv/TvStreamConfig;->mGeneration:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 173
    :cond_0
    instance-of v1, p1, Landroid/media/tv/TvStreamConfig;

    if-nez v1, :cond_1

    return v0

    .line 175
    :cond_1
    check-cast p1, Landroid/media/tv/TvStreamConfig;

    .line 176
    iget v1, p1, Landroid/media/tv/TvStreamConfig;->mGeneration:I

    iget v2, p0, Landroid/media/tv/TvStreamConfig;->mGeneration:I

    if-ne v1, v2, :cond_2

    iget v1, p1, Landroid/media/tv/TvStreamConfig;->mStreamId:I

    iget v2, p0, Landroid/media/tv/TvStreamConfig;->mStreamId:I

    if-ne v1, v2, :cond_2

    iget v1, p1, Landroid/media/tv/TvStreamConfig;->mType:I

    iget v2, p0, Landroid/media/tv/TvStreamConfig;->mType:I

    if-ne v1, v2, :cond_2

    iget v1, p1, Landroid/media/tv/TvStreamConfig;->mMaxWidth:I

    iget v2, p0, Landroid/media/tv/TvStreamConfig;->mMaxWidth:I

    if-ne v1, v2, :cond_2

    iget p1, p1, Landroid/media/tv/TvStreamConfig;->mMaxHeight:I

    iget p0, p0, Landroid/media/tv/TvStreamConfig;->mMaxHeight:I

    if-ne p1, p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getGeneration()I
    .locals 0

    .line 87
    iget p0, p0, Landroid/media/tv/TvStreamConfig;->mGeneration:I

    return p0
.end method

.method public getMaxHeight()I
    .locals 0

    .line 83
    iget p0, p0, Landroid/media/tv/TvStreamConfig;->mMaxHeight:I

    return p0
.end method

.method public getMaxWidth()I
    .locals 0

    .line 79
    iget p0, p0, Landroid/media/tv/TvStreamConfig;->mMaxWidth:I

    return p0
.end method

.method public getStreamId()I
    .locals 0

    .line 71
    iget p0, p0, Landroid/media/tv/TvStreamConfig;->mStreamId:I

    return p0
.end method

.method public getType()I
    .locals 0

    .line 75
    iget p0, p0, Landroid/media/tv/TvStreamConfig;->mType:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 167
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TvStreamConfig {mStreamId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/tv/TvStreamConfig;->mStreamId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/tv/TvStreamConfig;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";mGeneration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/media/tv/TvStreamConfig;->mGeneration:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 104
    iget p2, p0, Landroid/media/tv/TvStreamConfig;->mStreamId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget p2, p0, Landroid/media/tv/TvStreamConfig;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget p2, p0, Landroid/media/tv/TvStreamConfig;->mMaxWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget p2, p0, Landroid/media/tv/TvStreamConfig;->mMaxHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget p0, p0, Landroid/media/tv/TvStreamConfig;->mGeneration:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
