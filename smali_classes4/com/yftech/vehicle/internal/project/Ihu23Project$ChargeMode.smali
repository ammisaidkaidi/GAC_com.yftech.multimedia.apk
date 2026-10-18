.class public final enum Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;
.super Ljava/lang/Enum;
.source "Ihu23Project.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/project/Ihu23Project;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChargeMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;

.field public static final enum BOOKING:Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;

.field public static final enum IMMEDIATELY:Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 16
    new-instance v0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;

    const-string v1, "BOOKING"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;->BOOKING:Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;

    .line 17
    new-instance v0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;

    const-string v1, "IMMEDIATELY"

    invoke-direct {v0, v1, v2, v3}, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;->IMMEDIATELY:Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;

    .line 18
    new-instance v0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;

    const-string v1, "__UNKNOWN__"

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;

    const/4 v0, 0x3

    .line 15
    new-array v0, v0, [Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;

    sget-object v1, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;->BOOKING:Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;->IMMEDIATELY:Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;->$VALUES:[Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;
    .locals 1

    .line 26
    sget-object v0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;->BOOKING:Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;->BOOKING:Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;

    return-object p0

    .line 27
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;->IMMEDIATELY:Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;->IMMEDIATELY:Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;

    return-object p0

    .line 28
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;
    .locals 1

    .line 15
    const-class v0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;
    .locals 1

    .line 15
    sget-object v0, Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;->$VALUES:[Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/project/Ihu23Project$ChargeMode;

    return-object v0
.end method
