.class Landroid/telephony/data/DataService$DataServiceHandler;
.super Landroid/os/Handler;
.source "DataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/DataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/data/DataService;


# direct methods
.method constructor <init>(Landroid/telephony/data/DataService;Landroid/os/Looper;)V
    .locals 0

    .line 327
    iput-object p1, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    .line 328
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 334
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 335
    iget-object v1, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v1}, Landroid/telephony/data/DataService;->access$200(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/telephony/data/DataService$DataServiceProvider;

    .line 337
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 418
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/data/DataService$DataCallListChangedIndication;

    .line 421
    :try_start_0
    iget-object v0, p1, Landroid/telephony/data/DataService$DataCallListChangedIndication;->callback:Landroid/telephony/data/IDataServiceCallback;

    iget-object p1, p1, Landroid/telephony/data/DataService$DataCallListChangedIndication;->dataCallList:Ljava/util/List;

    invoke-interface {v0, p1}, Landroid/telephony/data/IDataServiceCallback;->onDataCallListChanged(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 423
    iget-object p0, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to call onDataCallListChanged. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/telephony/data/DataService;->access$500(Landroid/telephony/data/DataService;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_1
    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 413
    :cond_1
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/telephony/data/IDataServiceCallback;

    .line 414
    invoke-static {v2, p0}, Landroid/telephony/data/DataService$DataServiceProvider;->access$400(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V

    goto/16 :goto_2

    :pswitch_2
    if-nez v2, :cond_2

    goto/16 :goto_2

    .line 409
    :cond_2
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/telephony/data/IDataServiceCallback;

    invoke-static {v2, p0}, Landroid/telephony/data/DataService$DataServiceProvider;->access$300(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V

    goto/16 :goto_2

    :pswitch_3
    if-nez v2, :cond_3

    goto/16 :goto_2

    .line 404
    :cond_3
    new-instance p0, Landroid/telephony/data/DataServiceCallback;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {p0, p1}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    invoke-virtual {v2, p0}, Landroid/telephony/data/DataService$DataServiceProvider;->getDataCallList(Landroid/telephony/data/DataServiceCallback;)V

    goto/16 :goto_2

    :pswitch_4
    if-nez v2, :cond_4

    goto/16 :goto_2

    .line 393
    :cond_4
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/telephony/data/DataService$SetDataProfileRequest;

    .line 395
    iget-object p1, p0, Landroid/telephony/data/DataService$SetDataProfileRequest;->dps:Ljava/util/List;

    iget-boolean v0, p0, Landroid/telephony/data/DataService$SetDataProfileRequest;->isRoaming:Z

    .line 397
    iget-object v1, p0, Landroid/telephony/data/DataService$SetDataProfileRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v1, :cond_5

    .line 398
    new-instance v3, Landroid/telephony/data/DataServiceCallback;

    iget-object p0, p0, Landroid/telephony/data/DataService$SetDataProfileRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v3, p0}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    .line 395
    :cond_5
    invoke-virtual {v2, p1, v0, v3}, Landroid/telephony/data/DataService$DataServiceProvider;->setDataProfile(Ljava/util/List;ZLandroid/telephony/data/DataServiceCallback;)V

    goto/16 :goto_2

    :pswitch_5
    if-nez v2, :cond_6

    goto/16 :goto_2

    .line 383
    :cond_6
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;

    .line 385
    iget-object p1, p0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->dataProfile:Landroid/telephony/data/DataProfile;

    iget-boolean v0, p0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->isRoaming:Z

    .line 387
    iget-object v1, p0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v1, :cond_7

    .line 388
    new-instance v3, Landroid/telephony/data/DataServiceCallback;

    iget-object p0, p0, Landroid/telephony/data/DataService$SetInitialAttachApnRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v3, p0}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    .line 385
    :cond_7
    invoke-virtual {v2, p1, v0, v3}, Landroid/telephony/data/DataService$DataServiceProvider;->setInitialAttachApn(Landroid/telephony/data/DataProfile;ZLandroid/telephony/data/DataServiceCallback;)V

    goto/16 :goto_2

    :pswitch_6
    if-nez v2, :cond_8

    goto/16 :goto_2

    .line 373
    :cond_8
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;

    .line 375
    iget p1, p0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->cid:I

    iget v0, p0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->reason:I

    .line 377
    iget-object v1, p0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v1, :cond_9

    .line 378
    new-instance v3, Landroid/telephony/data/DataServiceCallback;

    iget-object p0, p0, Landroid/telephony/data/DataService$DeactivateDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v3, p0}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    .line 375
    :cond_9
    invoke-virtual {v2, p1, v0, v3}, Landroid/telephony/data/DataService$DataServiceProvider;->deactivateDataCall(IILandroid/telephony/data/DataServiceCallback;)V

    goto/16 :goto_2

    :pswitch_7
    if-nez v2, :cond_a

    goto/16 :goto_2

    .line 361
    :cond_a
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/telephony/data/DataService$SetupDataCallRequest;

    .line 362
    iget p1, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->accessNetworkType:I

    iget-object v4, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->dataProfile:Landroid/telephony/data/DataProfile;

    iget-boolean v5, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->isRoaming:Z

    iget-boolean v6, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->allowRoaming:Z

    iget v7, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->reason:I

    iget-object v8, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->linkProperties:Landroid/net/LinkProperties;

    .line 366
    iget-object v0, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    if-eqz v0, :cond_b

    .line 367
    new-instance v0, Landroid/telephony/data/DataServiceCallback;

    iget-object p0, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    invoke-direct {v0, p0}, Landroid/telephony/data/DataServiceCallback;-><init>(Landroid/telephony/data/IDataServiceCallback;)V

    move-object v9, v0

    goto :goto_0

    :cond_b
    move-object v9, v3

    :goto_0
    move v3, p1

    .line 362
    invoke-virtual/range {v2 .. v9}, Landroid/telephony/data/DataService$DataServiceProvider;->setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/telephony/data/DataServiceCallback;)V

    goto :goto_2

    :pswitch_8
    const/4 p1, 0x0

    .line 351
    :goto_1
    iget-object v0, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->access$200(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_d

    .line 352
    iget-object v0, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v0}, Landroid/telephony/data/DataService;->access$200(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/DataService$DataServiceProvider;

    if-eqz v0, :cond_c

    .line 354
    invoke-virtual {v0}, Landroid/telephony/data/DataService$DataServiceProvider;->onDestroy()V

    :cond_c
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 357
    :cond_d
    iget-object p0, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {p0}, Landroid/telephony/data/DataService;->access$200(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    goto :goto_2

    :pswitch_9
    if-eqz v2, :cond_e

    .line 346
    invoke-virtual {v2}, Landroid/telephony/data/DataService$DataServiceProvider;->onDestroy()V

    .line 347
    iget-object p0, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {p0}, Landroid/telephony/data/DataService;->access$200(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2

    .line 339
    :pswitch_a
    iget-object v1, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, p1}, Landroid/telephony/data/DataService;->createDataServiceProvider(I)Landroid/telephony/data/DataService$DataServiceProvider;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 341
    iget-object p0, p0, Landroid/telephony/data/DataService$DataServiceHandler;->this$0:Landroid/telephony/data/DataService;

    invoke-static {p0}, Landroid/telephony/data/DataService;->access$200(Landroid/telephony/data/DataService;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_e
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
