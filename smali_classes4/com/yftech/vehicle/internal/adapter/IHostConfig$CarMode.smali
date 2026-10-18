.class public final enum Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;
.super Ljava/lang/Enum;
.source "IHostConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/IHostConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CarMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;

.field public static final enum CAR_MODE1:Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;

.field public static final enum CAR_MODE2:Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;

.field public static final enum CAR_MODE3:Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;

.field public static final enum CAR_MODE4:Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 189
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;

    const-string v1, "CAR_MODE1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;->CAR_MODE1:Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;

    .line 191
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;

    const-string v1, "CAR_MODE2"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;->CAR_MODE2:Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;

    .line 193
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;

    const-string v1, "CAR_MODE3"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;->CAR_MODE3:Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;

    .line 195
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;

    const-string v1, "CAR_MODE4"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;->CAR_MODE4:Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;

    .line 196
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;

    const-string v1, "__UNKNOWN__"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;

    const/4 v0, 0x5

    .line 187
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;->CAR_MODE1:Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;->CAR_MODE2:Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;->CAR_MODE3:Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;->CAR_MODE4:Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 199
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 200
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;
    .locals 1

    .line 204
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;->CAR_MODE1:Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;->CAR_MODE1:Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;

    return-object p0

    .line 205
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;->CAR_MODE2:Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;->CAR_MODE2:Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;

    return-object p0

    .line 206
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;->CAR_MODE3:Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;->CAR_MODE3:Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;

    return-object p0

    .line 207
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;->CAR_MODE4:Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;->CAR_MODE4:Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;

    return-object p0

    .line 208
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;
    .locals 1

    .line 187
    const-class v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;
    .locals 1

    .line 187
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/IHostConfig$CarMode;

    return-object v0
.end method
