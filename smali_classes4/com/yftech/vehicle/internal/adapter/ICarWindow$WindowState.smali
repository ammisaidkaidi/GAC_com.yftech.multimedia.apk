.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;
.super Ljava/lang/Enum;
.source "ICarWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WindowState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

.field public static final enum BETWEEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

.field public static final enum FULLY_CLOSED:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

.field public static final enum FULLY_OPENED:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

.field public static final enum UNDEFINED_POSITION:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 15
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    const-string v1, "UNDEFINED_POSITION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->UNDEFINED_POSITION:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    .line 17
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    const-string v1, "FULLY_CLOSED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->FULLY_CLOSED:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    .line 19
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    const-string v1, "BETWEEN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->BETWEEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    .line 21
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    const-string v1, "FULLY_OPENED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->FULLY_OPENED:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    .line 22
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    const-string v1, "__UNKNOWN__"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    const/4 v0, 0x5

    .line 13
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->UNDEFINED_POSITION:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->FULLY_CLOSED:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->BETWEEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->FULLY_OPENED:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;
    .locals 1

    .line 30
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->UNDEFINED_POSITION:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->UNDEFINED_POSITION:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    return-object p0

    .line 31
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->FULLY_CLOSED:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->FULLY_CLOSED:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    return-object p0

    .line 32
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->BETWEEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->BETWEEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    return-object p0

    .line 33
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->FULLY_OPENED:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->FULLY_OPENED:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    return-object p0

    .line 34
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;
    .locals 1

    .line 13
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;
    .locals 1

    .line 13
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    return-object v0
.end method
