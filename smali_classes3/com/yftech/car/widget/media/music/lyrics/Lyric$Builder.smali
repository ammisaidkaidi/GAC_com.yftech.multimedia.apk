.class Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;
.super Ljava/lang/Object;
.source "Lyric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/music/lyrics/Lyric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private album:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private by:Ljava/lang/String;

.field private lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;",
            ">;"
        }
    .end annotation
.end field

.field private offset:J

.field private title:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;)Ljava/lang/String;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;)Ljava/lang/String;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->artist:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;)Ljava/lang/String;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->album:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;)Ljava/lang/String;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->by:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;)J
    .locals 2

    .line 164
    iget-wide v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->offset:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;)Ljava/util/List;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->lines:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method addTranslate(Ljava/lang/String;)Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->lines:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->lines:Ljava/util/List;

    iget-object v1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->lines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;

    .line 204
    invoke-static {v0}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;->access$000(Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;)Ljava/lang/String;

    move-result-object v1

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;->access$002(Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method build()Lcom/yftech/car/widget/media/music/lyrics/Lyric;
    .locals 1

    .line 242
    new-instance v0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/music/lyrics/Lyric;-><init>(Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;)V

    return-object v0
.end method

.method insertLine(JLjava/lang/String;)Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;
    .locals 3

    if-nez p3, :cond_0

    return-object p0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->lines:Ljava/util/List;

    if-nez v0, :cond_1

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->lines:Ljava/util/List;

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->lines:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;

    iget-wide v1, v1, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;->startTime:J

    cmp-long v1, p1, v1

    if-gez v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 231
    :cond_2
    iget-object v1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->lines:Ljava/util/List;

    new-instance v2, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;

    invoke-direct {v2, p1, p2, p3}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;-><init>(JLjava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method setAlbum(Ljava/lang/String;)Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->album:Ljava/lang/String;

    return-object p0
.end method

.method setArtist(Ljava/lang/String;)Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->artist:Ljava/lang/String;

    return-object p0
.end method

.method setBy(Ljava/lang/String;)Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->by:Ljava/lang/String;

    return-object p0
.end method

.method setKrcList(Ljava/util/List;)Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/music/lyrics/KrcPlayEntity;",
            ">;)",
            "Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->lines:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->lines:Ljava/util/List;

    iget-object v1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->lines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;

    .line 214
    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;->setKrcList(Ljava/util/List;)Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;

    :cond_0
    return-object p0
.end method

.method setLines(Ljava/util/List;)Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;",
            ">;)",
            "Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;"
        }
    .end annotation

    .line 237
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->lines:Ljava/util/List;

    return-object p0
.end method

.method setOffset(J)Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;
    .locals 0

    .line 196
    iput-wide p1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->offset:J

    return-object p0
.end method

.method setTitle(Ljava/lang/String;)Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->title:Ljava/lang/String;

    return-object p0
.end method
