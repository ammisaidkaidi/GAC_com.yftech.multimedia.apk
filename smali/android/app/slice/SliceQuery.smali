.class public Landroid/app/slice/SliceQuery;
.super Ljava/lang/Object;
.source "SliceQuery.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SliceQuery"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareTypes(Landroid/app/slice/SliceItem;Ljava/lang/String;)Z
    .locals 2

    .line 178
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "*/*"

    .line 179
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 182
    :cond_0
    invoke-virtual {p0}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    .line 183
    invoke-virtual {p0}, Landroid/app/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 185
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\*"

    const-string v1, ".*"

    .line 186
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static contains(Landroid/app/slice/SliceItem;Landroid/app/slice/SliceItem;)Z
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {p0}, Landroid/app/slice/SliceQuery;->stream(Landroid/app/slice/SliceItem;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Landroid/app/slice/-$$Lambda$SliceQuery$fdDPNErwIni-vCQ6k-MlGGBunoE;

    invoke-direct {v0, p1}, Landroid/app/slice/-$$Lambda$SliceQuery$fdDPNErwIni-vCQ6k-MlGGBunoE;-><init>(Landroid/app/slice/SliceItem;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static find(Landroid/app/slice/Slice;Ljava/lang/String;)Landroid/app/slice/SliceItem;
    .locals 2

    const/4 v0, 0x0

    .line 115
    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    invoke-static {p0, p1, v1, v0}, Landroid/app/slice/SliceQuery;->find(Landroid/app/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/app/slice/SliceItem;

    move-result-object p0

    return-object p0
.end method

.method public static find(Landroid/app/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/slice/SliceItem;
    .locals 3

    const/4 v0, 0x1

    .line 108
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    new-array p2, v0, [Ljava/lang/String;

    aput-object p3, p2, v2

    invoke-static {p0, p1, v1, p2}, Landroid/app/slice/SliceQuery;->find(Landroid/app/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/app/slice/SliceItem;

    move-result-object p0

    return-object p0
.end method

.method public static find(Landroid/app/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/app/slice/SliceItem;
    .locals 4

    .line 136
    invoke-virtual {p0}, Landroid/app/slice/Slice;->getHints()Ljava/util/List;

    move-result-object v0

    .line 137
    new-instance v1, Landroid/app/slice/SliceItem;

    const-string/jumbo v2, "slice"

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, v0}, Landroid/app/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v1, p1, p2, p3}, Landroid/app/slice/SliceQuery;->find(Landroid/app/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/app/slice/SliceItem;

    move-result-object p0

    return-object p0
.end method

.method public static find(Landroid/app/slice/SliceItem;Ljava/lang/String;)Landroid/app/slice/SliceItem;
    .locals 2

    const/4 v0, 0x0

    .line 122
    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    invoke-static {p0, p1, v1, v0}, Landroid/app/slice/SliceQuery;->find(Landroid/app/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/app/slice/SliceItem;

    move-result-object p0

    return-object p0
.end method

.method public static find(Landroid/app/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/slice/SliceItem;
    .locals 3

    const/4 v0, 0x1

    .line 129
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    new-array p2, v0, [Ljava/lang/String;

    aput-object p3, p2, v2

    invoke-static {p0, p1, v1, p2}, Landroid/app/slice/SliceQuery;->find(Landroid/app/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/app/slice/SliceItem;

    move-result-object p0

    return-object p0
.end method

.method public static find(Landroid/app/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/app/slice/SliceItem;
    .locals 1

    .line 145
    invoke-static {p0}, Landroid/app/slice/SliceQuery;->stream(Landroid/app/slice/SliceItem;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Landroid/app/slice/-$$Lambda$SliceQuery$cG9kHpHpv4nbm7p3sCvlkQGlqQw;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/slice/-$$Lambda$SliceQuery$cG9kHpHpv4nbm7p3sCvlkQGlqQw;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 146
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/slice/SliceItem;

    return-object p0
.end method

.method public static findAll(Landroid/app/slice/SliceItem;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/slice/SliceItem;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/slice/SliceItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 84
    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    invoke-static {p0, p1, v1, v0}, Landroid/app/slice/SliceQuery;->findAll(Landroid/app/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static findAll(Landroid/app/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/slice/SliceItem;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/slice/SliceItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 91
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    new-array p2, v0, [Ljava/lang/String;

    aput-object p3, p2, v2

    invoke-static {p0, p1, v1, p2}, Landroid/app/slice/SliceQuery;->findAll(Landroid/app/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static findAll(Landroid/app/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/slice/SliceItem;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 99
    invoke-static {p0}, Landroid/app/slice/SliceQuery;->stream(Landroid/app/slice/SliceItem;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Landroid/app/slice/-$$Lambda$SliceQuery$hLToAajdaMbaf8BUtZ8fpGK980E;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/slice/-$$Lambda$SliceQuery$hLToAajdaMbaf8BUtZ8fpGK980E;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 101
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static findNotContaining(Landroid/app/slice/SliceItem;Ljava/util/List;)Landroid/app/slice/SliceItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/slice/SliceItem;",
            "Ljava/util/List<",
            "Landroid/app/slice/SliceItem;",
            ">;)",
            "Landroid/app/slice/SliceItem;"
        }
    .end annotation

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 63
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 64
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/slice/SliceItem;

    .line 65
    invoke-static {p0, v1}, Landroid/app/slice/SliceQuery;->contains(Landroid/app/slice/SliceItem;Landroid/app/slice/SliceItem;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getPrimaryIcon(Landroid/app/slice/Slice;)Landroid/app/slice/SliceItem;
    .locals 3

    .line 40
    invoke-virtual {p0}, Landroid/app/slice/Slice;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/slice/SliceItem;

    .line 41
    invoke-virtual {v0}, Landroid/app/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "image"

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const-string/jumbo v1, "slice"

    .line 44
    invoke-static {v0, v1}, Landroid/app/slice/SliceQuery;->compareTypes(Landroid/app/slice/SliceItem;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "list"

    .line 45
    invoke-virtual {v0, v1}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const-string v1, "actions"

    .line 46
    invoke-virtual {v0, v1}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "list_item"

    .line 47
    invoke-virtual {v0, v1}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "action"

    .line 48
    invoke-static {v0, v1}, Landroid/app/slice/SliceQuery;->compareTypes(Landroid/app/slice/SliceItem;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "image"

    .line 49
    invoke-static {v0, v1}, Landroid/app/slice/SliceQuery;->find(Landroid/app/slice/SliceItem;Ljava/lang/String;)Landroid/app/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$contains$0(Landroid/app/slice/SliceItem;Landroid/app/slice/SliceItem;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$find$2(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/slice/SliceItem;)Z
    .locals 0

    .line 145
    invoke-static {p3, p0}, Landroid/app/slice/SliceQuery;->compareTypes(Landroid/app/slice/SliceItem;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 146
    invoke-virtual {p3, p1}, Landroid/app/slice/SliceItem;->hasHints([Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p3, p2}, Landroid/app/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$findAll$1(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/slice/SliceItem;)Z
    .locals 0

    .line 99
    invoke-static {p3, p0}, Landroid/app/slice/SliceQuery;->compareTypes(Landroid/app/slice/SliceItem;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 100
    invoke-virtual {p3, p1}, Landroid/app/slice/SliceItem;->hasHints([Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p3, p2}, Landroid/app/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static stream(Landroid/app/slice/SliceItem;)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/slice/SliceItem;",
            ")",
            "Ljava/util/stream/Stream<",
            "Landroid/app/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 154
    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance p0, Landroid/app/slice/SliceQuery$1;

    invoke-direct {p0, v0}, Landroid/app/slice/SliceQuery$1;-><init>(Ljava/util/Queue;)V

    const/4 v0, 0x0

    .line 171
    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    move-result-object p0

    invoke-static {p0, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
