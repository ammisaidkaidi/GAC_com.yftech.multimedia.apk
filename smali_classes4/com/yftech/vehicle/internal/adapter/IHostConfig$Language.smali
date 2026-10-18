.class public final enum Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;
.super Ljava/lang/Enum;
.source "IHostConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/IHostConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Language"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

.field public static final enum ARABIC_RESERVED:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

.field public static final enum CHINESE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

.field public static final enum CHINESE_PLUSENGLISH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

.field public static final enum ENGLISH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

.field public static final enum INDONESIAN:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

.field public static final enum RUSSIAN_RESERVED:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

.field public static final enum SPANISH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 127
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    const-string v1, "CHINESE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->CHINESE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    .line 129
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    const-string v1, "ENGLISH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->ENGLISH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    .line 131
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    const-string v1, "ARABIC_RESERVED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->ARABIC_RESERVED:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    .line 133
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    const-string v1, "RUSSIAN_RESERVED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->RUSSIAN_RESERVED:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    .line 135
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    const-string v1, "CHINESE_PLUSENGLISH"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->CHINESE_PLUSENGLISH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    .line 137
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    const-string v1, "SPANISH"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->SPANISH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    .line 139
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    const-string v1, "INDONESIAN"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->INDONESIAN:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    .line 140
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    const-string v1, "__UNKNOWN__"

    const/4 v9, 0x7

    const/4 v10, -0x1

    invoke-direct {v0, v1, v9, v10}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    const/16 v0, 0x8

    .line 125
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->CHINESE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->ENGLISH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->ARABIC_RESERVED:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->RUSSIAN_RESERVED:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->CHINESE_PLUSENGLISH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->SPANISH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->INDONESIAN:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    aput-object v1, v0, v9

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 143
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 144
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;
    .locals 1

    .line 148
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->CHINESE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->CHINESE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    return-object p0

    .line 149
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->ENGLISH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->ENGLISH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    return-object p0

    .line 150
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->ARABIC_RESERVED:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->ARABIC_RESERVED:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    return-object p0

    .line 151
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->RUSSIAN_RESERVED:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->RUSSIAN_RESERVED:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    return-object p0

    .line 152
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->CHINESE_PLUSENGLISH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->CHINESE_PLUSENGLISH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    return-object p0

    .line 153
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->SPANISH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->SPANISH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    return-object p0

    .line 154
    :cond_5
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->INDONESIAN:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->value:I

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->INDONESIAN:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    return-object p0

    .line 155
    :cond_6
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;
    .locals 1

    .line 125
    const-class v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;
    .locals 1

    .line 125
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    return-object v0
.end method
