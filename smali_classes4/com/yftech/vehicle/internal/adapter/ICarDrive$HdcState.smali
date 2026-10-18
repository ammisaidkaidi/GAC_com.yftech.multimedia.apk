.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;
.super Ljava/lang/Enum;
.source "ICarDrive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDrive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HdcState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;

.field public static final enum HDC_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;

.field public static final enum HDC_OFF:Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;

.field public static final enum HDC_ON:Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;


# instance fields
.field private final rx:I

.field private final tx:I

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 173
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;

    const-string v1, "HDC_OFF"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;->HDC_OFF:Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;

    .line 174
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;

    const-string v1, "HDC_ON"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;->HDC_ON:Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;

    .line 175
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;

    const-string v1, "HDC_FAILURE"

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;->HDC_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;

    .line 176
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;

    const-string v1, "__UNKNOWN__"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;

    const/4 v0, 0x4

    .line 172
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;->HDC_OFF:Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;->HDC_ON:Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;->HDC_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 180
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 181
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;->rx:I

    .line 182
    iput p4, p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;->tx:I

    .line 183
    iget p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;->tx:I

    iput p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;
    .locals 1

    .line 187
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;->HDC_OFF:Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;->rx:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;->HDC_OFF:Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;

    return-object p0

    .line 188
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;->HDC_ON:Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;->rx:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;->HDC_ON:Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;

    return-object p0

    .line 189
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;->HDC_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;->rx:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;->HDC_FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;

    return-object p0

    .line 190
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;
    .locals 1

    .line 172
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;
    .locals 1

    .line 172
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;

    return-object v0
.end method
