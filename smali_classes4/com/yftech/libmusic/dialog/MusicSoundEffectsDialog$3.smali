.class Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$3;
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

    .line 364
    iput-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$3;->this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/media/common/ui/widget/FlowRadioGroup;I)V
    .locals 0

    .line 369
    sget p1, Lcom/yftech/libmusic/R$id;->rb_3d_mode_2:I

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 372
    :cond_0
    sget p1, Lcom/yftech/libmusic/R$id;->rb_3d_mode_3:I

    if-ne p2, p1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    .line 375
    :cond_1
    sget p1, Lcom/yftech/libmusic/R$id;->rb_3d_mode_4:I

    if-ne p2, p1, :cond_2

    const/4 p1, 0x3

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 384
    :goto_0
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$3;->this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p0

    check-cast p0, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;

    invoke-virtual {p0, p1}, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;->setDTSType(I)V

    return-void
.end method
