.class public Lcom/yftech/car/widget/media/music/lyrics/Lyric;
.super Ljava/lang/Object;
.source "Lyric.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;,
        Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;,
        Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/yftech/car/widget/media/music/lyrics/Lyric;


# instance fields
.field private final album:Ljava/lang/String;

.field private final artist:Ljava/lang/String;

.field private final by:Ljava/lang/String;

.field private final lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;",
            ">;"
        }
    .end annotation
.end field

.field private final offset:J

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    invoke-direct {v0}, Lcom/yftech/car/widget/media/music/lyrics/Lyric;-><init>()V

    sput-object v0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->EMPTY:Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->title:Ljava/lang/String;

    .line 144
    iput-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->artist:Ljava/lang/String;

    .line 145
    iput-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->album:Ljava/lang/String;

    .line 146
    iput-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->by:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 147
    iput-wide v1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->offset:J

    .line 148
    iput-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->lines:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;)V
    .locals 2

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    invoke-static {p1}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->access$100(Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->title:Ljava/lang/String;

    .line 153
    invoke-static {p1}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->access$200(Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->artist:Ljava/lang/String;

    .line 154
    invoke-static {p1}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->access$300(Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->album:Ljava/lang/String;

    .line 155
    invoke-static {p1}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->access$400(Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->by:Ljava/lang/String;

    .line 156
    invoke-static {p1}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->access$500(Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->offset:J

    .line 157
    invoke-static {p1}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->access$600(Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->lines:Ljava/util/List;

    return-void
.end method

.method private newBuilder()Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;
    .locals 3

    .line 161
    new-instance v0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;

    invoke-direct {v0}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;-><init>()V

    iget-object v1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->setTitle(Ljava/lang/String;)Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->setArtist(Ljava/lang/String;)Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->album:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->setAlbum(Ljava/lang/String;)Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->by:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->setBy(Ljava/lang/String;)Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->offset:J

    invoke-virtual {v0, v1, v2}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->setOffset(J)Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->lines:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->setLines(Ljava/util/List;)Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseLrc(Ljava/lang/String;)Lcom/yftech/car/widget/media/music/lyrics/Lyric;
    .locals 0

    .line 129
    invoke-static {p0}, Lcom/yftech/car/widget/media/music/lyrics/LrcParser;->parseText(Ljava/lang/String;)Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getAlbum()Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->album:Ljava/lang/String;

    return-object p0
.end method

.method public final getArtist()Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->artist:Ljava/lang/String;

    return-object p0
.end method

.method public final getBy()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->by:Ljava/lang/String;

    return-object p0
.end method

.method public final getKrcPlayEntity(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/music/lyrics/KrcPlayEntity;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->lines:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-ltz p1, :cond_1

    .line 42
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->lines:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;->getKrcList()Ljava/util/List;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public final getLineCount()I
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->lines:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->lines:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getLineStartTime(I)J
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->lines:Ljava/util/List;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    if-ltz p1, :cond_1

    .line 62
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->lines:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;

    iget-wide v1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;->startTime:J

    :cond_1
    return-wide v1
.end method

.method public final getLineText(I)Ljava/lang/String;
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->lines:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-ltz p1, :cond_1

    .line 54
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->lines:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;

    invoke-static {p0}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;->access$000(Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public final getLineTexts(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->lines:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->lines:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 74
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;

    .line 76
    invoke-static {v0}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;->access$000(Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getOffset()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->offset:J

    return-wide v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final newTimeLineMapper()Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;
    .locals 1

    .line 67
    new-instance v0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;

    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->lines:Ljava/util/List;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$TimeLineMapper;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final removeBlankLines()Lcom/yftech/car/widget/media/music/lyrics/Lyric;
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->lines:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    iget-object v1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->lines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 87
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;

    .line 89
    invoke-static {v2}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;->access$000(Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;->access$000(Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 90
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->lines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_2

    return-object p0

    .line 97
    :cond_2
    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->newBuilder()Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->setLines(Ljava/util/List;)Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->build()Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    move-result-object p0

    return-object p0

    :cond_3
    return-object p0
.end method

.method public final removeTrailingBlankLines()Lcom/yftech/car/widget/media/music/lyrics/Lyric;
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->lines:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    return-object p0

    .line 109
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->lines:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    add-int/lit8 v2, v0, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 112
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;

    invoke-static {v3}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;->access$000(Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 113
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 117
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 120
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-direct {p0}, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->newBuilder()Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->setLines(Ljava/util/List;)Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Builder;->build()Lcom/yftech/car/widget/media/music/lyrics/Lyric;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lyric{title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", artist=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->artist:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", album=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->album:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", by=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->by:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->offset:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lines="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric;->lines:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
