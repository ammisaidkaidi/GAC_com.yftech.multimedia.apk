.class public final enum Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;
.super Ljava/lang/Enum;
.source "Ihu12DashBoard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NaviState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

.field public static final enum NAVIGATING:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

.field public static final enum NAV_OVER:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

.field public static final enum NAV_PLANNING:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

.field public static final enum NAV_START:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

.field public static final enum NOT_NAVIGATED:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 617
    new-instance v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

    const-string v1, "NOT_NAVIGATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;->NOT_NAVIGATED:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

    .line 618
    new-instance v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

    const-string v1, "NAV_PLANNING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;->NAV_PLANNING:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

    .line 619
    new-instance v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

    const-string v1, "NAV_START"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;->NAV_START:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

    .line 620
    new-instance v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

    const-string v1, "NAVIGATING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;->NAVIGATING:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

    .line 621
    new-instance v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

    const-string v1, "NAV_OVER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;->NAV_OVER:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

    .line 622
    new-instance v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

    const-string v1, "__UNKNOWN__"

    const/4 v7, 0x5

    const/4 v8, -0x1

    invoke-direct {v0, v1, v7, v8}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

    const/4 v0, 0x6

    .line 616
    new-array v0, v0, [Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

    sget-object v1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;->NOT_NAVIGATED:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;->NAV_PLANNING:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;->NAV_START:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;->NAVIGATING:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;->NAV_OVER:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

    aput-object v1, v0, v7

    sput-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;->$VALUES:[Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 624
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 625
    iput p3, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;
    .locals 1

    .line 628
    sget-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;->NOT_NAVIGATED:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

    iget v0, v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;->NOT_NAVIGATED:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

    return-object p0

    .line 629
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;->NAV_PLANNING:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

    iget v0, v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;->NAV_PLANNING:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

    return-object p0

    .line 630
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;->NAV_START:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

    iget v0, v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;->NAV_START:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

    return-object p0

    .line 631
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;->NAVIGATING:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

    iget v0, v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;->NAVIGATING:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

    return-object p0

    .line 632
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;->NAV_OVER:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

    iget v0, v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;->NAV_OVER:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

    return-object p0

    .line 633
    :cond_4
    sget-object p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;
    .locals 1

    .line 616
    const-class v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;
    .locals 1

    .line 616
    sget-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;->$VALUES:[Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

    return-object v0
.end method
