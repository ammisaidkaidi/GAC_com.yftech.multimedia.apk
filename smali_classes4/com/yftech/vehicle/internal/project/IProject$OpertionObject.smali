.class public final enum Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;
.super Ljava/lang/Enum;
.source "IProject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/project/IProject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OpertionObject"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;

.field public static final enum SEAT_POSITION:Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 44
    new-instance v0, Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;

    const-string v1, "SEAT_POSITION"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;->SEAT_POSITION:Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;

    .line 45
    new-instance v0, Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;

    const-string v1, "__UNKNOWN__"

    const/4 v4, -0x1

    invoke-direct {v0, v1, v3, v4}, Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;->__UNKNOWN__:Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;

    const/4 v0, 0x2

    .line 43
    new-array v0, v0, [Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;

    sget-object v1, Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;->SEAT_POSITION:Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;->__UNKNOWN__:Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;

    aput-object v1, v0, v3

    sput-object v0, Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;->$VALUES:[Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;
    .locals 1

    .line 52
    sget-object v0, Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;->SEAT_POSITION:Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;

    iget v0, v0, Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;->SEAT_POSITION:Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;

    return-object p0

    .line 53
    :cond_0
    sget-object p0, Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;->__UNKNOWN__:Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;
    .locals 1

    .line 43
    const-class v0, Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;
    .locals 1

    .line 43
    sget-object v0, Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;->$VALUES:[Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/project/IProject$OpertionObject;

    return-object v0
.end method
