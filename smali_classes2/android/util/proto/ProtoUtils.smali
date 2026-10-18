.class public Landroid/util/proto/ProtoUtils;
.super Ljava/lang/Object;
.source "ProtoUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toAggStatsProto(Landroid/util/proto/ProtoOutputStream;JJJJ)V
    .locals 2

    .line 34
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p1

    const-wide v0, 0x10300000001L

    .line 35
    invoke-virtual {p0, v0, v1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide p3, 0x10300000002L

    .line 36
    invoke-virtual {p0, p3, p4, p5, p6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide p3, 0x10300000003L

    .line 37
    invoke-virtual {p0, p3, p4, p7, p8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 38
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public static toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V
    .locals 2

    .line 46
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p1

    const-wide v0, 0x10300000001L

    .line 47
    invoke-virtual {p0, v0, v1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide p3, 0x10300000002L

    .line 48
    invoke-virtual {p0, p3, p4, p5, p6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 49
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public static writeBitWiseFlagsToProtoEnum(Landroid/util/proto/ProtoOutputStream;JI[I[I)V
    .locals 3

    .line 58
    array-length v0, p5

    array-length v1, p4

    if-ne v0, v1, :cond_3

    .line 61
    array-length v0, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 64
    aget v2, p4, v1

    if-nez v2, :cond_0

    if-nez p3, :cond_0

    .line 65
    aget p3, p5, v1

    invoke-virtual {p0, p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void

    .line 68
    :cond_0
    aget v2, p4, v1

    and-int/2addr v2, p3

    if-eqz v2, :cond_1

    .line 69
    aget v2, p5, v1

    invoke-virtual {p0, p1, p2, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 59
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The length of origEnums must match protoEnums"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
