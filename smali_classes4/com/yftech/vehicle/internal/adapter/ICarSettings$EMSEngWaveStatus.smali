.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;
.super Ljava/lang/Enum;
.source "ICarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EMSEngWaveStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;

.field public static final enum EAV_BLOCK_ERROR:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;

.field public static final enum INVALID:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;

.field public static final enum OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;

.field public static final enum ON:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 964
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;->INVALID:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;

    .line 965
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;

    const-string v1, "OFF"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;

    .line 966
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;

    const-string v1, "ON"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;->ON:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;

    .line 967
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;

    const-string v1, "EAV_BLOCK_ERROR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;->EAV_BLOCK_ERROR:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;

    .line 968
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;

    const-string v1, "__UNKNOWN__"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;

    const/4 v0, 0x5

    .line 963
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;->INVALID:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;->ON:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;->EAV_BLOCK_ERROR:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 971
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 972
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;
    .locals 1

    .line 976
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;->INVALID:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;->INVALID:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;

    return-object p0

    .line 977
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;

    return-object p0

    .line 978
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;->ON:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;->ON:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;

    return-object p0

    .line 979
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;->EAV_BLOCK_ERROR:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;->EAV_BLOCK_ERROR:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;

    return-object p0

    .line 980
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;
    .locals 1

    .line 963
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;
    .locals 1

    .line 963
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;

    return-object v0
.end method
