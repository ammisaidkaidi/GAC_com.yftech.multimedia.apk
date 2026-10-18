.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;
.super Ljava/lang/Enum;
.source "ICarEvDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarEvDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HealCheckNotice"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;

.field public static final enum NOTICE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;

.field public static final enum NO_NOTICE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 158
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;

    const-string v1, "NO_NOTICE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;->NO_NOTICE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;

    .line 159
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;

    const-string v1, "NOTICE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;->NOTICE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;

    .line 160
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;

    const-string v1, "__UNKNOWN__"

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;

    const/4 v0, 0x3

    .line 157
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;->NO_NOTICE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;->NOTICE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 163
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 164
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;
    .locals 1

    .line 168
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;->NO_NOTICE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;->NO_NOTICE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;

    return-object p0

    .line 169
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;->NOTICE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;->NOTICE:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;

    return-object p0

    .line 170
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;
    .locals 1

    .line 157
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;
    .locals 1

    .line 157
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;

    return-object v0
.end method
