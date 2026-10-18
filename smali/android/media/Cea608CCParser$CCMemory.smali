.class Landroid/media/Cea608CCParser$CCMemory;
.super Ljava/lang/Object;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea608CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CCMemory"
.end annotation


# instance fields
.field private final mBlankLine:Ljava/lang/String;

.field private mCol:I

.field private final mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

.field private mRow:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11

    .line 760
    new-array v0, v0, [Landroid/media/Cea608CCParser$CCLineBuilder;

    iput-object v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    const/16 v0, 0x22

    .line 765
    new-array v0, v0, [C

    const/16 v1, 0xa0

    .line 766
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 767
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mBlankLine:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Landroid/media/Cea608CCParser$CCMemory;II)V
    .locals 0

    .line 758
    invoke-direct {p0, p1, p2}, Landroid/media/Cea608CCParser$CCMemory;->moveBaselineTo(II)V

    return-void
.end method

.method private static clamp(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    if-le p0, p2, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method private getLineBuffer(I)Landroid/media/Cea608CCParser$CCLineBuilder;
    .locals 3

    .line 915
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 916
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    new-instance v1, Landroid/media/Cea608CCParser$CCLineBuilder;

    iget-object v2, p0, Landroid/media/Cea608CCParser$CCMemory;->mBlankLine:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/media/Cea608CCParser$CCLineBuilder;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, p1

    .line 918
    :cond_0
    iget-object p0, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    aget-object p0, p0, p1

    return-object p0
.end method

.method private moveBaselineTo(II)V
    .locals 7

    .line 882
    iget v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ge p1, p2, :cond_1

    move v0, p1

    goto :goto_0

    :cond_1
    move v0, p2

    .line 889
    :goto_0
    iget v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    if-ge v1, v0, :cond_2

    .line 890
    iget v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    .line 894
    :cond_2
    iget v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    const/4 v2, 0x0

    if-ge p1, v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_4

    .line 897
    iget-object v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    sub-int v3, p1, v0

    iget-object v4, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    iget v5, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    sub-int/2addr v5, v0

    aget-object v4, v4, v5

    aput-object v4, v1, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_2
    if-ge v1, v0, :cond_4

    .line 902
    iget-object v3, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    sub-int v4, p1, v1

    iget-object v5, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    iget v6, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    sub-int/2addr v6, v1

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    sub-int v0, p1, p2

    const/4 v1, 0x0

    if-gt v2, v0, :cond_5

    .line 907
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    add-int/lit8 p1, p1, 0x1

    .line 909
    iget-object p2, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    array-length p2, p2

    if-ge p1, p2, :cond_6

    .line 910
    iget-object p2, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    aput-object v1, p2, p1

    goto :goto_4

    :cond_6
    return-void
.end method

.method private moveCursorByCol(I)V
    .locals 2

    .line 878
    iget v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    add-int/2addr v0, p1

    const/4 p1, 0x1

    const/16 v1, 0x20

    invoke-static {v0, p1, v1}, Landroid/media/Cea608CCParser$CCMemory;->clamp(III)I

    move-result p1

    iput p1, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    return-void
.end method

.method private moveCursorTo(II)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0xf

    .line 869
    invoke-static {p1, v0, v1}, Landroid/media/Cea608CCParser$CCMemory;->clamp(III)I

    move-result p1

    iput p1, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    const/16 p1, 0x20

    .line 870
    invoke-static {p2, v0, p1}, Landroid/media/Cea608CCParser$CCMemory;->clamp(III)I

    move-result p1

    iput p1, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    return-void
.end method

.method private moveCursorToRow(I)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0xf

    .line 874
    invoke-static {p1, v0, v1}, Landroid/media/Cea608CCParser$CCMemory;->clamp(III)I

    move-result p1

    iput p1, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    return-void
.end method


# virtual methods
.method bs()V
    .locals 3

    const/4 v0, -0x1

    .line 798
    invoke-direct {p0, v0}, Landroid/media/Cea608CCParser$CCMemory;->moveCursorByCol(I)V

    .line 799
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    iget v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    iget v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    aget-object v0, v0, v1

    iget v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    const/16 v2, 0xa0

    invoke-virtual {v0, v1, v2}, Landroid/media/Cea608CCParser$CCLineBuilder;->setCharAt(IC)V

    .line 801
    iget v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    .line 805
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    iget p0, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    aget-object p0, v0, p0

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v2}, Landroid/media/Cea608CCParser$CCLineBuilder;->setCharAt(IC)V

    :cond_0
    return-void
.end method

.method cr()V
    .locals 2

    .line 811
    iget v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0, v0, v1}, Landroid/media/Cea608CCParser$CCMemory;->moveCursorTo(II)V

    return-void
.end method

.method der()V
    .locals 4

    .line 780
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    iget v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 781
    :goto_0
    iget v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    if-ge v0, v1, :cond_2

    .line 782
    iget-object v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    iget v2, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroid/media/Cea608CCParser$CCLineBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0xa0

    if-eq v1, v2, :cond_1

    .line 783
    iget v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    :goto_1
    iget-object v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    iget v3, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/media/Cea608CCParser$CCLineBuilder;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 784
    iget-object v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    aget-object v1, v1, v0

    invoke-virtual {v1, v0, v2}, Landroid/media/Cea608CCParser$CCLineBuilder;->setCharAt(IC)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 789
    :cond_2
    iget-object v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    iget p0, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    const/4 v1, 0x0

    aput-object v1, v0, p0

    :cond_3
    return-void
.end method

.method erase()V
    .locals 3

    const/4 v0, 0x0

    .line 772
    :goto_0
    iget-object v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 773
    iget-object v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    .line 775
    iput v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    const/4 v0, 0x1

    .line 776
    iput v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    return-void
.end method

.method getStyledText(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)[Landroid/text/SpannableStringBuilder;
    .locals 4

    .line 856
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x1

    :goto_0
    if-gt v2, v1, :cond_1

    .line 858
    iget-object v3, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    .line 859
    iget-object v3, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Landroid/media/Cea608CCParser$CCLineBuilder;->getStyledText(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 858
    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 861
    :cond_1
    new-array p0, v1, [Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/SpannableStringBuilder;

    return-object p0
.end method

.method rollUp(I)V
    .locals 5

    const/4 v0, 0x0

    .line 816
    :goto_0
    iget v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    sub-int/2addr v1, p1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    .line 817
    iget-object v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 819
    :cond_0
    iget v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    sub-int/2addr v0, p1

    const/4 p1, 0x1

    add-int/2addr v0, p1

    if-ge v0, p1, :cond_1

    move v0, p1

    .line 823
    :cond_1
    :goto_1
    iget v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    if-ge v0, v1, :cond_2

    .line 824
    iget-object v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    iget-object v3, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    aput-object v3, v1, v0

    move v0, v4

    goto :goto_1

    .line 826
    :cond_2
    iget v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    :goto_2
    iget-object v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 828
    iget-object v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mLines:[Landroid/media/Cea608CCParser$CCLineBuilder;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 831
    :cond_3
    iput p1, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    return-void
.end method

.method tab(I)V
    .locals 0

    .line 794
    invoke-direct {p0, p1}, Landroid/media/Cea608CCParser$CCMemory;->moveCursorByCol(I)V

    return-void
.end method

.method writeMidRowCode(Landroid/media/Cea608CCParser$StyleCode;)V
    .locals 2

    .line 842
    iget v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    invoke-direct {p0, v0}, Landroid/media/Cea608CCParser$CCMemory;->getLineBuffer(I)Landroid/media/Cea608CCParser$CCLineBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    invoke-virtual {v0, v1, p1}, Landroid/media/Cea608CCParser$CCLineBuilder;->setMidRowAt(ILandroid/media/Cea608CCParser$StyleCode;)V

    const/4 p1, 0x1

    .line 843
    invoke-direct {p0, p1}, Landroid/media/Cea608CCParser$CCMemory;->moveCursorByCol(I)V

    return-void
.end method

.method writePAC(Landroid/media/Cea608CCParser$PAC;)V
    .locals 2

    .line 847
    invoke-virtual {p1}, Landroid/media/Cea608CCParser$PAC;->isIndentPAC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    invoke-virtual {p1}, Landroid/media/Cea608CCParser$PAC;->getRow()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/Cea608CCParser$PAC;->getCol()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/media/Cea608CCParser$CCMemory;->moveCursorTo(II)V

    goto :goto_0

    .line 850
    :cond_0
    invoke-virtual {p1}, Landroid/media/Cea608CCParser$PAC;->getRow()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/media/Cea608CCParser$CCMemory;->moveCursorTo(II)V

    .line 852
    :goto_0
    iget v0, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    invoke-direct {p0, v0}, Landroid/media/Cea608CCParser$CCMemory;->getLineBuffer(I)Landroid/media/Cea608CCParser$CCLineBuilder;

    move-result-object v0

    iget p0, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    invoke-virtual {v0, p0, p1}, Landroid/media/Cea608CCParser$CCLineBuilder;->setPACAt(ILandroid/media/Cea608CCParser$PAC;)V

    return-void
.end method

.method writeText(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 835
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 836
    iget v1, p0, Landroid/media/Cea608CCParser$CCMemory;->mRow:I

    invoke-direct {p0, v1}, Landroid/media/Cea608CCParser$CCMemory;->getLineBuffer(I)Landroid/media/Cea608CCParser$CCLineBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/Cea608CCParser$CCMemory;->mCol:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/media/Cea608CCParser$CCLineBuilder;->setCharAt(IC)V

    const/4 v1, 0x1

    .line 837
    invoke-direct {p0, v1}, Landroid/media/Cea608CCParser$CCMemory;->moveCursorByCol(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
