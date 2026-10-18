.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;
.super Ljava/lang/Enum;
.source "ICarDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PAAMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

.field public static final enum APA:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

.field public static final enum APA_OFF:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

.field public static final enum CUSTOM_SLOT:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

.field public static final enum HAVP:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

.field public static final enum PAA:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

.field public static final enum PAA_OFF:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

.field public static final enum PAVP:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

.field public static final enum RA:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

.field public static final enum RA_OFF:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

.field public static final enum RPA:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 80
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    const-string v1, "APA"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->APA:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    .line 81
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    const-string v1, "RPA"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->RPA:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    .line 82
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    const-string v1, "HAVP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->HAVP:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    .line 83
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    const-string v1, "PAVP"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->PAVP:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    .line 84
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    const-string v1, "RA"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->RA:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    .line 85
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    const-string v1, "CUSTOM_SLOT"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v8}, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->CUSTOM_SLOT:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    .line 86
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    const-string v1, "PAA"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v8, v9}, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->PAA:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    .line 87
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    const-string v1, "APA_OFF"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v9, v10}, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->APA_OFF:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    .line 88
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    const-string v1, "PAA_OFF"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v10, v11}, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->PAA_OFF:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    .line 89
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    const-string v1, "RA_OFF"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v11, v12}, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->RA_OFF:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    .line 90
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    const-string v1, "__UNKNOWN__"

    const/4 v13, -0x1

    invoke-direct {v0, v1, v12, v13}, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    const/16 v0, 0xb

    .line 79
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->APA:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->RPA:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->HAVP:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->PAVP:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->RA:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->CUSTOM_SLOT:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->PAA:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->APA_OFF:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->PAA_OFF:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    aput-object v1, v0, v10

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->RA_OFF:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    aput-object v1, v0, v11

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    aput-object v1, v0, v12

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 94
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;
    .locals 1

    .line 98
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->APA:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->APA:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    return-object p0

    .line 99
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->RPA:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->RPA:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    return-object p0

    .line 100
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->HAVP:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->HAVP:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    return-object p0

    .line 101
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->PAVP:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->PAVP:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    return-object p0

    .line 102
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->RA:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->RA:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    return-object p0

    .line 103
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->CUSTOM_SLOT:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->CUSTOM_SLOT:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    return-object p0

    .line 104
    :cond_5
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->PAA:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->value:I

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->PAA:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    return-object p0

    .line 105
    :cond_6
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->APA_OFF:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->value:I

    if-ne p0, v0, :cond_7

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->APA_OFF:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    return-object p0

    .line 106
    :cond_7
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->PAA_OFF:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->value:I

    if-ne p0, v0, :cond_8

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->PAA_OFF:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    return-object p0

    .line 107
    :cond_8
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->RA_OFF:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->value:I

    if-ne p0, v0, :cond_9

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->RA_OFF:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    return-object p0

    .line 108
    :cond_9
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;
    .locals 1

    .line 79
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;
    .locals 1

    .line 79
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    return-object v0
.end method
