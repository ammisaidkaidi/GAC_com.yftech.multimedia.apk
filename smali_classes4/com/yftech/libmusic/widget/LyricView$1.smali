.class Lcom/yftech/libmusic/widget/LyricView$1;
.super Ljava/lang/Object;
.source "LyricView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmusic/widget/LyricView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/widget/LyricView;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/widget/LyricView;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/yftech/libmusic/widget/LyricView$1;->this$0:Lcom/yftech/libmusic/widget/LyricView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 370
    iget-object p0, p0, Lcom/yftech/libmusic/widget/LyricView$1;->this$0:Lcom/yftech/libmusic/widget/LyricView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/yftech/libmusic/widget/LyricView;->access$002(Lcom/yftech/libmusic/widget/LyricView;Z)Z

    return-void
.end method
