.class Landroid/webkit/LegacyErrorStrings;
.super Ljava/lang/Object;
.source "LegacyErrorStrings.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "Http"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getResource(I)I
    .locals 4

    const v0, 0x1040270

    packed-switch p0, :pswitch_data_0

    const-string v1, "Http"

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using generic message for unknown error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_0
    const p0, 0x1040278

    return p0

    :pswitch_1
    return v0

    :pswitch_2
    const p0, 0x1040277

    return p0

    :pswitch_3
    const p0, 0x104027d

    return p0

    :pswitch_4
    const p0, 0x1040271

    return p0

    :pswitch_5
    const p0, 0x1040279

    return p0

    :pswitch_6
    const p0, 0x1040272

    return p0

    :pswitch_7
    const p0, 0x1040276

    return p0

    :pswitch_8
    const p0, 0x104027b

    return p0

    :pswitch_9
    const p0, 0x104027a

    return p0

    :pswitch_a
    const p0, 0x1040008

    return p0

    :pswitch_b
    const p0, 0x1040273

    return p0

    :pswitch_c
    const p0, 0x1040007

    return p0

    :pswitch_d
    const p0, 0x1040274

    return p0

    :pswitch_e
    const p0, 0x1040275

    return p0

    :pswitch_f
    const p0, 0x104027c

    return p0

    :pswitch_data_0
    .packed-switch -0xf
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getString(ILandroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-static {p0}, Landroid/webkit/LegacyErrorStrings;->getResource(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
