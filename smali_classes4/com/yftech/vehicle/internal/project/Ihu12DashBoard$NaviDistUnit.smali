.class public final enum Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;
.super Ljava/lang/Enum;
.source "Ihu12DashBoard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NaviDistUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;

.field public static final enum KILOMETER:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;

.field public static final enum METER:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;

.field public static final enum MILE:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 552
    new-instance v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;

    const-string v1, "METER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;->METER:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;

    .line 553
    new-instance v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;

    const-string v1, "KILOMETER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;->KILOMETER:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;

    .line 554
    new-instance v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;

    const-string v1, "MILE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;->MILE:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;

    .line 555
    new-instance v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;

    const-string v1, "__UNKNOWN__"

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;->__UNKNOWN__:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;

    const/4 v0, 0x4

    .line 551
    new-array v0, v0, [Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;

    sget-object v1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;->METER:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;->KILOMETER:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;->MILE:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;->__UNKNOWN__:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;->$VALUES:[Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 558
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 559
    iput p3, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;
    .locals 1

    .line 562
    sget-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;->METER:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;

    iget v0, v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;->METER:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;

    return-object p0

    .line 563
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;->KILOMETER:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;

    iget v0, v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;->KILOMETER:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;

    return-object p0

    .line 564
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;->MILE:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;

    iget v0, v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;->MILE:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;

    return-object p0

    .line 565
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;->__UNKNOWN__:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;
    .locals 1

    .line 551
    const-class v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;
    .locals 1

    .line 551
    sget-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;->$VALUES:[Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;

    return-object v0
.end method
