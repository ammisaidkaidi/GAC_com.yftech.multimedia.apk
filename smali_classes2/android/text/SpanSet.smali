.class public Landroid/text/SpanSet;
.super Ljava/lang/Object;
.source "SpanSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final classType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+TE;>;"
        }
    .end annotation
.end field

.field numberOfSpans:I

.field spanEnds:[I

.field spanFlags:[I

.field spanStarts:[I

.field spans:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TE;>;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/text/SpanSet;->classType:Ljava/lang/Class;

    const/4 p1, 0x0

    .line 42
    iput p1, p0, Landroid/text/SpanSet;->numberOfSpans:I

    return-void
.end method


# virtual methods
.method getNextTransition(II)I
    .locals 3

    const/4 v0, 0x0

    .line 101
    :goto_0
    iget v1, p0, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v0, v1, :cond_2

    .line 102
    iget-object v1, p0, Landroid/text/SpanSet;->spanStarts:[I

    aget v1, v1, v0

    .line 103
    iget-object v2, p0, Landroid/text/SpanSet;->spanEnds:[I

    aget v2, v2, v0

    if-le v1, p1, :cond_0

    if-ge v1, p2, :cond_0

    move p2, v1

    :cond_0
    if-le v2, p1, :cond_1

    if-ge v2, p2, :cond_1

    move p2, v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p2
.end method

.method public hasSpansIntersecting(II)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 89
    :goto_0
    iget v2, p0, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v1, v2, :cond_2

    .line 91
    iget-object v2, p0, Landroid/text/SpanSet;->spanStarts:[I

    aget v2, v2, v1

    if-ge v2, p2, :cond_1

    iget-object v2, p0, Landroid/text/SpanSet;->spanEnds:[I

    aget v2, v2, v1

    if-gt v2, p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public init(Landroid/text/Spanned;II)V
    .locals 8

    .line 47
    iget-object v0, p0, Landroid/text/SpanSet;->classType:Ljava/lang/Class;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    .line 48
    array-length p3, p2

    if-lez p3, :cond_1

    .line 50
    iget-object v0, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    array-length v0, v0

    if-ge v0, p3, :cond_1

    .line 52
    :cond_0
    iget-object v0, p0, Landroid/text/SpanSet;->classType:Ljava/lang/Class;

    invoke-static {v0, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    .line 53
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/text/SpanSet;->spanStarts:[I

    .line 54
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/text/SpanSet;->spanEnds:[I

    .line 55
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/text/SpanSet;->spanFlags:[I

    .line 58
    :cond_1
    iget v0, p0, Landroid/text/SpanSet;->numberOfSpans:I

    const/4 v1, 0x0

    .line 59
    iput v1, p0, Landroid/text/SpanSet;->numberOfSpans:I

    :goto_0
    if-ge v1, p3, :cond_3

    .line 61
    aget-object v2, p2, v1

    .line 63
    invoke-interface {p1, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 64
    invoke-interface {p1, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    if-ne v3, v4, :cond_2

    goto :goto_1

    .line 67
    :cond_2
    invoke-interface {p1, v2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    .line 69
    iget-object v6, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    iget v7, p0, Landroid/text/SpanSet;->numberOfSpans:I

    aput-object v2, v6, v7

    .line 70
    iget-object v2, p0, Landroid/text/SpanSet;->spanStarts:[I

    iget v6, p0, Landroid/text/SpanSet;->numberOfSpans:I

    aput v3, v2, v6

    .line 71
    iget-object v2, p0, Landroid/text/SpanSet;->spanEnds:[I

    iget v3, p0, Landroid/text/SpanSet;->numberOfSpans:I

    aput v4, v2, v3

    .line 72
    iget-object v2, p0, Landroid/text/SpanSet;->spanFlags:[I

    iget v3, p0, Landroid/text/SpanSet;->numberOfSpans:I

    aput v5, v2, v3

    .line 74
    iget v2, p0, Landroid/text/SpanSet;->numberOfSpans:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/text/SpanSet;->numberOfSpans:I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_3
    iget p1, p0, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge p1, v0, :cond_4

    .line 80
    iget-object p1, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    iget p0, p0, Landroid/text/SpanSet;->numberOfSpans:I

    const/4 p2, 0x0

    invoke-static {p1, p0, v0, p2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public recycle()V
    .locals 3

    .line 114
    iget-object v0, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget p0, p0, Landroid/text/SpanSet;->numberOfSpans:I

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    :cond_0
    return-void
.end method
