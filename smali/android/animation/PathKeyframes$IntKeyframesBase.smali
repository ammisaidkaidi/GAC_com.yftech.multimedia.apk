.class abstract Landroid/animation/PathKeyframes$IntKeyframesBase;
.super Landroid/animation/PathKeyframes$SimpleKeyframes;
.source "PathKeyframes.java"

# interfaces
.implements Landroid/animation/Keyframes$IntKeyframes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/PathKeyframes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "IntKeyframesBase"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 227
    invoke-direct {p0, v0}, Landroid/animation/PathKeyframes$SimpleKeyframes;-><init>(Landroid/animation/PathKeyframes$1;)V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/Class;
    .locals 0

    .line 230
    const-class p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public getValue(F)Ljava/lang/Object;
    .locals 0

    .line 235
    invoke-virtual {p0, p1}, Landroid/animation/PathKeyframes$IntKeyframesBase;->getIntValue(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
