.class Lcom/yftech/libradio/widget/AutoLayoutManager$ItemLine;
.super Ljava/lang/Object;
.source "AutoLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/widget/AutoLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemLine"
.end annotation


# instance fields
.field private frameIndexs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lineIndex:I

.field final synthetic this$0:Lcom/yftech/libradio/widget/AutoLayoutManager;


# direct methods
.method public constructor <init>(Lcom/yftech/libradio/widget/AutoLayoutManager;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 195
    iput-object p1, p0, Lcom/yftech/libradio/widget/AutoLayoutManager$ItemLine;->this$0:Lcom/yftech/libradio/widget/AutoLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput p2, p0, Lcom/yftech/libradio/widget/AutoLayoutManager$ItemLine;->lineIndex:I

    .line 197
    iput-object p3, p0, Lcom/yftech/libradio/widget/AutoLayoutManager$ItemLine;->frameIndexs:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libradio/widget/AutoLayoutManager$ItemLine;)Ljava/util/List;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/yftech/libradio/widget/AutoLayoutManager$ItemLine;->frameIndexs:Ljava/util/List;

    return-object p0
.end method
