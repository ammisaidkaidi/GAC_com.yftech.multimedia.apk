.class public Lcom/android/internal/policy/DecorView$ColorViewAttributes;
.super Ljava/lang/Object;
.source "DecorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/DecorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorViewAttributes"
.end annotation


# instance fields
.field final hideWindowFlag:I

.field final horizontalGravity:I

.field final id:I

.field final seascapeGravity:I

.field final systemUiHideFlag:I

.field final transitionName:Ljava/lang/String;

.field final translucentFlag:I

.field final verticalGravity:I


# direct methods
.method private constructor <init>(IIIIILjava/lang/String;II)V
    .locals 0

    .line 2342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2343
    iput p7, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->id:I

    .line 2344
    iput p1, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->systemUiHideFlag:I

    .line 2345
    iput p2, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->translucentFlag:I

    .line 2346
    iput p3, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->verticalGravity:I

    .line 2347
    iput p4, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->horizontalGravity:I

    .line 2348
    iput p5, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->seascapeGravity:I

    .line 2349
    iput-object p6, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->transitionName:Ljava/lang/String;

    .line 2350
    iput p8, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->hideWindowFlag:I

    return-void
.end method

.method synthetic constructor <init>(IIIIILjava/lang/String;IILcom/android/internal/policy/DecorView$1;)V
    .locals 0

    .line 2329
    invoke-direct/range {p0 .. p8}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;-><init>(IIIIILjava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public isPresent(IIZ)Z
    .locals 1

    .line 2354
    iget v0, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->systemUiHideFlag:I

    and-int/2addr p1, v0

    if-nez p1, :cond_1

    iget p0, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->hideWindowFlag:I

    and-int/2addr p0, p2

    if-nez p0, :cond_1

    const/high16 p0, -0x80000000

    and-int/2addr p0, p2

    if-nez p0, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVisible(IIIZ)Z
    .locals 0

    .line 2367
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isPresent(IIZ)Z

    move-result p1

    .line 2368
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isVisible(ZIIZ)Z

    move-result p0

    return p0
.end method

.method public isVisible(ZIIZ)Z
    .locals 0

    if-eqz p1, :cond_1

    const/high16 p1, -0x1000000

    and-int/2addr p1, p2

    if-eqz p1, :cond_1

    .line 2361
    iget p0, p0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->translucentFlag:I

    and-int/2addr p0, p3

    if-eqz p0, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
