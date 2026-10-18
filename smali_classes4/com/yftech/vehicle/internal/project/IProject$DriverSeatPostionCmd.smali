.class public final enum Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;
.super Ljava/lang/Enum;
.source "IProject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/project/IProject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DriverSeatPostionCmd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;

.field public static final enum RECALL:Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;

.field public static final enum SAVE:Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 80
    new-instance v0, Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;

    const-string v1, "SAVE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;->SAVE:Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;

    .line 81
    new-instance v0, Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;

    const-string v1, "RECALL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;->RECALL:Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;

    .line 82
    new-instance v0, Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;

    const-string v1, "__UNKNOWN__"

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;

    const/4 v0, 0x3

    .line 79
    new-array v0, v0, [Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;

    sget-object v1, Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;->SAVE:Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;->RECALL:Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;->$VALUES:[Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    iput p3, p0, Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;
    .locals 1

    .line 90
    sget-object v0, Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;->SAVE:Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;->SAVE:Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;

    return-object p0

    .line 91
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;->RECALL:Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;->RECALL:Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;

    return-object p0

    .line 92
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;
    .locals 1

    .line 79
    const-class v0, Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;
    .locals 1

    .line 79
    sget-object v0, Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;->$VALUES:[Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/project/IProject$DriverSeatPostionCmd;

    return-object v0
.end method
