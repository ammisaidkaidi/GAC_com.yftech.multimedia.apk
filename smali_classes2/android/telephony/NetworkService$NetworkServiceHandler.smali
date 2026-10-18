.class Landroid/telephony/NetworkService$NetworkServiceHandler;
.super Landroid/os/Handler;
.source "NetworkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/NetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/NetworkService;


# direct methods
.method constructor <init>(Landroid/telephony/NetworkService;Landroid/os/Looper;)V
    .locals 0

    .line 148
    iput-object p1, p0, Landroid/telephony/NetworkService$NetworkServiceHandler;->this$0:Landroid/telephony/NetworkService;

    .line 149
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 154
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 155
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/INetworkServiceCallback;

    .line 157
    iget-object v2, p0, Landroid/telephony/NetworkService$NetworkServiceHandler;->this$0:Landroid/telephony/NetworkService;

    invoke-static {v2}, Landroid/telephony/NetworkService;->access$200(Landroid/telephony/NetworkService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/NetworkService$NetworkServiceProvider;

    .line 159
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 199
    :cond_0
    invoke-static {v2}, Landroid/telephony/NetworkService$NetworkServiceProvider;->access$500(Landroid/telephony/NetworkService$NetworkServiceProvider;)V

    goto/16 :goto_1

    :pswitch_1
    if-nez v2, :cond_1

    goto :goto_1

    .line 195
    :cond_1
    invoke-static {v2, v1}, Landroid/telephony/NetworkService$NetworkServiceProvider;->access$400(Landroid/telephony/NetworkService$NetworkServiceProvider;Landroid/telephony/INetworkServiceCallback;)V

    goto :goto_1

    :pswitch_2
    if-nez v2, :cond_2

    goto :goto_1

    .line 191
    :cond_2
    invoke-static {v2, v1}, Landroid/telephony/NetworkService$NetworkServiceProvider;->access$300(Landroid/telephony/NetworkService$NetworkServiceProvider;Landroid/telephony/INetworkServiceCallback;)V

    goto :goto_1

    :pswitch_3
    if-nez v2, :cond_3

    goto :goto_1

    .line 184
    :cond_3
    iget p0, p1, Landroid/os/Message;->arg2:I

    .line 185
    new-instance p1, Landroid/telephony/NetworkServiceCallback;

    invoke-direct {p1, v1}, Landroid/telephony/NetworkServiceCallback;-><init>(Landroid/telephony/INetworkServiceCallback;)V

    invoke-virtual {v2, p0, p1}, Landroid/telephony/NetworkService$NetworkServiceProvider;->getNetworkRegistrationState(ILandroid/telephony/NetworkServiceCallback;)V

    goto :goto_1

    :pswitch_4
    const/4 p1, 0x0

    .line 174
    :goto_0
    iget-object v0, p0, Landroid/telephony/NetworkService$NetworkServiceHandler;->this$0:Landroid/telephony/NetworkService;

    invoke-static {v0}, Landroid/telephony/NetworkService;->access$200(Landroid/telephony/NetworkService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    .line 175
    iget-object v0, p0, Landroid/telephony/NetworkService$NetworkServiceHandler;->this$0:Landroid/telephony/NetworkService;

    invoke-static {v0}, Landroid/telephony/NetworkService;->access$200(Landroid/telephony/NetworkService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NetworkService$NetworkServiceProvider;

    if-eqz v0, :cond_4

    .line 177
    invoke-virtual {v0}, Landroid/telephony/NetworkService$NetworkServiceProvider;->onDestroy()V

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 180
    :cond_5
    iget-object p0, p0, Landroid/telephony/NetworkService$NetworkServiceHandler;->this$0:Landroid/telephony/NetworkService;

    invoke-static {p0}, Landroid/telephony/NetworkService;->access$200(Landroid/telephony/NetworkService;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    goto :goto_1

    :pswitch_5
    if-eqz v2, :cond_6

    .line 169
    invoke-virtual {v2}, Landroid/telephony/NetworkService$NetworkServiceProvider;->onDestroy()V

    .line 170
    iget-object p0, p0, Landroid/telephony/NetworkService$NetworkServiceHandler;->this$0:Landroid/telephony/NetworkService;

    invoke-static {p0}, Landroid/telephony/NetworkService;->access$200(Landroid/telephony/NetworkService;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    :pswitch_6
    if-nez v2, :cond_6

    .line 163
    iget-object p1, p0, Landroid/telephony/NetworkService$NetworkServiceHandler;->this$0:Landroid/telephony/NetworkService;

    invoke-static {p1}, Landroid/telephony/NetworkService;->access$200(Landroid/telephony/NetworkService;)Landroid/util/SparseArray;

    move-result-object p1

    iget-object p0, p0, Landroid/telephony/NetworkService$NetworkServiceHandler;->this$0:Landroid/telephony/NetworkService;

    invoke-virtual {p0, v0}, Landroid/telephony/NetworkService;->createNetworkServiceProvider(I)Landroid/telephony/NetworkService$NetworkServiceProvider;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_6
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
