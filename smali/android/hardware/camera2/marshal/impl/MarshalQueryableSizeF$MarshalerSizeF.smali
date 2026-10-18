.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableSizeF$MarshalerSizeF;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MarshalQueryableSizeF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryableSizeF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalerSizeF"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler<",
        "Landroid/util/SizeF;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableSizeF;


# direct methods
.method protected constructor <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableSizeF;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "Landroid/util/SizeF;",
            ">;I)V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableSizeF$MarshalerSizeF;->this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableSizeF;

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    return-void
.end method


# virtual methods
.method public getNativeSize()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public marshal(Landroid/util/SizeF;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 43
    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result p0

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 44
    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result p0

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 35
    check-cast p1, Landroid/util/SizeF;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableSizeF$MarshalerSizeF;->marshal(Landroid/util/SizeF;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Landroid/util/SizeF;
    .locals 1

    .line 49
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p0

    .line 50
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p1

    .line 52
    new-instance v0, Landroid/util/SizeF;

    invoke-direct {v0, p0, p1}, Landroid/util/SizeF;-><init>(FF)V

    return-object v0
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableSizeF$MarshalerSizeF;->unmarshal(Ljava/nio/ByteBuffer;)Landroid/util/SizeF;

    move-result-object p0

    return-object p0
.end method
