.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;
.super Ljava/lang/Enum;
.source "ICarDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SvmFunctionCmd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

.field public static final enum REQ_CANCEL:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

.field public static final enum REQ_ENTER:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

.field public static final enum RVM_PARALLEL_PARKING_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

.field public static final enum RVM_REAR_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

.field public static final enum RVM_VERTICAL_PARKING_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

.field public static final enum SVM_ENLARGE_FRONT_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

.field public static final enum SVM_ENLARGE_REAR_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

.field public static final enum SVM_HMI_IN_TRANSITION:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

.field public static final enum SVM_LEFT_BLIND_SPOT_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

.field public static final enum SVM_PARALLEL_PARKING_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

.field public static final enum SVM_PARKING_GUIDANCE_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

.field public static final enum SVM_RIGHT_BLIND_SPOT_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

.field public static final enum SVM_SURROUND_VIEW_AND_FRONT_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

.field public static final enum SVM_SURROUND_VIEW_AND_REAR_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

.field public static final enum SVM_VERTICAL_PARKING_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 34
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    const-string v1, "REQ_CANCEL"

    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->REQ_CANCEL:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    .line 35
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    const-string v1, "REQ_ENTER"

    const/16 v3, 0xe

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v3}, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->REQ_ENTER:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    .line 36
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    const-string v1, "RVM_VERTICAL_PARKING_VIEW"

    const/16 v5, 0xd

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6, v5}, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->RVM_VERTICAL_PARKING_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    .line 37
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    const-string v1, "RVM_PARALLEL_PARKING_VIEW"

    const/16 v7, 0xc

    const/4 v8, 0x3

    invoke-direct {v0, v1, v8, v7}, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->RVM_PARALLEL_PARKING_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    .line 38
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    const-string v1, "RVM_REAR_VIEW"

    const/16 v9, 0xb

    const/4 v10, 0x4

    invoke-direct {v0, v1, v10, v9}, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->RVM_REAR_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    .line 39
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    const-string v1, "SVM_VERTICAL_PARKING_VIEW"

    const/16 v11, 0xa

    const/4 v12, 0x5

    invoke-direct {v0, v1, v12, v11}, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->SVM_VERTICAL_PARKING_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    .line 40
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    const-string v1, "SVM_PARALLEL_PARKING_VIEW"

    const/16 v13, 0x9

    const/4 v14, 0x6

    invoke-direct {v0, v1, v14, v13}, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->SVM_PARALLEL_PARKING_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    .line 41
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    const-string v1, "SVM_PARKING_GUIDANCE_VIEW"

    const/16 v15, 0x8

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v15}, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->SVM_PARKING_GUIDANCE_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    .line 42
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    const-string v1, "SVM_RIGHT_BLIND_SPOT_VIEW"

    invoke-direct {v0, v1, v15, v2}, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->SVM_RIGHT_BLIND_SPOT_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    .line 43
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    const-string v1, "SVM_LEFT_BLIND_SPOT_VIEW"

    invoke-direct {v0, v1, v13, v14}, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->SVM_LEFT_BLIND_SPOT_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    .line 44
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    const-string v1, "SVM_ENLARGE_REAR_VIEW"

    invoke-direct {v0, v1, v11, v12}, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->SVM_ENLARGE_REAR_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    .line 45
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    const-string v1, "SVM_SURROUND_VIEW_AND_REAR_VIEW"

    invoke-direct {v0, v1, v9, v10}, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->SVM_SURROUND_VIEW_AND_REAR_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    .line 46
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    const-string v1, "SVM_ENLARGE_FRONT_VIEW"

    invoke-direct {v0, v1, v7, v8}, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->SVM_ENLARGE_FRONT_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    .line 47
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    const-string v1, "SVM_SURROUND_VIEW_AND_FRONT_VIEW"

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->SVM_SURROUND_VIEW_AND_FRONT_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    .line 48
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    const-string v1, "SVM_HMI_IN_TRANSITION"

    invoke-direct {v0, v1, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->SVM_HMI_IN_TRANSITION:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    .line 49
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    const-string v1, "__UNKNOWN__"

    const/4 v3, -0x1

    const/16 v5, 0xf

    invoke-direct {v0, v1, v5, v3}, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    const/16 v0, 0x10

    .line 33
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->REQ_CANCEL:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->REQ_ENTER:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->RVM_VERTICAL_PARKING_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->RVM_PARALLEL_PARKING_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->RVM_REAR_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    aput-object v1, v0, v10

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->SVM_VERTICAL_PARKING_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    aput-object v1, v0, v12

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->SVM_PARALLEL_PARKING_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    aput-object v1, v0, v14

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->SVM_PARKING_GUIDANCE_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->SVM_RIGHT_BLIND_SPOT_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    aput-object v1, v0, v15

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->SVM_LEFT_BLIND_SPOT_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    aput-object v1, v0, v13

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->SVM_ENLARGE_REAR_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    aput-object v1, v0, v11

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->SVM_SURROUND_VIEW_AND_REAR_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->SVM_ENLARGE_FRONT_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->SVM_SURROUND_VIEW_AND_FRONT_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->SVM_HMI_IN_TRANSITION:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;
    .locals 1

    .line 57
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->REQ_CANCEL:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->REQ_CANCEL:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    return-object p0

    .line 58
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->REQ_ENTER:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->REQ_ENTER:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    return-object p0

    .line 59
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->RVM_VERTICAL_PARKING_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->RVM_VERTICAL_PARKING_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    return-object p0

    .line 60
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->RVM_PARALLEL_PARKING_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->RVM_PARALLEL_PARKING_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    return-object p0

    .line 61
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->RVM_REAR_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->RVM_REAR_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    return-object p0

    .line 62
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->SVM_VERTICAL_PARKING_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->SVM_VERTICAL_PARKING_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    return-object p0

    .line 63
    :cond_5
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->SVM_PARALLEL_PARKING_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->value:I

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->SVM_PARALLEL_PARKING_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    return-object p0

    .line 64
    :cond_6
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->SVM_PARKING_GUIDANCE_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->value:I

    if-ne p0, v0, :cond_7

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->SVM_PARKING_GUIDANCE_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    return-object p0

    .line 65
    :cond_7
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->SVM_RIGHT_BLIND_SPOT_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->value:I

    if-ne p0, v0, :cond_8

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->SVM_RIGHT_BLIND_SPOT_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    return-object p0

    .line 66
    :cond_8
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->SVM_LEFT_BLIND_SPOT_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->value:I

    if-ne p0, v0, :cond_9

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->SVM_LEFT_BLIND_SPOT_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    return-object p0

    .line 67
    :cond_9
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->SVM_ENLARGE_REAR_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->value:I

    if-ne p0, v0, :cond_a

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->SVM_ENLARGE_REAR_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    return-object p0

    .line 68
    :cond_a
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->SVM_SURROUND_VIEW_AND_REAR_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->value:I

    if-ne p0, v0, :cond_b

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->SVM_SURROUND_VIEW_AND_REAR_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    return-object p0

    .line 69
    :cond_b
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->SVM_ENLARGE_FRONT_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->value:I

    if-ne p0, v0, :cond_c

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->SVM_ENLARGE_FRONT_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    return-object p0

    .line 70
    :cond_c
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->SVM_SURROUND_VIEW_AND_FRONT_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->value:I

    if-ne p0, v0, :cond_d

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->SVM_SURROUND_VIEW_AND_FRONT_VIEW:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    return-object p0

    .line 71
    :cond_d
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->SVM_HMI_IN_TRANSITION:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->value:I

    if-ne p0, v0, :cond_e

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->SVM_HMI_IN_TRANSITION:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    return-object p0

    .line 72
    :cond_e
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;
    .locals 1

    .line 33
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;
    .locals 1

    .line 33
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    return-object v0
.end method
