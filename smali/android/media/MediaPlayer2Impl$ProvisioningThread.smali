.class Landroid/media/MediaPlayer2Impl$ProvisioningThread;
.super Ljava/lang/Thread;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProvisioningThread"
.end annotation


# static fields
.field public static final TIMEOUT_MS:I = 0xea60


# instance fields
.field private drmLock:Ljava/lang/Object;

.field private finished:Z

.field private mediaPlayer:Landroid/media/MediaPlayer2Impl;

.field private status:I

.field final synthetic this$0:Landroid/media/MediaPlayer2Impl;

.field private urlStr:Ljava/lang/String;

.field private uuid:Ljava/util/UUID;


# direct methods
.method private constructor <init>(Landroid/media/MediaPlayer2Impl;)V
    .locals 0

    .line 4088
    iput-object p1, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaPlayer2Impl;Landroid/media/MediaPlayer2Impl$1;)V
    .locals 0

    .line 4088
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl$ProvisioningThread;-><init>(Landroid/media/MediaPlayer2Impl;)V

    return-void
.end method

.method public static synthetic lambda$run$0(Landroid/media/MediaPlayer2Impl$ProvisioningThread;Landroid/util/Pair;)V
    .locals 2

    .line 4187
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaPlayer2$DrmEventCallback;

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer2Impl;

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->this$0:Landroid/media/MediaPlayer2Impl;

    .line 4188
    invoke-static {v1}, Landroid/media/MediaPlayer2Impl;->access$500(Landroid/media/MediaPlayer2Impl;)Landroid/media/DataSourceDesc;

    move-result-object v1

    iget p0, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->status:I

    .line 4187
    invoke-virtual {p1, v0, v1, p0}, Landroid/media/MediaPlayer2$DrmEventCallback;->onDrmPrepared(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;I)V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/media/MediaDrm$ProvisionRequest;Ljava/util/UUID;Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$ProvisioningThread;
    .locals 1

    .line 4104
    invoke-static {p3}, Landroid/media/MediaPlayer2Impl;->access$4800(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->drmLock:Ljava/lang/Object;

    .line 4105
    iput-object p3, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer2Impl;

    .line 4107
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&signedRequest="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->urlStr:Ljava/lang/String;

    .line 4108
    iput-object p2, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->uuid:Ljava/util/UUID;

    const/4 p1, 0x3

    .line 4110
    iput p1, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->status:I

    const-string p1, "MediaPlayer2Impl"

    .line 4112
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "HandleProvisioninig: Thread is initialised url: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->urlStr:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public run()V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4121
    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->urlStr:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 4122
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string v5, "POST"

    .line 4124
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 4125
    invoke-virtual {v4, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 4126
    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const v5, 0xea60

    .line 4127
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 4128
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 4130
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 4131
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v2, "MediaPlayer2Impl"

    .line 4133
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HandleProvisioninig: Thread run: response "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4139
    :goto_0
    :try_start_3
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_0
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception v3

    move-object v5, v2

    move-object v2, v3

    goto :goto_2

    :catch_1
    move-exception v5

    move-object v9, v5

    move-object v5, v2

    move-object v2, v9

    .line 4136
    :goto_1
    :try_start_4
    iput v0, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->status:I

    const-string v6, "MediaPlayer2Impl"

    .line 4137
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HandleProvisioninig: Thread run: connect "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " url: "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    .line 4139
    :goto_2
    :try_start_5
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v2

    move-object v3, v2

    goto :goto_3

    :catch_3
    move-exception v3

    move-object v5, v2

    .line 4142
    :goto_3
    iput v0, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->status:I

    const-string v2, "MediaPlayer2Impl"

    .line 4143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HandleProvisioninig: Thread run: openConnection "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    if-eqz v5, :cond_0

    .line 4148
    :try_start_6
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$6100(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaDrm;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V

    const-string v2, "MediaPlayer2Impl"

    const-string v3, "HandleProvisioninig: Thread run: provideProvisionResponse SUCCEEDED!"

    .line 4149
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move v2, v0

    goto :goto_5

    :catch_4
    move-exception v2

    const/4 v3, 0x2

    .line 4154
    iput v3, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->status:I

    const-string v3, "MediaPlayer2Impl"

    .line 4155
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HandleProvisioninig: Thread run: provideProvisionResponse "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v2, v1

    .line 4163
    :goto_5
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3}, Landroid/media/MediaPlayer2Impl;->access$6500(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 4164
    :try_start_7
    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v4}, Landroid/media/MediaPlayer2Impl;->access$5100(Landroid/media/MediaPlayer2Impl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v0

    .line 4165
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    const/4 v3, 0x3

    if-eqz v4, :cond_5

    .line 4169
    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->drmLock:Ljava/lang/Object;

    monitor-enter v4

    if-eqz v2, :cond_2

    .line 4172
    :try_start_8
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer2Impl;

    iget-object v5, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->uuid:Ljava/util/UUID;

    invoke-static {v2, v5}, Landroid/media/MediaPlayer2Impl;->access$6600(Landroid/media/MediaPlayer2Impl;Ljava/util/UUID;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v3, v1

    .line 4175
    :cond_1
    iput v3, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->status:I

    goto :goto_6

    :catchall_2
    move-exception p0

    goto :goto_8

    :cond_2
    move v2, v1

    .line 4177
    :goto_6
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3, v1}, Landroid/media/MediaPlayer2Impl;->access$6702(Landroid/media/MediaPlayer2Impl;Z)Z

    .line 4178
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3, v1}, Landroid/media/MediaPlayer2Impl;->access$6802(Landroid/media/MediaPlayer2Impl;Z)Z

    if-nez v2, :cond_3

    .line 4180
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v1}, Landroid/media/MediaPlayer2Impl;->access$5900(Landroid/media/MediaPlayer2Impl;)V

    .line 4182
    :cond_3
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 4185
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v1}, Landroid/media/MediaPlayer2Impl;->access$6500(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4186
    :try_start_9
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v2}, Landroid/media/MediaPlayer2Impl;->access$5100(Landroid/media/MediaPlayer2Impl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 4187
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/util/concurrent/Executor;

    new-instance v5, Landroid/media/-$$Lambda$MediaPlayer2Impl$ProvisioningThread$ghq9Dd9r2O6PXBn2hv4fhVAxaTQ;

    invoke-direct {v5, p0, v3}, Landroid/media/-$$Lambda$MediaPlayer2Impl$ProvisioningThread$ghq9Dd9r2O6PXBn2hv4fhVAxaTQ;-><init>(Landroid/media/MediaPlayer2Impl$ProvisioningThread;Landroid/util/Pair;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_7

    .line 4190
    :cond_4
    monitor-exit v1

    goto :goto_a

    :catchall_3
    move-exception p0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw p0

    .line 4182
    :goto_8
    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw p0

    :cond_5
    if-eqz v2, :cond_7

    .line 4195
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer2Impl;

    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->uuid:Ljava/util/UUID;

    invoke-static {v2, v4}, Landroid/media/MediaPlayer2Impl;->access$6600(Landroid/media/MediaPlayer2Impl;Ljava/util/UUID;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v3, v1

    .line 4198
    :cond_6
    iput v3, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->status:I

    goto :goto_9

    :cond_7
    move v2, v1

    .line 4200
    :goto_9
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3, v1}, Landroid/media/MediaPlayer2Impl;->access$6702(Landroid/media/MediaPlayer2Impl;Z)Z

    .line 4201
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->mediaPlayer:Landroid/media/MediaPlayer2Impl;

    invoke-static {v3, v1}, Landroid/media/MediaPlayer2Impl;->access$6802(Landroid/media/MediaPlayer2Impl;Z)Z

    if-nez v2, :cond_8

    .line 4203
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->this$0:Landroid/media/MediaPlayer2Impl;

    invoke-static {v1}, Landroid/media/MediaPlayer2Impl;->access$5900(Landroid/media/MediaPlayer2Impl;)V

    .line 4207
    :cond_8
    :goto_a
    iput-boolean v0, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->finished:Z

    return-void

    :catchall_4
    move-exception p0

    .line 4165
    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw p0
.end method

.method public status()I
    .locals 0

    .line 4098
    iget p0, p0, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->status:I

    return p0
.end method
