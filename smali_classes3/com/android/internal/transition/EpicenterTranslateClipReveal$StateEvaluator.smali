.class Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;
.super Ljava/lang/Object;
.source "EpicenterTranslateClipReveal.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/transition/EpicenterTranslateClipReveal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;",
        ">;"
    }
.end annotation


# instance fields
.field private final mTemp:Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    new-instance v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    invoke-direct {v0}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>()V

    iput-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;->mTemp:Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/transition/EpicenterTranslateClipReveal$1;)V
    .locals 0

    .line 261
    invoke-direct {p0}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;)Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    .locals 4

    .line 266
    iget-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;->mTemp:Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    iget v1, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->upper:I

    iget v2, p3, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->upper:I

    iget v3, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->upper:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->upper:I

    .line 267
    iget-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;->mTemp:Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    iget v1, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->lower:I

    iget v2, p3, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->lower:I

    iget v3, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->lower:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->lower:I

    .line 268
    iget-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;->mTemp:Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    iget v1, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    iget p3, p3, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    iget p2, p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    sub-float/2addr p3, p2

    mul-float/2addr p3, p1

    float-to-int p1, p3

    int-to-float p1, p1

    add-float/2addr v1, p1

    iput v1, v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;->trans:F

    .line 269
    iget-object p0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;->mTemp:Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    return-object p0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 261
    check-cast p2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    check-cast p3, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;->evaluate(FLcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;)Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    move-result-object p0

    return-object p0
.end method
