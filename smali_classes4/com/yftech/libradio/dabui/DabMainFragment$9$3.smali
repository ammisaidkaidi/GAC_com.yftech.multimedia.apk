.class Lcom/yftech/libradio/dabui/DabMainFragment$9$3;
.super Ljava/lang/Object;
.source "DabMainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dabui/DabMainFragment$9;->onFavorChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/libradio/dabui/DabMainFragment$9;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/DabMainFragment$9;)V
    .locals 0

    .line 996
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment$9$3;->this$1:Lcom/yftech/libradio/dabui/DabMainFragment$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 999
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$9$3;->this$1:Lcom/yftech/libradio/dabui/DabMainFragment$9;

    iget-object v0, v0, Lcom/yftech/libradio/dabui/DabMainFragment$9;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$9$3;->this$1:Lcom/yftech/libradio/dabui/DabMainFragment$9;

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$9;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$900(Lcom/yftech/libradio/dabui/DabMainFragment;)I

    move-result p0

    invoke-static {v0, p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$800(Lcom/yftech/libradio/dabui/DabMainFragment;I)V

    return-void
.end method
