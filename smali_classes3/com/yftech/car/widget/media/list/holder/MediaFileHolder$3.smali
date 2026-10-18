.class Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$3;
.super Ljava/lang/Object;
.source "MediaFileHolder.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$3;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 120
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$3;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-static {p1}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->access$100(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 121
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$3;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-static {p1}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->access$100(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/yftech/car/media/data/entity/MediaFile;->setTab(I)V

    .line 122
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$3;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-static {p1}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->access$200(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$3;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-static {p1}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->access$200(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->updateCheckBoxStatus()V

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$3;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-static {p1}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->access$400(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)Lcom/yftech/car/widget/media/layout/CheckBoxFrameLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 126
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$3;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-static {p1}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->access$400(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)Lcom/yftech/car/widget/media/layout/CheckBoxFrameLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/layout/CheckBoxFrameLayout;->setSelected(Z)V

    :cond_1
    const-string p1, "MediaFileHolder"

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCheckedChanged: isChecked=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ",file=="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$3;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-static {p0}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->access$100(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/media/data/entity/MediaFile;->getFileName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
