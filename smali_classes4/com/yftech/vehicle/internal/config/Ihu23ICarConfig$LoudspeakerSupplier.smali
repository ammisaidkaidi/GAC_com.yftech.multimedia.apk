.class public final enum Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;
.super Ljava/lang/Enum;
.source "Ihu23ICarConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoudspeakerSupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;

.field public static final enum ALPINE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;

.field public static final enum FOSTER:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;

.field public static final enum HARMAN:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;

.field public static final enum LONGDA:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 457
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;

    const-string v1, "LONGDA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;->LONGDA:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;

    .line 459
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;

    const-string v1, "FOSTER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;->FOSTER:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;

    .line 461
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;

    const-string v1, "ALPINE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;->ALPINE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;

    .line 463
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;

    const-string v1, "HARMAN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;->HARMAN:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;

    .line 464
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;

    const-string v1, "__UNKNOWN__"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;

    const/4 v0, 0x5

    .line 455
    new-array v0, v0, [Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;->LONGDA:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;->FOSTER:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;->ALPINE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;->HARMAN:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;->$VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 467
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 468
    iput p3, p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;
    .locals 1

    .line 472
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;->LONGDA:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;->LONGDA:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;

    return-object p0

    .line 473
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;->FOSTER:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;->FOSTER:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;

    return-object p0

    .line 474
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;->ALPINE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;->ALPINE:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;

    return-object p0

    .line 475
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;->HARMAN:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;->HARMAN:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;

    return-object p0

    .line 476
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;
    .locals 1

    .line 455
    const-class v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;
    .locals 1

    .line 455
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;->$VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/config/Ihu23ICarConfig$LoudspeakerSupplier;

    return-object v0
.end method
