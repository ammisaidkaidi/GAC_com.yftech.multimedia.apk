.class public Lcom/yftech/multimedia/presenter/SubjectPresenter;
.super Lcom/yftech/libmvpmodule/BasePresenter;
.source "SubjectPresenter.java"

# interfaces
.implements Lcom/yftech/multimedia/presenter/interfaces/ISubjectPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/BasePresenter<",
        "Lcom/yftech/multimedia/view/ISubjectFragmentView;",
        ">;",
        "Lcom/yftech/multimedia/presenter/interfaces/ISubjectPresenter;"
    }
.end annotation


# instance fields
.field private final subjectModel:Lcom/yftech/multimedia/model/SubjectModel;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/yftech/libmvpmodule/BasePresenter;-><init>(Landroid/app/Activity;)V

    .line 21
    new-instance p1, Lcom/yftech/multimedia/model/SubjectModel;

    invoke-direct {p1}, Lcom/yftech/multimedia/model/SubjectModel;-><init>()V

    iput-object p1, p0, Lcom/yftech/multimedia/presenter/SubjectPresenter;->subjectModel:Lcom/yftech/multimedia/model/SubjectModel;

    return-void
.end method


# virtual methods
.method public getPhotoFileExist(I)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/yftech/multimedia/presenter/SubjectPresenter;->subjectModel:Lcom/yftech/multimedia/model/SubjectModel;

    new-instance v1, Lcom/yftech/multimedia/presenter/SubjectPresenter$2;

    invoke-direct {v1, p0}, Lcom/yftech/multimedia/presenter/SubjectPresenter$2;-><init>(Lcom/yftech/multimedia/presenter/SubjectPresenter;)V

    invoke-virtual {v0, p1, p0, v1}, Lcom/yftech/multimedia/model/SubjectModel;->getPhotoFileExist(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnFileExistLoadListener;)V

    return-void
.end method

.method public getPhotoFileFrame(I)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/yftech/multimedia/presenter/SubjectPresenter;->subjectModel:Lcom/yftech/multimedia/model/SubjectModel;

    new-instance v1, Lcom/yftech/multimedia/presenter/SubjectPresenter$6;

    invoke-direct {v1, p0}, Lcom/yftech/multimedia/presenter/SubjectPresenter$6;-><init>(Lcom/yftech/multimedia/presenter/SubjectPresenter;)V

    invoke-virtual {v0, p1, p0, v1}, Lcom/yftech/multimedia/model/SubjectModel;->getPhotoFileFrame(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnPhotoFrameLoadListener;)V

    return-void
.end method

.method public getPhotoFileSize(I)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/yftech/multimedia/presenter/SubjectPresenter;->subjectModel:Lcom/yftech/multimedia/model/SubjectModel;

    new-instance v1, Lcom/yftech/multimedia/presenter/SubjectPresenter$4;

    invoke-direct {v1, p0}, Lcom/yftech/multimedia/presenter/SubjectPresenter$4;-><init>(Lcom/yftech/multimedia/presenter/SubjectPresenter;)V

    invoke-virtual {v0, p1, p0, v1}, Lcom/yftech/multimedia/model/SubjectModel;->getPhotoFileSize(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnFileSizeLoadListener;)V

    return-void
.end method

.method public getVideoFileExist(I)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/yftech/multimedia/presenter/SubjectPresenter;->subjectModel:Lcom/yftech/multimedia/model/SubjectModel;

    new-instance v1, Lcom/yftech/multimedia/presenter/SubjectPresenter$1;

    invoke-direct {v1, p0}, Lcom/yftech/multimedia/presenter/SubjectPresenter$1;-><init>(Lcom/yftech/multimedia/presenter/SubjectPresenter;)V

    invoke-virtual {v0, p1, p0, v1}, Lcom/yftech/multimedia/model/SubjectModel;->getVideoFileExist(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnFileExistLoadListener;)V

    return-void
.end method

.method public getVideoFileFrame(I)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/yftech/multimedia/presenter/SubjectPresenter;->subjectModel:Lcom/yftech/multimedia/model/SubjectModel;

    new-instance v1, Lcom/yftech/multimedia/presenter/SubjectPresenter$5;

    invoke-direct {v1, p0}, Lcom/yftech/multimedia/presenter/SubjectPresenter$5;-><init>(Lcom/yftech/multimedia/presenter/SubjectPresenter;)V

    invoke-virtual {v0, p1, p0, v1}, Lcom/yftech/multimedia/model/SubjectModel;->getVideoFileFrame(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnVideoFrameLoadListener;)V

    return-void
.end method

.method public getVideoFileSize(I)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/yftech/multimedia/presenter/SubjectPresenter;->subjectModel:Lcom/yftech/multimedia/model/SubjectModel;

    new-instance v1, Lcom/yftech/multimedia/presenter/SubjectPresenter$3;

    invoke-direct {v1, p0}, Lcom/yftech/multimedia/presenter/SubjectPresenter$3;-><init>(Lcom/yftech/multimedia/presenter/SubjectPresenter;)V

    invoke-virtual {v0, p1, p0, v1}, Lcom/yftech/multimedia/model/SubjectModel;->getVideoFileSize(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/multimedia/model/interfaces/ISubjectModel$OnFileSizeLoadListener;)V

    return-void
.end method
