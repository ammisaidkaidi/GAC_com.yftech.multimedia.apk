.class Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;
.super Landroid/os/Handler;
.source "WifiAwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;-><init>(Landroid/net/wifi/aware/WifiAwareManager;Landroid/os/Looper;Landroid/os/Binder;Landroid/net/wifi/aware/AttachCallback;Landroid/net/wifi/aware/IdentityChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;

.field final synthetic val$attachCallback:Landroid/net/wifi/aware/AttachCallback;

.field final synthetic val$identityChangedListener:Landroid/net/wifi/aware/IdentityChangedListener;


# direct methods
.method constructor <init>(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;Landroid/os/Looper;Landroid/net/wifi/aware/AttachCallback;Landroid/net/wifi/aware/IdentityChangedListener;)V
    .locals 0

    .line 508
    iput-object p1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->this$0:Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;

    iput-object p3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->val$attachCallback:Landroid/net/wifi/aware/AttachCallback;

    iput-object p4, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->val$identityChangedListener:Landroid/net/wifi/aware/IdentityChangedListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 516
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->this$0:Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;

    invoke-static {v0}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->access$000(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    if-nez v0, :cond_0

    const-string p0, "WifiAwareManager"

    const-string p1, "WifiAwareEventCallbackProxy: handleMessage post GC"

    .line 518
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 522
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 532
    :pswitch_0
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->val$identityChangedListener:Landroid/net/wifi/aware/IdentityChangedListener;

    if-nez v0, :cond_1

    const-string p0, "WifiAwareManager"

    const-string p1, "CALLBACK_IDENTITY_CHANGED: null listener."

    .line 533
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 535
    :cond_1
    iget-object p0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->val$identityChangedListener:Landroid/net/wifi/aware/IdentityChangedListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/IdentityChangedListener;->onIdentityChanged([B)V

    goto :goto_0

    .line 528
    :pswitch_1
    iget-object p1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->this$0:Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;

    invoke-static {p1}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->access$000(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 529
    iget-object p0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->val$attachCallback:Landroid/net/wifi/aware/AttachCallback;

    invoke-virtual {p0}, Landroid/net/wifi/aware/AttachCallback;->onAttachFailed()V

    goto :goto_0

    .line 524
    :pswitch_2
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->val$attachCallback:Landroid/net/wifi/aware/AttachCallback;

    new-instance v2, Landroid/net/wifi/aware/WifiAwareSession;

    iget-object p0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;->this$0:Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;

    .line 525
    invoke-static {p0}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->access$100(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;)Landroid/os/Binder;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v2, v0, p0, p1}, Landroid/net/wifi/aware/WifiAwareSession;-><init>(Landroid/net/wifi/aware/WifiAwareManager;Landroid/os/Binder;I)V

    .line 524
    invoke-virtual {v1, v2}, Landroid/net/wifi/aware/AttachCallback;->onAttached(Landroid/net/wifi/aware/WifiAwareSession;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
