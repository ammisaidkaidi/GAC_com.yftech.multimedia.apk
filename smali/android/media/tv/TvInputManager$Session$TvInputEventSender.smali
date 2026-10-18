.class final Landroid/media/tv/TvInputManager$Session$TvInputEventSender;
.super Landroid/view/InputEventSender;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputManager$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TvInputEventSender"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputManager$Session;


# direct methods
.method public constructor <init>(Landroid/media/tv/TvInputManager$Session;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0

    .line 2523
    iput-object p1, p0, Landroid/media/tv/TvInputManager$Session$TvInputEventSender;->this$0:Landroid/media/tv/TvInputManager$Session;

    .line 2524
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventSender;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onInputEventFinished(IZ)V
    .locals 1

    .line 2529
    iget-object p0, p0, Landroid/media/tv/TvInputManager$Session$TvInputEventSender;->this$0:Landroid/media/tv/TvInputManager$Session;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/tv/TvInputManager$Session;->finishedInputEvent(IZZ)V

    return-void
.end method
