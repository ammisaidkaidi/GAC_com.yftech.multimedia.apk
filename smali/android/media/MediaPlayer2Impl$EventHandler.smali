.class Landroid/media/MediaPlayer2Impl$EventHandler;
.super Landroid/os/Handler;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer2Impl;

.field final synthetic this$0:Landroid/media/MediaPlayer2Impl;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer2Impl;Landroid/media/MediaPlayer2Impl;Landroid/os/Looper;)V
    .locals 0

    .line 2770
    iput-object p1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    .line 2771
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2772
    iput-object p2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    return-void
.end method

.method public static synthetic lambda$handleMessage$0(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;Landroid/media/DataSourceDesc;)V
    .locals 2

    .line 2824
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;

    iget-object p0, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-virtual {p1, p0, p2, v0, v1}, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;->onInfo(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;II)V

    return-void
.end method

.method public static synthetic lambda$handleMessage$1(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;Landroid/media/MediaPlayer2Impl$DrmInfoImpl;)V
    .locals 1

    .line 2862
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaPlayer2$DrmEventCallback;

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    iget-object p0, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    .line 2863
    invoke-static {p0}, Landroid/media/MediaPlayer2Impl;->access$500(Landroid/media/MediaPlayer2Impl;)Landroid/media/DataSourceDesc;

    move-result-object p0

    .line 2862
    invoke-virtual {p1, v0, p0, p2}, Landroid/media/MediaPlayer2$DrmEventCallback;->onDrmInfo(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;Landroid/media/MediaPlayer2$DrmInfo;)V

    return-void
.end method

.method public static synthetic lambda$handleMessage$10(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;Landroid/media/TimedMetaData;)V
    .locals 1

    .line 3095
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    iget-object p0, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    .line 3096
    invoke-static {p0}, Landroid/media/MediaPlayer2Impl;->access$500(Landroid/media/MediaPlayer2Impl;)Landroid/media/DataSourceDesc;

    move-result-object p0

    .line 3095
    invoke-virtual {p1, v0, p0, p2}, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;->onTimedMetaDataAvailable(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;Landroid/media/TimedMetaData;)V

    return-void
.end method

.method public static synthetic lambda$handleMessage$2(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;Landroid/media/DataSourceDesc;)V
    .locals 2

    .line 2886
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;

    iget-object p0, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p1, p0, p2, v0, v1}, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;->onInfo(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;II)V

    return-void
.end method

.method public static synthetic lambda$handleMessage$3(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;I)V
    .locals 2

    .line 2920
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    iget-object p0, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    .line 2921
    invoke-static {p0}, Landroid/media/MediaPlayer2Impl;->access$500(Landroid/media/MediaPlayer2Impl;)Landroid/media/DataSourceDesc;

    move-result-object p0

    const/16 v1, 0x2c0

    .line 2920
    invoke-virtual {p1, v0, p0, v1, p2}, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;->onInfo(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;II)V

    return-void
.end method

.method public static synthetic lambda$handleMessage$4(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;Landroid/media/DataSourceDesc;I)V
    .locals 1

    .line 2928
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;

    iget-object p0, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    const/16 v0, 0x2c0

    invoke-virtual {p1, p0, p2, v0, p3}, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;->onInfo(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;II)V

    return-void
.end method

.method public static synthetic lambda$handleMessage$5(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;II)V
    .locals 1

    .line 2966
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    iget-object p0, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    .line 2967
    invoke-static {p0}, Landroid/media/MediaPlayer2Impl;->access$500(Landroid/media/MediaPlayer2Impl;)Landroid/media/DataSourceDesc;

    move-result-object p0

    .line 2966
    invoke-virtual {p1, v0, p0, p2, p3}, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;->onVideoSizeChanged(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;II)V

    return-void
.end method

.method public static synthetic lambda$handleMessage$6(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;II)V
    .locals 1

    .line 2978
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    iget-object p0, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    .line 2979
    invoke-static {p0}, Landroid/media/MediaPlayer2Impl;->access$500(Landroid/media/MediaPlayer2Impl;)Landroid/media/DataSourceDesc;

    move-result-object p0

    .line 2978
    invoke-virtual {p1, v0, p0, p2, p3}, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;->onError(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;II)V

    return-void
.end method

.method public static synthetic lambda$handleMessage$7(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;)V
    .locals 3

    .line 2980
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    iget-object p0, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    .line 2981
    invoke-static {p0}, Landroid/media/MediaPlayer2Impl;->access$500(Landroid/media/MediaPlayer2Impl;)Landroid/media/DataSourceDesc;

    move-result-object p0

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 2980
    invoke-virtual {p1, v0, p0, v1, v2}, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;->onInfo(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;II)V

    return-void
.end method

.method public static synthetic lambda$handleMessage$8(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;II)V
    .locals 1

    .line 3031
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    iget-object p0, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    .line 3032
    invoke-static {p0}, Landroid/media/MediaPlayer2Impl;->access$500(Landroid/media/MediaPlayer2Impl;)Landroid/media/DataSourceDesc;

    move-result-object p0

    .line 3031
    invoke-virtual {p1, v0, p0, p2, p3}, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;->onInfo(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;II)V

    return-void
.end method

.method public static synthetic lambda$handleMessage$9(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;Landroid/media/TimedText;)V
    .locals 1

    .line 3061
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    iget-object p0, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p0}, Landroid/media/MediaPlayer2Impl;->access$500(Landroid/media/MediaPlayer2Impl;)Landroid/media/DataSourceDesc;

    move-result-object p0

    invoke-virtual {p1, v0, p0, p2}, Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;->onTimedText(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;Landroid/media/TimedText;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2777
    invoke-virtual {p0, p1, v0, v1}, Landroid/media/MediaPlayer2Impl$EventHandler;->handleMessage(Landroid/os/Message;J)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;J)V
    .locals 9

    .line 2781
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    invoke-static {v0}, Landroid/media/MediaPlayer2Impl;->access$3800(Landroid/media/MediaPlayer2Impl;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string p0, "MediaPlayer2Impl"

    const-string/jumbo p1, "mediaplayer2 went away with unhandled events"

    .line 2782
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2785
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2786
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 2788
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xd2

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1e

    const/16 v3, 0x2710

    if-eq v2, v3, :cond_1c

    const/16 v3, -0x3f2

    const/16 v5, 0x64

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    const-string p0, "MediaPlayer2Impl"

    .line 3121
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown message type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3085
    :pswitch_0
    iget-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of p2, p2, Landroid/os/Parcel;

    if-eqz p2, :cond_1

    .line 3086
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Parcel;

    .line 3087
    invoke-static {p1}, Landroid/media/TimedMetaData;->createTimedMetaDataFromParcel(Landroid/os/Parcel;)Landroid/media/TimedMetaData;

    move-result-object v4

    .line 3088
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 3093
    :cond_1
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p1}, Landroid/media/MediaPlayer2Impl;->access$1800(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 3094
    :try_start_0
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p1}, Landroid/media/MediaPlayer2Impl;->access$1900(Landroid/media/MediaPlayer2Impl;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/Pair;

    .line 3095
    iget-object v0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$5DmGtkuYQXExyXOBI9Qvu64NQ68;

    invoke-direct {v1, p0, p3, v4}, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$5DmGtkuYQXExyXOBI9Qvu64NQ68;-><init>(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;Landroid/media/TimedMetaData;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3098
    :cond_2
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 3069
    :pswitch_1
    iget-object p2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p2}, Landroid/media/MediaPlayer2Impl;->access$5400(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2$OnSubtitleDataListener;

    move-result-object p2

    if-nez p2, :cond_3

    return-void

    .line 3073
    :cond_3
    iget-object p3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of p3, p3, Landroid/os/Parcel;

    if-eqz p3, :cond_4

    .line 3074
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Parcel;

    .line 3075
    new-instance p3, Landroid/media/SubtitleData;

    invoke-direct {p3, p1}, Landroid/media/SubtitleData;-><init>(Landroid/os/Parcel;)V

    .line 3076
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 3077
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    invoke-interface {p2, p0, p3}, Landroid/media/MediaPlayer2$OnSubtitleDataListener;->onSubtitleData(Landroid/media/MediaPlayer2;Landroid/media/SubtitleData;)V

    :cond_4
    return-void

    .line 2990
    :pswitch_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eq v2, v6, :cond_6

    packed-switch v2, :pswitch_data_3

    packed-switch v2, :pswitch_data_4

    goto/16 :goto_3

    .line 3003
    :pswitch_3
    :try_start_1
    iget-object p2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p2}, Landroid/media/MediaPlayer2Impl;->access$3900(Landroid/media/MediaPlayer2Impl;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 3005
    :catch_0
    invoke-virtual {p0, v5, v7, v3, v4}, Landroid/media/MediaPlayer2Impl$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 3008
    invoke-virtual {p0, p2}, Landroid/media/MediaPlayer2Impl$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    :pswitch_4
    const/16 p2, 0x322

    .line 3013
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 3015
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p1}, Landroid/media/MediaPlayer2Impl;->access$3200(Landroid/media/MediaPlayer2Impl;)Landroid/media/SubtitleController;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 3016
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p1}, Landroid/media/MediaPlayer2Impl;->access$3200(Landroid/media/MediaPlayer2Impl;)Landroid/media/SubtitleController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/SubtitleController;->selectDefaultTrack()V

    goto :goto_3

    .line 3022
    :pswitch_5
    iget-object p2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p2}, Landroid/media/MediaPlayer2Impl;->access$3300(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$TimeProvider;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 3024
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/16 p3, 0x2bd

    if-ne p1, p3, :cond_5

    goto :goto_2

    :cond_5
    move v7, v8

    :goto_2
    invoke-virtual {p2, v7}, Landroid/media/MediaPlayer2Impl$TimeProvider;->onBuffering(Z)V

    goto :goto_3

    :pswitch_6
    const-string p2, "MediaPlayer2Impl"

    .line 2998
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Info ("

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2992
    :cond_6
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p1}, Landroid/media/MediaPlayer2Impl;->access$600(Landroid/media/MediaPlayer2Impl;)J

    move-result-wide v2

    cmp-long p1, p2, v2

    if-nez p1, :cond_7

    .line 2993
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p1}, Landroid/media/MediaPlayer2Impl;->access$1300(Landroid/media/MediaPlayer2Impl;)V

    .line 3029
    :cond_7
    :goto_3
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p1}, Landroid/media/MediaPlayer2Impl;->access$1800(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 3030
    :try_start_2
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p1}, Landroid/media/MediaPlayer2Impl;->access$1900(Landroid/media/MediaPlayer2Impl;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/Pair;

    .line 3031
    iget-object v2, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$iPmZQ0HxMVwbBcbhgpHbun3WGTk;

    invoke-direct {v3, p0, p3, v0, v1}, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$iPmZQ0HxMVwbBcbhgpHbun3WGTk;-><init>(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;II)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 3034
    :cond_8
    monitor-exit p2

    return-void

    :catchall_1
    move-exception p0

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :pswitch_7
    const-string p2, "MediaPlayer2Impl"

    .line 2975
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error ("

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2976
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p1}, Landroid/media/MediaPlayer2Impl;->access$1800(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 2977
    :try_start_3
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p1}, Landroid/media/MediaPlayer2Impl;->access$1900(Landroid/media/MediaPlayer2Impl;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/Pair;

    .line 2978
    iget-object v2, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$5fCusDxj0OAxGzH6d86WnqVt8Rw;

    invoke-direct {v3, p0, p3, v0, v1}, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$5fCusDxj0OAxGzH6d86WnqVt8Rw;-><init>(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;II)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2980
    iget-object v2, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$9rzGOSqsKQVeN_cdPvY8essrTyg;

    invoke-direct {v3, p0, p3}, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$9rzGOSqsKQVeN_cdPvY8essrTyg;-><init>(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 2983
    :cond_9
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2984
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p0, v8}, Landroid/media/MediaPlayer2Impl;->access$000(Landroid/media/MediaPlayer2Impl;Z)V

    return-void

    :catchall_2
    move-exception p0

    .line 2983
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    .line 3051
    :pswitch_8
    iget-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of p2, p2, Landroid/os/Parcel;

    if-eqz p2, :cond_a

    .line 3052
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Parcel;

    .line 3053
    new-instance v4, Landroid/media/TimedText;

    invoke-direct {v4, p1}, Landroid/media/TimedText;-><init>(Landroid/os/Parcel;)V

    .line 3054
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 3059
    :cond_a
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p1}, Landroid/media/MediaPlayer2Impl;->access$1800(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3060
    :try_start_5
    iget-object p2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p2}, Landroid/media/MediaPlayer2Impl;->access$1900(Landroid/media/MediaPlayer2Impl;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/Pair;

    .line 3061
    iget-object v0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$sx24vrhw_-7V07cadDNXlQ5kv04;

    invoke-direct {v1, p0, p3, v4}, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$sx24vrhw_-7V07cadDNXlQ5kv04;-><init>(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;Landroid/media/TimedText;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 3063
    :cond_b
    monitor-exit p1

    return-void

    :catchall_3
    move-exception p0

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p0

    .line 3041
    :pswitch_9
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p0}, Landroid/media/MediaPlayer2Impl;->access$3300(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$TimeProvider;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 3043
    invoke-virtual {p0}, Landroid/media/MediaPlayer2Impl$TimeProvider;->onNotifyTime()V

    :cond_c
    return-void

    .line 2896
    :pswitch_a
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p0}, Landroid/media/MediaPlayer2Impl;->access$3300(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$TimeProvider;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 2898
    invoke-virtual {p0}, Landroid/media/MediaPlayer2Impl$TimeProvider;->onStopped()V

    goto/16 :goto_10

    .line 2906
    :pswitch_b
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p0}, Landroid/media/MediaPlayer2Impl;->access$3300(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$TimeProvider;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 2908
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 p2, 0x7

    if-ne p1, p2, :cond_d

    goto :goto_7

    :cond_d
    move v7, v8

    :goto_7
    invoke-virtual {p0, v7}, Landroid/media/MediaPlayer2Impl$TimeProvider;->onPaused(Z)V

    goto/16 :goto_10

    .line 2962
    :pswitch_c
    iget p2, p1, Landroid/os/Message;->arg1:I

    .line 2963
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 2964
    iget-object p3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p3}, Landroid/media/MediaPlayer2Impl;->access$1800(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3

    .line 2965
    :try_start_6
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v0}, Landroid/media/MediaPlayer2Impl;->access$1900(Landroid/media/MediaPlayer2Impl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 2966
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$ALpPmFUNsJxKZK0N2HhQK6ZY4XM;

    invoke-direct {v3, p0, v1, p2, p1}, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$ALpPmFUNsJxKZK0N2HhQK6ZY4XM;-><init>(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;II)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_8

    .line 2969
    :cond_e
    monitor-exit p3

    return-void

    :catchall_4
    move-exception p0

    monitor-exit p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw p0

    .line 2939
    :pswitch_d
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p1}, Landroid/media/MediaPlayer2Impl;->access$4100(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2940
    :try_start_7
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p1}, Landroid/media/MediaPlayer2Impl;->access$4200(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$Task;

    move-result-object p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    .line 2941
    invoke-static {p1}, Landroid/media/MediaPlayer2Impl;->access$4200(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$Task;

    move-result-object p1

    invoke-static {p1}, Landroid/media/MediaPlayer2Impl$Task;->access$4300(Landroid/media/MediaPlayer2Impl$Task;)I

    move-result p1

    const/16 p2, 0xe

    if-ne p1, p2, :cond_f

    iget-object p1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    .line 2942
    invoke-static {p1}, Landroid/media/MediaPlayer2Impl;->access$4200(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$Task;

    move-result-object p1

    invoke-static {p1}, Landroid/media/MediaPlayer2Impl$Task;->access$4500(Landroid/media/MediaPlayer2Impl$Task;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 2943
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p1}, Landroid/media/MediaPlayer2Impl;->access$4200(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$Task;

    move-result-object p1

    invoke-static {p1, v8}, Landroid/media/MediaPlayer2Impl$Task;->access$4600(Landroid/media/MediaPlayer2Impl$Task;I)V

    .line 2944
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p1, v4}, Landroid/media/MediaPlayer2Impl;->access$4202(Landroid/media/MediaPlayer2Impl;Landroid/media/MediaPlayer2Impl$Task;)Landroid/media/MediaPlayer2Impl$Task;

    .line 2945
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p1}, Landroid/media/MediaPlayer2Impl;->access$4700(Landroid/media/MediaPlayer2Impl;)V

    .line 2947
    :cond_f
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 2953
    :pswitch_e
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p1}, Landroid/media/MediaPlayer2Impl;->access$3300(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$TimeProvider;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 2955
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer2Impl;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer2Impl$TimeProvider;->onSeekComplete(Landroid/media/MediaPlayer2Impl;)V

    :cond_10
    return-void

    :catchall_5
    move-exception p0

    .line 2947
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw p0

    .line 2915
    :pswitch_f
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 2916
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v0}, Landroid/media/MediaPlayer2Impl;->access$1800(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2917
    :try_start_9
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v1}, Landroid/media/MediaPlayer2Impl;->access$600(Landroid/media/MediaPlayer2Impl;)J

    move-result-wide v1

    cmp-long v1, p2, v1

    if-nez v1, :cond_11

    .line 2918
    iget-object p2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p2}, Landroid/media/MediaPlayer2Impl;->access$5200(Landroid/media/MediaPlayer2Impl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2919
    iget-object p2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p2}, Landroid/media/MediaPlayer2Impl;->access$1900(Landroid/media/MediaPlayer2Impl;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_12

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/Pair;

    .line 2920
    iget-object v1, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$Dr_ImxKsZcrvP7slv6KPxdUdzXk;

    invoke-direct {v2, p0, p3, p1}, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$Dr_ImxKsZcrvP7slv6KPxdUdzXk;-><init>(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_9

    .line 2924
    :cond_11
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v1}, Landroid/media/MediaPlayer2Impl;->access$1000(Landroid/media/MediaPlayer2Impl;)J

    move-result-wide v1

    cmp-long p2, p2, v1

    if-nez p2, :cond_12

    iget-object p2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p2}, Landroid/media/MediaPlayer2Impl;->access$900(Landroid/media/MediaPlayer2Impl;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_12

    .line 2925
    iget-object p2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p2}, Landroid/media/MediaPlayer2Impl;->access$5300(Landroid/media/MediaPlayer2Impl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2926
    iget-object p2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p2}, Landroid/media/MediaPlayer2Impl;->access$900(Landroid/media/MediaPlayer2Impl;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/DataSourceDesc;

    .line 2927
    iget-object p3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p3}, Landroid/media/MediaPlayer2Impl;->access$1900(Landroid/media/MediaPlayer2Impl;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_a
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 2928
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$hsCyoCNpv30l9tb7sOpVC4dnMy8;

    invoke-direct {v3, p0, v1, p2, p1}, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$hsCyoCNpv30l9tb7sOpVC4dnMy8;-><init>(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;Landroid/media/DataSourceDesc;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_a

    .line 2933
    :cond_12
    monitor-exit v0

    return-void

    :catchall_6
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    throw p0

    .line 2875
    :pswitch_10
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p1}, Landroid/media/MediaPlayer2Impl;->access$500(Landroid/media/MediaPlayer2Impl;)Landroid/media/DataSourceDesc;

    move-result-object p1

    .line 2876
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v0}, Landroid/media/MediaPlayer2Impl;->access$400(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2877
    :try_start_a
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v1}, Landroid/media/MediaPlayer2Impl;->access$600(Landroid/media/MediaPlayer2Impl;)J

    move-result-wide v1

    cmp-long v1, p2, v1

    if-nez v1, :cond_13

    const-string v1, "MediaPlayer2Impl"

    .line 2878
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MEDIA_PLAYBACK_COMPLETE: srcId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", currentSrcId="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    .line 2879
    invoke-static {p2}, Landroid/media/MediaPlayer2Impl;->access$600(Landroid/media/MediaPlayer2Impl;)J

    move-result-wide p2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", nextSrcId="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p2}, Landroid/media/MediaPlayer2Impl;->access$1000(Landroid/media/MediaPlayer2Impl;)J

    move-result-wide p2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2878
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2880
    iget-object p2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p2}, Landroid/media/MediaPlayer2Impl;->access$4000(Landroid/media/MediaPlayer2Impl;)V

    .line 2882
    :cond_13
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 2884
    iget-object p2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p2}, Landroid/media/MediaPlayer2Impl;->access$1800(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 2885
    :try_start_b
    iget-object p3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p3}, Landroid/media/MediaPlayer2Impl;->access$1900(Landroid/media/MediaPlayer2Impl;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_b
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 2886
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$SRqj_-_1CH9_ez58ikKgR8GPWEc;

    invoke-direct {v2, p0, v0, p1}, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$SRqj_-_1CH9_ez58ikKgR8GPWEc;-><init>(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;Landroid/media/DataSourceDesc;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_b

    .line 2889
    :cond_14
    monitor-exit p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 2890
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p0, v8}, Landroid/media/MediaPlayer2Impl;->access$000(Landroid/media/MediaPlayer2Impl;Z)V

    return-void

    :catchall_7
    move-exception p0

    .line 2889
    :try_start_c
    monitor-exit p2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    throw p0

    :catchall_8
    move-exception p0

    .line 2882
    :try_start_d
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    throw p0

    .line 2792
    :pswitch_11
    :try_start_e
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p1}, Landroid/media/MediaPlayer2Impl;->access$3900(Landroid/media/MediaPlayer2Impl;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_1

    goto :goto_c

    .line 2797
    :catch_1
    invoke-virtual {p0, v5, v7, v3, v4}, Landroid/media/MediaPlayer2Impl$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2799
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer2Impl$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2803
    :goto_c
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p1}, Landroid/media/MediaPlayer2Impl;->access$400(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_f
    const-string v0, "MediaPlayer2Impl"

    .line 2804
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MEDIA_PREPARED: srcId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", currentSrcId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    .line 2805
    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$600(Landroid/media/MediaPlayer2Impl;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", nextSrcId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$1000(Landroid/media/MediaPlayer2Impl;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2804
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2806
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v0}, Landroid/media/MediaPlayer2Impl;->access$600(Landroid/media/MediaPlayer2Impl;)J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_15

    .line 2807
    iget-object p2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p2}, Landroid/media/MediaPlayer2Impl;->access$500(Landroid/media/MediaPlayer2Impl;)Landroid/media/DataSourceDesc;

    move-result-object p2

    .line 2808
    iget-object p3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p3}, Landroid/media/MediaPlayer2Impl;->access$1300(Landroid/media/MediaPlayer2Impl;)V

    goto :goto_d

    .line 2809
    :cond_15
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v0}, Landroid/media/MediaPlayer2Impl;->access$900(Landroid/media/MediaPlayer2Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v0}, Landroid/media/MediaPlayer2Impl;->access$900(Landroid/media/MediaPlayer2Impl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    .line 2810
    invoke-static {v0}, Landroid/media/MediaPlayer2Impl;->access$1000(Landroid/media/MediaPlayer2Impl;)J

    move-result-wide v0

    cmp-long p2, p2, v0

    if-nez p2, :cond_16

    .line 2811
    iget-object p2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p2}, Landroid/media/MediaPlayer2Impl;->access$900(Landroid/media/MediaPlayer2Impl;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/DataSourceDesc;

    .line 2812
    iget-object p3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p3, v6}, Landroid/media/MediaPlayer2Impl;->access$1102(Landroid/media/MediaPlayer2Impl;I)I

    .line 2813
    iget-object p3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p3}, Landroid/media/MediaPlayer2Impl;->access$1200(Landroid/media/MediaPlayer2Impl;)Z

    move-result p3

    if-eqz p3, :cond_17

    .line 2814
    iget-object p3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p3}, Landroid/media/MediaPlayer2Impl;->access$4000(Landroid/media/MediaPlayer2Impl;)V

    goto :goto_d

    :cond_16
    move-object p2, v4

    .line 2819
    :cond_17
    :goto_d
    monitor-exit p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    if-eqz p2, :cond_19

    .line 2822
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p1}, Landroid/media/MediaPlayer2Impl;->access$1800(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2823
    :try_start_10
    iget-object p3, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p3}, Landroid/media/MediaPlayer2Impl;->access$1900(Landroid/media/MediaPlayer2Impl;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 2824
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$a55WUDW_Ad0Vmi1x4yZhQXvPqdc;

    invoke-direct {v2, p0, v0, p2}, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$a55WUDW_Ad0Vmi1x4yZhQXvPqdc;-><init>(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;Landroid/media/DataSourceDesc;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_e

    .line 2827
    :cond_18
    monitor-exit p1

    goto :goto_f

    :catchall_9
    move-exception p0

    monitor-exit p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    throw p0

    .line 2829
    :cond_19
    :goto_f
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p1}, Landroid/media/MediaPlayer2Impl;->access$4100(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3

    .line 2830
    :try_start_11
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p1}, Landroid/media/MediaPlayer2Impl;->access$4200(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$Task;

    move-result-object p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    .line 2831
    invoke-static {p1}, Landroid/media/MediaPlayer2Impl;->access$4200(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$Task;

    move-result-object p1

    invoke-static {p1}, Landroid/media/MediaPlayer2Impl$Task;->access$4300(Landroid/media/MediaPlayer2Impl$Task;)I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1a

    iget-object p1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    .line 2832
    invoke-static {p1}, Landroid/media/MediaPlayer2Impl;->access$4200(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$Task;

    move-result-object p1

    invoke-static {p1}, Landroid/media/MediaPlayer2Impl$Task;->access$4400(Landroid/media/MediaPlayer2Impl$Task;)Landroid/media/DataSourceDesc;

    move-result-object p1

    if-ne p1, p2, :cond_1a

    iget-object p1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    .line 2833
    invoke-static {p1}, Landroid/media/MediaPlayer2Impl;->access$4200(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$Task;

    move-result-object p1

    invoke-static {p1}, Landroid/media/MediaPlayer2Impl$Task;->access$4500(Landroid/media/MediaPlayer2Impl$Task;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 2834
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p1}, Landroid/media/MediaPlayer2Impl;->access$4200(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$Task;

    move-result-object p1

    invoke-static {p1, v8}, Landroid/media/MediaPlayer2Impl$Task;->access$4600(Landroid/media/MediaPlayer2Impl$Task;I)V

    .line 2835
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p1, v4}, Landroid/media/MediaPlayer2Impl;->access$4202(Landroid/media/MediaPlayer2Impl;Landroid/media/MediaPlayer2Impl$Task;)Landroid/media/MediaPlayer2Impl$Task;

    .line 2836
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p0}, Landroid/media/MediaPlayer2Impl;->access$4700(Landroid/media/MediaPlayer2Impl;)V

    .line 2838
    :cond_1a
    monitor-exit p3

    return-void

    :catchall_a
    move-exception p0

    monitor-exit p3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    throw p0

    :catchall_b
    move-exception p0

    .line 2819
    :try_start_12
    monitor-exit p1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    throw p0

    :cond_1b
    :goto_10
    :pswitch_12
    return-void

    .line 3109
    :cond_1c
    invoke-static {}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    .line 3110
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p1}, Landroid/media/MediaPlayer2Impl;->access$5500(Landroid/media/MediaPlayer2Impl;)Landroid/util/ArrayMap;

    move-result-object p2

    monitor-enter p2

    .line 3112
    :try_start_13
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p0}, Landroid/media/MediaPlayer2Impl;->access$5500(Landroid/media/MediaPlayer2Impl;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/NativeRoutingEventHandlerDelegate;

    .line 3113
    invoke-virtual {p1}, Landroid/media/NativeRoutingEventHandlerDelegate;->notifyClient()V

    goto :goto_11

    .line 3115
    :cond_1d
    monitor-exit p2

    return-void

    :catchall_c
    move-exception p0

    monitor-exit p2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    throw p0

    .line 2844
    :cond_1e
    iget-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez p2, :cond_1f

    const-string p0, "MediaPlayer2Impl"

    const-string p1, "MEDIA_DRM_INFO msg.obj=NULL"

    .line 2845
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 2846
    :cond_1f
    iget-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of p2, p2, Landroid/os/Parcel;

    if-eqz p2, :cond_22

    .line 2850
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p1}, Landroid/media/MediaPlayer2Impl;->access$4800(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 2851
    :try_start_14
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p1}, Landroid/media/MediaPlayer2Impl;->access$4900(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$DrmInfoImpl;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 2852
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p1}, Landroid/media/MediaPlayer2Impl;->access$4900(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$DrmInfoImpl;

    move-result-object p1

    invoke-static {p1}, Landroid/media/MediaPlayer2Impl$DrmInfoImpl;->access$5000(Landroid/media/MediaPlayer2Impl$DrmInfoImpl;)Landroid/media/MediaPlayer2Impl$DrmInfoImpl;

    move-result-object v4

    .line 2856
    :cond_20
    monitor-exit p2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_e

    if-eqz v4, :cond_23

    .line 2860
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p1}, Landroid/media/MediaPlayer2Impl;->access$1800(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2861
    :try_start_15
    iget-object p2, p0, Landroid/media/MediaPlayer2Impl$EventHandler;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {p2}, Landroid/media/MediaPlayer2Impl;->access$5100(Landroid/media/MediaPlayer2Impl;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_12
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_21

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/Pair;

    .line 2862
    iget-object v0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$XDpOSvYSapoVyl-BYW0W8pLfp3A;

    invoke-direct {v1, p0, p3, v4}, Landroid/media/-$$Lambda$MediaPlayer2Impl$EventHandler$XDpOSvYSapoVyl-BYW0W8pLfp3A;-><init>(Landroid/media/MediaPlayer2Impl$EventHandler;Landroid/util/Pair;Landroid/media/MediaPlayer2Impl$DrmInfoImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_12

    .line 2865
    :cond_21
    monitor-exit p1

    goto :goto_13

    :catchall_d
    move-exception p0

    monitor-exit p1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    throw p0

    :catchall_e
    move-exception p0

    .line 2856
    :try_start_16
    monitor-exit p2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_e

    throw p0

    :cond_22
    const-string p0, "MediaPlayer2Impl"

    .line 2868
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "MEDIA_DRM_INFO msg.obj of unexpected type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    :goto_13
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x62
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2bc
        :pswitch_6
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x322
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
