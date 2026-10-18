.class Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder$2$1;
.super Ljava/lang/Object;
.source "RangeLayoutHelperFinder.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder$2;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/alibaba/android/vlayout/LayoutHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder$2;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder$2$1;->this$1:Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder$2$1;->this$1:Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder$2;

    iget-object p0, p0, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder$2;->val$i:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result p0

    return p0
.end method

.method public next()Lcom/alibaba/android/vlayout/LayoutHelper;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder$2$1;->this$1:Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder$2;

    iget-object p0, p0, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder$2;->val$i:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/android/vlayout/LayoutHelper;

    return-object p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 67
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder$2$1;->next()Lcom/alibaba/android/vlayout/LayoutHelper;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder$2$1;->this$1:Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder$2;

    iget-object p0, p0, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder$2;->val$i:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->remove()V

    return-void
.end method
