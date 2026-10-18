.class public final enum Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;
.super Ljava/lang/Enum;
.source "IHostConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/IHostConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Keytone"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;

.field public static final enum MODERN:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;

.field public static final enum NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;

.field public static final enum NO_KEYTONE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;

.field public static final enum VINTAGE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 633
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;

    const-string v1, "NOT_PRESENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;

    .line 635
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;

    const-string v1, "MODERN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;->MODERN:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;

    .line 637
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;

    const-string v1, "VINTAGE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;->VINTAGE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;

    .line 639
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;

    const-string v1, "NO_KEYTONE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;->NO_KEYTONE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;

    .line 640
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;

    const-string v1, "__UNKNOWN__"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;

    const/4 v0, 0x5

    .line 631
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;->MODERN:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;->VINTAGE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;->NO_KEYTONE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 643
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 644
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;
    .locals 1

    .line 648
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;

    return-object p0

    .line 649
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;->MODERN:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;->MODERN:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;

    return-object p0

    .line 650
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;->VINTAGE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;->VINTAGE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;

    return-object p0

    .line 651
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;->NO_KEYTONE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;->NO_KEYTONE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;

    return-object p0

    .line 652
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;
    .locals 1

    .line 631
    const-class v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;
    .locals 1

    .line 631
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/IHostConfig$Keytone;

    return-object v0
.end method
