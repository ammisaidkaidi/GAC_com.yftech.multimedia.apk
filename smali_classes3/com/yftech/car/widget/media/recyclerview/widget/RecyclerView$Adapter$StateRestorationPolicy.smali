.class public final enum Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;
.super Ljava/lang/Enum;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StateRestorationPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

.field public static final enum ALLOW:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

.field public static final enum PREVENT:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

.field public static final enum PREVENT_WHEN_EMPTY:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 7849
    new-instance v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    const-string v1, "ALLOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->ALLOW:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 7854
    new-instance v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    const-string v1, "PREVENT_WHEN_EMPTY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT_WHEN_EMPTY:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 7860
    new-instance v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    const-string v1, "PREVENT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    const/4 v0, 0x3

    .line 7844
    new-array v0, v0, [Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    sget-object v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->ALLOW:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT_WHEN_EMPTY:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT:Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->$VALUES:[Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7844
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;
    .locals 1

    .line 7844
    const-class v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    return-object p0
.end method

.method public static values()[Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;
    .locals 1

    .line 7844
    sget-object v0, Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->$VALUES:[Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    invoke-virtual {v0}, [Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/car/widget/media/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    return-object v0
.end method
