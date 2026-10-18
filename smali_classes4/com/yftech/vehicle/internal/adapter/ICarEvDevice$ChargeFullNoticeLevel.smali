.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;
.super Ljava/lang/Enum;
.source "ICarEvDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarEvDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChargeFullNoticeLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;

.field public static final enum LEVEL_2:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;

.field public static final enum LEVEL_3:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;

.field public static final enum NO_NOTICE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 136
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;

    const-string v1, "NO_NOTICE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;->NO_NOTICE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;

    .line 137
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;

    const-string v1, "LEVEL_2"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;->LEVEL_2:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;

    .line 138
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;

    const-string v1, "LEVEL_3"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;->LEVEL_3:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;

    .line 139
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;

    const-string v1, "__UNKNOWN__"

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;

    const/4 v0, 0x4

    .line 135
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;->NO_NOTICE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;->LEVEL_2:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;->LEVEL_3:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 143
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;
    .locals 1

    .line 147
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;->NO_NOTICE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;->NO_NOTICE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;

    return-object p0

    .line 148
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;->LEVEL_2:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;->LEVEL_2:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;

    return-object p0

    .line 149
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;->LEVEL_3:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;->LEVEL_3:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;

    return-object p0

    .line 150
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;
    .locals 1

    .line 135
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;
    .locals 1

    .line 135
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;

    return-object v0
.end method
