.class public Landroid/text/AutoText;
.super Ljava/lang/Object;
.source "AutoText.java"


# static fields
.field private static final DEFAULT:I = 0x3801

.field private static final INCREMENT:I = 0x400

.field private static final RIGHT:I = 0x2454

.field private static final TRIE_C:I = 0x0

.field private static final TRIE_CHILD:I = 0x2

.field private static final TRIE_NEXT:I = 0x3

.field private static final TRIE_NULL:C = '\uffff'

.field private static final TRIE_OFF:I = 0x1

.field private static final TRIE_ROOT:I = 0x0

.field private static final TRIE_SIZEOF:I = 0x4

.field private static sInstance:Landroid/text/AutoText;

.field private static sLock:Ljava/lang/Object;


# instance fields
.field private mLocale:Ljava/util/Locale;

.field private mSize:I

.field private mText:Ljava/lang/String;

.field private mTrie:[C

.field private mTrieUsed:C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Landroid/text/AutoText;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/AutoText;-><init>(Landroid/content/res/Resources;)V

    sput-object v0, Landroid/text/AutoText;->sInstance:Landroid/text/AutoText;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/AutoText;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Landroid/text/AutoText;->mLocale:Ljava/util/Locale;

    .line 77
    invoke-direct {p0, p1}, Landroid/text/AutoText;->init(Landroid/content/res/Resources;)V

    return-void
.end method

.method private add(Ljava/lang/String;C)V
    .locals 9

    .line 212
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 215
    iget v1, p0, Landroid/text/AutoText;->mSize:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Landroid/text/AutoText;->mSize:I

    const/4 v1, 0x0

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_5

    .line 218
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 221
    :goto_1
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v6, v6, v4

    const v7, 0xffff

    if-eq v6, v7, :cond_2

    .line 223
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v8, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v8, v8, v4

    add-int/2addr v8, v1

    aget-char v6, v6, v8

    if-ne v5, v6, :cond_1

    add-int/lit8 v6, v0, -0x1

    if-ne v3, v6, :cond_0

    .line 228
    iget-object p1, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object p0, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char p0, p0, v4

    add-int/2addr p0, v2

    aput-char p2, p1, p0

    return-void

    .line 235
    :cond_0
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v4, v6, v4

    add-int/lit8 v4, v4, 0x2

    move v6, v4

    move v4, v2

    goto :goto_2

    .line 222
    :cond_1
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v4, v6, v4

    add-int/lit8 v4, v4, 0x3

    goto :goto_1

    :cond_2
    move v6, v4

    move v4, v1

    :goto_2
    if-nez v4, :cond_4

    .line 244
    invoke-direct {p0}, Landroid/text/AutoText;->newTrieNode()C

    move-result v4

    .line 245
    iget-object v8, p0, Landroid/text/AutoText;->mTrie:[C

    aput-char v4, v8, v6

    .line 247
    iget-object v4, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v8, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v8, v8, v6

    add-int/2addr v8, v1

    aput-char v5, v4, v8

    .line 248
    iget-object v4, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v5, v5, v6

    add-int/2addr v5, v2

    aput-char v7, v4, v5

    .line 249
    iget-object v4, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v5, v5, v6

    add-int/lit8 v5, v5, 0x3

    aput-char v7, v4, v5

    .line 250
    iget-object v4, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v5, v5, v6

    add-int/lit8 v5, v5, 0x2

    aput-char v7, v4, v5

    add-int/lit8 v4, v0, -0x1

    if-ne v3, v4, :cond_3

    .line 255
    iget-object p1, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object p0, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char p0, p0, v6

    add-int/2addr p0, v2

    aput-char p2, p1, p0

    return-void

    .line 261
    :cond_3
    iget-object v4, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v4, v4, v6

    add-int/lit8 v4, v4, 0x2

    goto :goto_3

    :cond_4
    move v4, v6

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public static get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;
    .locals 0

    .line 110
    invoke-static {p3}, Landroid/text/AutoText;->getInstance(Landroid/view/View;)Landroid/text/AutoText;

    move-result-object p3

    invoke-direct {p3, p0, p1, p2}, Landroid/text/AutoText;->lookup(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getInstance(Landroid/view/View;)Landroid/text/AutoText;
    .locals 4

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 88
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 91
    sget-object v1, Landroid/text/AutoText;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 92
    :try_start_0
    sget-object v2, Landroid/text/AutoText;->sInstance:Landroid/text/AutoText;

    .line 94
    iget-object v3, v2, Landroid/text/AutoText;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    new-instance v2, Landroid/text/AutoText;

    invoke-direct {v2, p0}, Landroid/text/AutoText;-><init>(Landroid/content/res/Resources;)V

    .line 96
    sput-object v2, Landroid/text/AutoText;->sInstance:Landroid/text/AutoText;

    .line 98
    :cond_0
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getSize()I
    .locals 0

    .line 128
    iget p0, p0, Landroid/text/AutoText;->mSize:I

    return p0
.end method

.method public static getSize(Landroid/view/View;)I
    .locals 0

    .line 121
    invoke-static {p0}, Landroid/text/AutoText;->getInstance(Landroid/view/View;)Landroid/text/AutoText;

    move-result-object p0

    invoke-direct {p0}, Landroid/text/AutoText;->getSize()I

    move-result p0

    return p0
.end method

.method private init(Landroid/content/res/Resources;)V
    .locals 8

    const v0, 0x1170003

    .line 161
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2454

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x3801

    .line 164
    new-array v2, v2, [C

    iput-object v2, p0, Landroid/text/AutoText;->mTrie:[C

    .line 165
    iget-object v2, p0, Landroid/text/AutoText;->mTrie:[C

    const/4 v3, 0x0

    const v4, 0xffff

    aput-char v4, v2, v3

    const/4 v2, 0x1

    .line 166
    iput-char v2, p0, Landroid/text/AutoText;->mTrieUsed:C

    :try_start_0
    const-string/jumbo v2, "words"

    .line 169
    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const-string v2, ""

    .line 174
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 176
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string/jumbo v5, "word"

    .line 177
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    const-string/jumbo v5, "src"

    .line 181
    invoke-interface {v0, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 182
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 183
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 186
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v3

    goto :goto_1

    .line 189
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    int-to-char v6, v6

    .line 190
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    int-to-char v7, v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :goto_1
    invoke-direct {p0, v4, v6}, Landroid/text/AutoText;->add(Ljava/lang/String;C)V

    goto :goto_0

    .line 199
    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroid/content/res/Resources;->flushLayoutCache()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 208
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/text/AutoText;->mText:Ljava/lang/String;

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 203
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 201
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    :goto_3
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    throw p0
.end method

.method private lookup(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 6

    .line 132
    iget-object v0, p0, Landroid/text/AutoText;->mTrie:[C

    const/4 v1, 0x0

    aget-char v0, v0, v1

    :goto_0
    const/4 v1, 0x0

    if-ge p2, p3, :cond_4

    .line 135
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    :goto_1
    const v3, 0xffff

    if-eq v0, v3, :cond_2

    .line 138
    iget-object v4, p0, Landroid/text/AutoText;->mTrie:[C

    add-int/lit8 v5, v0, 0x0

    aget-char v4, v4, v5

    if-ne v2, v4, :cond_1

    add-int/lit8 v2, p3, -0x1

    if-ne p2, v2, :cond_0

    .line 139
    iget-object v2, p0, Landroid/text/AutoText;->mTrie:[C

    add-int/lit8 v4, v0, 0x1

    aget-char v2, v2, v4

    if-eq v2, v3, :cond_0

    .line 141
    iget-object p1, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char p1, p1, v4

    .line 142
    iget-object p2, p0, Landroid/text/AutoText;->mText:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    .line 144
    iget-object p0, p0, Landroid/text/AutoText;->mText:Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    add-int/2addr p2, p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 147
    :cond_0
    iget-object v2, p0, Landroid/text/AutoText;->mTrie:[C

    add-int/lit8 v0, v0, 0x2

    aget-char v0, v2, v0

    goto :goto_2

    .line 137
    :cond_1
    iget-object v3, p0, Landroid/text/AutoText;->mTrie:[C

    add-int/lit8 v0, v0, 0x3

    aget-char v0, v3, v0

    goto :goto_1

    :cond_2
    :goto_2
    if-ne v0, v3, :cond_3

    return-object v1

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method private newTrieNode()C
    .locals 4

    .line 267
    iget-char v0, p0, Landroid/text/AutoText;->mTrieUsed:C

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Landroid/text/AutoText;->mTrie:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 268
    iget-object v0, p0, Landroid/text/AutoText;->mTrie:[C

    array-length v0, v0

    add-int/lit16 v0, v0, 0x400

    new-array v0, v0, [C

    .line 269
    iget-object v1, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v2, p0, Landroid/text/AutoText;->mTrie:[C

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    iput-object v0, p0, Landroid/text/AutoText;->mTrie:[C

    .line 273
    :cond_0
    iget-char v0, p0, Landroid/text/AutoText;->mTrieUsed:C

    .line 274
    iget-char v1, p0, Landroid/text/AutoText;->mTrieUsed:C

    add-int/lit8 v1, v1, 0x4

    int-to-char v1, v1

    iput-char v1, p0, Landroid/text/AutoText;->mTrieUsed:C

    return v0
.end method
