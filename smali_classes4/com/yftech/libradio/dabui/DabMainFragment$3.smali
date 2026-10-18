.class Lcom/yftech/libradio/dabui/DabMainFragment$3;
.super Ljava/lang/Object;
.source "DabMainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dabui/DabMainFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

.field final synthetic val$dataList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/DabMainFragment;Ljava/util/List;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment$3;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    iput-object p2, p0, Lcom/yftech/libradio/dabui/DabMainFragment$3;->val$dataList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$3;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$3;->val$dataList:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$1000(Lcom/yftech/libradio/dabui/DabMainFragment;Ljava/util/List;Z)V

    return-void
.end method
