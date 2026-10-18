.class Landroid/app/slice/SliceQuery$1;
.super Ljava/lang/Object;
.source "SliceQuery.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/slice/SliceQuery;->stream(Landroid/app/slice/SliceItem;)Ljava/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/app/slice/SliceItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$items:Ljava/util/Queue;


# direct methods
.method constructor <init>(Ljava/util/Queue;)V
    .locals 0

    .line 155
    iput-object p1, p0, Landroid/app/slice/SliceQuery$1;->val$items:Ljava/util/Queue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    .line 158
    iget-object p0, p0, Landroid/app/slice/SliceQuery$1;->val$items:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->size()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Landroid/app/slice/SliceItem;
    .locals 2

    .line 163
    iget-object v0, p0, Landroid/app/slice/SliceQuery$1;->val$items:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/slice/SliceItem;

    const-string/jumbo v1, "slice"

    .line 164
    invoke-static {v0, v1}, Landroid/app/slice/SliceQuery;->compareTypes(Landroid/app/slice/SliceItem;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "action"

    .line 165
    invoke-static {v0, v1}, Landroid/app/slice/SliceQuery;->compareTypes(Landroid/app/slice/SliceItem;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    :cond_0
    iget-object p0, p0, Landroid/app/slice/SliceQuery$1;->val$items:Ljava/util/Queue;

    invoke-virtual {v0}, Landroid/app/slice/SliceItem;->getSlice()Landroid/app/slice/Slice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 155
    invoke-virtual {p0}, Landroid/app/slice/SliceQuery$1;->next()Landroid/app/slice/SliceItem;

    move-result-object p0

    return-object p0
.end method
