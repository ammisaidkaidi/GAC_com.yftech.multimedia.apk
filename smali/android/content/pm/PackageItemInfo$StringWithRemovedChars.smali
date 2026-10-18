.class Landroid/content/pm/PackageItemInfo$StringWithRemovedChars;
.super Ljava/lang/Object;
.source "PackageItemInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageItemInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringWithRemovedChars"
.end annotation


# instance fields
.field private final mOriginal:Ljava/lang/String;

.field private mRemovedChars:Ljava/util/BitSet;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput-object p1, p0, Landroid/content/pm/PackageItemInfo$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method codePointAt(I)I
    .locals 0

    .line 363
    iget-object p0, p0, Landroid/content/pm/PackageItemInfo$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    return p0
.end method

.method isRemoved(I)Z
    .locals 1

    .line 356
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/content/pm/PackageItemInfo$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    invoke-virtual {p0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method length()I
    .locals 0

    .line 349
    iget-object p0, p0, Landroid/content/pm/PackageItemInfo$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method removeAllCharAfter(I)V
    .locals 2

    .line 321
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    if-nez v0, :cond_0

    .line 322
    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Landroid/content/pm/PackageItemInfo$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    .line 325
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    iget-object p0, p0, Landroid/content/pm/PackageItemInfo$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Ljava/util/BitSet;->set(II)V

    return-void
.end method

.method removeAllCharBefore(I)V
    .locals 2

    .line 310
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Landroid/content/pm/PackageItemInfo$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    .line 314
    :cond_0
    iget-object p0, p0, Landroid/content/pm/PackageItemInfo$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/util/BitSet;->set(II)V

    return-void
.end method

.method removeRange(II)V
    .locals 2

    .line 299
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    if-nez v0, :cond_0

    .line 300
    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Landroid/content/pm/PackageItemInfo$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    .line 303
    :cond_0
    iget-object p0, p0, Landroid/content/pm/PackageItemInfo$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2}, Ljava/util/BitSet;->set(II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 331
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    if-nez v0, :cond_0

    .line 332
    iget-object p0, p0, Landroid/content/pm/PackageItemInfo$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    return-object p0

    .line 335
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/PackageItemInfo$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 336
    :goto_0
    iget-object v2, p0, Landroid/content/pm/PackageItemInfo$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 337
    iget-object v2, p0, Landroid/content/pm/PackageItemInfo$StringWithRemovedChars;->mRemovedChars:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 338
    iget-object v2, p0, Landroid/content/pm/PackageItemInfo$StringWithRemovedChars;->mOriginal:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 342
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
