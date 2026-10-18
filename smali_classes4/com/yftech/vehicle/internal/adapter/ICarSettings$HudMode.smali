.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;
.super Ljava/lang/Enum;
.source "ICarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HudMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;

.field public static final enum SNOW:Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;

.field public static final enum STANDARD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 862
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;

    const-string v1, "STANDARD"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;->STANDARD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;

    .line 863
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;

    const-string v1, "SNOW"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;->SNOW:Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;

    .line 864
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;

    const-string v1, "__UNKNOWN__"

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;

    const/4 v0, 0x3

    .line 861
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;->STANDARD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;->SNOW:Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 867
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 868
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;
    .locals 1

    .line 872
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;->STANDARD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;->STANDARD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;

    return-object p0

    .line 873
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;->SNOW:Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;->SNOW:Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;

    return-object p0

    .line 874
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;
    .locals 1

    .line 861
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;
    .locals 1

    .line 861
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;

    return-object v0
.end method
