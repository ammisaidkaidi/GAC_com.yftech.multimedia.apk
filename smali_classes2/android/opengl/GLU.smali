.class public Landroid/opengl/GLU;
.super Ljava/lang/Object;
.source "GLU.java"


# static fields
.field private static final sScratch:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    .line 244
    new-array v0, v0, [F

    sput-object v0, Landroid/opengl/GLU;->sScratch:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gluErrorString(I)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "out of memory"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "stack underflow"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "stack overflow"

    return-object p0

    :pswitch_3
    const-string p0, "invalid operation"

    return-object p0

    :pswitch_4
    const-string p0, "invalid value"

    return-object p0

    :pswitch_5
    const-string p0, "invalid enum"

    return-object p0

    :cond_0
    const-string p0, "no error"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x500
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V
    .locals 13

    .line 75
    sget-object v12, Landroid/opengl/GLU;->sScratch:[F

    .line 76
    monitor-enter v12

    const/4 v2, 0x0

    move-object v1, v12

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    .line 77
    :try_start_0
    invoke-static/range {v1 .. v11}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    const/4 v0, 0x0

    move-object v1, p0

    .line 79
    invoke-interface {p0, v12, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    .line 80
    monitor-exit v12

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V
    .locals 7

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 94
    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    return-void
.end method

.method public static gluPerspective(Ljavax/microedition/khronos/opengles/GL10;FFFF)V
    .locals 7

    float-to-double v0, p1

    const-wide v2, 0x3f81df46a2529d39L    # 0.008726646259971648

    mul-double/2addr v0, v2

    .line 113
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float p1, v0

    mul-float v4, p3, p1

    neg-float v3, v4

    mul-float v1, v3, p2

    mul-float v2, v4, p2

    move-object v0, p0

    move v5, p3

    move v6, p4

    .line 117
    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    return-void
.end method

.method public static gluProject(FFF[FI[FI[II[FI)I
    .locals 9

    .line 150
    sget-object v8, Landroid/opengl/GLU;->sScratch:[F

    .line 151
    monitor-enter v8

    const/4 v3, 0x0

    move-object v2, v8

    move-object v4, p5

    move v5, p6

    move-object v6, p3

    move v7, p4

    .line 155
    :try_start_0
    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/16 v2, 0x10

    .line 158
    aput p0, v8, v2

    const/16 v2, 0x11

    .line 159
    aput p1, v8, v2

    const/16 v2, 0x12

    .line 160
    aput p2, v8, v2

    const/16 v2, 0x13

    const/high16 v3, 0x3f800000    # 1.0f

    .line 161
    aput v3, v8, v2

    const/16 v2, 0x14

    const/4 v4, 0x0

    const/16 v5, 0x10

    move-object p0, v8

    move p1, v2

    move-object p2, v8

    move p3, v4

    move-object p4, v8

    move p5, v5

    .line 163
    invoke-static/range {p0 .. p5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    const/16 v2, 0x17

    .line 166
    aget v2, v8, v2

    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-nez v4, :cond_0

    const/4 v0, 0x0

    .line 168
    monitor-exit v8

    return v0

    :cond_0
    div-float v2, v3, v2

    .line 173
    aget v4, p7, p8

    int-to-float v4, v4

    add-int/lit8 v5, p8, 0x2

    aget v5, p7, v5

    int-to-float v5, v5

    const/16 v6, 0x14

    aget v6, v8, v6

    mul-float/2addr v6, v2

    add-float/2addr v6, v3

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, p9, p10

    add-int/lit8 v4, p10, 0x1

    add-int/lit8 v5, p8, 0x1

    .line 177
    aget v5, p7, v5

    int-to-float v5, v5

    add-int/lit8 v1, p8, 0x3

    aget v0, p7, v1

    int-to-float v0, v0

    const/16 v1, 0x15

    aget v1, v8, v1

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    mul-float/2addr v0, v1

    mul-float/2addr v0, v6

    add-float/2addr v5, v0

    aput v5, p9, v4

    add-int/lit8 v0, p10, 0x2

    const/16 v1, 0x16

    .line 180
    aget v1, v8, v1

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    mul-float/2addr v1, v6

    aput v1, p9, v0

    .line 181
    monitor-exit v8

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static gluUnProject(FFF[FI[FI[II[FI)I
    .locals 9

    .line 216
    sget-object v8, Landroid/opengl/GLU;->sScratch:[F

    .line 217
    monitor-enter v8

    const/4 v3, 0x0

    move-object v2, v8

    move-object v4, p5

    move v5, p6

    move-object v6, p3

    move v7, p4

    .line 221
    :try_start_0
    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/16 v2, 0x10

    const/4 v3, 0x0

    .line 224
    invoke-static {v8, v2, v8, v3}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    move-result v2

    if-nez v2, :cond_0

    .line 225
    monitor-exit v8

    return v3

    :cond_0
    add-int/lit8 v2, p8, 0x0

    .line 228
    aget v2, p7, v2

    int-to-float v2, v2

    sub-float v2, p0, v2

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    add-int/lit8 v5, p8, 0x2

    aget v5, p7, v5

    int-to-float v5, v5

    div-float/2addr v2, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v2, v5

    aput v2, v8, v3

    add-int/lit8 v2, p8, 0x1

    .line 231
    aget v2, p7, v2

    int-to-float v2, v2

    sub-float v2, p1, v2

    mul-float/2addr v2, v4

    const/4 v3, 0x3

    add-int/lit8 v1, p8, 0x3

    aget v0, p7, v1

    int-to-float v0, v0

    div-float/2addr v2, v0

    sub-float/2addr v2, v5

    const/4 v0, 0x1

    aput v2, v8, v0

    mul-float v1, p2, v4

    sub-float/2addr v1, v5

    const/4 v2, 0x2

    .line 234
    aput v1, v8, v2

    .line 235
    aput v5, v8, v3

    const/16 v1, 0x10

    const/4 v2, 0x0

    move-object/from16 p0, p9

    move/from16 p1, p10

    move-object p2, v8

    move p3, v1

    move-object p4, v8

    move p5, v2

    .line 237
    invoke-static/range {p0 .. p5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 239
    monitor-exit v8

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
