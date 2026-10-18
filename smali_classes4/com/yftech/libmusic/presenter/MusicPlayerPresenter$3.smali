.class Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$3;
.super Ljava/lang/Object;
.source "MusicPlayerPresenter.java"

# interfaces
.implements Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnThumbDataLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmusic/presenter/MusicPlayerPresenter;->getThumbDataByPath(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/presenter/MusicPlayerPresenter;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/presenter/MusicPlayerPresenter;Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$3;->this$0:Lcom/yftech/libmusic/presenter/MusicPlayerPresenter;

    iput-object p2, p0, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$3;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete([B)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$3;->this$0:Lcom/yftech/libmusic/presenter/MusicPlayerPresenter;

    invoke-virtual {v0}, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$3;->this$0:Lcom/yftech/libmusic/presenter/MusicPlayerPresenter;

    invoke-virtual {v0}, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$3$1;

    invoke-direct {v1, p0, p1}, Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$3$1;-><init>(Lcom/yftech/libmusic/presenter/MusicPlayerPresenter$3;[B)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
