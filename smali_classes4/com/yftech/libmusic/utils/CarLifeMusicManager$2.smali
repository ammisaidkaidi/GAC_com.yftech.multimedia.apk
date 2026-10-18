.class Lcom/yftech/libmusic/utils/CarLifeMusicManager$2;
.super Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager$CarPhoneLinkMediaCallback;
.source "CarLifeMusicManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmusic/utils/CarLifeMusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/utils/CarLifeMusicManager;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/utils/CarLifeMusicManager;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    invoke-direct {p0}, Lcom/yftech/car/phonelink/CarPhoneLinkMediaManager$CarPhoneLinkMediaCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaInfoChanged(Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;)V
    .locals 7

    .line 132
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    invoke-static {v0}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->access$000(Lcom/yftech/libmusic/utils/CarLifeMusicManager;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_c

    .line 137
    invoke-virtual {p1}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->getDuration()J

    move-result-wide v0

    .line 138
    invoke-virtual {p1}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->getProgress()J

    move-result-wide v2

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMediaInfoChanged mTitle:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->getSong()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", mSinger:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {p1}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->getArtist()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", mPlayState before:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    .line 142
    invoke-static {v5}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->access$200(Lcom/yftech/libmusic/utils/CarLifeMusicManager;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mPlayState now:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p1}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->isPlaying()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", totalTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", progress:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 140
    invoke-static {v4}, Lcom/media/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 148
    iget-object v4, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    invoke-static {v4}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->access$200(Lcom/yftech/libmusic/utils/CarLifeMusicManager;)I

    move-result v4

    invoke-virtual {p1}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->isPlaying()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 149
    iget-object v4, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    invoke-static {v4}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->access$100(Lcom/yftech/libmusic/utils/CarLifeMusicManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback;

    .line 150
    invoke-virtual {p1}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->isPlaying()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback;->onMusicPlayStatusChanged(I)V

    goto :goto_0

    .line 152
    :cond_1
    iget-object v4, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    invoke-virtual {p1}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->isPlaying()I

    move-result v5

    invoke-static {v4, v5}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->access$202(Lcom/yftech/libmusic/utils/CarLifeMusicManager;I)I

    const/4 v4, 0x2

    .line 155
    invoke-virtual {p1}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->isPlaying()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 156
    iget-object v4, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    invoke-static {v4}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->access$300(Lcom/yftech/libmusic/utils/CarLifeMusicManager;)Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;

    move-result-object v4

    const-string v5, ""

    iput-object v5, v4, Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;->title:Ljava/lang/String;

    .line 157
    iget-object v4, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    invoke-static {v4}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->access$300(Lcom/yftech/libmusic/utils/CarLifeMusicManager;)Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;

    move-result-object v4

    const-string v5, ""

    iput-object v5, v4, Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;->artist:Ljava/lang/String;

    .line 158
    iget-object v4, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    invoke-static {v4}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->access$300(Lcom/yftech/libmusic/utils/CarLifeMusicManager;)Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;

    move-result-object v4

    const-string v5, ""

    iput-object v5, v4, Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;->album:Ljava/lang/String;

    goto :goto_5

    .line 160
    :cond_2
    iget-object v4, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    invoke-static {v4}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->access$300(Lcom/yftech/libmusic/utils/CarLifeMusicManager;)Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;

    move-result-object v4

    invoke-virtual {p1}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->getSong()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->getSong()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->getSong()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_4
    :goto_1
    const-string v5, "unknown"

    :goto_2
    iput-object v5, v4, Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;->title:Ljava/lang/String;

    .line 161
    iget-object v4, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    invoke-static {v4}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->access$300(Lcom/yftech/libmusic/utils/CarLifeMusicManager;)Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;

    move-result-object v4

    invoke-virtual {p1}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->getArtist()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->getArtist()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->getArtist()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_6
    :goto_3
    const-string v5, "unknown"

    :goto_4
    iput-object v5, v4, Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;->artist:Ljava/lang/String;

    .line 162
    iget-object v4, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    invoke-static {v4}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->access$300(Lcom/yftech/libmusic/utils/CarLifeMusicManager;)Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;

    move-result-object v4

    const-string v5, ""

    iput-object v5, v4, Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;->album:Ljava/lang/String;

    .line 166
    :goto_5
    iget-object v4, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    invoke-static {v4}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->access$300(Lcom/yftech/libmusic/utils/CarLifeMusicManager;)Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;->title:Ljava/lang/String;

    iget-object v5, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    invoke-static {v5}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->access$400(Lcom/yftech/libmusic/utils/CarLifeMusicManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    invoke-static {v4}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->access$300(Lcom/yftech/libmusic/utils/CarLifeMusicManager;)Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;->artist:Ljava/lang/String;

    iget-object v5, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    invoke-static {v5}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->access$500(Lcom/yftech/libmusic/utils/CarLifeMusicManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 167
    :cond_7
    iget-object v4, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    invoke-static {v4}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->access$100(Lcom/yftech/libmusic/utils/CarLifeMusicManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback;

    .line 168
    iget-object v6, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    invoke-static {v6}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->access$300(Lcom/yftech/libmusic/utils/CarLifeMusicManager;)Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback;->onMusicInformationChanged(Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;)V

    goto :goto_6

    .line 170
    :cond_8
    iget-object v4, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    invoke-virtual {p1}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->getSong()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->access$402(Lcom/yftech/libmusic/utils/CarLifeMusicManager;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    iget-object v4, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    invoke-virtual {p1}, Lcom/yftech/car/phonelink/PhoneLinkMediaInfo;->getArtist()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->access$502(Lcom/yftech/libmusic/utils/CarLifeMusicManager;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    :cond_9
    iget-object p1, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    invoke-static {p1}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->access$100(Lcom/yftech/libmusic/utils/CarLifeMusicManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback;

    .line 175
    iget-object v5, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    invoke-static {v5}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->access$600(Lcom/yftech/libmusic/utils/CarLifeMusicManager;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback;->onMusicProgressChanged(I)V

    goto :goto_7

    .line 177
    :cond_a
    iget-object p1, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    long-to-int v2, v2

    invoke-static {p1, v2}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->access$602(Lcom/yftech/libmusic/utils/CarLifeMusicManager;I)I

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_c

    .line 180
    iget-object p1, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    invoke-static {p1}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->access$700(Lcom/yftech/libmusic/utils/CarLifeMusicManager;)I

    move-result p1

    int-to-long v2, p1

    cmp-long p1, v2, v0

    if-eqz p1, :cond_c

    .line 181
    iget-object p1, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    invoke-static {p1}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->access$100(Lcom/yftech/libmusic/utils/CarLifeMusicManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback;

    long-to-int v3, v0

    .line 182
    invoke-interface {v2, v3}, Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback;->onMusicDurationChanged(I)V

    goto :goto_8

    .line 184
    :cond_b
    iget-object p0, p0, Lcom/yftech/libmusic/utils/CarLifeMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    long-to-int p1, v0

    invoke-static {p0, p1}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->access$702(Lcom/yftech/libmusic/utils/CarLifeMusicManager;I)I

    :cond_c
    return-void
.end method
