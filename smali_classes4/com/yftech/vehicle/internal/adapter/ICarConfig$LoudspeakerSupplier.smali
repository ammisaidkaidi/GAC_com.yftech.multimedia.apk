.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;
.super Ljava/lang/Enum;
.source "ICarConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoudspeakerSupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;

.field public static final enum ALPINE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;

.field public static final enum FOSTER:Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;

.field public static final enum HARMAN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;

.field public static final enum LONGDA:Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 793
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;

    const-string v1, "LONGDA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;->LONGDA:Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;

    .line 795
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;

    const-string v1, "FOSTER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;->FOSTER:Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;

    .line 797
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;

    const-string v1, "ALPINE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;->ALPINE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;

    .line 799
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;

    const-string v1, "HARMAN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;->HARMAN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;

    .line 800
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;

    const-string v1, "__UNKNOWN__"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;

    const/4 v0, 0x5

    .line 791
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;->LONGDA:Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;->FOSTER:Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;->ALPINE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;->HARMAN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 803
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 804
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;
    .locals 1

    .line 808
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;->LONGDA:Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;->LONGDA:Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;

    return-object p0

    .line 809
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;->FOSTER:Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;->FOSTER:Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;

    return-object p0

    .line 810
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;->ALPINE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;->ALPINE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;

    return-object p0

    .line 811
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;->HARMAN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;->HARMAN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;

    return-object p0

    .line 812
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;
    .locals 1

    .line 791
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;
    .locals 1

    .line 791
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;

    return-object v0
.end method
