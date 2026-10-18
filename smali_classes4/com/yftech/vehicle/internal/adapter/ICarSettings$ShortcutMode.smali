.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;
.super Ljava/lang/Enum;
.source "ICarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShortcutMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

.field public static final enum BOTH_SPA_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

.field public static final enum LH_SPA_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

.field public static final enum NAP_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

.field public static final enum PARTY_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

.field public static final enum QUIT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

.field public static final enum RAINSTORM_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

.field public static final enum RH_SPA_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

.field public static final enum WAKE_UP_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 134
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    const-string v1, "QUIT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->QUIT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    .line 135
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    const-string v1, "RAINSTORM_MODE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->RAINSTORM_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    .line 136
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    const-string v1, "NAP_MODE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->NAP_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    .line 137
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    const-string v1, "WAKE_UP_MODE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->WAKE_UP_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    .line 138
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    const-string v1, "PARTY_MODE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->PARTY_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    .line 139
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    const-string v1, "LH_SPA_MODE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v8}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->LH_SPA_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    .line 140
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    const-string v1, "RH_SPA_MODE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v8, v9}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->RH_SPA_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    .line 141
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    const-string v1, "BOTH_SPA_MODE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v9, v10}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->BOTH_SPA_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    .line 142
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    const-string v1, "__UNKNOWN__"

    const/4 v11, -0x1

    invoke-direct {v0, v1, v10, v11}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    const/16 v0, 0x9

    .line 133
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->QUIT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->RAINSTORM_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->NAP_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->WAKE_UP_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->PARTY_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->LH_SPA_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->RH_SPA_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->BOTH_SPA_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    aput-object v1, v0, v10

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 145
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 146
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;
    .locals 1

    .line 150
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->QUIT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->QUIT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    return-object p0

    .line 151
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->RAINSTORM_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->RAINSTORM_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    return-object p0

    .line 152
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->NAP_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->NAP_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    return-object p0

    .line 153
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->WAKE_UP_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->WAKE_UP_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    return-object p0

    .line 154
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->PARTY_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->PARTY_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    return-object p0

    .line 155
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->LH_SPA_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->LH_SPA_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    return-object p0

    .line 156
    :cond_5
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->RH_SPA_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->value:I

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->RH_SPA_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    return-object p0

    .line 157
    :cond_6
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->BOTH_SPA_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->value:I

    if-ne p0, v0, :cond_7

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->BOTH_SPA_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    return-object p0

    .line 158
    :cond_7
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;
    .locals 1

    .line 133
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;
    .locals 1

    .line 133
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$ShortcutMode;

    return-object v0
.end method
