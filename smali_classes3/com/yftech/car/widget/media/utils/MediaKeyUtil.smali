.class public Lcom/yftech/car/widget/media/utils/MediaKeyUtil;
.super Ljava/lang/Object;
.source "MediaKeyUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInputKeyValue(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x25

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 57
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "seek dec"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "seek inc"

    return-object p0

    :cond_0
    const-string p0, "PLAY pause"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getVideoKeyValue(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 43
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "prev"

    return-object p0

    :pswitch_1
    const-string p0, "next"

    return-object p0

    :pswitch_2
    const-string p0, "play pause switch"

    return-object p0

    :pswitch_3
    const-string p0, "pause"

    return-object p0

    :pswitch_4
    const-string p0, "play"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
