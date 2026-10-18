.class Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$4;
.super Ljava/lang/Object;
.source "MusicSoundEffectsDialog.java"

# interfaces
.implements Lcom/media/common/ui/widget/FlowRadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$4;->this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/media/common/ui/widget/FlowRadioGroup;I)V
    .locals 0

    .line 413
    sget p1, Lcom/yftech/libmusic/R$id;->rb_eq_mode_1:I

    if-ne p2, p1, :cond_0

    .line 414
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$4;->this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p0

    check-cast p0, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;->setEQType(I)V

    goto :goto_0

    .line 415
    :cond_0
    sget p1, Lcom/yftech/libmusic/R$id;->rb_eq_mode_2:I

    if-ne p2, p1, :cond_1

    .line 416
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$4;->this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p0

    check-cast p0, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;->setEQType(I)V

    goto :goto_0

    .line 417
    :cond_1
    sget p1, Lcom/yftech/libmusic/R$id;->rb_eq_mode_3:I

    if-ne p2, p1, :cond_2

    .line 418
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$4;->this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p0

    check-cast p0, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;->setEQType(I)V

    goto :goto_0

    .line 419
    :cond_2
    sget p1, Lcom/yftech/libmusic/R$id;->rb_eq_mode_4:I

    if-ne p2, p1, :cond_3

    .line 420
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$4;->this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p0

    check-cast p0, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;->setEQType(I)V

    goto :goto_0

    .line 421
    :cond_3
    sget p1, Lcom/yftech/libmusic/R$id;->rb_eq_mode_5:I

    if-ne p2, p1, :cond_4

    .line 422
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$4;->this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p0

    check-cast p0, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;->setEQType(I)V

    goto :goto_0

    .line 423
    :cond_4
    sget p1, Lcom/yftech/libmusic/R$id;->rb_eq_mode_6:I

    if-ne p2, p1, :cond_5

    .line 424
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$4;->this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p0

    check-cast p0, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;->setEQType(I)V

    :cond_5
    :goto_0
    return-void
.end method
