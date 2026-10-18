.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;
.super Ljava/lang/Enum;
.source "ICarTBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarTBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhoneMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

.field public static final enum BCALL_MODE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

.field public static final enum BLUETOOTH_MODE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

.field public static final enum CALLBACK_MODE1:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

.field public static final enum CALLBACK_MODE2:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

.field public static final enum ECALL_MODE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

.field public static final enum NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

.field public static final enum TBOX_MODE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 58
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    const-string v1, "NOT_ACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    .line 59
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    const-string v1, "TBOX_MODE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->TBOX_MODE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    .line 60
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    const-string v1, "BLUETOOTH_MODE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->BLUETOOTH_MODE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    .line 61
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    const-string v1, "BCALL_MODE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->BCALL_MODE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    .line 62
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    const-string v1, "ECALL_MODE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->ECALL_MODE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    .line 63
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    const-string v1, "CALLBACK_MODE1"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->CALLBACK_MODE1:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    .line 64
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    const-string v1, "CALLBACK_MODE2"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->CALLBACK_MODE2:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    .line 65
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    const-string v1, "__UNKNOWN__"

    const/4 v9, 0x7

    const/4 v10, -0x1

    invoke-direct {v0, v1, v9, v10}, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    const/16 v0, 0x8

    .line 57
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->TBOX_MODE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->BLUETOOTH_MODE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->BCALL_MODE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->ECALL_MODE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->CALLBACK_MODE1:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->CALLBACK_MODE2:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    aput-object v1, v0, v9

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;
    .locals 1

    .line 73
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    return-object p0

    .line 74
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->TBOX_MODE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->TBOX_MODE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    return-object p0

    .line 75
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->BLUETOOTH_MODE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->BLUETOOTH_MODE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    return-object p0

    .line 76
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->BCALL_MODE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->BCALL_MODE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    return-object p0

    .line 77
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->ECALL_MODE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->ECALL_MODE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    return-object p0

    .line 78
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->CALLBACK_MODE1:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->CALLBACK_MODE1:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    return-object p0

    .line 79
    :cond_5
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->CALLBACK_MODE2:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->value:I

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->CALLBACK_MODE2:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    return-object p0

    .line 80
    :cond_6
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;
    .locals 1

    .line 57
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;
    .locals 1

    .line 57
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneMode;

    return-object v0
.end method
