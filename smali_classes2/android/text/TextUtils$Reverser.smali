.class Landroid/text/TextUtils$Reverser;
.super Ljava/lang/Object;
.source "TextUtils.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Reverser"
.end annotation


# instance fields
.field private mEnd:I

.field private mSource:Ljava/lang/CharSequence;

.field private mStart:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 0

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    iput-object p1, p0, Landroid/text/TextUtils$Reverser;->mSource:Ljava/lang/CharSequence;

    .line 573
    iput p2, p0, Landroid/text/TextUtils$Reverser;->mStart:I

    .line 574
    iput p3, p0, Landroid/text/TextUtils$Reverser;->mEnd:I

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 1

    .line 594
    iget-object v0, p0, Landroid/text/TextUtils$Reverser;->mSource:Ljava/lang/CharSequence;

    iget p0, p0, Landroid/text/TextUtils$Reverser;->mEnd:I

    add-int/lit8 p0, p0, -0x1

    sub-int/2addr p0, p1

    invoke-interface {v0, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getMirror(I)I

    move-result p0

    int-to-char p0, p0

    return p0
.end method

.method public getChars(II[CI)V
    .locals 4

    .line 599
    iget-object v0, p0, Landroid/text/TextUtils$Reverser;->mSource:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/text/TextUtils$Reverser;->mStart:I

    add-int/2addr v1, p1

    iget p0, p0, Landroid/text/TextUtils$Reverser;->mStart:I

    add-int/2addr p0, p2

    invoke-static {v0, v1, p0, p3, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    sub-int/2addr p2, p1

    const/4 p0, 0x0

    .line 601
    invoke-static {p3, p0, p2}, Landroid/text/AndroidCharacter;->mirror([CII)Z

    .line 604
    div-int/lit8 p1, p2, 0x2

    :goto_0
    if-ge p0, p1, :cond_0

    add-int v0, p4, p0

    .line 606
    aget-char v1, p3, v0

    add-int v2, p4, p2

    sub-int/2addr v2, p0

    add-int/lit8 v2, v2, -0x1

    .line 608
    aget-char v3, p3, v2

    aput-char v3, p3, v0

    .line 609
    aput-char v1, p3, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public length()I
    .locals 1

    .line 578
    iget v0, p0, Landroid/text/TextUtils$Reverser;->mEnd:I

    iget p0, p0, Landroid/text/TextUtils$Reverser;->mStart:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2

    sub-int v0, p2, p1

    .line 582
    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 584
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/TextUtils$Reverser;->getChars(II[CI)V

    .line 585
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 590
    invoke-virtual {p0}, Landroid/text/TextUtils$Reverser;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/text/TextUtils$Reverser;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
