.class Lcom/yftech/multimedia/presenter/SubjectPresenter$6;
.super Ljava/lang/Object;
.source "SubjectPresenter.java"

# interfaces
.implements Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnPhotoFrameLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/multimedia/presenter/SubjectPresenter;->getPhotoFileFrame(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/multimedia/presenter/SubjectPresenter;


# direct methods
.method constructor <init>(Lcom/yftech/multimedia/presenter/SubjectPresenter;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/yftech/multimedia/presenter/SubjectPresenter$6;->this$0:Lcom/yftech/multimedia/presenter/SubjectPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/yftech/multimedia/presenter/SubjectPresenter$6;->this$0:Lcom/yftech/multimedia/presenter/SubjectPresenter;

    invoke-virtual {v0}, Lcom/yftech/multimedia/presenter/SubjectPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/yftech/multimedia/presenter/SubjectPresenter$6;->this$0:Lcom/yftech/multimedia/presenter/SubjectPresenter;

    invoke-virtual {v0}, Lcom/yftech/multimedia/presenter/SubjectPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/yftech/multimedia/presenter/SubjectPresenter$6$1;

    invoke-direct {v1, p0, p1}, Lcom/yftech/multimedia/presenter/SubjectPresenter$6$1;-><init>(Lcom/yftech/multimedia/presenter/SubjectPresenter$6;Lcom/yftech/car/media/data/entity/MediaFile;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
