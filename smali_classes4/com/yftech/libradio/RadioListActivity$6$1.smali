.class Lcom/yftech/libradio/RadioListActivity$6$1;
.super Ljava/lang/Object;
.source "RadioListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/RadioListActivity$6;->onRdsInfoListChanged(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/libradio/RadioListActivity$6;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/RadioListActivity$6;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lcom/yftech/libradio/RadioListActivity$6$1;->this$1:Lcom/yftech/libradio/RadioListActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 551
    iget-object p0, p0, Lcom/yftech/libradio/RadioListActivity$6$1;->this$1:Lcom/yftech/libradio/RadioListActivity$6;

    iget-object p0, p0, Lcom/yftech/libradio/RadioListActivity$6;->this$0:Lcom/yftech/libradio/RadioListActivity;

    invoke-static {p0}, Lcom/yftech/libradio/RadioListActivity;->access$000(Lcom/yftech/libradio/RadioListActivity;)Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;->notifyDataSetChanged()V

    return-void
.end method
