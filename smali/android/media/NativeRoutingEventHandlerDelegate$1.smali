.class Landroid/media/NativeRoutingEventHandlerDelegate$1;
.super Ljava/lang/Object;
.source "NativeRoutingEventHandlerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/NativeRoutingEventHandlerDelegate;->notifyClient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/NativeRoutingEventHandlerDelegate;


# direct methods
.method constructor <init>(Landroid/media/NativeRoutingEventHandlerDelegate;)V
    .locals 0

    .line 41
    iput-object p1, p0, Landroid/media/NativeRoutingEventHandlerDelegate$1;->this$0:Landroid/media/NativeRoutingEventHandlerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 44
    iget-object v0, p0, Landroid/media/NativeRoutingEventHandlerDelegate$1;->this$0:Landroid/media/NativeRoutingEventHandlerDelegate;

    invoke-static {v0}, Landroid/media/NativeRoutingEventHandlerDelegate;->access$000(Landroid/media/NativeRoutingEventHandlerDelegate;)Landroid/media/AudioRouting$OnRoutingChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Landroid/media/NativeRoutingEventHandlerDelegate$1;->this$0:Landroid/media/NativeRoutingEventHandlerDelegate;

    invoke-static {v0}, Landroid/media/NativeRoutingEventHandlerDelegate;->access$000(Landroid/media/NativeRoutingEventHandlerDelegate;)Landroid/media/AudioRouting$OnRoutingChangedListener;

    move-result-object v0

    iget-object p0, p0, Landroid/media/NativeRoutingEventHandlerDelegate$1;->this$0:Landroid/media/NativeRoutingEventHandlerDelegate;

    invoke-static {p0}, Landroid/media/NativeRoutingEventHandlerDelegate;->access$100(Landroid/media/NativeRoutingEventHandlerDelegate;)Landroid/media/AudioRouting;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/media/AudioRouting$OnRoutingChangedListener;->onRoutingChanged(Landroid/media/AudioRouting;)V

    :cond_0
    return-void
.end method
