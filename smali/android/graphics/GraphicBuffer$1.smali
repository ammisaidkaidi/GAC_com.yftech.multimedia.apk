.class Landroid/graphics/GraphicBuffer$1;
.super Ljava/lang/Object;
.source "GraphicBuffer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/GraphicBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/graphics/GraphicBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/graphics/GraphicBuffer;
    .locals 8

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 313
    invoke-static {p1}, Landroid/graphics/GraphicBuffer;->access$000(Landroid/os/Parcel;)J

    move-result-wide v5

    const-wide/16 p0, 0x0

    cmp-long p0, v5, p0

    if-eqz p0, :cond_0

    .line 315
    new-instance p0, Landroid/graphics/GraphicBuffer;

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/graphics/GraphicBuffer;-><init>(IIIIJLandroid/graphics/GraphicBuffer$1;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 307
    invoke-virtual {p0, p1}, Landroid/graphics/GraphicBuffer$1;->createFromParcel(Landroid/os/Parcel;)Landroid/graphics/GraphicBuffer;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/graphics/GraphicBuffer;
    .locals 0

    .line 321
    new-array p0, p1, [Landroid/graphics/GraphicBuffer;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 307
    invoke-virtual {p0, p1}, Landroid/graphics/GraphicBuffer$1;->newArray(I)[Landroid/graphics/GraphicBuffer;

    move-result-object p0

    return-object p0
.end method
