.class Lcom/yftech/libgallery/ui/FullScreenImageFragment$1;
.super Landroid/os/Handler;
.source "FullScreenImageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libgallery/ui/FullScreenImageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libgallery/ui/FullScreenImageFragment;Landroid/os/Looper;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$1;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 118
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 120
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$1;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    const/16 p1, 0x8

    invoke-static {p0, p1}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$000(Lcom/yftech/libgallery/ui/FullScreenImageFragment;I)V

    goto/16 :goto_1

    .line 121
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x63

    if-ne v0, v3, :cond_5

    .line 123
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$1;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$100(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$1;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$100(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_0

    .line 127
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RC_IMAGE_SWITCH:has message="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lcom/yftech/libgallery/ui/FullScreenImageFragment$1;->hasMessages(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isOverTime="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$1;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$200(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    add-long/2addr v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v0, v4, v8

    if-gez v0, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 132
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$1;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {p1, v2}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$302(Lcom/yftech/libgallery/ui/FullScreenImageFragment;I)I

    .line 134
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$1;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$1;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$400(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)I

    move-result v0

    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$1;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {v1}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$100(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$402(Lcom/yftech/libgallery/ui/FullScreenImageFragment;I)I

    .line 135
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$1;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$500(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)V

    .line 137
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$1;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$202(Lcom/yftech/libgallery/ui/FullScreenImageFragment;J)J

    .line 138
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$1;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$600(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 139
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$1;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$600(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 141
    :cond_3
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$1;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$600(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v3, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    :cond_4
    :goto_0
    return-void

    .line 142
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x14

    if-ne v0, v3, :cond_7

    .line 144
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_6

    .line 147
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$1;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$700(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView;->callOnClick()Z

    goto :goto_1

    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    .line 149
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$1;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$800(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView;->callOnClick()Z

    goto :goto_1

    .line 150
    :cond_7
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1e

    if-ne v0, v3, :cond_9

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBluetoothPhoneCallStateChanged:status="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 156
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x7

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$1;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$900(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "onBluetoothPhoneCallStateChanged:onResume"

    .line 158
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 159
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$1;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-virtual {p1}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->onResume()V

    .line 161
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$1;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {p0, v2}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$902(Lcom/yftech/libgallery/ui/FullScreenImageFragment;Z)Z

    goto :goto_1

    .line 162
    :cond_8
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$1;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {p1}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$900(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "onBluetoothPhoneCallStateChanged:onStop"

    .line 164
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 165
    iget-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$1;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-virtual {p1}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->onStop()V

    .line 167
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$1;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {p0, v1}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$902(Lcom/yftech/libgallery/ui/FullScreenImageFragment;Z)Z

    :cond_9
    :goto_1
    return-void
.end method
