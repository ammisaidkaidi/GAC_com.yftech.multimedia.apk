.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;
.super Ljava/lang/Enum;
.source "ICarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RearviewMirrorCmd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

.field public static final enum FL_MIRROR_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

.field public static final enum FL_MIRROR_LEFT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

.field public static final enum FL_MIRROR_RIGHT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

.field public static final enum FL_MIRROR_UP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

.field public static final enum FOLD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

.field public static final enum FR_MIRROR_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

.field public static final enum FR_MIRROR_LEFT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

.field public static final enum FR_MIRROR_RIGHT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

.field public static final enum FR_MIRROR_UP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

.field public static final enum STOP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

.field public static final enum UNFOLD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 189
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    const-string v1, "STOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->STOP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    .line 190
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    const-string v1, "FL_MIRROR_UP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FL_MIRROR_UP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    .line 191
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    const-string v1, "FL_MIRROR_DOWN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FL_MIRROR_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    .line 192
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    const-string v1, "FL_MIRROR_LEFT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FL_MIRROR_LEFT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    .line 193
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    const-string v1, "FL_MIRROR_RIGHT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FL_MIRROR_RIGHT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    .line 194
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    const-string v1, "FR_MIRROR_UP"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FR_MIRROR_UP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    .line 195
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    const-string v1, "FR_MIRROR_DOWN"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FR_MIRROR_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    .line 196
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    const-string v1, "FR_MIRROR_LEFT"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FR_MIRROR_LEFT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    .line 197
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    const-string v1, "FR_MIRROR_RIGHT"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FR_MIRROR_RIGHT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    .line 198
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    const-string v1, "FOLD"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FOLD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    .line 199
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    const-string v1, "UNFOLD"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->UNFOLD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    .line 200
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    const-string v1, "__UNKNOWN__"

    const/16 v13, 0xb

    const/4 v14, -0x1

    invoke-direct {v0, v1, v13, v14}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    const/16 v0, 0xc

    .line 188
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->STOP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FL_MIRROR_UP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FL_MIRROR_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FL_MIRROR_LEFT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FL_MIRROR_RIGHT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FR_MIRROR_UP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FR_MIRROR_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FR_MIRROR_LEFT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FR_MIRROR_RIGHT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    aput-object v1, v0, v10

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FOLD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    aput-object v1, v0, v11

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->UNFOLD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    aput-object v1, v0, v12

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    aput-object v1, v0, v13

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 203
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 204
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;
    .locals 1

    .line 208
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->STOP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->STOP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    return-object p0

    .line 209
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FL_MIRROR_UP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FL_MIRROR_UP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    return-object p0

    .line 210
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FL_MIRROR_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FL_MIRROR_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    return-object p0

    .line 211
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FL_MIRROR_LEFT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FL_MIRROR_LEFT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    return-object p0

    .line 212
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FL_MIRROR_RIGHT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FL_MIRROR_RIGHT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    return-object p0

    .line 213
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FR_MIRROR_UP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FR_MIRROR_UP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    return-object p0

    .line 214
    :cond_5
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FR_MIRROR_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->value:I

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FR_MIRROR_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    return-object p0

    .line 215
    :cond_6
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FR_MIRROR_LEFT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->value:I

    if-ne p0, v0, :cond_7

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FR_MIRROR_LEFT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    return-object p0

    .line 216
    :cond_7
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FR_MIRROR_RIGHT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->value:I

    if-ne p0, v0, :cond_8

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FR_MIRROR_RIGHT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    return-object p0

    .line 217
    :cond_8
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FOLD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->value:I

    if-ne p0, v0, :cond_9

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FOLD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    return-object p0

    .line 218
    :cond_9
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->UNFOLD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->value:I

    if-ne p0, v0, :cond_a

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->UNFOLD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    return-object p0

    .line 219
    :cond_a
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;
    .locals 1

    .line 188
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;
    .locals 1

    .line 188
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    return-object v0
.end method
