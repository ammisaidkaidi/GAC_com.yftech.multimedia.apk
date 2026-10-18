.class abstract Lcom/android/internal/util/function/pooled/OmniFunction;
.super Ljava/lang/Object;
.source "OmniFunction.java"

# interfaces
.implements Lcom/android/internal/util/function/pooled/PooledFunction;
.implements Ljava/util/function/BiFunction;
.implements Lcom/android/internal/util/function/TriFunction;
.implements Lcom/android/internal/util/function/QuadFunction;
.implements Lcom/android/internal/util/function/QuintFunction;
.implements Lcom/android/internal/util/function/HexFunction;
.implements Lcom/android/internal/util/function/pooled/PooledConsumer;
.implements Ljava/util/function/BiConsumer;
.implements Lcom/android/internal/util/function/TriConsumer;
.implements Lcom/android/internal/util/function/QuadConsumer;
.implements Lcom/android/internal/util/function/QuintConsumer;
.implements Lcom/android/internal/util/function/HexConsumer;
.implements Lcom/android/internal/util/function/pooled/PooledPredicate;
.implements Ljava/util/function/BiPredicate;
.implements Lcom/android/internal/util/function/pooled/PooledSupplier;
.implements Lcom/android/internal/util/function/pooled/PooledRunnable;
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;
.implements Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;
.implements Lcom/android/internal/util/function/pooled/PooledSupplier$OfLong;
.implements Lcom/android/internal/util/function/pooled/PooledSupplier$OfDouble;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "D:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/function/pooled/PooledFunction<",
        "TA;TR;>;",
        "Ljava/util/function/BiFunction<",
        "TA;TB;TR;>;",
        "Lcom/android/internal/util/function/TriFunction<",
        "TA;TB;TC;TR;>;",
        "Lcom/android/internal/util/function/QuadFunction<",
        "TA;TB;TC;TD;TR;>;",
        "Lcom/android/internal/util/function/QuintFunction<",
        "TA;TB;TC;TD;TE;TR;>;",
        "Lcom/android/internal/util/function/HexFunction<",
        "TA;TB;TC;TD;TE;TF;TR;>;",
        "Lcom/android/internal/util/function/pooled/PooledConsumer<",
        "TA;>;",
        "Ljava/util/function/BiConsumer<",
        "TA;TB;>;",
        "Lcom/android/internal/util/function/TriConsumer<",
        "TA;TB;TC;>;",
        "Lcom/android/internal/util/function/QuadConsumer<",
        "TA;TB;TC;TD;>;",
        "Lcom/android/internal/util/function/QuintConsumer<",
        "TA;TB;TC;TD;TE;>;",
        "Lcom/android/internal/util/function/HexConsumer<",
        "TA;TB;TC;TD;TE;TF;>;",
        "Lcom/android/internal/util/function/pooled/PooledPredicate<",
        "TA;>;",
        "Ljava/util/function/BiPredicate<",
        "TA;TB;>;",
        "Lcom/android/internal/util/function/pooled/PooledSupplier<",
        "TR;>;",
        "Lcom/android/internal/util/function/pooled/PooledRunnable;",
        "Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;",
        "Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier<",
        "TR;>;",
        "Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;",
        "Lcom/android/internal/util/function/pooled/PooledSupplier$OfLong;",
        "Lcom/android/internal/util/function/pooled/PooledSupplier$OfDouble;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 72
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 67
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 112
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;TD;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 132
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;TD;TE;)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 137
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;TD;TE;TF;)V"
        }
    .end annotation

    .line 142
    invoke-virtual/range {p0 .. p6}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public abstract andThen(Ljava/util/function/Function;)Lcom/android/internal/util/function/pooled/OmniFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TR;+TV;>;)",
            "Lcom/android/internal/util/function/pooled/OmniFunction<",
            "TA;TB;TC;TD;TE;TF;TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/internal/util/function/pooled/OmniFunction;->andThen(Ljava/util/function/Function;)Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/internal/util/function/pooled/OmniFunction;->andThen(Ljava/util/function/Function;)Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object p0

    return-object p0
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TR;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 58
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)TR;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 53
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;)TR;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 107
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;TD;)TR;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 117
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;TD;TE;)TR;"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 122
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;TD;TE;TF;)TR;"
        }
    .end annotation

    .line 127
    invoke-virtual/range {p0 .. p6}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public asConsumer()Lcom/android/internal/util/function/pooled/PooledConsumer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/util/function/pooled/PooledConsumer<",
            "TA;>;"
        }
    .end annotation

    return-object p0
.end method

.method public asRunnable()Lcom/android/internal/util/function/pooled/PooledRunnable;
    .locals 0

    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 82
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getOrThrow()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/OmniFunction;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method abstract invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;TD;TE;TF;)TR;"
        }
    .end annotation
.end method

.method public abstract negate()Lcom/android/internal/util/function/pooled/OmniFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/util/function/pooled/OmniFunction<",
            "TA;TB;TC;TD;TE;TF;TR;>;"
        }
    .end annotation
.end method

.method public bridge synthetic negate()Ljava/util/function/BiPredicate;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/OmniFunction;->negate()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic negate()Ljava/util/function/Predicate;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/OmniFunction;->negate()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object p0

    return-object p0
.end method

.method public abstract recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/util/function/pooled/OmniFunction<",
            "TA;TB;TC;TD;TE;TF;TR;>;"
        }
    .end annotation
.end method

.method public bridge synthetic recycleOnUse()Lcom/android/internal/util/function/pooled/PooledConsumer;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/OmniFunction;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic recycleOnUse()Lcom/android/internal/util/function/pooled/PooledFunction;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/OmniFunction;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic recycleOnUse()Lcom/android/internal/util/function/pooled/PooledLambda;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/OmniFunction;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic recycleOnUse()Lcom/android/internal/util/function/pooled/PooledPredicate;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/OmniFunction;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/OmniFunction;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier$OfDouble;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/OmniFunction;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/OmniFunction;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier$OfLong;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/OmniFunction;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/OmniFunction;->recycleOnUse()Lcom/android/internal/util/function/pooled/OmniFunction;

    move-result-object p0

    return-object p0
.end method

.method public run()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 77
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public runOrThrow()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Lcom/android/internal/util/function/pooled/OmniFunction;->run()V

    return-void
.end method

.method public test(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 92
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)Z"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 87
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/OmniFunction;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
