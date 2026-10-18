.class Landroid/widget/SpellChecker$SpellParser;
.super Ljava/lang/Object;
.source "SpellChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SpellChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpellParser"
.end annotation


# instance fields
.field private mRange:Ljava/lang/Object;

.field final synthetic this$0:Landroid/widget/SpellChecker;


# direct methods
.method private constructor <init>(Landroid/widget/SpellChecker;)V
    .locals 0

    .line 503
    iput-object p1, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/SpellChecker;Landroid/widget/SpellChecker$1;)V
    .locals 0

    .line 503
    invoke-direct {p0, p1}, Landroid/widget/SpellChecker$SpellParser;-><init>(Landroid/widget/SpellChecker;)V

    return-void
.end method

.method private removeRangeSpan(Landroid/text/Editable;)V
    .locals 0

    .line 541
    iget-object p0, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    invoke-interface {p1, p0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method

.method private removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Editable;",
            "I[TT;)V"
        }
    .end annotation

    .line 742
    array-length p0, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_2

    .line 744
    aget-object v1, p3, v0

    .line 745
    invoke-interface {p1, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    if-le v2, p2, :cond_0

    goto :goto_1

    .line 747
    :cond_0
    invoke-interface {p1, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    if-ge v2, p2, :cond_1

    goto :goto_1

    .line 749
    :cond_1
    invoke-interface {p1, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setRangeSpan(Landroid/text/Editable;II)V
    .locals 1

    .line 533
    iget-object p0, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    const/16 v0, 0x21

    invoke-interface {p1, p0, p2, p3, v0}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method


# virtual methods
.method public isFinished()Z
    .locals 1

    .line 522
    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v0}, Landroid/widget/SpellChecker;->access$200(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    iget-object p0, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    invoke-interface {v0, p0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public parse()V
    .locals 16

    move-object/from16 v0, p0

    .line 545
    iget-object v1, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v1}, Landroid/widget/SpellChecker;->access$200(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Editable;

    .line 548
    iget-object v2, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v2}, Landroid/widget/SpellChecker;->access$400(Landroid/widget/SpellChecker;)Z

    move-result v2

    const/16 v3, 0x32

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 551
    iget-object v2, v0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    .line 552
    invoke-interface {v1, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v2, v3

    .line 551
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    .line 554
    :cond_0
    iget-object v2, v0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 557
    :goto_0
    iget-object v5, v0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    invoke-interface {v1, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    add-int/lit16 v6, v2, 0x15e

    .line 559
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 560
    iget-object v7, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v7}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v7

    invoke-virtual {v7, v1, v2, v6}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 563
    iget-object v7, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v7}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/text/method/WordIterator;->preceding(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 566
    iget-object v9, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v9}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/text/method/WordIterator;->following(I)I

    move-result v9

    if-eq v9, v8, :cond_2

    .line 568
    iget-object v7, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v7}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v7

    goto :goto_1

    .line 571
    :cond_1
    iget-object v9, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v9}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v9

    :cond_2
    :goto_1
    if-ne v9, v8, :cond_3

    .line 577
    invoke-direct {v0, v1}, Landroid/widget/SpellChecker$SpellParser;->removeRangeSpan(Landroid/text/Editable;)V

    return-void

    :cond_3
    add-int/lit8 v10, v2, -0x1

    add-int/lit8 v11, v5, 0x1

    .line 583
    const-class v12, Landroid/text/style/SpellCheckSpan;

    invoke-interface {v1, v10, v11, v12}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/SpellCheckSpan;

    .line 585
    const-class v13, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v10, v11, v13}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/text/style/SuggestionSpan;

    .line 591
    iget-object v11, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v11}, Landroid/widget/SpellChecker;->access$400(Landroid/widget/SpellChecker;)Z

    move-result v11

    const/4 v13, 0x1

    if-eqz v11, :cond_11

    if-ge v6, v5, :cond_4

    move v3, v13

    goto :goto_2

    :cond_4
    move v3, v4

    .line 599
    :goto_2
    iget-object v9, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v9}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/text/method/WordIterator;->preceding(I)I

    move-result v6

    if-eq v6, v8, :cond_5

    move v9, v13

    goto :goto_3

    :cond_5
    move v9, v4

    :goto_3
    if-eqz v9, :cond_7

    .line 602
    iget-object v9, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v9}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v6

    if-eq v6, v8, :cond_6

    move v9, v13

    goto :goto_4

    :cond_6
    move v9, v4

    :cond_7
    :goto_4
    if-nez v9, :cond_8

    .line 609
    invoke-direct {v0, v1}, Landroid/widget/SpellChecker$SpellParser;->removeRangeSpan(Landroid/text/Editable;)V

    return-void

    :cond_8
    move v9, v6

    move v6, v4

    .line 617
    :goto_5
    iget-object v10, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v10}, Landroid/widget/SpellChecker;->access$600(Landroid/widget/SpellChecker;)I

    move-result v10

    if-ge v6, v10, :cond_d

    .line 618
    iget-object v10, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v10}, Landroid/widget/SpellChecker;->access$700(Landroid/widget/SpellChecker;)[Landroid/text/style/SpellCheckSpan;

    move-result-object v10

    aget-object v10, v10, v6

    .line 619
    iget-object v11, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v11}, Landroid/widget/SpellChecker;->access$800(Landroid/widget/SpellChecker;)[I

    move-result-object v11

    aget v11, v11, v6

    if-ltz v11, :cond_c

    invoke-virtual {v10}, Landroid/text/style/SpellCheckSpan;->isSpellCheckInProgress()Z

    move-result v11

    if-eqz v11, :cond_9

    goto :goto_6

    .line 622
    :cond_9
    invoke-interface {v1, v10}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    .line 623
    invoke-interface {v1, v10}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    if-lt v12, v7, :cond_c

    if-ge v9, v11, :cond_a

    goto :goto_6

    :cond_a
    if-gt v11, v7, :cond_b

    if-gt v9, v12, :cond_b

    goto :goto_7

    .line 638
    :cond_b
    invoke-interface {v1, v10}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 639
    invoke-static {v11, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 640
    invoke-static {v12, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_c
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_d
    move v4, v13

    :goto_7
    if-ge v9, v2, :cond_e

    goto :goto_8

    :cond_e
    if-gt v9, v7, :cond_f

    .line 655
    invoke-static {}, Landroid/widget/SpellChecker;->access$300()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Trying to spellcheck invalid region, from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_f
    if-eqz v4, :cond_10

    .line 660
    iget-object v2, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v2, v1, v7, v9}, Landroid/widget/SpellChecker;->access$900(Landroid/widget/SpellChecker;Landroid/text/Editable;II)V

    :cond_10
    :goto_8
    move v4, v3

    goto/16 :goto_f

    :cond_11
    move v11, v6

    move v6, v9

    move v9, v7

    move v7, v4

    :goto_9
    if-gt v9, v5, :cond_1f

    if-lt v6, v2, :cond_1a

    if-le v6, v9, :cond_1a

    if-lt v7, v3, :cond_12

    move v4, v13

    goto/16 :goto_f

    :cond_12
    if-ge v9, v2, :cond_13

    if-le v6, v2, :cond_13

    .line 675
    invoke-direct {v0, v1, v2, v12}, Landroid/widget/SpellChecker$SpellParser;->removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V

    .line 676
    invoke-direct {v0, v1, v2, v10}, Landroid/widget/SpellChecker$SpellParser;->removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V

    :cond_13
    if-ge v9, v5, :cond_14

    if-le v6, v5, :cond_14

    .line 680
    invoke-direct {v0, v1, v5, v12}, Landroid/widget/SpellChecker$SpellParser;->removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V

    .line 681
    invoke-direct {v0, v1, v5, v10}, Landroid/widget/SpellChecker$SpellParser;->removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V

    :cond_14
    if-ne v6, v2, :cond_16

    move v14, v4

    .line 687
    :goto_a
    array-length v15, v12

    if-ge v14, v15, :cond_16

    .line 688
    aget-object v15, v12, v14

    invoke-interface {v1, v15}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v15

    if-ne v15, v2, :cond_15

    move v14, v4

    goto :goto_b

    :cond_15
    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    :cond_16
    move v14, v13

    :goto_b
    if-ne v9, v5, :cond_18

    move v15, v4

    .line 697
    :goto_c
    array-length v3, v12

    if-ge v15, v3, :cond_18

    .line 698
    aget-object v3, v12, v15

    invoke-interface {v1, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    if-ne v3, v5, :cond_17

    move v14, v4

    goto :goto_d

    :cond_17
    add-int/lit8 v15, v15, 0x1

    goto :goto_c

    :cond_18
    :goto_d
    if-eqz v14, :cond_19

    .line 707
    iget-object v3, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v3, v1, v9, v6}, Landroid/widget/SpellChecker;->access$900(Landroid/widget/SpellChecker;Landroid/text/Editable;II)V

    :cond_19
    add-int/lit8 v7, v7, 0x1

    .line 714
    :cond_1a
    iget-object v3, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v3}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/text/method/WordIterator;->following(I)I

    move-result v3

    if-ge v11, v5, :cond_1c

    if-eq v3, v8, :cond_1b

    if-lt v3, v11, :cond_1c

    :cond_1b
    add-int/lit16 v3, v6, 0x15e

    .line 718
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 719
    iget-object v11, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v11}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v11

    invoke-virtual {v11, v1, v6, v3}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 721
    iget-object v11, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v11}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/text/method/WordIterator;->following(I)I

    move-result v6

    move v11, v3

    goto :goto_e

    :cond_1c
    move v6, v3

    :goto_e
    if-ne v6, v8, :cond_1d

    goto :goto_f

    .line 724
    :cond_1d
    iget-object v3, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v3}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v9

    if-ne v9, v8, :cond_1e

    goto :goto_f

    :cond_1e
    const/16 v3, 0x32

    goto/16 :goto_9

    :cond_1f
    :goto_f
    if-eqz v4, :cond_20

    if-eq v9, v8, :cond_20

    if-gt v9, v5, :cond_20

    .line 733
    invoke-direct {v0, v1, v9, v5}, Landroid/widget/SpellChecker$SpellParser;->setRangeSpan(Landroid/text/Editable;II)V

    goto :goto_10

    .line 735
    :cond_20
    invoke-direct {v0, v1}, Landroid/widget/SpellChecker$SpellParser;->removeRangeSpan(Landroid/text/Editable;)V

    .line 738
    :goto_10
    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v0}, Landroid/widget/SpellChecker;->access$1000(Landroid/widget/SpellChecker;)V

    return-void
.end method

.method public parse(II)V
    .locals 4

    .line 507
    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v0}, Landroid/widget/SpellChecker;->access$200(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-le p2, v0, :cond_0

    .line 510
    invoke-static {}, Landroid/widget/SpellChecker;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parse invalid region, from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v0

    :cond_0
    if-le p2, p1, :cond_1

    .line 516
    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v0}, Landroid/widget/SpellChecker;->access$200(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    invoke-direct {p0, v0, p1, p2}, Landroid/widget/SpellChecker$SpellParser;->setRangeSpan(Landroid/text/Editable;II)V

    .line 517
    invoke-virtual {p0}, Landroid/widget/SpellChecker$SpellParser;->parse()V

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    .line 526
    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v0}, Landroid/widget/SpellChecker;->access$200(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    invoke-direct {p0, v0}, Landroid/widget/SpellChecker$SpellParser;->removeRangeSpan(Landroid/text/Editable;)V

    return-void
.end method
