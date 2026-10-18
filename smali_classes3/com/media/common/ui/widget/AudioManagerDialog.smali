.class public Lcom/media/common/ui/widget/AudioManagerDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "AudioManagerDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/media/common/ui/widget/AudioManagerDialog$OnAudioSeekbarChangingListener;
    }
.end annotation


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "x"

.field private static final ARG_PARAM2:Ljava/lang/String; = "y"

.field private static final ARG_PARAM3:Ljava/lang/String; = "isFullScreen"


# instance fields
.field private isFullScreen:Z

.field private onAudioSeekbarChangingListener:Lcom/media/common/ui/widget/AudioManagerDialog$OnAudioSeekbarChangingListener;

.field private tv_volume:Landroid/widget/TextView;

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method private initW(Landroid/view/View;)V
    .locals 7

    .line 125
    sget v0, Lcom/media/common/ui/widget/R$id;->tv_volume:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/media/common/ui/widget/AudioManagerDialog;->tv_volume:Landroid/widget/TextView;

    .line 126
    sget v0, Lcom/media/common/ui/widget/R$id;->seekBar_audio:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/media/common/ui/widget/VerticalSeekBar;

    .line 128
    invoke-virtual {p0}, Lcom/media/common/ui/widget/AudioManagerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/media/common/util/AudioSettingUtil;->getStreamMaxVolume(Landroid/content/Context;I)I

    move-result v0

    .line 129
    invoke-virtual {p0}, Lcom/media/common/ui/widget/AudioManagerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/media/common/util/AudioSettingUtil;->getStreamVolume(Landroid/content/Context;I)I

    move-result v1

    .line 130
    invoke-virtual {p1, v0}, Lcom/media/common/ui/widget/VerticalSeekBar;->setMax(I)V

    .line 131
    invoke-virtual {p1, v1}, Lcom/media/common/ui/widget/VerticalSeekBar;->setProgress(I)V

    .line 132
    iget-object v2, p0, Lcom/media/common/ui/widget/AudioManagerDialog;->tv_volume:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "%d%%"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    int-to-float v1, v1

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v1, v6

    int-to-float v0, v0

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {p1, p0}, Lcom/media/common/ui/widget/VerticalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 135
    invoke-virtual {p1, p0}, Lcom/media/common/ui/widget/VerticalSeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static newInstance(IIZ)Lcom/media/common/ui/widget/AudioManagerDialog;
    .locals 3

    .line 54
    new-instance v0, Lcom/media/common/ui/widget/AudioManagerDialog;

    invoke-direct {v0}, Lcom/media/common/ui/widget/AudioManagerDialog;-><init>()V

    .line 55
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "x"

    .line 56
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p0, "y"

    .line 57
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "isFullScreen"

    .line 58
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 59
    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/AudioManagerDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 106
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lcom/media/common/ui/widget/AudioManagerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/media/common/ui/widget/AudioManagerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "x"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/media/common/ui/widget/AudioManagerDialog;->x:I

    .line 109
    invoke-virtual {p0}, Lcom/media/common/ui/widget/AudioManagerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "y"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/media/common/ui/widget/AudioManagerDialog;->y:I

    .line 110
    invoke-virtual {p0}, Lcom/media/common/ui/widget/AudioManagerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "isFullScreen"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/media/common/ui/widget/AudioManagerDialog;->isFullScreen:Z

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 118
    sget p3, Lcom/media/common/ui/widget/R$layout;->dialog_audio_manager:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 119
    invoke-direct {p0, p1}, Lcom/media/common/ui/widget/AudioManagerDialog;->initW(Landroid/view/View;)V

    return-object p1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5

    .line 141
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    .line 143
    iget-object p3, p0, Lcom/media/common/ui/widget/AudioManagerDialog;->tv_volume:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%d%%"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    int-to-float v3, p2

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    int-to-float p1, p1

    div-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual {p0}, Lcom/media/common/ui/widget/AudioManagerDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    const/4 p1, 0x3

    invoke-static {p0, p1, p2}, Lcom/media/common/util/AudioSettingUtil;->setStreamVolume(Landroid/content/Context;II)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 65
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 66
    invoke-virtual {p0}, Lcom/media/common/ui/widget/AudioManagerDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x106000d

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 71
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    .line 72
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/16 v2, 0x46

    .line 74
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v2, 0x96

    .line 75
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const v2, 0x800033

    .line 76
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 77
    iget v2, p0, Lcom/media/common/ui/widget/AudioManagerDialog;->x:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 78
    iget v2, p0, Lcom/media/common/ui/widget/AudioManagerDialog;->y:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 79
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 83
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    .line 84
    iget-boolean p0, p0, Lcom/media/common/ui/widget/AudioManagerDialog;->isFullScreen:Z

    if-nez p0, :cond_0

    and-int/lit8 p0, v1, -0x3

    and-int/lit16 p0, p0, -0x201

    and-int/lit8 p0, p0, -0x5

    and-int/lit16 p0, p0, -0x4001

    goto :goto_0

    :cond_0
    or-int/lit8 p0, v1, 0x2

    or-int/lit16 p0, p0, 0x200

    or-int/lit16 p0, p0, 0x100

    or-int/lit16 p0, p0, 0x800

    or-int/lit16 p0, p0, 0x1000

    or-int/lit8 p0, p0, 0x4

    or-int/lit16 p0, p0, 0x4000

    .line 99
    :goto_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 177
    iget-object p1, p0, Lcom/media/common/ui/widget/AudioManagerDialog;->onAudioSeekbarChangingListener:Lcom/media/common/ui/widget/AudioManagerDialog$OnAudioSeekbarChangingListener;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 178
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "AudioManager Dialog Pull up"

    .line 184
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 185
    iget-object p0, p0, Lcom/media/common/ui/widget/AudioManagerDialog;->onAudioSeekbarChangingListener:Lcom/media/common/ui/widget/AudioManagerDialog$OnAudioSeekbarChangingListener;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/media/common/ui/widget/AudioManagerDialog$OnAudioSeekbarChangingListener;->onChanging(I)V

    goto :goto_0

    :pswitch_1
    const-string p1, "AudioManager Dialog Pressing"

    .line 180
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 181
    iget-object p0, p0, Lcom/media/common/ui/widget/AudioManagerDialog;->onAudioSeekbarChangingListener:Lcom/media/common/ui/widget/AudioManagerDialog$OnAudioSeekbarChangingListener;

    invoke-interface {p0, v0}, Lcom/media/common/ui/widget/AudioManagerDialog$OnAudioSeekbarChangingListener;->onChanging(I)V

    :cond_0
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setOnAudioSeekbarChangingListener(Lcom/media/common/ui/widget/AudioManagerDialog$OnAudioSeekbarChangingListener;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/media/common/ui/widget/AudioManagerDialog;->onAudioSeekbarChangingListener:Lcom/media/common/ui/widget/AudioManagerDialog$OnAudioSeekbarChangingListener;

    return-void
.end method
