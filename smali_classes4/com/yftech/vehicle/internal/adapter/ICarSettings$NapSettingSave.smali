.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;
.super Ljava/lang/Enum;
.source "ICarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NapSettingSave"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;

.field public static final enum CANCEL:Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;

.field public static final enum NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;

.field public static final enum SAVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;

.field public static final enum START:Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 988
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;

    const-string v1, "NO_COMMAND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;

    .line 989
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;

    const-string v1, "CANCEL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;->CANCEL:Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;

    .line 990
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;

    const-string v1, "SAVE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;->SAVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;

    .line 991
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;

    const-string v1, "START"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;->START:Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;

    .line 992
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;

    const-string v1, "__UNKNOWN__"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;

    const/4 v0, 0x5

    .line 987
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;->CANCEL:Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;->SAVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;->START:Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 995
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 996
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;
    .locals 1

    .line 1000
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;

    return-object p0

    .line 1001
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;->CANCEL:Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;->CANCEL:Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;

    return-object p0

    .line 1002
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;->SAVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;->SAVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;

    return-object p0

    .line 1003
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;->START:Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;->START:Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;

    return-object p0

    .line 1004
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;
    .locals 1

    .line 987
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;
    .locals 1

    .line 987
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$NapSettingSave;

    return-object v0
.end method
