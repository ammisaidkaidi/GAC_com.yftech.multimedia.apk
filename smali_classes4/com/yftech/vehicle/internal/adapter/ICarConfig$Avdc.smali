.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;
.super Ljava/lang/Enum;
.source "ICarConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Avdc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;

.field public static final enum ECO_PLUSCOMFORT_PLUSSPORT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;

.field public static final enum NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1187
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;

    const-string v1, "NOT_PRESENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;

    .line 1189
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;

    const-string v1, "ECO_PLUSCOMFORT_PLUSSPORT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;->ECO_PLUSCOMFORT_PLUSSPORT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;

    .line 1190
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;

    const-string v1, "__UNKNOWN__"

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;

    const/4 v0, 0x3

    .line 1185
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;->ECO_PLUSCOMFORT_PLUSSPORT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1193
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1194
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;
    .locals 1

    .line 1198
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;

    return-object p0

    .line 1199
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;->ECO_PLUSCOMFORT_PLUSSPORT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;->ECO_PLUSCOMFORT_PLUSSPORT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;

    return-object p0

    .line 1200
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;
    .locals 1

    .line 1185
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;
    .locals 1

    .line 1185
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;

    return-object v0
.end method
