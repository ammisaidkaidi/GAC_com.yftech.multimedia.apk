.class public abstract Landroid/view/animation/BaseInterpolator;
.super Ljava/lang/Object;
.source "BaseInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private mChangingConfiguration:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChangingConfiguration()I
    .locals 0

    .line 30
    iget p0, p0, Landroid/view/animation/BaseInterpolator;->mChangingConfiguration:I

    return p0
.end method

.method setChangingConfiguration(I)V
    .locals 0

    .line 37
    iput p1, p0, Landroid/view/animation/BaseInterpolator;->mChangingConfiguration:I

    return-void
.end method
