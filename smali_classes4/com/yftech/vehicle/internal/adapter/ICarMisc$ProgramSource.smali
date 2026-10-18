.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;
.super Ljava/lang/Enum;
.source "ICarMisc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProgramSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

.field public static final enum ALL_OFF:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

.field public static final enum AM:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

.field public static final enum AUX:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

.field public static final enum BT:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

.field public static final enum CD:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

.field public static final enum FM:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

.field public static final enum IPOD:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

.field public static final enum SD:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

.field public static final enum USB1:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

.field public static final enum USB2:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

.field public static final enum USB3:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;


# instance fields
.field public radioHz:I

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 155
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    const-string v1, "ALL_OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->ALL_OFF:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    .line 156
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    const-string v1, "AM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->AM:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    .line 157
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    const-string v1, "FM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->FM:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    .line 158
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    const-string v1, "USB1"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->USB1:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    .line 159
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    const-string v1, "USB2"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->USB2:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    .line 160
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    const-string v1, "CD"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->CD:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    .line 161
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    const-string v1, "SD"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->SD:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    .line 162
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    const-string v1, "BT"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->BT:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    .line 163
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    const-string v1, "AUX"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->AUX:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    .line 164
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    const-string v1, "USB3"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->USB3:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    .line 165
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    const-string v1, "IPOD"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->IPOD:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    .line 166
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    const-string v1, "__UNKNOWN__"

    const/16 v13, 0xb

    const/4 v14, -0x1

    invoke-direct {v0, v1, v13, v14}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    const/16 v0, 0xc

    .line 154
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->ALL_OFF:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->AM:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->FM:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->USB1:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->USB2:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->CD:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->SD:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->BT:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->AUX:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    aput-object v1, v0, v10

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->USB3:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    aput-object v1, v0, v11

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->IPOD:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    aput-object v1, v0, v12

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    aput-object v1, v0, v13

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 170
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 171
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;
    .locals 1

    .line 154
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    return-object p0
.end method

.method public static valueOf([B)Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;
    .locals 3

    const/4 v0, 0x0

    .line 178
    aget-byte v0, p0, v0

    const/4 v1, 0x1

    .line 179
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x2

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v1

    .line 180
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->ALL_OFF:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    iget v1, v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->value:I

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->ALL_OFF:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->setRadioHz(I)Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    move-result-object p0

    return-object p0

    .line 181
    :cond_0
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->AM:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    iget v1, v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->value:I

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->AM:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->setRadioHz(I)Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    move-result-object p0

    return-object p0

    .line 182
    :cond_1
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->FM:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    iget v1, v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->value:I

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->FM:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->setRadioHz(I)Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    move-result-object p0

    return-object p0

    .line 183
    :cond_2
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->USB1:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    iget v1, v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->value:I

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->USB1:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->setRadioHz(I)Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    move-result-object p0

    return-object p0

    .line 184
    :cond_3
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->USB2:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    iget v1, v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->value:I

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->USB2:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->setRadioHz(I)Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    move-result-object p0

    return-object p0

    .line 185
    :cond_4
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->CD:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    iget v1, v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->value:I

    if-ne v0, v1, :cond_5

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->CD:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->setRadioHz(I)Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    move-result-object p0

    return-object p0

    .line 186
    :cond_5
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->SD:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    iget v1, v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->value:I

    if-ne v0, v1, :cond_6

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->SD:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->setRadioHz(I)Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    move-result-object p0

    return-object p0

    .line 187
    :cond_6
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->BT:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    iget v1, v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->value:I

    if-ne v0, v1, :cond_7

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->BT:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->setRadioHz(I)Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    move-result-object p0

    return-object p0

    .line 188
    :cond_7
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->AUX:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    iget v1, v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->value:I

    if-ne v0, v1, :cond_8

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->AUX:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->setRadioHz(I)Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    move-result-object p0

    return-object p0

    .line 189
    :cond_8
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->USB3:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    iget v1, v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->value:I

    if-ne v0, v1, :cond_9

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->USB3:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->setRadioHz(I)Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    move-result-object p0

    return-object p0

    .line 190
    :cond_9
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->IPOD:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    iget v1, v1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->value:I

    if-ne v0, v1, :cond_a

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->IPOD:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->setRadioHz(I)Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    move-result-object p0

    return-object p0

    .line 191
    :cond_a
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;
    .locals 1

    .line 154
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;

    return-object v0
.end method


# virtual methods
.method public setRadioHz(I)Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;
    .locals 0

    .line 174
    iput p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;->radioHz:I

    return-object p0
.end method
