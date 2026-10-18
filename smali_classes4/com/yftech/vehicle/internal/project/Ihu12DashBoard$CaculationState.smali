.class public final enum Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;
.super Ljava/lang/Enum;
.source "Ihu12DashBoard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CaculationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;

.field public static final enum CACULATION_DONE:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;

.field public static final enum IN_CACULATION:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;

.field public static final enum NOT_IN_NAVI:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 641
    new-instance v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;

    const-string v1, "IN_CACULATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;->IN_CACULATION:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;

    .line 642
    new-instance v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;

    const-string v1, "CACULATION_DONE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;->CACULATION_DONE:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;

    .line 643
    new-instance v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;

    const-string v1, "NOT_IN_NAVI"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;->NOT_IN_NAVI:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;

    .line 644
    new-instance v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;

    const-string v1, "__UNKNOWN__"

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;

    const/4 v0, 0x4

    .line 640
    new-array v0, v0, [Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;

    sget-object v1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;->IN_CACULATION:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;->CACULATION_DONE:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;->NOT_IN_NAVI:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;->$VALUES:[Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 646
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 647
    iput p3, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;
    .locals 1

    .line 650
    sget-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;->IN_CACULATION:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;

    iget v0, v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;->IN_CACULATION:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;

    return-object p0

    .line 651
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;->CACULATION_DONE:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;

    iget v0, v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;->CACULATION_DONE:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;

    return-object p0

    .line 652
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;->NOT_IN_NAVI:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;

    iget v0, v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;->NOT_IN_NAVI:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;

    return-object p0

    .line 653
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;
    .locals 1

    .line 640
    const-class v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;
    .locals 1

    .line 640
    sget-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;->$VALUES:[Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;

    return-object v0
.end method
