.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;
.super Ljava/lang/Enum;
.source "ICarTBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarTBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhoneCallState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

.field public static final enum ANSWER:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

.field public static final enum CALL_OVER:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

.field public static final enum CONNECTING:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

.field public static final enum HANG_UP:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

.field public static final enum INCOMING_CALL:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

.field public static final enum NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

.field public static final enum ON_THE_PHONE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 88
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    const-string v1, "NOT_ACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    .line 89
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    const-string v1, "INCOMING_CALL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->INCOMING_CALL:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    .line 90
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    const-string v1, "CONNECTING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->CONNECTING:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    .line 91
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    const-string v1, "ANSWER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->ANSWER:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    .line 92
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    const-string v1, "ON_THE_PHONE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->ON_THE_PHONE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    .line 93
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    const-string v1, "HANG_UP"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->HANG_UP:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    .line 94
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    const-string v1, "CALL_OVER"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->CALL_OVER:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    .line 95
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    const-string v1, "__UNKNOWN__"

    const/4 v9, 0x7

    const/4 v10, -0x1

    invoke-direct {v0, v1, v9, v10}, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    const/16 v0, 0x8

    .line 87
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->INCOMING_CALL:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->CONNECTING:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->ANSWER:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->ON_THE_PHONE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->HANG_UP:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->CALL_OVER:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    aput-object v1, v0, v9

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 99
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;
    .locals 1

    .line 103
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    return-object p0

    .line 104
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->INCOMING_CALL:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->INCOMING_CALL:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    return-object p0

    .line 105
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->CONNECTING:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->CONNECTING:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    return-object p0

    .line 106
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->ANSWER:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->ANSWER:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    return-object p0

    .line 107
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->ON_THE_PHONE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->ON_THE_PHONE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    return-object p0

    .line 108
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->HANG_UP:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->HANG_UP:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    return-object p0

    .line 109
    :cond_5
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->CALL_OVER:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->value:I

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->CALL_OVER:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    return-object p0

    .line 110
    :cond_6
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;
    .locals 1

    .line 87
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;
    .locals 1

    .line 87
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneCallState;

    return-object v0
.end method
