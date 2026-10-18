.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;
.super Ljava/lang/Enum;
.source "ICarTBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarTBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhoneKeyAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;

.field public static final enum FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;

.field public static final enum LONG_RELEASE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;

.field public static final enum NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;

.field public static final enum SHORT_RELEASE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 34
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;

    const-string v1, "NOT_ACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;

    .line 35
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;

    const-string v1, "SHORT_RELEASE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;->SHORT_RELEASE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;

    .line 36
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;

    const-string v1, "LONG_RELEASE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;->LONG_RELEASE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;

    .line 37
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;

    const-string v1, "FAILURE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;->FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;

    .line 38
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;

    const-string v1, "__UNKNOWN__"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;

    const/4 v0, 0x5

    .line 33
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;->SHORT_RELEASE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;->LONG_RELEASE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;->FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;
    .locals 1

    .line 46
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;

    return-object p0

    .line 47
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;->SHORT_RELEASE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;->SHORT_RELEASE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;

    return-object p0

    .line 48
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;->LONG_RELEASE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;->LONG_RELEASE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;

    return-object p0

    .line 49
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;->FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;->FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;

    return-object p0

    .line 50
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;
    .locals 1

    .line 33
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;
    .locals 1

    .line 33
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarTBox$PhoneKeyAction;

    return-object v0
.end method
