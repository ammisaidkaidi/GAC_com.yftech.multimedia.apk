.class Landroid/telephony/mbms/InternalStreamingServiceCallback$3;
.super Ljava/lang/Object;
.source "InternalStreamingServiceCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/InternalStreamingServiceCallback;->onMediaDescriptionUpdated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/mbms/InternalStreamingServiceCallback;


# direct methods
.method constructor <init>(Landroid/telephony/mbms/InternalStreamingServiceCallback;)V
    .locals 0

    .line 80
    iput-object p1, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$3;->this$0:Landroid/telephony/mbms/InternalStreamingServiceCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 83
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 85
    :try_start_0
    iget-object p0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$3;->this$0:Landroid/telephony/mbms/InternalStreamingServiceCallback;

    invoke-static {p0}, Landroid/telephony/mbms/InternalStreamingServiceCallback;->access$000(Landroid/telephony/mbms/InternalStreamingServiceCallback;)Landroid/telephony/mbms/StreamingServiceCallback;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/mbms/StreamingServiceCallback;->onMediaDescriptionUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
