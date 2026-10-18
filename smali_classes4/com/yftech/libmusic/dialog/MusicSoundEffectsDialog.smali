.class public Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;
.super Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;
.source "MusicSoundEffectsDialog.java"

# interfaces
.implements Lcom/yftech/libmusic/view/IMusicSoundEffectsDialogView;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment<",
        "Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;",
        ">;",
        "Lcom/yftech/libmusic/view/IMusicSoundEffectsDialogView;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private EQType:I

.field private bandCurValue:[F

.field private callback:Lcom/yftech/car/audio/CarSoundEffectManager$CarSoundEffectCallback;

.field private cb_3d_type:Landroid/widget/CheckBox;

.field private customVale:[F

.field private df:Ljava/text/DecimalFormat;

.field private dismissOutOfView:Z

.field private dts_changed_listener:Lcom/media/common/ui/widget/FlowRadioGroup$OnCheckedChangeListener;

.field private eq_changed_listener:Lcom/media/common/ui/widget/FlowRadioGroup$OnCheckedChangeListener;

.field private highLimit:F

.field private isAutoSwitch:Z

.field private final limit:I

.field private lin_mode:Landroid/widget/LinearLayout;

.field private listener_high:Lcom/media/common/ui/widget/SeekBarView$OnSeekBarCallbackListener;

.field private listener_low:Lcom/media/common/ui/widget/SeekBarView$OnSeekBarCallbackListener;

.field private listener_middle:Lcom/media/common/ui/widget/SeekBarView$OnSeekBarCallbackListener;

.field private lowLimit:F

.field private mIsSupportDTS:Z

.field private middleLimit:F

.field private rel_selection:Landroid/widget/RelativeLayout;

.field private rg_3d_mode:Lcom/media/common/ui/widget/FlowRadioGroup;

.field private rg_eq_mode:Lcom/media/common/ui/widget/FlowRadioGroup;

.field private rg_sound_3d_type:Lcom/media/common/ui/widget/FlowRadioGroup;

.field private seekBar_high:Lcom/media/common/ui/widget/SeekBarView;

.field private seekBar_low:Lcom/media/common/ui/widget/SeekBarView;

.field private seekBar_middle:Lcom/media/common/ui/widget/SeekBarView;

.field private sound3dType:I

.field private tv_high:Landroid/widget/TextView;

.field private tv_low:Landroid/widget/TextView;

.field private tv_middle:Landroid/widget/TextView;

.field private vg_3d:Landroid/widget/LinearLayout;

.field private vg_eq:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 72
    invoke-direct {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;-><init>()V

    const/16 v0, 0xa

    .line 58
    iput v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->limit:I

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->isAutoSwitch:Z

    .line 67
    iput-boolean v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->dismissOutOfView:Z

    .line 69
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->df:Ljava/text/DecimalFormat;

    .line 122
    new-instance v0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$1;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$1;-><init>(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;)V

    iput-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->callback:Lcom/yftech/car/audio/CarSoundEffectManager$CarSoundEffectCallback;

    .line 364
    new-instance v0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$3;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$3;-><init>(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;)V

    iput-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->dts_changed_listener:Lcom/media/common/ui/widget/FlowRadioGroup$OnCheckedChangeListener;

    .line 389
    new-instance v0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$4;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$4;-><init>(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;)V

    iput-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->eq_changed_listener:Lcom/media/common/ui/widget/FlowRadioGroup$OnCheckedChangeListener;

    .line 568
    new-instance v0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$5;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$5;-><init>(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;)V

    iput-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->listener_high:Lcom/media/common/ui/widget/SeekBarView$OnSeekBarCallbackListener;

    .line 622
    new-instance v0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$6;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$6;-><init>(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;)V

    iput-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->listener_middle:Lcom/media/common/ui/widget/SeekBarView$OnSeekBarCallbackListener;

    .line 675
    new-instance v0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$7;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$7;-><init>(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;)V

    iput-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->listener_low:Lcom/media/common/ui/widget/SeekBarView$OnSeekBarCallbackListener;

    return-void
.end method

.method static synthetic access$002(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;[F)[F
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->customVale:[F

    return-object p1
.end method

.method static synthetic access$100(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->rel_selection:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;)Landroid/widget/TextView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->tv_low:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;)F
    .locals 0

    .line 41
    iget p0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->lowLimit:F

    return p0
.end method

.method static synthetic access$200(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->EQType:I

    return p0
.end method

.method static synthetic access$202(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->EQType:I

    return p1
.end method

.method static synthetic access$300(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->isAutoSwitch:Z

    return p0
.end method

.method static synthetic access$302(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->isAutoSwitch:Z

    return p1
.end method

.method static synthetic access$400(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;)Lcom/media/common/ui/widget/FlowRadioGroup;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->rg_eq_mode:Lcom/media/common/ui/widget/FlowRadioGroup;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;)Landroid/widget/TextView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->tv_high:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;)[F
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->bandCurValue:[F

    return-object p0
.end method

.method static synthetic access$700(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;)F
    .locals 0

    .line 41
    iget p0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->highLimit:F

    return p0
.end method

.method static synthetic access$800(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;)Landroid/widget/TextView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->tv_middle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;)F
    .locals 0

    .line 41
    iget p0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->middleLimit:F

    return p0
.end method

.method private initData()V
    .locals 6

    .line 268
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/audio/CarSoundEffectManager;->isDTSEnable()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 270
    iget-boolean v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->mIsSupportDTS:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->vg_eq:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 284
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/audio/CarSoundEffectManager;->getDTSSoundPosition()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 286
    iput v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->sound3dType:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 288
    iput v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->sound3dType:I

    .line 291
    :goto_0
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/audio/CarSoundEffectManager;->getDTSType()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 295
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->lin_mode:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    :cond_2
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 309
    :pswitch_0
    sget v3, Lcom/yftech/libmusic/R$id;->rb_3d_mode_4:I

    goto :goto_1

    .line 306
    :pswitch_1
    sget v3, Lcom/yftech/libmusic/R$id;->rb_3d_mode_3:I

    goto :goto_1

    .line 303
    :pswitch_2
    sget v3, Lcom/yftech/libmusic/R$id;->rb_3d_mode_2:I

    goto :goto_1

    .line 300
    :pswitch_3
    sget v3, Lcom/yftech/libmusic/R$id;->rb_3d_mode_1:I

    .line 331
    :goto_1
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->rg_3d_mode:Lcom/media/common/ui/widget/FlowRadioGroup;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/media/common/ui/widget/FlowRadioGroup;->setOnCheckedChangeListener(Lcom/media/common/ui/widget/FlowRadioGroup$OnCheckedChangeListener;)V

    .line 332
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->rg_3d_mode:Lcom/media/common/ui/widget/FlowRadioGroup;

    invoke-virtual {v0, v3}, Lcom/media/common/ui/widget/FlowRadioGroup;->check(I)V

    .line 333
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->rg_3d_mode:Lcom/media/common/ui/widget/FlowRadioGroup;

    iget-object v3, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->dts_changed_listener:Lcom/media/common/ui/widget/FlowRadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v3}, Lcom/media/common/ui/widget/FlowRadioGroup;->setOnCheckedChangeListener(Lcom/media/common/ui/widget/FlowRadioGroup$OnCheckedChangeListener;)V

    .line 334
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->lin_mode:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    .line 272
    :cond_3
    :goto_2
    iput v2, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->sound3dType:I

    .line 275
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;

    invoke-virtual {v0}, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;->getEQType()V

    .line 276
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;

    invoke-virtual {v0}, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;->getBandMaxValue()V

    .line 278
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->vg_eq:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->lin_mode:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 338
    :goto_3
    iget v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->sound3dType:I

    packed-switch v0, :pswitch_data_1

    goto :goto_4

    .line 348
    :pswitch_4
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->cb_3d_type:Landroid/widget/CheckBox;

    sget v3, Lcom/yftech/libmusic/R$string;->music_sound_effects_dialog_3d_sound_effects_mode_2:I

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setText(I)V

    .line 349
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->rg_sound_3d_type:Lcom/media/common/ui/widget/FlowRadioGroup;

    sget v3, Lcom/yftech/libmusic/R$id;->rb_sound_3d_type_1:I

    invoke-virtual {v0, v3}, Lcom/media/common/ui/widget/FlowRadioGroup;->check(I)V

    goto :goto_4

    .line 344
    :pswitch_5
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->cb_3d_type:Landroid/widget/CheckBox;

    sget v3, Lcom/yftech/libmusic/R$string;->music_sound_effects_dialog_3d_sound_effects_mode_1:I

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setText(I)V

    .line 345
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->rg_sound_3d_type:Lcom/media/common/ui/widget/FlowRadioGroup;

    sget v3, Lcom/yftech/libmusic/R$id;->rb_sound_3d_type_0:I

    invoke-virtual {v0, v3}, Lcom/media/common/ui/widget/FlowRadioGroup;->check(I)V

    goto :goto_4

    .line 340
    :pswitch_6
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->cb_3d_type:Landroid/widget/CheckBox;

    sget v3, Lcom/yftech/libmusic/R$string;->music_sound_effects_dialog_3d_sound_effects_mode_4:I

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setText(I)V

    .line 341
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->rg_sound_3d_type:Lcom/media/common/ui/widget/FlowRadioGroup;

    sget v3, Lcom/yftech/libmusic/R$id;->rb_sound_3d_type_2:I

    invoke-virtual {v0, v3}, Lcom/media/common/ui/widget/FlowRadioGroup;->check(I)V

    .line 353
    :goto_4
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/audio/CarSoundEffectManager;->getBandCurValue()[F

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->customVale:[F

    .line 354
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object v0

    const-string v3, "TAG_SOUND_EFFECT_HIGH_VALUE"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/media/common/util/SharedPrefsUtil;->getInt(Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    .line 355
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object v3

    const-string v4, "TAG_SOUND_EFFECT_MIDDLE_VALUE"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/media/common/util/SharedPrefsUtil;->getInt(Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v3

    .line 356
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object v4

    const-string v5, "TAG_SOUND_EFFECT_LOW_VALUE"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcom/media/common/util/SharedPrefsUtil;->getInt(Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v2

    .line 357
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EQ H:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "   M:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "    L:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 358
    iget-object v4, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->customVale:[F

    int-to-float v0, v0

    aput v0, v4, v1

    .line 359
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->customVale:[F

    int-to-float v1, v3

    const/4 v3, 0x4

    aput v1, v0, v3

    .line 360
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->customVale:[F

    int-to-float v0, v2

    aput v0, p0, v3

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public static newInstance()Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;
    .locals 2

    .line 82
    new-instance v0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-direct {v0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;-><init>()V

    .line 83
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 84
    invoke-virtual {v0, v1}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected createPresenter()Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;
    .locals 1

    .line 78
    new-instance v0, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;

    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->createPresenter()Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;

    move-result-object p0

    return-object p0
.end method

.method public dismissCustom()V
    .locals 1

    const/4 v0, 0x0

    .line 731
    iput-boolean v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->dismissOutOfView:Z

    .line 733
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->dismissAllowingStateLoss()V

    return-void
.end method

.method public displayBandCurValue([F)V
    .locals 9

    .line 535
    iput-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->bandCurValue:[F

    .line 537
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->seekBar_high:Lcom/media/common/ui/widget/SeekBarView;

    iget v1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->highLimit:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/high16 v5, 0x41200000    # 10.0f

    if-nez v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->df:Ljava/text/DecimalFormat;

    aget v6, p1, v3

    iget v7, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->highLimit:F

    div-float/2addr v6, v7

    mul-float/2addr v6, v5

    float-to-double v6, v6

    invoke-virtual {v1, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/ValueUtil;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/SeekBarView;->setProgress(I)Lcom/media/common/ui/widget/SeekBarView;

    .line 538
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->seekBar_middle:Lcom/media/common/ui/widget/SeekBarView;

    iget v1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->middleLimit:F

    cmpl-float v1, v1, v2

    const/4 v6, 0x4

    if-nez v1, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->df:Ljava/text/DecimalFormat;

    aget v7, p1, v6

    iget v8, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->middleLimit:F

    div-float/2addr v7, v8

    mul-float/2addr v7, v5

    float-to-double v7, v7

    invoke-virtual {v1, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/ValueUtil;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/SeekBarView;->setProgress(I)Lcom/media/common/ui/widget/SeekBarView;

    .line 539
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->seekBar_low:Lcom/media/common/ui/widget/SeekBarView;

    iget v1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->lowLimit:F

    cmpl-float v1, v1, v2

    const/4 v2, 0x1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->df:Ljava/text/DecimalFormat;

    aget v4, p1, v2

    iget v7, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->lowLimit:F

    div-float/2addr v4, v7

    mul-float/2addr v4, v5

    float-to-double v7, v4

    invoke-virtual {v1, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/ValueUtil;->parseInt(Ljava/lang/String;)I

    move-result v4

    :goto_2
    invoke-virtual {v0, v4}, Lcom/media/common/ui/widget/SeekBarView;->setProgress(I)Lcom/media/common/ui/widget/SeekBarView;

    .line 545
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->tv_high:Landroid/widget/TextView;

    aget v1, p1, v3

    iget v3, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->highLimit:F

    div-float/2addr v1, v3

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->tv_middle:Landroid/widget/TextView;

    aget v1, p1, v6

    iget v3, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->middleLimit:F

    div-float/2addr v1, v3

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->tv_low:Landroid/widget/TextView;

    aget p1, p1, v2

    iget p0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->lowLimit:F

    div-float/2addr p1, p0

    mul-float/2addr p1, v5

    float-to-int p0, p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public displayBandMaxValue([F)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 553
    aget v0, p1, v0

    iput v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->highLimit:F

    const/4 v0, 0x4

    .line 554
    aget v0, p1, v0

    iput v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->middleLimit:F

    const/4 v0, 0x1

    .line 555
    aget p1, p1, v0

    iput p1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->lowLimit:F

    .line 559
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p0

    check-cast p0, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;

    invoke-virtual {p0}, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;->getBandCurValue()V

    return-void
.end method

.method public displayBandMinValue([F)V
    .locals 0

    return-void
.end method

.method public displayBandValueSetting(Z)V
    .locals 0

    return-void
.end method

.method public displayDTSTypeSetting(Z)V
    .locals 0

    return-void
.end method

.method public displayEQType(I)V
    .locals 2

    .line 486
    iput p1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->EQType:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, -0x1

    goto :goto_0

    .line 491
    :pswitch_1
    sget p1, Lcom/yftech/libmusic/R$id;->rb_eq_mode_1:I

    goto :goto_0

    .line 494
    :pswitch_2
    sget p1, Lcom/yftech/libmusic/R$id;->rb_eq_mode_2:I

    goto :goto_0

    .line 497
    :pswitch_3
    sget p1, Lcom/yftech/libmusic/R$id;->rb_eq_mode_3:I

    goto :goto_0

    .line 500
    :pswitch_4
    sget p1, Lcom/yftech/libmusic/R$id;->rb_eq_mode_4:I

    goto :goto_0

    .line 506
    :pswitch_5
    sget p1, Lcom/yftech/libmusic/R$id;->rb_eq_mode_6:I

    goto :goto_0

    .line 503
    :pswitch_6
    sget p1, Lcom/yftech/libmusic/R$id;->rb_eq_mode_5:I

    .line 510
    :goto_0
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->rg_eq_mode:Lcom/media/common/ui/widget/FlowRadioGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/FlowRadioGroup;->setOnCheckedChangeListener(Lcom/media/common/ui/widget/FlowRadioGroup$OnCheckedChangeListener;)V

    .line 511
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->rg_eq_mode:Lcom/media/common/ui/widget/FlowRadioGroup;

    invoke-virtual {v0, p1}, Lcom/media/common/ui/widget/FlowRadioGroup;->check(I)V

    .line 512
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->rg_eq_mode:Lcom/media/common/ui/widget/FlowRadioGroup;

    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->eq_changed_listener:Lcom/media/common/ui/widget/FlowRadioGroup$OnCheckedChangeListener;

    invoke-virtual {p1, p0}, Lcom/media/common/ui/widget/FlowRadioGroup;->setOnCheckedChangeListener(Lcom/media/common/ui/widget/FlowRadioGroup$OnCheckedChangeListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public displayEQTypeSetting(Z)V
    .locals 0

    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 2

    .line 223
    sget v0, Lcom/yftech/libmusic/R$id;->iv_close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 224
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    sget v0, Lcom/yftech/libmusic/R$id;->rel_selection:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->rel_selection:Landroid/widget/RelativeLayout;

    .line 228
    sget v0, Lcom/yftech/libmusic/R$id;->cb_3d_type:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->cb_3d_type:Landroid/widget/CheckBox;

    .line 229
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->cb_3d_type:Landroid/widget/CheckBox;

    new-instance v1, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$2;

    invoke-direct {v1, p0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$2;-><init>(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 235
    sget v0, Lcom/yftech/libmusic/R$id;->rg_sound_3d_type:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/media/common/ui/widget/FlowRadioGroup;

    iput-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->rg_sound_3d_type:Lcom/media/common/ui/widget/FlowRadioGroup;

    .line 236
    sget v0, Lcom/yftech/libmusic/R$id;->lin_mode:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->lin_mode:Landroid/widget/LinearLayout;

    .line 237
    sget v0, Lcom/yftech/libmusic/R$id;->rg_3d_mode:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/media/common/ui/widget/FlowRadioGroup;

    iput-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->rg_3d_mode:Lcom/media/common/ui/widget/FlowRadioGroup;

    .line 238
    sget v0, Lcom/yftech/libmusic/R$id;->vg_3d:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->vg_3d:Landroid/widget/LinearLayout;

    .line 240
    sget v0, Lcom/yftech/libmusic/R$id;->tv_finish:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    sget v0, Lcom/yftech/libmusic/R$id;->rb_eq_mode_6:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    sget v0, Lcom/yftech/libmusic/R$id;->vg_eq:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->vg_eq:Landroid/widget/LinearLayout;

    .line 245
    sget v0, Lcom/yftech/libmusic/R$id;->rg_eq_mode:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/media/common/ui/widget/FlowRadioGroup;

    iput-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->rg_eq_mode:Lcom/media/common/ui/widget/FlowRadioGroup;

    .line 246
    sget v0, Lcom/yftech/libmusic/R$id;->seekBar_high:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/media/common/ui/widget/SeekBarView;

    iput-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->seekBar_high:Lcom/media/common/ui/widget/SeekBarView;

    .line 247
    sget v0, Lcom/yftech/libmusic/R$id;->seekBar_middle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/media/common/ui/widget/SeekBarView;

    iput-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->seekBar_middle:Lcom/media/common/ui/widget/SeekBarView;

    .line 248
    sget v0, Lcom/yftech/libmusic/R$id;->seekBar_low:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/media/common/ui/widget/SeekBarView;

    iput-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->seekBar_low:Lcom/media/common/ui/widget/SeekBarView;

    .line 249
    sget v0, Lcom/yftech/libmusic/R$id;->tv_high:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->tv_high:Landroid/widget/TextView;

    .line 250
    sget v0, Lcom/yftech/libmusic/R$id;->tv_middle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->tv_middle:Landroid/widget/TextView;

    .line 251
    sget v0, Lcom/yftech/libmusic/R$id;->tv_low:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->tv_low:Landroid/widget/TextView;

    .line 253
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->seekBar_high:Lcom/media/common/ui/widget/SeekBarView;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/media/common/ui/widget/SeekBarView;->setMaxProgress(I)Lcom/media/common/ui/widget/SeekBarView;

    .line 254
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->seekBar_middle:Lcom/media/common/ui/widget/SeekBarView;

    invoke-virtual {p1, v0}, Lcom/media/common/ui/widget/SeekBarView;->setMaxProgress(I)Lcom/media/common/ui/widget/SeekBarView;

    .line 255
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->seekBar_low:Lcom/media/common/ui/widget/SeekBarView;

    invoke-virtual {p1, v0}, Lcom/media/common/ui/widget/SeekBarView;->setMaxProgress(I)Lcom/media/common/ui/widget/SeekBarView;

    .line 256
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->seekBar_high:Lcom/media/common/ui/widget/SeekBarView;

    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->listener_high:Lcom/media/common/ui/widget/SeekBarView$OnSeekBarCallbackListener;

    invoke-virtual {p1, v0}, Lcom/media/common/ui/widget/SeekBarView;->setOnSeekBarCallbackListener(Lcom/media/common/ui/widget/SeekBarView$OnSeekBarCallbackListener;)V

    .line 257
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->seekBar_middle:Lcom/media/common/ui/widget/SeekBarView;

    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->listener_middle:Lcom/media/common/ui/widget/SeekBarView$OnSeekBarCallbackListener;

    invoke-virtual {p1, v0}, Lcom/media/common/ui/widget/SeekBarView;->setOnSeekBarCallbackListener(Lcom/media/common/ui/widget/SeekBarView$OnSeekBarCallbackListener;)V

    .line 258
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->seekBar_low:Lcom/media/common/ui/widget/SeekBarView;

    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->listener_low:Lcom/media/common/ui/widget/SeekBarView$OnSeekBarCallbackListener;

    invoke-virtual {p1, v0}, Lcom/media/common/ui/widget/SeekBarView;->setOnSeekBarCallbackListener(Lcom/media/common/ui/widget/SeekBarView$OnSeekBarCallbackListener;)V

    .line 260
    iget-boolean p1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->mIsSupportDTS:Z

    if-nez p1, :cond_0

    .line 261
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->vg_3d:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 263
    :cond_0
    invoke-direct {p0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->initData()V

    return-void
.end method

.method protected onBindView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 218
    sget p0, Lcom/yftech/libmusic/R$layout;->dialog_music_sound_effects:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 197
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    const-string p1, "onCancel"

    .line 199
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 201
    iput-boolean p1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->dismissOutOfView:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 431
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libmusic/R$id;->iv_close:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 432
    iput-boolean v2, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->dismissOutOfView:Z

    .line 433
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->dismiss()V

    goto/16 :goto_1

    .line 434
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libmusic/R$id;->tv_finish:I

    if-ne v0, v1, :cond_9

    .line 437
    iget p1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->sound3dType:I

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->rg_sound_3d_type:Lcom/media/common/ui/widget/FlowRadioGroup;

    invoke-virtual {p1}, Lcom/media/common/ui/widget/FlowRadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget v0, Lcom/yftech/libmusic/R$id;->rb_sound_3d_type_2:I

    if-eq p1, v0, :cond_3

    :cond_1
    iget p1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->sound3dType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->rg_sound_3d_type:Lcom/media/common/ui/widget/FlowRadioGroup;

    .line 438
    invoke-virtual {p1}, Lcom/media/common/ui/widget/FlowRadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget v1, Lcom/yftech/libmusic/R$id;->rb_sound_3d_type_0:I

    if-eq p1, v1, :cond_3

    :cond_2
    iget p1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->sound3dType:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->rg_sound_3d_type:Lcom/media/common/ui/widget/FlowRadioGroup;

    .line 439
    invoke-virtual {p1}, Lcom/media/common/ui/widget/FlowRadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget v3, Lcom/yftech/libmusic/R$id;->rb_sound_3d_type_1:I

    if-ne p1, v3, :cond_4

    .line 442
    :cond_3
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->cb_3d_type:Landroid/widget/CheckBox;

    invoke-virtual {p0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    .line 446
    :cond_4
    iget p1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->sound3dType:I

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->rg_sound_3d_type:Lcom/media/common/ui/widget/FlowRadioGroup;

    invoke-virtual {p1}, Lcom/media/common/ui/widget/FlowRadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget v3, Lcom/yftech/libmusic/R$id;->rb_sound_3d_type_2:I

    if-eq p1, v3, :cond_6

    .line 448
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/yftech/car/audio/CarSoundEffectManager;->setDTSEnable(Z)Z

    .line 449
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->rg_sound_3d_type:Lcom/media/common/ui/widget/FlowRadioGroup;

    invoke-virtual {p1}, Lcom/media/common/ui/widget/FlowRadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget v3, Lcom/yftech/libmusic/R$id;->rb_sound_3d_type_0:I

    if-ne p1, v3, :cond_5

    .line 450
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/yftech/car/audio/CarSoundEffectManager;->setDTSSoundPosition(I)Z

    .line 451
    iput v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->sound3dType:I

    goto :goto_0

    .line 453
    :cond_5
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/yftech/car/audio/CarSoundEffectManager;->setDTSSoundPosition(I)Z

    .line 454
    iput v1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->sound3dType:I

    goto :goto_0

    .line 458
    :cond_6
    iget p1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->sound3dType:I

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->rg_sound_3d_type:Lcom/media/common/ui/widget/FlowRadioGroup;

    invoke-virtual {p1}, Lcom/media/common/ui/widget/FlowRadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget v3, Lcom/yftech/libmusic/R$id;->rb_sound_3d_type_2:I

    if-ne p1, v3, :cond_7

    .line 460
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/yftech/car/audio/CarSoundEffectManager;->setDTSEnable(Z)Z

    .line 461
    iput v2, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->sound3dType:I

    goto :goto_0

    .line 465
    :cond_7
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->rg_sound_3d_type:Lcom/media/common/ui/widget/FlowRadioGroup;

    invoke-virtual {p1}, Lcom/media/common/ui/widget/FlowRadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    sget v3, Lcom/yftech/libmusic/R$id;->rb_sound_3d_type_0:I

    if-ne p1, v3, :cond_8

    .line 466
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/yftech/car/audio/CarSoundEffectManager;->setDTSSoundPosition(I)Z

    .line 467
    iput v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->sound3dType:I

    goto :goto_0

    .line 469
    :cond_8
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/yftech/car/audio/CarSoundEffectManager;->setDTSSoundPosition(I)Z

    .line 470
    iput v1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->sound3dType:I

    .line 474
    :goto_0
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->cb_3d_type:Landroid/widget/CheckBox;

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 477
    invoke-direct {p0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->initData()V

    goto :goto_1

    .line 478
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/yftech/libmusic/R$id;->rb_eq_mode_6:I

    if-ne p1, v0, :cond_a

    .line 479
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->customVale:[F

    invoke-virtual {p0, p1}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->displayBandCurValue([F)V

    :cond_a
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 90
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->getArguments()Landroid/os/Bundle;

    .line 95
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getLoudspeakerNumber()Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerNumber;

    move-result-object p1

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoudspeakerNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 97
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerNumber;->TWO:Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerNumber;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerNumber;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerNumber;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    .line 98
    iput-boolean p1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->mIsSupportDTS:Z

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->df:Ljava/text/DecimalFormat;

    sget-object v0, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {p1, v0}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 102
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->callback:Lcom/yftech/car/audio/CarSoundEffectManager$CarSoundEffectCallback;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/yftech/car/audio/CarSoundEffectManager;->registerCarSoundEffectCallback(Lcom/yftech/car/audio/CarSoundEffectManager$CarSoundEffectCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 107
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onDestroy()V

    const-string v0, "onDestroy"

    .line 109
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/yftech/car/audio/CarSoundEffectManager;->getInstance()Lcom/yftech/car/audio/CarSoundEffectManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->callback:Lcom/yftech/car/audio/CarSoundEffectManager$CarSoundEffectCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/car/audio/CarSoundEffectManager;->unregisterCarSoundEffectCallback(Lcom/yftech/car/audio/CarSoundEffectManager$CarSoundEffectCallback;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 116
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onDestroyView()V

    const-string p0, "onDestroyView"

    .line 118
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 206
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    const-string p1, "onDismiss"

    .line 208
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 213
    iput-boolean p1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->dismissOutOfView:Z

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 176
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpDialogFragment;->onStart()V

    .line 177
    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 179
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x106000d

    .line 181
    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 182
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x3f733333    # 0.95f

    .line 183
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 184
    sget v1, Lcom/yftech/libmusic/R$style;->DialogLeftAnimation:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v1, 0x3d2

    .line 185
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x28a

    .line 186
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x31

    .line 187
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x1e

    .line 188
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v1, 0x14

    .line 189
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 190
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method
