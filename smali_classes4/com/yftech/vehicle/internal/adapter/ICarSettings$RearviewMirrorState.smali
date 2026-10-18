.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;
.super Ljava/lang/Enum;
.source "ICarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RearviewMirrorState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;

.field public static final enum FOLD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;

.field public static final enum UNFOLD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 227
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;

    const-string v1, "FOLD"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;->FOLD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;

    .line 228
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;

    const-string v1, "UNFOLD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;->UNFOLD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;

    .line 229
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;

    const-string v1, "__UNKNOWN__"

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;

    const/4 v0, 0x3

    .line 226
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;->FOLD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;->UNFOLD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 232
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 233
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;
    .locals 1

    .line 237
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;->FOLD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;->FOLD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;

    return-object p0

    .line 238
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;->UNFOLD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;->UNFOLD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;

    return-object p0

    .line 239
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;
    .locals 1

    .line 226
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;
    .locals 1

    .line 226
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;

    return-object v0
.end method
