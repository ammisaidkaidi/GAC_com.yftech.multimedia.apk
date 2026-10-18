.class Lcom/media/common/util/MediaDataFastScroller$1;
.super Ljava/lang/Object;
.source "MediaDataFastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/media/common/util/MediaDataFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/media/common/util/MediaDataFastScroller;


# direct methods
.method constructor <init>(Lcom/media/common/util/MediaDataFastScroller;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/media/common/util/MediaDataFastScroller$1;->this$0:Lcom/media/common/util/MediaDataFastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 126
    iget-object p0, p0, Lcom/media/common/util/MediaDataFastScroller$1;->this$0:Lcom/media/common/util/MediaDataFastScroller;

    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/media/common/util/MediaDataFastScroller;->hide(I)V

    return-void
.end method
