.class public Lcom/android/internal/widget/TextProgressBar;
.super Landroid/widget/RelativeLayout;
.source "TextProgressBar.java"

# interfaces
.implements Landroid/widget/Chronometer$OnChronometerTickListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field static final CHRONOMETER_ID:I = 0x1020014

.field static final PROGRESSBAR_ID:I = 0x102000d

.field public static final TAG:Ljava/lang/String; = "TextProgressBar"


# instance fields
.field mChronometer:Landroid/widget/Chronometer;

.field mChronometerFollow:Z

.field mChronometerGravity:I

.field mDuration:I

.field mDurationBase:J

.field mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 75
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    .line 54
    iput-object p1, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    const-wide/16 v0, -0x1

    .line 56
    iput-wide v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDurationBase:J

    const/4 p1, -0x1

    .line 57
    iput p1, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    const/4 p1, 0x0

    .line 59
    iput-boolean p1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerFollow:Z

    .line 60
    iput p1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerGravity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    .line 54
    iput-object p1, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    const-wide/16 p1, -0x1

    .line 56
    iput-wide p1, p0, Lcom/android/internal/widget/TextProgressBar;->mDurationBase:J

    const/4 p1, -0x1

    .line 57
    iput p1, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    const/4 p1, 0x0

    .line 59
    iput-boolean p1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerFollow:Z

    .line 60
    iput p1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerGravity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    .line 54
    iput-object p1, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    const-wide/16 p1, -0x1

    .line 56
    iput-wide p1, p0, Lcom/android/internal/widget/TextProgressBar;->mDurationBase:J

    const/4 p1, -0x1

    .line 57
    iput p1, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    const/4 p1, 0x0

    .line 59
    iput-boolean p1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerFollow:Z

    .line 60
    iput p1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerGravity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    .line 54
    iput-object p1, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    const-wide/16 p1, -0x1

    .line 56
    iput-wide p1, p0, Lcom/android/internal/widget/TextProgressBar;->mDurationBase:J

    const/4 p1, -0x1

    .line 57
    iput p1, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    const/4 p1, 0x0

    .line 59
    iput-boolean p1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerFollow:Z

    .line 60
    iput p1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerGravity:I

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 83
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const v0, 0x1020014

    if-ne p2, v0, :cond_1

    .line 86
    instance-of v0, p1, Landroid/widget/Chronometer;

    if-eqz v0, :cond_1

    .line 87
    check-cast p1, Landroid/widget/Chronometer;

    iput-object p1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    .line 88
    iget-object p1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {p1, p0}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    .line 91
    iget p1, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 p2, -0x2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerFollow:Z

    .line 92
    iget-object p1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {p1}, Landroid/widget/Chronometer;->getGravity()I

    move-result p1

    const p2, 0x800007

    and-int/2addr p1, p2

    iput p1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerGravity:I

    goto :goto_1

    :cond_1
    const p3, 0x102000d

    if-ne p2, p3, :cond_2

    .line 95
    instance-of p2, p1, Landroid/widget/ProgressBar;

    if-eqz p2, :cond_2

    .line 96
    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    :cond_2
    :goto_1
    return-void
.end method

.method public onChronometerTick(Landroid/widget/Chronometer;)V
    .locals 6

    .line 133
    iget-object p1, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_6

    .line 139
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 140
    iget-wide v2, p0, Lcom/android/internal/widget/TextProgressBar;->mDurationBase:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    .line 141
    iget-object p1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {p1}, Landroid/widget/Chronometer;->stop()V

    .line 145
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/widget/TextProgressBar;->mDurationBase:J

    sub-long/2addr v2, v0

    long-to-int p1, v2

    .line 146
    iget-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 149
    iget-boolean p1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerFollow:Z

    if-eqz p1, :cond_5

    .line 153
    iget-object p1, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 154
    iget-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v0

    iget v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 155
    iget-object v1, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    .line 156
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    div-int/2addr v1, v2

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    .line 160
    iget-object v3, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v3}, Landroid/widget/Chronometer;->getWidth()I

    move-result v3

    .line 161
    iget v4, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerGravity:I

    const v5, 0x800005

    if-ne v4, v5, :cond_1

    neg-int v2, v3

    goto :goto_0

    .line 163
    :cond_1
    iget v4, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerGravity:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 164
    div-int/lit8 v2, v3, 0x2

    neg-int v2, v2

    :cond_2
    :goto_0
    add-int/2addr v1, v2

    .line 169
    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v2

    sub-int/2addr v0, v3

    .line 170
    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-ge v1, v2, :cond_3

    .line 171
    iget v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    :cond_3
    if-le v1, v0, :cond_4

    move v1, v0

    .line 176
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {p1}, Landroid/widget/Chronometer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 177
    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 180
    iget-object p0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {p0}, Landroid/widget/Chronometer;->requestLayout()V

    :cond_5
    return-void

    .line 134
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Expecting child ProgressBar with id \'android.R.id.progress\'"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDurationBase(J)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 113
    iput-wide p1, p0, Lcom/android/internal/widget/TextProgressBar;->mDurationBase:J

    .line 115
    iget-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->getBase()J

    move-result-wide v0

    sub-long/2addr p1, v0

    long-to-int p1, p1

    iput p1, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    .line 122
    iget p1, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    .line 123
    iput p1, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    iget p0, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    invoke-virtual {p1, p0}, Landroid/widget/ProgressBar;->setMax(I)V

    return-void

    .line 116
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Expecting child ProgressBar with id \'android.R.id.progress\' and Chronometer id \'android.R.id.text1\'"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
