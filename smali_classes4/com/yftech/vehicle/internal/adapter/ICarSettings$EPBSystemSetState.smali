.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;
.super Ljava/lang/Enum;
.source "ICarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EPBSystemSetState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;

.field public static final enum APPLY:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;

.field public static final enum RELEASE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;

.field public static final enum UNUSABLE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 316
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;

    const-string v1, "RELEASE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;->RELEASE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;

    .line 317
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;

    const-string v1, "APPLY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;->APPLY:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;

    .line 318
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;

    const-string v1, "UNUSABLE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;->UNUSABLE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;

    .line 319
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;

    const-string v1, "__UNKNOWN__"

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;

    const/4 v0, 0x4

    .line 315
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;->RELEASE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;->APPLY:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;->UNUSABLE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 322
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 323
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;
    .locals 1

    .line 327
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;->RELEASE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;->RELEASE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;

    return-object p0

    .line 328
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;->APPLY:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;->APPLY:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;

    return-object p0

    .line 329
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;->UNUSABLE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;->UNUSABLE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;

    return-object p0

    .line 330
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;
    .locals 1

    .line 315
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;
    .locals 1

    .line 315
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemSetState;

    return-object v0
.end method
