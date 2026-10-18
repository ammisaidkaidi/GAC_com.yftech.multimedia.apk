.class public final enum Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;
.super Ljava/lang/Enum;
.source "Ihu12DashBoard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SeaLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;

.field public static final enum ABOVE_SEA:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;

.field public static final enum BELOW_SEA:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 452
    new-instance v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;

    const-string v1, "BELOW_SEA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;->BELOW_SEA:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;

    .line 453
    new-instance v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;

    const-string v1, "ABOVE_SEA"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;->ABOVE_SEA:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;

    .line 454
    new-instance v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;

    const-string v1, "__UNKNOWN__"

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;->__UNKNOWN__:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;

    const/4 v0, 0x3

    .line 451
    new-array v0, v0, [Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;

    sget-object v1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;->BELOW_SEA:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;->ABOVE_SEA:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;->__UNKNOWN__:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;->$VALUES:[Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 457
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 458
    iput p3, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;
    .locals 1

    .line 461
    sget-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;->BELOW_SEA:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;

    iget v0, v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;->BELOW_SEA:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;

    return-object p0

    .line 462
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;->ABOVE_SEA:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;

    iget v0, v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;->ABOVE_SEA:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;

    return-object p0

    .line 463
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;->__UNKNOWN__:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;
    .locals 1

    .line 451
    const-class v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;
    .locals 1

    .line 451
    sget-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;->$VALUES:[Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;

    return-object v0
.end method
