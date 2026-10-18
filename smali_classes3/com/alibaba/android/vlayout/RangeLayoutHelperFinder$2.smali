.class Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder$2;
.super Ljava/lang/Object;
.source "RangeLayoutHelperFinder.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder;->reverse()Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/alibaba/android/vlayout/LayoutHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder;

.field final synthetic val$i:Ljava/util/ListIterator;


# direct methods
.method constructor <init>(Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder;Ljava/util/ListIterator;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder$2;->this$0:Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder;

    iput-object p2, p0, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder$2;->val$i:Ljava/util/ListIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/alibaba/android/vlayout/LayoutHelper;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder$2$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder$2$1;-><init>(Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder$2;)V

    return-object v0
.end method
