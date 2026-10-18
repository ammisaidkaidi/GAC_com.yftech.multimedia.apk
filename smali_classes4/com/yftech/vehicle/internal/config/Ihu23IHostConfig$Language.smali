.class public final enum Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;
.super Ljava/lang/Enum;
.source "Ihu23IHostConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Language"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;

.field public static final enum ARABIC_RESERVED:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;

.field public static final enum CHINESE:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;

.field public static final enum ENGLISH:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;

.field public static final enum RUSSIAN_RESERVED:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 94
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;

    const-string v1, "CHINESE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;->CHINESE:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;

    .line 96
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;

    const-string v1, "ENGLISH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;->ENGLISH:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;

    .line 98
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;

    const-string v1, "ARABIC_RESERVED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;->ARABIC_RESERVED:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;

    .line 99
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;

    const-string v1, "RUSSIAN_RESERVED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;->RUSSIAN_RESERVED:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;

    .line 100
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;

    const-string v1, "__UNKNOWN__"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;

    const/4 v0, 0x5

    .line 92
    new-array v0, v0, [Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;->CHINESE:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;->ENGLISH:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;->ARABIC_RESERVED:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;->RUSSIAN_RESERVED:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;->$VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 104
    iput p3, p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;
    .locals 1

    .line 108
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;->CHINESE:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;->CHINESE:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;

    return-object p0

    .line 109
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;->ENGLISH:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;->ENGLISH:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;

    return-object p0

    .line 110
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;->ARABIC_RESERVED:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;->ARABIC_RESERVED:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;

    return-object p0

    .line 111
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;->RUSSIAN_RESERVED:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;->RUSSIAN_RESERVED:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;

    return-object p0

    .line 112
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;
    .locals 1

    .line 92
    const-class v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;
    .locals 1

    .line 92
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;->$VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Language;

    return-object v0
.end method
