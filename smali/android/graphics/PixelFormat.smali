.class public Landroid/graphics/PixelFormat;
.super Ljava/lang/Object;
.source "PixelFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/PixelFormat$Format;,
        Landroid/graphics/PixelFormat$Opacity;
    }
.end annotation


# static fields
.field public static final A_8:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final JPEG:I = 0x100
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LA_88:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final L_8:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OPAQUE:I = -0x1

.field public static final RGBA_1010102:I = 0x2b

.field public static final RGBA_4444:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RGBA_5551:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RGBA_8888:I = 0x1

.field public static final RGBA_F16:I = 0x16

.field public static final RGBX_8888:I = 0x2

.field public static final RGB_332:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RGB_565:I = 0x4

.field public static final RGB_888:I = 0x3

.field public static final TRANSLUCENT:I = -0x3

.field public static final TRANSPARENT:I = -0x2

.field public static final UNKNOWN:I = 0x0

.field public static final YCbCr_420_SP:I = 0x11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final YCbCr_422_I:I = 0x14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final YCbCr_422_SP:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public bitsPerPixel:I

.field public bytesPerPixel:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatHasAlpha(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/16 v1, 0xa

    if-eq p0, v1, :cond_0

    const/16 v1, 0x16

    if-eq p0, v1, :cond_0

    const/16 v1, 0x2b

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    return v0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static formatToString(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x14

    if-eq p0, v0, :cond_3

    const/16 v0, 0x16

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x100

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    .line 233
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "YCbCr_420_SP"

    return-object p0

    :pswitch_1
    const-string p0, "YCbCr_422_SP"

    return-object p0

    :pswitch_2
    const-string p0, "RGB_332"

    return-object p0

    :pswitch_3
    const-string p0, "LA_88"

    return-object p0

    :pswitch_4
    const-string p0, "L_8"

    return-object p0

    :pswitch_5
    const-string p0, "A_8"

    return-object p0

    :pswitch_6
    const-string p0, "RGBA_4444"

    return-object p0

    :pswitch_7
    const-string p0, "RGBA_5551"

    return-object p0

    :pswitch_8
    const-string p0, "RGB_565"

    return-object p0

    :pswitch_9
    const-string p0, "RGB_888"

    return-object p0

    :pswitch_a
    const-string p0, "RGBX_8888"

    return-object p0

    :pswitch_b
    const-string p0, "RGBA_8888"

    return-object p0

    :pswitch_c
    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_d
    const-string p0, "TRANSPARENT"

    return-object p0

    :pswitch_e
    const-string p0, "TRANSLUCENT"

    return-object p0

    :cond_0
    const-string p0, "JPEG"

    return-object p0

    :cond_1
    const-string p0, "RGBA_1010102"

    return-object p0

    :cond_2
    const-string p0, "RGBA_F16"

    return-object p0

    :cond_3
    const-string p0, "YCbCr_422_I"

    return-object p0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x6
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V
    .locals 4

    const/16 v0, 0x14

    const/16 v1, 0x10

    const/4 v2, 0x1

    if-eq p0, v0, :cond_2

    const/16 v0, 0x16

    const/16 v3, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    .line 142
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown pixel format "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/16 p0, 0xc

    .line 134
    iput p0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    .line 135
    iput v2, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    goto :goto_0

    .line 125
    :pswitch_1
    iput v3, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    .line 126
    iput v2, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    goto :goto_0

    .line 119
    :pswitch_2
    iput v1, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    const/4 p0, 0x2

    .line 120
    iput p0, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    goto :goto_0

    :pswitch_3
    const/16 p0, 0x18

    .line 112
    iput p0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    const/4 p0, 0x3

    .line 113
    iput p0, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    goto :goto_0

    :cond_0
    :pswitch_4
    const/16 p0, 0x20

    .line 108
    iput p0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    const/4 p0, 0x4

    .line 109
    iput p0, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    goto :goto_0

    :cond_1
    const/16 p0, 0x40

    .line 138
    iput p0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    .line 139
    iput v3, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    goto :goto_0

    .line 130
    :cond_2
    :pswitch_5
    iput v1, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    .line 131
    iput v2, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x10
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public static isPublicFormat(I)Z
    .locals 1

    const/16 v0, 0x16

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
