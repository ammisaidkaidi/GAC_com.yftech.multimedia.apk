.class Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$2;
.super Ljava/lang/Object;
.source "MediaFileHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 88
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$2;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 91
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$2;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-static {p1}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->access$200(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$2;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-static {p1}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->access$200(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->isCheckBox()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 92
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$2;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-static {p1}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->access$100(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$2;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-static {p1}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->access$100(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    .line 93
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$2;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-static {p1}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->access$300(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)Landroid/widget/CheckBox;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 94
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$2;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-static {p1}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->access$300(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    .line 95
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$2;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->access$400(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)Lcom/yftech/car/widget/media/layout/CheckBoxFrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$2;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->access$400(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)Lcom/yftech/car/widget/media/layout/CheckBoxFrameLayout;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/layout/CheckBoxFrameLayout;->setSelected(Z)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$2;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->access$300(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 99
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$2;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->access$100(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/data/entity/MediaFile;->setTab(I)V

    .line 100
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$2;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->access$200(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->updateCheckBoxStatus()V

    const-string v0, "MediaFileHolder"

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged: isChecked=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",file=="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$2;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-static {p0}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->access$100(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/media/data/entity/MediaFile;->getFileName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "MediaFileHolder"

    const-string p1, "onClick: mCheckBox is null"

    .line 103
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p0, "MediaFileHolder"

    const-string p1, "onClick: mMediaFile is null || mMediaFile.getType() == MediaFile.DIRECTORY"

    .line 106
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :cond_3
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$2;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-static {p1}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->access$500(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$OnFileItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$2;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-static {p1}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->access$100(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 111
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$2;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-static {p1}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->access$500(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$OnFileItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$2;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->access$100(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$2;->this$0:Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;

    invoke-static {p0}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;->access$600(Lcom/yftech/car/widget/media/list/holder/MediaFileHolder;)I

    move-result p0

    invoke-interface {p1, v0, p0}, Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$OnFileItemClickListener;->onItem(Lcom/yftech/car/media/data/entity/MediaFile;I)V

    :cond_4
    :goto_0
    return-void
.end method
