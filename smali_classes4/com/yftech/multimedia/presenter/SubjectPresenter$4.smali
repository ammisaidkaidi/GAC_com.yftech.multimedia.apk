.class Lcom/yftech/multimedia/presenter/SubjectPresenter$4;
.super Ljava/lang/Object;
.source "SubjectPresenter.java"

# interfaces
.implements Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnFileSizeLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/multimedia/presenter/SubjectPresenter;->getPhotoFileSize(I)V
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

    .line 80
    iput-object p1, p0, Lcom/yftech/multimedia/presenter/SubjectPresenter$4;->this$0:Lcom/yftech/multimedia/presenter/SubjectPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/yftech/multimedia/presenter/SubjectPresenter$4;->this$0:Lcom/yftech/multimedia/presenter/SubjectPresenter;

    invoke-virtual {v0}, Lcom/yftech/multimedia/presenter/SubjectPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/yftech/multimedia/presenter/SubjectPresenter$4;->this$0:Lcom/yftech/multimedia/presenter/SubjectPresenter;

    invoke-virtual {v0}, Lcom/yftech/multimedia/presenter/SubjectPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/yftech/multimedia/presenter/SubjectPresenter$4$1;

    invoke-direct {v1, p0, p1}, Lcom/yftech/multimedia/presenter/SubjectPresenter$4$1;-><init>(Lcom/yftech/multimedia/presenter/SubjectPresenter$4;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
