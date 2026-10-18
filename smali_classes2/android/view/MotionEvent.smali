.class public final Landroid/view/MotionEvent;
.super Landroid/view/InputEvent;
.source "MotionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/MotionEvent$PointerProperties;,
        Landroid/view/MotionEvent$PointerCoords;
    }
.end annotation


# static fields
.field public static final ACTION_BUTTON_PRESS:I = 0xb

.field public static final ACTION_BUTTON_RELEASE:I = 0xc

.field public static final ACTION_CANCEL:I = 0x3

.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_HOVER_ENTER:I = 0x9

.field public static final ACTION_HOVER_EXIT:I = 0xa

.field public static final ACTION_HOVER_MOVE:I = 0x7

.field public static final ACTION_MASK:I = 0xff

.field public static final ACTION_MOVE:I = 0x2

.field public static final ACTION_OUTSIDE:I = 0x4

.field public static final ACTION_POINTER_1_DOWN:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_1_UP:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_2_DOWN:I = 0x105
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_2_UP:I = 0x106
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_3_DOWN:I = 0x205
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_3_UP:I = 0x206
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_DOWN:I = 0x5

.field public static final ACTION_POINTER_ID_MASK:I = 0xff00
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_ID_SHIFT:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_INDEX_MASK:I = 0xff00

.field public static final ACTION_POINTER_INDEX_SHIFT:I = 0x8

.field public static final ACTION_POINTER_UP:I = 0x6

.field public static final ACTION_SCROLL:I = 0x8

.field public static final ACTION_UP:I = 0x1

.field public static final AXIS_BRAKE:I = 0x17

.field public static final AXIS_DISTANCE:I = 0x18

.field public static final AXIS_GAS:I = 0x16

.field public static final AXIS_GENERIC_1:I = 0x20

.field public static final AXIS_GENERIC_10:I = 0x29

.field public static final AXIS_GENERIC_11:I = 0x2a

.field public static final AXIS_GENERIC_12:I = 0x2b

.field public static final AXIS_GENERIC_13:I = 0x2c

.field public static final AXIS_GENERIC_14:I = 0x2d

.field public static final AXIS_GENERIC_15:I = 0x2e

.field public static final AXIS_GENERIC_16:I = 0x2f

.field public static final AXIS_GENERIC_2:I = 0x21

.field public static final AXIS_GENERIC_3:I = 0x22

.field public static final AXIS_GENERIC_4:I = 0x23

.field public static final AXIS_GENERIC_5:I = 0x24

.field public static final AXIS_GENERIC_6:I = 0x25

.field public static final AXIS_GENERIC_7:I = 0x26

.field public static final AXIS_GENERIC_8:I = 0x27

.field public static final AXIS_GENERIC_9:I = 0x28

.field public static final AXIS_HAT_X:I = 0xf

.field public static final AXIS_HAT_Y:I = 0x10

.field public static final AXIS_HSCROLL:I = 0xa

.field public static final AXIS_LTRIGGER:I = 0x11

.field public static final AXIS_ORIENTATION:I = 0x8

.field public static final AXIS_PRESSURE:I = 0x2

.field public static final AXIS_RELATIVE_X:I = 0x1b

.field public static final AXIS_RELATIVE_Y:I = 0x1c

.field public static final AXIS_RTRIGGER:I = 0x12

.field public static final AXIS_RUDDER:I = 0x14

.field public static final AXIS_RX:I = 0xc

.field public static final AXIS_RY:I = 0xd

.field public static final AXIS_RZ:I = 0xe

.field public static final AXIS_SCROLL:I = 0x1a

.field public static final AXIS_SIZE:I = 0x3

.field private static final AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final AXIS_THROTTLE:I = 0x13

.field public static final AXIS_TILT:I = 0x19

.field public static final AXIS_TOOL_MAJOR:I = 0x6

.field public static final AXIS_TOOL_MINOR:I = 0x7

.field public static final AXIS_TOUCH_MAJOR:I = 0x4

.field public static final AXIS_TOUCH_MINOR:I = 0x5

.field public static final AXIS_VSCROLL:I = 0x9

.field public static final AXIS_WHEEL:I = 0x15

.field public static final AXIS_X:I = 0x0

.field public static final AXIS_Y:I = 0x1

.field public static final AXIS_Z:I = 0xb

.field public static final BUTTON_BACK:I = 0x8

.field public static final BUTTON_FORWARD:I = 0x10

.field public static final BUTTON_PRIMARY:I = 0x1

.field public static final BUTTON_SECONDARY:I = 0x2

.field public static final BUTTON_STYLUS_PRIMARY:I = 0x20

.field public static final BUTTON_STYLUS_SECONDARY:I = 0x40

.field private static final BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

.field public static final BUTTON_TERTIARY:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG_CONCISE_TOSTRING:Z = false

.field public static final EDGE_BOTTOM:I = 0x2

.field public static final EDGE_LEFT:I = 0x4

.field public static final EDGE_RIGHT:I = 0x8

.field public static final EDGE_TOP:I = 0x1

.field public static final FLAG_HOVER_EXIT_PENDING:I = 0x4

.field public static final FLAG_IS_GENERATED_GESTURE:I = 0x8

.field public static final FLAG_TAINTED:I = -0x80000000

.field public static final FLAG_TARGET_ACCESSIBILITY_FOCUS:I = 0x40000000

.field public static final FLAG_WINDOW_IS_OBSCURED:I = 0x1

.field public static final FLAG_WINDOW_IS_PARTIALLY_OBSCURED:I = 0x2

.field private static final HISTORY_CURRENT:I = -0x80000000

.field public static final INVALID_POINTER_ID:I = -0x1

.field private static final LABEL_PREFIX:Ljava/lang/String; = "AXIS_"

.field private static final MAX_RECYCLED:I = 0xa

.field private static final NS_PER_MS:J = 0xf4240L

.field public static final TOOL_TYPE_ERASER:I = 0x4

.field public static final TOOL_TYPE_FINGER:I = 0x1

.field public static final TOOL_TYPE_MOUSE:I = 0x3

.field public static final TOOL_TYPE_STYLUS:I = 0x2

.field private static final TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOOL_TYPE_UNKNOWN:I

.field private static final gRecyclerLock:Ljava/lang/Object;

.field private static gRecyclerTop:Landroid/view/MotionEvent;

.field private static gRecyclerUsed:I

.field private static final gSharedTempLock:Ljava/lang/Object;

.field private static gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private static gSharedTempPointerIndexMap:[I

.field private static gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;


# instance fields
.field private mNativePtr:J

.field private mNext:Landroid/view/MotionEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 40

    .line 1238
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 1240
    sget-object v0, Landroid/view/MotionEvent;->AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    const-string v1, "AXIS_X"

    const/4 v2, 0x0

    .line 1241
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_Y"

    const/4 v3, 0x1

    .line 1242
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_PRESSURE"

    const/4 v4, 0x2

    .line 1243
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_SIZE"

    const/4 v5, 0x3

    .line 1244
    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_TOUCH_MAJOR"

    const/4 v6, 0x4

    .line 1245
    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_TOUCH_MINOR"

    const/4 v7, 0x5

    .line 1246
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_TOOL_MAJOR"

    const/4 v7, 0x6

    .line 1247
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_TOOL_MINOR"

    const/4 v7, 0x7

    .line 1248
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_ORIENTATION"

    const/16 v7, 0x8

    .line 1249
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_VSCROLL"

    const/16 v7, 0x9

    .line 1250
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_HSCROLL"

    const/16 v7, 0xa

    .line 1251
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_Z"

    const/16 v7, 0xb

    .line 1252
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_RX"

    const/16 v7, 0xc

    .line 1253
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_RY"

    const/16 v7, 0xd

    .line 1254
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_RZ"

    const/16 v7, 0xe

    .line 1255
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_HAT_X"

    const/16 v7, 0xf

    .line 1256
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_HAT_Y"

    const/16 v7, 0x10

    .line 1257
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_LTRIGGER"

    const/16 v7, 0x11

    .line 1258
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_RTRIGGER"

    const/16 v7, 0x12

    .line 1259
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_THROTTLE"

    const/16 v7, 0x13

    .line 1260
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_RUDDER"

    const/16 v7, 0x14

    .line 1261
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_WHEEL"

    const/16 v7, 0x15

    .line 1262
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_GAS"

    const/16 v7, 0x16

    .line 1263
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_BRAKE"

    const/16 v7, 0x17

    .line 1264
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_DISTANCE"

    const/16 v7, 0x18

    .line 1265
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_TILT"

    const/16 v7, 0x19

    .line 1266
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_SCROLL"

    const/16 v7, 0x1a

    .line 1267
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_REALTIVE_X"

    const/16 v7, 0x1b

    .line 1268
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_REALTIVE_Y"

    const/16 v7, 0x1c

    .line 1269
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_GENERIC_1"

    const/16 v7, 0x20

    .line 1270
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_GENERIC_2"

    const/16 v7, 0x21

    .line 1271
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_GENERIC_3"

    const/16 v7, 0x22

    .line 1272
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_GENERIC_4"

    const/16 v7, 0x23

    .line 1273
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_GENERIC_5"

    const/16 v7, 0x24

    .line 1274
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_GENERIC_6"

    const/16 v7, 0x25

    .line 1275
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_GENERIC_7"

    const/16 v7, 0x26

    .line 1276
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_GENERIC_8"

    const/16 v7, 0x27

    .line 1277
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_GENERIC_9"

    const/16 v7, 0x28

    .line 1278
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_GENERIC_10"

    const/16 v7, 0x29

    .line 1279
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_GENERIC_11"

    const/16 v7, 0x2a

    .line 1280
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_GENERIC_12"

    const/16 v7, 0x2b

    .line 1281
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_GENERIC_13"

    const/16 v7, 0x2c

    .line 1282
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_GENERIC_14"

    const/16 v7, 0x2d

    .line 1283
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_GENERIC_15"

    const/16 v7, 0x2e

    .line 1284
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_GENERIC_16"

    const/16 v7, 0x2f

    .line 1285
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v8, "BUTTON_PRIMARY"

    const-string v9, "BUTTON_SECONDARY"

    const-string v10, "BUTTON_TERTIARY"

    const-string v11, "BUTTON_BACK"

    const-string v12, "BUTTON_FORWARD"

    const-string v13, "BUTTON_STYLUS_PRIMARY"

    const-string v14, "BUTTON_STYLUS_SECONDARY"

    const-string v15, "0x00000080"

    const-string v16, "0x00000100"

    const-string v17, "0x00000200"

    const-string v18, "0x00000400"

    const-string v19, "0x00000800"

    const-string v20, "0x00001000"

    const-string v21, "0x00002000"

    const-string v22, "0x00004000"

    const-string v23, "0x00008000"

    const-string v24, "0x00010000"

    const-string v25, "0x00020000"

    const-string v26, "0x00040000"

    const-string v27, "0x00080000"

    const-string v28, "0x00100000"

    const-string v29, "0x00200000"

    const-string v30, "0x00400000"

    const-string v31, "0x00800000"

    const-string v32, "0x01000000"

    const-string v33, "0x02000000"

    const-string v34, "0x04000000"

    const-string v35, "0x08000000"

    const-string v36, "0x10000000"

    const-string v37, "0x20000000"

    const-string v38, "0x40000000"

    const-string v39, "0x80000000"

    .line 1353
    filled-new-array/range {v8 .. v39}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/MotionEvent;->BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

    .line 1429
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 1431
    sget-object v0, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    const-string v1, "TOOL_TYPE_UNKNOWN"

    .line 1432
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "TOOL_TYPE_FINGER"

    .line 1433
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "TOOL_TYPE_STYLUS"

    .line 1434
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "TOOL_TYPE_MOUSE"

    .line 1435
    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "TOOL_TYPE_ERASER"

    .line 1436
    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1443
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    .line 1449
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    .line 3428
    new-instance v0, Landroid/view/MotionEvent$1;

    invoke-direct {v0}, Landroid/view/MotionEvent$1;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1570
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    return-void
.end method

.method public static actionToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v1, p0, 0xff

    packed-switch v1, :pswitch_data_1

    .line 3320
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "ACTION_BUTTON_RELEASE"

    return-object p0

    :pswitch_2
    const-string p0, "ACTION_BUTTON_PRESS"

    return-object p0

    :pswitch_3
    const-string p0, "ACTION_HOVER_EXIT"

    return-object p0

    :pswitch_4
    const-string p0, "ACTION_HOVER_ENTER"

    return-object p0

    :pswitch_5
    const-string p0, "ACTION_SCROLL"

    return-object p0

    :pswitch_6
    const-string p0, "ACTION_HOVER_MOVE"

    return-object p0

    :pswitch_7
    const-string p0, "ACTION_OUTSIDE"

    return-object p0

    :pswitch_8
    const-string p0, "ACTION_CANCEL"

    return-object p0

    :pswitch_9
    const-string p0, "ACTION_MOVE"

    return-object p0

    :pswitch_a
    const-string p0, "ACTION_UP"

    return-object p0

    :pswitch_b
    const-string p0, "ACTION_DOWN"

    return-object p0

    .line 3318
    :pswitch_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_POINTER_UP("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3316
    :pswitch_d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_POINTER_DOWN("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method private static appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 3276
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static axisFromString(Ljava/lang/String;)I
    .locals 1

    const-string v0, "AXIS_"

    .line 3345
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AXIS_"

    .line 3346
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 3347
    invoke-static {p0}, Landroid/view/MotionEvent;->nativeAxisFromString(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0xa

    .line 3353
    :try_start_0
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method public static axisToString(I)Ljava/lang/String;
    .locals 2

    .line 3332
    invoke-static {p0}, Landroid/view/MotionEvent;->nativeAxisToString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3333
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AXIS_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static buttonStateToString(I)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-eqz p0, :cond_5

    and-int/lit8 v3, p0, 0x1

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    ushr-int/lit8 p0, p0, 0x1

    if-eqz v3, :cond_4

    .line 3379
    sget-object v3, Landroid/view/MotionEvent;->BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-nez v0, :cond_3

    if-nez p0, :cond_2

    return-object v3

    .line 3384
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const/16 v4, 0x7c

    .line 3386
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3387
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3392
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final clamp(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    return p1

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method public static createFromParcelBody(Landroid/os/Parcel;)Landroid/view/MotionEvent;
    .locals 3

    .line 3442
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 3443
    iget-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v1, v2, p0}, Landroid/view/MotionEvent;->nativeReadFromParcel(JLandroid/os/Parcel;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    return-object v0
.end method

.method private static final ensureSharedTempPointerCapacity(I)V
    .locals 1

    .line 1455
    sget-object v0, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v0, v0

    if-ge v0, p0, :cond_3

    .line 1457
    :cond_0
    sget-object v0, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v0, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    if-ge v0, p0, :cond_2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1461
    :cond_2
    invoke-static {v0}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object p0

    sput-object p0, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 1462
    invoke-static {v0}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object p0

    sput-object p0, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 1463
    new-array p0, v0, [I

    sput-object p0, Landroid/view/MotionEvent;->gSharedTempPointerIndexMap:[I

    :cond_3
    return-void
.end method

.method private static native nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V
.end method

.method private static native nativeAxisFromString(Ljava/lang/String;)I
.end method

.method private static native nativeAxisToString(I)Ljava/lang/String;
.end method

.method private static native nativeCopy(JJZ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeDispose(J)V
.end method

.method private static native nativeFindPointerIndex(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetAction(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetActionButton(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetAxisValue(JIII)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nativeGetButtonState(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetDeviceId(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetDownTimeNanos(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetEdgeFlags(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetEventTimeNanos(JI)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nativeGetFlags(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetHistorySize(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetMetaState(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V
.end method

.method private static native nativeGetPointerCount(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetPointerId(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V
.end method

.method private static native nativeGetRawAxisValue(JIII)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nativeGetSource(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetToolType(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nativeGetXOffset(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetXPrecision(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetYOffset(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetYPrecision(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeInitialize(JIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J
.end method

.method private static native nativeIsTouchEvent(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeOffsetLocation(JFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeReadFromParcel(JLandroid/os/Parcel;)J
.end method

.method private static native nativeScale(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeSetAction(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeSetActionButton(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeSetButtonState(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeSetDownTimeNanos(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeSetEdgeFlags(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeSetFlags(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeSetSource(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeTransform(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeWriteToParcel(JLandroid/os/Parcel;)V
.end method

.method private static obtain()Landroid/view/MotionEvent;
    .locals 3

    .line 1587
    sget-object v0, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1588
    :try_start_0
    sget-object v1, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    if-nez v1, :cond_0

    .line 1590
    new-instance v1, Landroid/view/MotionEvent;

    invoke-direct {v1}, Landroid/view/MotionEvent;-><init>()V

    monitor-exit v0

    return-object v1

    .line 1592
    :cond_0
    iget-object v2, v1, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    sput-object v2, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 1593
    sget v2, Landroid/view/MotionEvent;->gRecyclerUsed:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/view/MotionEvent;->gRecyclerUsed:I

    .line 1594
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 1595
    iput-object v0, v1, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    .line 1596
    invoke-virtual {v1}, Landroid/view/MotionEvent;->prepareForReuse()V

    return-object v1

    :catchall_0
    move-exception v1

    .line 1594
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;
    .locals 23

    .line 1721
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 1722
    sget-object v1, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    .line 1723
    :try_start_0
    invoke-static {v2}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 1724
    sget-object v21, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v2, 0x0

    .line 1725
    aget-object v3, v21, v2

    invoke-virtual {v3}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 1726
    aget-object v3, v21, v2

    iput v2, v3, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 1728
    sget-object v22, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 1729
    aget-object v3, v22, v2

    invoke-virtual {v3}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 1730
    aget-object v3, v22, v2

    move/from16 v4, p5

    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1731
    aget-object v3, v22, v2

    move/from16 v4, p6

    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1732
    aget-object v3, v22, v2

    move/from16 v4, p7

    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 1733
    aget-object v2, v22, v2

    move/from16 v3, p8

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 1735
    iget-wide v3, v0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/32 v9, 0xf4240

    mul-long v16, p0, v9

    mul-long v18, p2, v9

    const/16 v20, 0x1

    move/from16 v5, p12

    move/from16 v7, p4

    move/from16 v9, p13

    move/from16 v10, p9

    move/from16 v14, p10

    move/from16 v15, p11

    invoke-static/range {v3 .. v22}, Landroid/view/MotionEvent;->nativeInitialize(JIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 1740
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    .line 1741
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static obtain(JJIFFI)Landroid/view/MotionEvent;
    .locals 14

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v9, p7

    .line 1802
    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(JJIIFFFFIFFII)Landroid/view/MotionEvent;
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-wide v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p14

    .line 1781
    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;
    .locals 18
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1676
    sget-object v1, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1677
    :try_start_0
    invoke-static/range {p5 .. p5}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 1678
    sget-object v8, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v0, 0x0

    move v2, v0

    move/from16 v0, p5

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1680
    aget-object v3, v8, v2

    invoke-virtual {v3}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 1681
    aget-object v3, v8, v2

    aget v5, p6, v2

    iput v5, v3, Landroid/view/MotionEvent$PointerProperties;->id:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    move-wide/from16 v2, p0

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    .line 1683
    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    .line 1686
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;
    .locals 22

    move/from16 v4, p4

    move/from16 v17, p5

    move-object/from16 v18, p6

    move-object/from16 v19, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v2, p12

    move/from16 v6, p13

    move/from16 v3, p14

    move/from16 v5, p15

    .line 1633
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v10

    .line 1634
    iget-wide v0, v10, Landroid/view/MotionEvent;->mNativePtr:J

    const-wide/32 v15, 0xf4240

    mul-long v13, p0, v15

    mul-long v15, v15, p2

    const/4 v9, 0x0

    const/16 v20, 0x0

    move-object/from16 v21, v10

    move/from16 v10, v20

    invoke-static/range {v0 .. v19}, Landroid/view/MotionEvent;->nativeInitialize(JIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J

    move-result-wide v0

    move-object/from16 v2, v21

    iput-wide v0, v2, Landroid/view/MotionEvent;->mNativePtr:J

    return-object v2
.end method

.method public static obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 5

    if-eqz p0, :cond_0

    .line 1814
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 1815
    iget-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x1

    invoke-static {v1, v2, v3, v4, p0}, Landroid/view/MotionEvent;->nativeCopy(JJZ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    return-object v0

    .line 1811
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "other motion event must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 5

    if-eqz p0, :cond_0

    .line 1828
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 1829
    iget-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x0

    invoke-static {v1, v2, v3, v4, p0}, Landroid/view/MotionEvent;->nativeCopy(JJZ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    return-object v0

    .line 1825
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "other motion event must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toolTypeToString(I)Ljava/lang/String;
    .locals 1

    .line 3404
    sget-object v0, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3405
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final addBatch(JFFFFI)V
    .locals 4

    .line 2995
    sget-object v0, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2996
    :try_start_0
    invoke-static {v1}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 2997
    sget-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v2, 0x0

    .line 2998
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 2999
    aget-object v3, v1, v2

    iput p3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3000
    aget-object p3, v1, v2

    iput p4, p3, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 3001
    aget-object p3, v1, v2

    iput p5, p3, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 3002
    aget-object p3, v1, v2

    iput p6, p3, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 3004
    iget-wide p3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const-wide/32 p5, 0xf4240

    mul-long/2addr p5, p1

    move-wide p0, p3

    move-wide p2, p5

    move-object p4, v1

    move p5, p7

    invoke-static/range {p0 .. p5}, Landroid/view/MotionEvent;->nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V

    .line 3005
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final addBatch(J[Landroid/view/MotionEvent$PointerCoords;I)V
    .locals 6

    .line 3020
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/view/MotionEvent;->nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V

    return-void
.end method

.method public final addBatch(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 3036
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v3, 0x7

    if-eq v0, v3, :cond_0

    return v2

    .line 3040
    :cond_0
    iget-wide v3, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v3

    if-eq v0, v3, :cond_1

    return v2

    .line 3044
    :cond_1
    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result v0

    iget-wide v3, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result v3

    if-ne v0, v3, :cond_9

    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3045
    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result v0

    iget-wide v3, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result v3

    if-ne v0, v3, :cond_9

    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3046
    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v0

    iget-wide v3, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v3

    if-eq v0, v3, :cond_2

    goto/16 :goto_4

    .line 3050
    :cond_2
    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v0

    .line 3051
    iget-wide v3, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v3

    if-eq v0, v3, :cond_3

    return v2

    .line 3055
    :cond_3
    sget-object v3, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3056
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 3057
    sget-object v1, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 3058
    sget-object v10, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    move v4, v2

    :goto_0
    const/4 v11, 0x1

    if-ge v4, v0, :cond_5

    .line 3061
    iget-wide v5, p0, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v7, v1, v2

    invoke-static {v5, v6, v4, v7}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    .line 3062
    iget-wide v5, p1, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v7, v1, v11

    invoke-static {v5, v6, v4, v7}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    .line 3063
    aget-object v5, v1, v2

    aget-object v6, v1, v11

    invoke-static {v5, v6}, Landroid/view/MotionEvent$PointerProperties;->access$000(Landroid/view/MotionEvent$PointerProperties;Landroid/view/MotionEvent$PointerProperties;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 3064
    monitor-exit v3

    return v2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3068
    :cond_5
    iget-wide v4, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5}, Landroid/view/MotionEvent;->nativeGetMetaState(J)I

    move-result v1

    .line 3069
    iget-wide v4, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5}, Landroid/view/MotionEvent;->nativeGetHistorySize(J)I

    move-result v12

    move v13, v2

    :goto_1
    if-gt v13, v12, :cond_8

    if-ne v13, v12, :cond_6

    const/high16 v4, -0x80000000

    goto :goto_2

    :cond_6
    move v4, v13

    :goto_2
    move v5, v2

    :goto_3
    if-ge v5, v0, :cond_7

    .line 3074
    iget-wide v6, p1, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v8, v10, v5

    invoke-static {v6, v7, v5, v4, v8}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 3077
    :cond_7
    iget-wide v5, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v5, v6, v4}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v6

    .line 3078
    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    move-object v8, v10

    move v9, v1

    invoke-static/range {v4 .. v9}, Landroid/view/MotionEvent;->nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 3080
    :cond_8
    monitor-exit v3

    return v11

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_9
    :goto_4
    return v2
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x3

    .line 3450
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->setAction(I)V

    return-void
.end method

.method public final clampNoHistory(FFFF)Landroid/view/MotionEvent;
    .locals 27

    move-object/from16 v0, p0

    .line 3115
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v1

    .line 3116
    sget-object v2, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3117
    :try_start_0
    iget-wide v3, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v3

    .line 3119
    invoke-static {v3}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 3120
    sget-object v23, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 3121
    sget-object v24, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v4, 0x0

    :goto_0
    const/high16 v5, -0x80000000

    if-ge v4, v3, :cond_0

    .line 3124
    iget-wide v6, v0, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v8, v23, v4

    invoke-static {v6, v7, v4, v8}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    .line 3125
    iget-wide v6, v0, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v8, v24, v4

    invoke-static {v6, v7, v4, v5, v8}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    .line 3126
    aget-object v5, v24, v4

    aget-object v6, v24, v4

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    move/from16 v7, p1

    move/from16 v8, p3

    invoke-static {v6, v7, v8}, Landroid/view/MotionEvent;->clamp(FFF)F

    move-result v6

    iput v6, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3127
    aget-object v5, v24, v4

    aget-object v6, v24, v4

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    move/from16 v9, p2

    move/from16 v10, p4

    invoke-static {v6, v9, v10}, Landroid/view/MotionEvent;->clamp(FFF)F

    move-result v6

    iput v6, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3129
    :cond_0
    iget-wide v6, v1, Landroid/view/MotionEvent;->mNativePtr:J

    iget-wide v8, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3130
    invoke-static {v8, v9}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result v4

    iget-wide v8, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v8, v9}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result v8

    iget-wide v9, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3131
    invoke-static {v9, v10}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v9

    iget-wide v10, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v10, v11}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v10

    iget-wide v11, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3132
    invoke-static {v11, v12}, Landroid/view/MotionEvent;->nativeGetEdgeFlags(J)I

    move-result v11

    iget-wide v12, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v12, v13}, Landroid/view/MotionEvent;->nativeGetMetaState(J)I

    move-result v12

    iget-wide v13, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3133
    invoke-static {v13, v14}, Landroid/view/MotionEvent;->nativeGetButtonState(J)I

    move-result v13

    iget-wide v14, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3134
    invoke-static {v14, v15}, Landroid/view/MotionEvent;->nativeGetXOffset(J)F

    move-result v14

    move-wide/from16 v25, v6

    iget-wide v5, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v5, v6}, Landroid/view/MotionEvent;->nativeGetYOffset(J)F

    move-result v15

    iget-wide v5, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3135
    invoke-static {v5, v6}, Landroid/view/MotionEvent;->nativeGetXPrecision(J)F

    move-result v16

    iget-wide v5, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v5, v6}, Landroid/view/MotionEvent;->nativeGetYPrecision(J)F

    move-result v17

    iget-wide v5, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3136
    invoke-static {v5, v6}, Landroid/view/MotionEvent;->nativeGetDownTimeNanos(J)J

    move-result-wide v18

    iget-wide v5, v0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v0, -0x80000000

    .line 3137
    invoke-static {v5, v6, v0}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v20

    move-wide/from16 v5, v25

    move v7, v4

    move/from16 v22, v3

    .line 3129
    invoke-static/range {v5 .. v24}, Landroid/view/MotionEvent;->nativeInitialize(JIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J

    move-result-wide v3

    iput-wide v3, v1, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3139
    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v0

    .line 3140
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic copy()Landroid/view/InputEvent;
    .locals 0

    .line 174
    invoke-virtual {p0}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method public copy()Landroid/view/MotionEvent;
    .locals 0

    .line 1836
    invoke-static {p0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1576
    :try_start_0
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1577
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeDispose(J)V

    .line 1578
    iput-wide v2, p0, Landroid/view/MotionEvent;->mNativePtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1581
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final findPointerIndex(I)I
    .locals 2

    .line 2190
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeFindPointerIndex(JI)I

    move-result p0

    return p0
.end method

.method public final getAction()I
    .locals 2

    .line 1899
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result p0

    return p0
.end method

.method public final getActionButton()I
    .locals 2

    .line 2433
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetActionButton(J)I

    move-result p0

    return p0
.end method

.method public final getActionIndex()I
    .locals 2

    .line 1922
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result p0

    const v0, 0xff00

    and-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public final getActionMasked()I
    .locals 2

    .line 1908
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public final getAxisValue(I)F
    .locals 3

    .line 2140
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x0

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p1, p0, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final getAxisValue(II)F
    .locals 2

    .line 2350
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 p0, -0x80000000

    invoke-static {v0, v1, p1, p2, p0}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final getButtonState()I
    .locals 2

    .line 2410
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetButtonState(J)I

    move-result p0

    return p0
.end method

.method public final getDeviceId()I
    .locals 2

    .line 1876
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result p0

    return p0
.end method

.method public final getDownTime()J
    .locals 4

    .line 1996
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetDownTimeNanos(J)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getEdgeFlags()I
    .locals 2

    .line 2922
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetEdgeFlags(J)I

    move-result p0

    return p0
.end method

.method public final getEventTime()J
    .locals 4

    .line 2018
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 p0, -0x80000000

    invoke-static {v0, v1, p0}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getEventTimeNano()J
    .locals 2

    .line 2037
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 p0, -0x80000000

    invoke-static {v0, v1, p0}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getFlags()I
    .locals 2

    .line 1946
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result p0

    return p0
.end method

.method public final getHistoricalAxisValue(II)F
    .locals 2

    .line 2704
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x0

    invoke-static {v0, v1, p1, p0, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final getHistoricalAxisValue(III)F
    .locals 2

    .line 2885
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final getHistoricalEventTime(I)J
    .locals 2

    .line 2526
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide p0

    const-wide/32 v0, 0xf4240

    div-long/2addr p0, v0

    return-wide p0
.end method

.method public final getHistoricalEventTimeNano(I)J
    .locals 2

    .line 2552
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getHistoricalOrientation(I)F
    .locals 3

    .line 2687
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 p0, 0x8

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final getHistoricalOrientation(II)F
    .locals 2

    .line 2866
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 p0, 0x8

    invoke-static {v0, v1, p0, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V
    .locals 2

    .line 2906
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    return-void
.end method

.method public final getHistoricalPressure(I)F
    .locals 3

    .line 2597
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final getHistoricalPressure(II)F
    .locals 2

    .line 2758
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x2

    invoke-static {v0, v1, p0, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final getHistoricalSize(I)F
    .locals 3

    .line 2612
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final getHistoricalSize(II)F
    .locals 2

    .line 2776
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x3

    invoke-static {v0, v1, p0, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final getHistoricalToolMajor(I)F
    .locals 3

    .line 2657
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x6

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final getHistoricalToolMajor(II)F
    .locals 2

    .line 2830
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x6

    invoke-static {v0, v1, p0, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final getHistoricalToolMinor(I)F
    .locals 3

    .line 2672
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x7

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final getHistoricalToolMinor(II)F
    .locals 2

    .line 2848
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x7

    invoke-static {v0, v1, p0, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final getHistoricalTouchMajor(I)F
    .locals 3

    .line 2627
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final getHistoricalTouchMajor(II)F
    .locals 2

    .line 2794
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x4

    invoke-static {v0, v1, p0, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final getHistoricalTouchMinor(I)F
    .locals 3

    .line 2642
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x5

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final getHistoricalTouchMinor(II)F
    .locals 2

    .line 2812
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x5

    invoke-static {v0, v1, p0, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final getHistoricalX(I)F
    .locals 2

    .line 2567
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x0

    invoke-static {v0, v1, p0, p0, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final getHistoricalX(II)F
    .locals 2

    .line 2722
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x0

    invoke-static {v0, v1, p0, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final getHistoricalY(I)F
    .locals 3

    .line 2582
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final getHistoricalY(II)F
    .locals 2

    .line 2740
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x1

    invoke-static {v0, v1, p0, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final getHistorySize()I
    .locals 2

    .line 2506
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetHistorySize(J)I

    move-result p0

    return p0
.end method

.method public final getMetaState()I
    .locals 2

    .line 2393
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetMetaState(J)I

    move-result p0

    return p0
.end method

.method public final getOrientation()F
    .locals 4

    .line 2127
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 p0, 0x8

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, p0, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final getOrientation(I)F
    .locals 3

    .line 2334
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 p0, 0x8

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p0, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V
    .locals 2

    .line 2364
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 p0, -0x80000000

    invoke-static {v0, v1, p1, p0, p2}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    return-void
.end method

.method public final getPointerCount()I
    .locals 2

    .line 2148
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result p0

    return p0
.end method

.method public final getPointerId(I)I
    .locals 2

    .line 2160
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetPointerId(JI)I

    move-result p0

    return p0
.end method

.method public final getPointerIdBits()I
    .locals 5

    .line 3149
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3151
    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4, v1}, Landroid/view/MotionEvent;->nativeGetPointerId(JI)I

    move-result v3

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public final getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V
    .locals 2

    .line 2379
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    return-void
.end method

.method public final getPressure()F
    .locals 4

    .line 2067
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x2

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, p0, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final getPressure(I)F
    .locals 3

    .line 2237
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x2

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p0, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final getRawX()F
    .locals 3

    .line 2457
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x0

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p0, p0, v2}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final getRawY()F
    .locals 4

    .line 2470
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x1

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, p0, v2, v3}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final getSize()F
    .locals 4

    .line 2077
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x3

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, p0, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final getSize(I)F
    .locals 3

    .line 2255
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x3

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p0, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final getSource()I
    .locals 2

    .line 1882
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result p0

    return p0
.end method

.method public final getToolMajor()F
    .locals 4

    .line 2107
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x6

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, p0, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final getToolMajor(I)F
    .locals 3

    .line 2299
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x6

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p0, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final getToolMinor()F
    .locals 4

    .line 2117
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x7

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, p0, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final getToolMinor(I)F
    .locals 3

    .line 2315
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x7

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p0, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final getToolType(I)I
    .locals 2

    .line 2178
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetToolType(JI)I

    move-result p0

    return p0
.end method

.method public final getTouchMajor()F
    .locals 4

    .line 2087
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x4

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, p0, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final getTouchMajor(I)F
    .locals 3

    .line 2269
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x4

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p0, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final getTouchMinor()F
    .locals 4

    .line 2097
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x5

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, p0, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final getTouchMinor(I)F
    .locals 3

    .line 2283
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x5

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p0, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final getX()F
    .locals 3

    .line 2047
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x0

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p0, p0, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final getX(I)F
    .locals 3

    .line 2205
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x0

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p0, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final getXPrecision()F
    .locals 2

    .line 2482
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetXPrecision(J)F

    move-result p0

    return p0
.end method

.method public final getY()F
    .locals 4

    .line 2057
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x1

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, p0, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final getY(I)F
    .locals 3

    .line 2220
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x1

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p0, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final getYPrecision()F
    .locals 2

    .line 2494
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetYPrecision(J)F

    move-result p0

    return p0
.end method

.method public final isButtonPressed(I)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3425
    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final isHoverExitPending()Z
    .locals 0

    .line 1979
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isTainted()Z
    .locals 1

    .line 1952
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result p0

    const/high16 v0, -0x80000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isTargetAccessibilityFocus()Z
    .locals 1

    .line 1965
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isTouchEvent()Z
    .locals 2

    .line 1937
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeIsTouchEvent(J)Z

    move-result p0

    return p0
.end method

.method public final isWithinBoundsNoHistory(FFFF)Z
    .locals 9

    .line 3090
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    .line 3092
    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v6, -0x80000000

    invoke-static {v4, v5, v1, v2, v6}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v4

    .line 3093
    iget-wide v7, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v7, v8, v3, v2, v6}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v3

    cmpg-float v5, v4, p1

    if-ltz v5, :cond_1

    cmpl-float v4, v4, p3

    if-gtz v4, :cond_1

    cmpg-float v4, v3, p2

    if-ltz v4, :cond_1

    cmpl-float v3, v3, p4

    if-lez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1

    :cond_2
    return v3
.end method

.method public final offsetLocation(FF)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    .line 2949
    :cond_0
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeOffsetLocation(JFF)V

    :cond_1
    return-void
.end method

.method public final recycle()V
    .locals 3

    .line 1845
    invoke-super {p0}, Landroid/view/InputEvent;->recycle()V

    .line 1847
    sget-object v0, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1848
    :try_start_0
    sget v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 1849
    sget v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    .line 1850
    sget-object v1, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    iput-object v1, p0, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    .line 1851
    sput-object p0, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 1853
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final scale(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1869
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeScale(JF)V

    :cond_0
    return-void
.end method

.method public final setAction(I)V
    .locals 2

    .line 2939
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetAction(JI)V

    return-void
.end method

.method public final setActionButton(I)V
    .locals 2

    .line 2444
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetActionButton(JI)V

    return-void
.end method

.method public final setButtonState(I)V
    .locals 2

    .line 2421
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetButtonState(JI)V

    return-void
.end method

.method public final setDownTime(J)V
    .locals 4

    .line 2006
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr p1, v2

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeSetDownTimeNanos(JJ)V

    return-void
.end method

.method public final setEdgeFlags(I)V
    .locals 2

    .line 2932
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetEdgeFlags(JI)V

    return-void
.end method

.method public setHoverExitPending(Z)V
    .locals 3

    .line 1985
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 1986
    iget-wide v1, p0, Landroid/view/MotionEvent;->mNativePtr:J

    if-eqz p1, :cond_0

    or-int/lit8 p0, v0, 0x4

    goto :goto_0

    :cond_0
    and-int/lit8 p0, v0, -0x5

    :goto_0
    invoke-static {v1, v2, p0}, Landroid/view/MotionEvent;->nativeSetFlags(JI)V

    return-void
.end method

.method public final setLocation(FF)V
    .locals 2

    .line 2961
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 2962
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr p1, v0

    sub-float/2addr p2, v1

    .line 2963
    invoke-virtual {p0, p1, p2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return-void
.end method

.method public final setSource(I)V
    .locals 2

    .line 1888
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetSource(JI)I

    return-void
.end method

.method public final setTainted(Z)V
    .locals 3

    .line 1959
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 1960
    iget-wide v1, p0, Landroid/view/MotionEvent;->mNativePtr:J

    if-eqz p1, :cond_0

    const/high16 p0, -0x80000000

    or-int/2addr p0, v0

    goto :goto_0

    :cond_0
    const p0, 0x7fffffff

    and-int/2addr p0, v0

    :goto_0
    invoke-static {v1, v2, p0}, Landroid/view/MotionEvent;->nativeSetFlags(JI)V

    return-void
.end method

.method public final setTargetAccessibilityFocus(Z)V
    .locals 3

    .line 1971
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 1972
    iget-wide v1, p0, Landroid/view/MotionEvent;->mNativePtr:J

    if-eqz p1, :cond_0

    const/high16 p0, 0x40000000    # 2.0f

    or-int/2addr p0, v0

    goto :goto_0

    :cond_0
    const p0, -0x40000001    # -1.9999999f

    and-int/2addr p0, v0

    :goto_0
    invoke-static {v1, v2, p0}, Landroid/view/MotionEvent;->nativeSetFlags(JI)V

    return-void
.end method

.method public final split(I)Landroid/view/MotionEvent;
    .locals 33

    move-object/from16 v0, p0

    .line 3161
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v1

    .line 3162
    sget-object v2, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3163
    :try_start_0
    iget-wide v3, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v3

    .line 3164
    invoke-static {v3}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 3165
    sget-object v24, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 3166
    sget-object v25, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 3167
    sget-object v26, Landroid/view/MotionEvent;->gSharedTempPointerIndexMap:[I

    .line 3169
    iget-wide v4, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v4

    and-int/lit16 v5, v4, 0xff

    const v6, 0xff00

    and-int/2addr v6, v4

    shr-int/lit8 v6, v6, 0x8

    const/4 v7, -0x1

    const/16 v27, 0x0

    move v8, v7

    move/from16 v7, v27

    move v15, v7

    :goto_0
    const/4 v9, 0x1

    if-ge v7, v3, :cond_2

    .line 3177
    iget-wide v10, v0, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v12, v24, v15

    invoke-static {v10, v11, v7, v12}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    .line 3178
    aget-object v10, v24, v15

    iget v10, v10, Landroid/view/MotionEvent$PointerProperties;->id:I

    shl-int/2addr v9, v10

    and-int v9, v9, p1

    if-eqz v9, :cond_1

    if-ne v7, v6, :cond_0

    move v8, v15

    .line 3183
    :cond_0
    aput v7, v26, v15

    add-int/lit8 v15, v15, 0x1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    if-eqz v15, :cond_c

    const/4 v3, 0x5

    if-eq v5, v3, :cond_4

    const/4 v6, 0x6

    if-ne v5, v6, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2

    :cond_4
    :goto_1
    if-gez v8, :cond_5

    const/4 v3, 0x2

    goto :goto_2

    :cond_5
    if-ne v15, v9, :cond_7

    if-ne v5, v3, :cond_6

    move/from16 v9, v27

    :cond_6
    move v3, v9

    goto :goto_2

    :cond_7
    shl-int/lit8 v3, v8, 0x8

    or-int/2addr v3, v5

    .line 3212
    :goto_2
    iget-wide v4, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5}, Landroid/view/MotionEvent;->nativeGetHistorySize(J)I

    move-result v14

    move/from16 v13, v27

    :goto_3
    if-gt v13, v14, :cond_b

    if-ne v13, v14, :cond_8

    const/high16 v4, -0x80000000

    goto :goto_4

    :cond_8
    move v4, v13

    :goto_4
    move/from16 v5, v27

    :goto_5
    if-ge v5, v15, :cond_9

    .line 3217
    iget-wide v6, v0, Landroid/view/MotionEvent;->mNativePtr:J

    aget v8, v26, v5

    aget-object v9, v25, v5

    invoke-static {v6, v7, v8, v4, v9}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 3220
    :cond_9
    iget-wide v5, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v5, v6, v4}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v19

    if-nez v13, :cond_a

    .line 3222
    iget-wide v4, v1, Landroid/view/MotionEvent;->mNativePtr:J

    iget-wide v6, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3223
    invoke-static {v6, v7}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result v6

    iget-wide v7, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v7, v8}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result v7

    iget-wide v8, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3224
    invoke-static {v8, v9}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v9

    iget-wide v10, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3225
    invoke-static {v10, v11}, Landroid/view/MotionEvent;->nativeGetEdgeFlags(J)I

    move-result v10

    iget-wide v11, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v11, v12}, Landroid/view/MotionEvent;->nativeGetMetaState(J)I

    move-result v11

    move/from16 v28, v13

    iget-wide v12, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3226
    invoke-static {v12, v13}, Landroid/view/MotionEvent;->nativeGetButtonState(J)I

    move-result v12

    move/from16 v29, v14

    iget-wide v13, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3227
    invoke-static {v13, v14}, Landroid/view/MotionEvent;->nativeGetXOffset(J)F

    move-result v13

    move/from16 v30, v15

    iget-wide v14, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v14, v15}, Landroid/view/MotionEvent;->nativeGetYOffset(J)F

    move-result v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v31, v1

    move-object/from16 v32, v2

    :try_start_1
    iget-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3228
    invoke-static {v1, v2}, Landroid/view/MotionEvent;->nativeGetXPrecision(J)F

    move-result v15

    iget-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v1, v2}, Landroid/view/MotionEvent;->nativeGetYPrecision(J)F

    move-result v16

    iget-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    .line 3229
    invoke-static {v1, v2}, Landroid/view/MotionEvent;->nativeGetDownTimeNanos(J)J

    move-result-wide v17

    move v8, v3

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v28, v30

    move/from16 v21, v28

    move-object/from16 v22, v24

    move-object/from16 v23, v25

    .line 3222
    invoke-static/range {v4 .. v23}, Landroid/view/MotionEvent;->nativeInitialize(JIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J

    move-result-wide v4

    move-object/from16 v10, v31

    iput-wide v4, v10, Landroid/view/MotionEvent;->mNativePtr:J

    goto :goto_6

    :cond_a
    move-object v10, v1

    move-object/from16 v32, v2

    move v1, v13

    move v2, v14

    move/from16 v28, v15

    .line 3232
    iget-wide v4, v10, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v9, 0x0

    move-wide/from16 v6, v19

    move-object/from16 v8, v25

    invoke-static/range {v4 .. v9}, Landroid/view/MotionEvent;->nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V

    :goto_6
    add-int/lit8 v13, v1, 0x1

    move v14, v2

    move-object v1, v10

    move/from16 v15, v28

    move-object/from16 v2, v32

    goto/16 :goto_3

    :cond_b
    move-object v10, v1

    move-object/from16 v32, v2

    .line 3235
    monitor-exit v32

    return-object v10

    :cond_c
    move-object/from16 v32, v2

    .line 3190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "idBits did not match any ids in the event"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    move-object/from16 v32, v2

    .line 3236
    :goto_7
    monitor-exit v32
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 3241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MotionEvent { action="

    .line 3242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-static {v1}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0"

    const-string v2, ", actionButton="

    .line 3243
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v3

    invoke-static {v3}, Landroid/view/MotionEvent;->buttonStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3245
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_0

    .line 3247
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", id["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v0, v6, v7}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3248
    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 3249
    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    const-string v7, ", x["

    .line 3251
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", y["

    .line 3252
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 3254
    sget-object v5, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", toolType["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3255
    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v6

    invoke-static {v6}, Landroid/view/MotionEvent;->toolTypeToString(I)Ljava/lang/String;

    move-result-object v6

    .line 3254
    invoke-static {v4, v0, v5, v6}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "0"

    const-string v5, ", buttonState="

    .line 3258
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v6

    invoke-static {v6}, Landroid/view/MotionEvent;->buttonStateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v0, v5, v6}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "0"

    const-string v5, ", metaState="

    .line 3259
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v6

    invoke-static {v6}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v0, v5, v6}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "0"

    const-string v5, ", flags=0x"

    .line 3260
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v0, v5, v6}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "0"

    const-string v5, ", edgeFlags=0x"

    .line 3261
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v0, v5, v6}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3262
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, ", pointerCount="

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v0, v4, v1}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3263
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ", historySize="

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, ", eventTime="

    .line 3264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", downTime="

    .line 3266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", deviceId="

    .line 3267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", source=0x"

    .line 3268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    .line 3270
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3271
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final transform(Landroid/graphics/Matrix;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2976
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    iget-wide p0, p1, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p0, p1}, Landroid/view/MotionEvent;->nativeTransform(JJ)V

    return-void

    .line 2973
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "matrix must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 p2, 0x1

    .line 3454
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3455
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeWriteToParcel(JLandroid/os/Parcel;)V

    return-void
.end method
