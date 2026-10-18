.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableRggbChannelVector$MarshalerRggbChannelVector;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MarshalQueryableRggbChannelVector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryableRggbChannelVector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalerRggbChannelVector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler<",
        "Landroid/hardware/camera2/params/RggbChannelVector;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableRggbChannelVector;


# direct methods
.method protected constructor <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableRggbChannelVector;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "Landroid/hardware/camera2/params/RggbChannelVector;",
            ">;I)V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRggbChannelVector$MarshalerRggbChannelVector;->this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableRggbChannelVector;

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    return-void
.end method


# virtual methods
.method public getNativeSize()I
    .locals 0

    const/16 p0, 0x10

    return p0
.end method

.method public marshal(Landroid/hardware/camera2/params/RggbChannelVector;Ljava/nio/ByteBuffer;)V
    .locals 1

    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x4

    if-ge p0, v0, :cond_0

    .line 43
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/params/RggbChannelVector;->getComponent(I)F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 34
    check-cast p1, Landroid/hardware/camera2/params/RggbChannelVector;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRggbChannelVector$MarshalerRggbChannelVector;->marshal(Landroid/hardware/camera2/params/RggbChannelVector;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Landroid/hardware/camera2/params/RggbChannelVector;
    .locals 3

    .line 49
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p0

    .line 50
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v0

    .line 51
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    .line 52
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p1

    .line 54
    new-instance v2, Landroid/hardware/camera2/params/RggbChannelVector;

    invoke-direct {v2, p0, v0, v1, p1}, Landroid/hardware/camera2/params/RggbChannelVector;-><init>(FFFF)V

    return-object v2
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableRggbChannelVector$MarshalerRggbChannelVector;->unmarshal(Ljava/nio/ByteBuffer;)Landroid/hardware/camera2/params/RggbChannelVector;

    move-result-object p0

    return-object p0
.end method
