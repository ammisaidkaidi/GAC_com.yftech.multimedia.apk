.class public final enum Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;
.super Ljava/lang/Enum;
.source "IHostConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/IHostConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NumberOfScreen"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;

.field public static final enum ONE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;

.field public static final enum THREE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;

.field public static final enum TOW:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 164
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;

    const-string v1, "TOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;->TOW:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;

    .line 166
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;

    const-string v1, "THREE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;->THREE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;

    .line 168
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;

    const-string v1, "ONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;->ONE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;

    .line 169
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;

    const-string v1, "__UNKNOWN__"

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;

    const/4 v0, 0x4

    .line 162
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;->TOW:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;->THREE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;->ONE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 172
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 173
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;
    .locals 1

    .line 177
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;->TOW:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;->TOW:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;

    return-object p0

    .line 178
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;->THREE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;->THREE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;

    return-object p0

    .line 179
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;->ONE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;->ONE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;

    return-object p0

    .line 180
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;
    .locals 1

    .line 162
    const-class v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;
    .locals 1

    .line 162
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/IHostConfig$NumberOfScreen;

    return-object v0
.end method
