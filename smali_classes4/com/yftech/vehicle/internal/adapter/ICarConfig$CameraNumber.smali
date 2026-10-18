.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;
.super Ljava/lang/Enum;
.source "ICarConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraNumber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

.field public static final enum EXTERNAL_AVM:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

.field public static final enum NONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

.field public static final enum RVC:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

.field public static final enum SVM:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

.field public static final enum SVM_PLUSAPA:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

.field public static final enum SVM_PLUSAVP:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

.field public static final enum SVM_PLUSFAPA:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 921
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->NONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    .line 923
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    const-string v1, "RVC"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->RVC:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    .line 925
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    const-string v1, "SVM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->SVM:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    .line 927
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    const-string v1, "SVM_PLUSAPA"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->SVM_PLUSAPA:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    .line 929
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    const-string v1, "SVM_PLUSFAPA"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->SVM_PLUSFAPA:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    .line 931
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    const-string v1, "SVM_PLUSAVP"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->SVM_PLUSAVP:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    .line 933
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    const-string v1, "EXTERNAL_AVM"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->EXTERNAL_AVM:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    .line 934
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    const-string v1, "__UNKNOWN__"

    const/4 v9, 0x7

    const/4 v10, -0x1

    invoke-direct {v0, v1, v9, v10}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    const/16 v0, 0x8

    .line 919
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->NONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->RVC:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->SVM:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->SVM_PLUSAPA:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->SVM_PLUSFAPA:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->SVM_PLUSAVP:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->EXTERNAL_AVM:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    aput-object v1, v0, v9

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 937
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 938
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;
    .locals 1

    .line 942
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->NONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->NONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    return-object p0

    .line 943
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->RVC:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->RVC:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    return-object p0

    .line 944
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->SVM:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->SVM:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    return-object p0

    .line 945
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->SVM_PLUSAPA:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->SVM_PLUSAPA:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    return-object p0

    .line 946
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->SVM_PLUSFAPA:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->SVM_PLUSFAPA:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    return-object p0

    .line 947
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->SVM_PLUSAVP:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->SVM_PLUSAVP:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    return-object p0

    .line 948
    :cond_5
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->EXTERNAL_AVM:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->value:I

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->EXTERNAL_AVM:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    return-object p0

    .line 949
    :cond_6
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;
    .locals 1

    .line 919
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;
    .locals 1

    .line 919
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    return-object v0
.end method
