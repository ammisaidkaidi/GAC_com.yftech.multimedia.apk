.class public Landroid/content/UriMatcher;
.super Ljava/lang/Object;
.source "UriMatcher.java"


# static fields
.field private static final EXACT:I = 0x0

.field public static final NO_MATCH:I = -0x1

.field private static final NUMBER:I = 0x1

.field private static final TEXT:I = 0x2


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/UriMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mCode:I

.field private mText:Ljava/lang/String;

.field private mWhich:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 139
    iput v0, p0, Landroid/content/UriMatcher;->mCode:I

    .line 140
    iput v0, p0, Landroid/content/UriMatcher;->mWhich:I

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput p1, p0, Landroid/content/UriMatcher;->mCode:I

    const/4 p1, -0x1

    .line 132
    iput p1, p0, Landroid/content/UriMatcher;->mWhich:I

    .line 133
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 134
    iput-object p1, p0, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addURI(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10

    if-ltz p3, :cond_a

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    .line 170
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2f

    if-ne v0, v3, :cond_0

    .line 171
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    const-string v0, "/"

    .line 173
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 176
    array-length p2, v0

    goto :goto_0

    :cond_2
    move p2, v1

    :goto_0
    const/4 v3, -0x1

    :goto_1
    if-ge v3, p2, :cond_9

    if-gez v3, :cond_3

    move-object v4, p1

    goto :goto_2

    .line 179
    :cond_3
    aget-object v4, v0, v3

    .line 180
    :goto_2
    iget-object v5, p0, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    .line 181
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v1

    :goto_3
    if-ge v7, v6, :cond_5

    .line 185
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/UriMatcher;

    .line 186
    iget-object v9, v8, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move-object p0, v8

    goto :goto_4

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    if-ne v7, v6, :cond_8

    .line 193
    new-instance v5, Landroid/content/UriMatcher;

    invoke-direct {v5}, Landroid/content/UriMatcher;-><init>()V

    const-string v6, "#"

    .line 194
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 195
    iput v2, v5, Landroid/content/UriMatcher;->mWhich:I

    goto :goto_5

    :cond_6
    const-string v6, "*"

    .line 196
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x2

    .line 197
    iput v6, v5, Landroid/content/UriMatcher;->mWhich:I

    goto :goto_5

    .line 199
    :cond_7
    iput v1, v5, Landroid/content/UriMatcher;->mWhich:I

    .line 201
    :goto_5
    iput-object v4, v5, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    .line 202
    iget-object p0, p0, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p0, v5

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 206
    :cond_9
    iput p3, p0, Landroid/content/UriMatcher;->mCode:I

    return-void

    .line 163
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "code "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is invalid: it must be positive"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public match(Landroid/net/Uri;)I
    .locals 14

    .line 219
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 220
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 224
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 225
    iget p0, p0, Landroid/content/UriMatcher;->mCode:I

    return p0

    :cond_0
    const/4 v2, -0x1

    move-object v3, p0

    move p0, v2

    :goto_0
    if-ge p0, v1, :cond_9

    if-gez p0, :cond_1

    .line 229
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 230
    :goto_1
    iget-object v5, v3, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    if-nez v5, :cond_2

    goto :goto_6

    :cond_2
    const/4 v3, 0x0

    .line 235
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    move-object v8, v3

    move v3, v7

    :goto_2
    if-ge v3, v6, :cond_7

    .line 237
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/UriMatcher;

    .line 239
    iget v10, v9, Landroid/content/UriMatcher;->mWhich:I

    packed-switch v10, :pswitch_data_0

    goto :goto_4

    .line 246
    :pswitch_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    move v11, v7

    :goto_3
    if-ge v11, v10, :cond_4

    .line 248
    invoke-virtual {v4, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x30

    if-lt v12, v13, :cond_5

    const/16 v13, 0x39

    if-le v12, v13, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 241
    :pswitch_1
    iget-object v10, v9, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_4
    :pswitch_2
    move-object v8, v9

    :cond_5
    :goto_4
    if-eqz v8, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    :goto_5
    move-object v3, v8

    if-nez v3, :cond_8

    return v2

    :cond_8
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 268
    :cond_9
    :goto_6
    iget p0, v3, Landroid/content/UriMatcher;->mCode:I

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
