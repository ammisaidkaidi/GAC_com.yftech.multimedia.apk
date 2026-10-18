.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;
.super Ljava/lang/Enum;
.source "ICarMisc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TftColorState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

.field public static final enum BLACK:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

.field public static final enum BLUE:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

.field public static final enum GREEN:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

.field public static final enum RED:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

.field public static final enum STOP_CTL:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

.field public static final enum WHITE:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;


# instance fields
.field public isOpened:Z

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 87
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    const-string v1, "STOP_CTL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->STOP_CTL:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    .line 88
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    const-string v1, "RED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->RED:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    .line 89
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    const-string v1, "GREEN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->GREEN:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    .line 90
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    const-string v1, "BLUE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->BLUE:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    .line 91
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    const-string v1, "BLACK"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->BLACK:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    .line 92
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    const-string v1, "WHITE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->WHITE:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    .line 93
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    const-string v1, "__UNKNOWN__"

    const/4 v8, 0x6

    const/4 v9, -0x1

    invoke-direct {v0, v1, v8, v9}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    const/4 v0, 0x7

    .line 86
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->STOP_CTL:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->RED:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->GREEN:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->BLUE:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->BLACK:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->WHITE:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    aput-object v1, v0, v8

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 97
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;
    .locals 2

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 p0, p0, 0xff

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 107
    :goto_0
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->STOP_CTL:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    iget p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->value:I

    if-ne v0, p0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->STOP_CTL:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    invoke-virtual {p0, v1}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->setIsOpened(Z)Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    move-result-object p0

    return-object p0

    .line 108
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->RED:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    iget p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->value:I

    if-ne v0, p0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->RED:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    invoke-virtual {p0, v1}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->setIsOpened(Z)Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    move-result-object p0

    return-object p0

    .line 109
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->GREEN:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    iget p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->value:I

    if-ne v0, p0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->GREEN:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    invoke-virtual {p0, v1}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->setIsOpened(Z)Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    move-result-object p0

    return-object p0

    .line 110
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->BLUE:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    iget p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->value:I

    if-ne v0, p0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->BLUE:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    invoke-virtual {p0, v1}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->setIsOpened(Z)Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    move-result-object p0

    return-object p0

    .line 111
    :cond_4
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->BLACK:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    iget p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->value:I

    if-ne v0, p0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->BLACK:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    invoke-virtual {p0, v1}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->setIsOpened(Z)Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    move-result-object p0

    return-object p0

    .line 112
    :cond_5
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->WHITE:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    iget p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->value:I

    if-ne v0, p0, :cond_6

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->WHITE:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    invoke-virtual {p0, v1}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->setIsOpened(Z)Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    move-result-object p0

    return-object p0

    .line 113
    :cond_6
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;
    .locals 1

    .line 86
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;
    .locals 1

    .line 86
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;

    return-object v0
.end method


# virtual methods
.method public setIsOpened(Z)Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;->isOpened:Z

    return-object p0
.end method
