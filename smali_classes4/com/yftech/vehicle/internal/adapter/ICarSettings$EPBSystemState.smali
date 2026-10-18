.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;
.super Ljava/lang/Enum;
.source "ICarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EPBSystemState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

.field public static final enum APPLY:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

.field public static final enum APPLYING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

.field public static final enum DISENGAGED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

.field public static final enum FAULT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

.field public static final enum RELEASE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

.field public static final enum RELEASING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 339
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

    const-string v1, "RELEASE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;->RELEASE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

    .line 341
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

    const-string v1, "APPLY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;->APPLY:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

    .line 342
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

    const-string v1, "RELEASING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;->RELEASING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

    .line 343
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

    const-string v1, "APPLYING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;->APPLYING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

    .line 345
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

    const-string v1, "DISENGAGED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;->DISENGAGED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

    .line 347
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

    const-string v1, "FAULT"

    const/4 v7, 0x7

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v7}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;->FAULT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

    .line 348
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

    const-string v1, "__UNKNOWN__"

    const/4 v9, 0x6

    const/4 v10, -0x1

    invoke-direct {v0, v1, v9, v10}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

    .line 337
    new-array v0, v7, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;->RELEASE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;->APPLY:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;->RELEASING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;->APPLYING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;->DISENGAGED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;->FAULT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

    aput-object v1, v0, v9

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 351
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 352
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;
    .locals 1

    .line 356
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;->RELEASE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;->RELEASE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

    return-object p0

    .line 357
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;->APPLY:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;->APPLY:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

    return-object p0

    .line 358
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;->RELEASING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;->RELEASING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

    return-object p0

    .line 359
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;->APPLYING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;->APPLYING:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

    return-object p0

    .line 360
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;->DISENGAGED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;->DISENGAGED:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

    return-object p0

    .line 361
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;->FAULT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;->FAULT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

    return-object p0

    .line 362
    :cond_5
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;
    .locals 1

    .line 337
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;
    .locals 1

    .line 337
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;

    return-object v0
.end method
