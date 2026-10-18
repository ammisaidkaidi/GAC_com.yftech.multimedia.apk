.class Landroid/media/tv/TvInputManager$SessionCallbackRecord$2;
.super Ljava/lang/Object;
.source "TvInputManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputManager$SessionCallbackRecord;->postSessionReleased()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)V
    .locals 0

    .line 571
    iput-object p1, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$2;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 574
    iget-object v0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$2;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    invoke-static {v0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->access$000(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$SessionCallback;

    move-result-object v0

    iget-object p0, p0, Landroid/media/tv/TvInputManager$SessionCallbackRecord$2;->this$0:Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    invoke-static {p0}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;->access$100(Landroid/media/tv/TvInputManager$SessionCallbackRecord;)Landroid/media/tv/TvInputManager$Session;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/media/tv/TvInputManager$SessionCallback;->onSessionReleased(Landroid/media/tv/TvInputManager$Session;)V

    return-void
.end method
