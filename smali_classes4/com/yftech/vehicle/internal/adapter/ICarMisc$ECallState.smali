.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;
.super Ljava/lang/Enum;
.source "ICarMisc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ECallState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

.field public static final enum CALL_END:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

.field public static final enum CALL_GOING:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

.field public static final enum CALL_LAUNCH:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

.field public static final enum FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

.field public static final enum MALFUNCTION:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

.field public static final enum NO_MESSAGE:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 374
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    const-string v1, "NO_MESSAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->NO_MESSAGE:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    .line 376
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    const-string v1, "CALL_LAUNCH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->CALL_LAUNCH:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    .line 378
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    const-string v1, "CALL_GOING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->CALL_GOING:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    .line 380
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    const-string v1, "CALL_END"

    const/4 v5, 0x3

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->CALL_END:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    .line 382
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    const-string v1, "FAILURE"

    const/16 v7, 0x8

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    .line 384
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    const-string v1, "MALFUNCTION"

    const/4 v7, 0x5

    const/16 v8, 0x10

    invoke-direct {v0, v1, v7, v8}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->MALFUNCTION:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    .line 386
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    const-string v1, "__UNKNOWN__"

    const/4 v8, 0x6

    const/4 v9, -0x1

    invoke-direct {v0, v1, v8, v9}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    const/4 v0, 0x7

    .line 372
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->NO_MESSAGE:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->CALL_LAUNCH:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->CALL_GOING:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->CALL_END:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->MALFUNCTION:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    aput-object v1, v0, v8

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 389
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 390
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;
    .locals 1

    .line 394
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->NO_MESSAGE:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->NO_MESSAGE:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    return-object p0

    .line 395
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->CALL_LAUNCH:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->CALL_LAUNCH:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    return-object p0

    .line 396
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->CALL_GOING:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->CALL_GOING:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    return-object p0

    .line 397
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->CALL_END:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->CALL_END:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    return-object p0

    .line 398
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    return-object p0

    .line 399
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->MALFUNCTION:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->MALFUNCTION:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    return-object p0

    .line 400
    :cond_5
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;
    .locals 1

    .line 372
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;
    .locals 1

    .line 372
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;

    return-object v0
.end method
