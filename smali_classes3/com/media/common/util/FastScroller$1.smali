.class Lcom/media/common/util/FastScroller$1;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/media/common/util/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/media/common/util/FastScroller;


# direct methods
.method constructor <init>(Lcom/media/common/util/FastScroller;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/media/common/util/FastScroller$1;->this$0:Lcom/media/common/util/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 123
    iget-object p0, p0, Lcom/media/common/util/FastScroller$1;->this$0:Lcom/media/common/util/FastScroller;

    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/media/common/util/FastScroller;->hide(I)V

    return-void
.end method
