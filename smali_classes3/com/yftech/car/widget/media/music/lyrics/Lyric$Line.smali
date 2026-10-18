.class Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;
.super Ljava/lang/Object;
.source "Lyric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/music/lyrics/Lyric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Line"
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private krcList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/music/lyrics/KrcPlayEntity;",
            ">;"
        }
    .end annotation
.end field

.field final startTime:J


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .locals 1

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 249
    iput-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;->krcList:Ljava/util/List;

    .line 252
    iput-object p3, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;->content:Ljava/lang/String;

    .line 253
    iput-wide p1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;->startTime:J

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;)Ljava/lang/String;
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;->content:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;->content:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getKrcList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/music/lyrics/KrcPlayEntity;",
            ">;"
        }
    .end annotation

    .line 257
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;->krcList:Ljava/util/List;

    return-object p0
.end method

.method public setKrcList(Ljava/util/List;)Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/music/lyrics/KrcPlayEntity;",
            ">;)",
            "Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;"
        }
    .end annotation

    .line 261
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;->krcList:Ljava/util/List;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Line{content=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/yftech/car/widget/media/music/lyrics/Lyric$Line;->startTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
