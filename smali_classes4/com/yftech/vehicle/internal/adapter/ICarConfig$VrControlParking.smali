.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;
.super Ljava/lang/Enum;
.source "ICarConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VrControlParking"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;

.field public static final enum APA:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;

.field public static final enum AVP:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;

.field public static final enum FAPA:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;

.field public static final enum NONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;

.field public static final enum SVM:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1407
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;->NONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;

    .line 1409
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;

    const-string v1, "SVM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;->SVM:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;

    .line 1411
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;

    const-string v1, "APA"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;->APA:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;

    .line 1413
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;

    const-string v1, "FAPA"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;->FAPA:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;

    .line 1415
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;

    const-string v1, "AVP"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;->AVP:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;

    .line 1416
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;

    const-string v1, "__UNKNOWN__"

    const/4 v7, 0x5

    const/4 v8, -0x1

    invoke-direct {v0, v1, v7, v8}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;

    const/4 v0, 0x6

    .line 1405
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;->NONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;->SVM:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;->APA:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;->FAPA:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;->AVP:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;

    aput-object v1, v0, v7

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1419
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1420
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;
    .locals 1

    .line 1424
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;->NONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;->NONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;

    return-object p0

    .line 1425
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;->SVM:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;->SVM:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;

    return-object p0

    .line 1426
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;->APA:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;->APA:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;

    return-object p0

    .line 1427
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;->FAPA:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;->FAPA:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;

    return-object p0

    .line 1428
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;->AVP:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;->AVP:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;

    return-object p0

    .line 1429
    :cond_4
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;
    .locals 1

    .line 1405
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;
    .locals 1

    .line 1405
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;

    return-object v0
.end method
