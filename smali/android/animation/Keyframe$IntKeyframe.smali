.class Landroid/animation/Keyframe$IntKeyframe;
.super Landroid/animation/Keyframe;
.source "Keyframe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/Keyframe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntKeyframe"
.end annotation


# instance fields
.field mValue:I


# direct methods
.method constructor <init>(F)V
    .locals 0

    .line 311
    invoke-direct {p0}, Landroid/animation/Keyframe;-><init>()V

    .line 312
    iput p1, p0, Landroid/animation/Keyframe$IntKeyframe;->mFraction:F

    .line 313
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object p1, p0, Landroid/animation/Keyframe$IntKeyframe;->mValueType:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(FI)V
    .locals 0

    .line 304
    invoke-direct {p0}, Landroid/animation/Keyframe;-><init>()V

    .line 305
    iput p1, p0, Landroid/animation/Keyframe$IntKeyframe;->mFraction:F

    .line 306
    iput p2, p0, Landroid/animation/Keyframe$IntKeyframe;->mValue:I

    .line 307
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object p1, p0, Landroid/animation/Keyframe$IntKeyframe;->mValueType:Ljava/lang/Class;

    const/4 p1, 0x1

    .line 308
    iput-boolean p1, p0, Landroid/animation/Keyframe$IntKeyframe;->mHasValue:Z

    return-void
.end method


# virtual methods
.method public clone()Landroid/animation/Keyframe$IntKeyframe;
    .locals 3

    .line 333
    iget-boolean v0, p0, Landroid/animation/Keyframe$IntKeyframe;->mHasValue:Z

    if-eqz v0, :cond_0

    .line 334
    new-instance v0, Landroid/animation/Keyframe$IntKeyframe;

    invoke-virtual {p0}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v1

    iget v2, p0, Landroid/animation/Keyframe$IntKeyframe;->mValue:I

    invoke-direct {v0, v1, v2}, Landroid/animation/Keyframe$IntKeyframe;-><init>(FI)V

    goto :goto_0

    .line 335
    :cond_0
    new-instance v0, Landroid/animation/Keyframe$IntKeyframe;

    invoke-virtual {p0}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v1

    invoke-direct {v0, v1}, Landroid/animation/Keyframe$IntKeyframe;-><init>(F)V

    .line 336
    :goto_0
    invoke-virtual {p0}, Landroid/animation/Keyframe$IntKeyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Keyframe$IntKeyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 337
    iget-boolean p0, p0, Landroid/animation/Keyframe$IntKeyframe;->mValueWasSetOnStart:Z

    iput-boolean p0, v0, Landroid/animation/Keyframe$IntKeyframe;->mValueWasSetOnStart:Z

    return-object v0
.end method

.method public bridge synthetic clone()Landroid/animation/Keyframe;
    .locals 0

    .line 297
    invoke-virtual {p0}, Landroid/animation/Keyframe$IntKeyframe;->clone()Landroid/animation/Keyframe$IntKeyframe;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 297
    invoke-virtual {p0}, Landroid/animation/Keyframe$IntKeyframe;->clone()Landroid/animation/Keyframe$IntKeyframe;

    move-result-object p0

    return-object p0
.end method

.method public getIntValue()I
    .locals 0

    .line 317
    iget p0, p0, Landroid/animation/Keyframe$IntKeyframe;->mValue:I

    return p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0

    .line 321
    iget p0, p0, Landroid/animation/Keyframe$IntKeyframe;->mValue:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 325
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_0

    .line 326
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroid/animation/Keyframe$IntKeyframe;->mValue:I

    const/4 p1, 0x1

    .line 327
    iput-boolean p1, p0, Landroid/animation/Keyframe$IntKeyframe;->mHasValue:Z

    :cond_0
    return-void
.end method
