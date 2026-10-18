.class public abstract Landroid/media/effect/FilterEffect;
.super Landroid/media/effect/Effect;
.source "FilterEffect.java"


# instance fields
.field protected mEffectContext:Landroid/media/effect/EffectContext;

.field private mName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/media/effect/Effect;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/media/effect/FilterEffect;->mEffectContext:Landroid/media/effect/EffectContext;

    .line 42
    iput-object p2, p0, Landroid/media/effect/FilterEffect;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected beginGLEffect()V
    .locals 1

    .line 64
    iget-object v0, p0, Landroid/media/effect/FilterEffect;->mEffectContext:Landroid/media/effect/EffectContext;

    invoke-virtual {v0}, Landroid/media/effect/EffectContext;->assertValidGLState()V

    .line 65
    iget-object p0, p0, Landroid/media/effect/FilterEffect;->mEffectContext:Landroid/media/effect/EffectContext;

    invoke-virtual {p0}, Landroid/media/effect/EffectContext;->saveGLState()V

    return-void
.end method

.method protected endGLEffect()V
    .locals 0

    .line 72
    iget-object p0, p0, Landroid/media/effect/FilterEffect;->mEffectContext:Landroid/media/effect/EffectContext;

    invoke-virtual {p0}, Landroid/media/effect/EffectContext;->restoreGLState()V

    return-void
.end method

.method protected frameFromTexture(III)Landroid/filterfw/core/Frame;
    .locals 2

    .line 86
    invoke-virtual {p0}, Landroid/media/effect/FilterEffect;->getFilterContext()Landroid/filterfw/core/FilterContext;

    move-result-object p0

    invoke-virtual {p0}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object p0

    const/4 v0, 0x3

    .line 87
    invoke-static {p2, p3, v0, v0}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object p2

    int-to-long v0, p1

    const/16 p1, 0x64

    .line 90
    invoke-virtual {p0, p2, p1, v0, v1}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object p0

    const-wide/16 p1, -0x1

    .line 93
    invoke-virtual {p0, p1, p2}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    return-object p0
.end method

.method protected getFilterContext()Landroid/filterfw/core/FilterContext;
    .locals 0

    .line 79
    iget-object p0, p0, Landroid/media/effect/FilterEffect;->mEffectContext:Landroid/media/effect/EffectContext;

    iget-object p0, p0, Landroid/media/effect/EffectContext;->mFilterContext:Landroid/filterfw/core/FilterContext;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Landroid/media/effect/FilterEffect;->mName:Ljava/lang/String;

    return-object p0
.end method
