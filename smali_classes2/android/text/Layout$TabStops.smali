.class Landroid/text/Layout$TabStops;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TabStops"
.end annotation


# instance fields
.field private mIncrement:I

.field private mNumStops:I

.field private mStops:[I


# direct methods
.method constructor <init>(I[Ljava/lang/Object;)V
    .locals 0

    .line 2135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2136
    invoke-virtual {p0, p1, p2}, Landroid/text/Layout$TabStops;->reset(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static nextDefaultStop(FI)F
    .locals 1

    int-to-float v0, p1

    add-float/2addr p0, v0

    div-float/2addr p0, v0

    float-to-int p0, p0

    mul-int/2addr p0, p1

    int-to-float p0, p0

    return p0
.end method


# virtual methods
.method nextTab(F)F
    .locals 5

    .line 2170
    iget v0, p0, Landroid/text/Layout$TabStops;->mNumStops:I

    if-lez v0, :cond_1

    .line 2172
    iget-object v1, p0, Landroid/text/Layout$TabStops;->mStops:[I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2174
    aget v3, v1, v2

    int-to-float v3, v3

    cmpl-float v4, v3, p1

    if-lez v4, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2180
    :cond_1
    iget p0, p0, Landroid/text/Layout$TabStops;->mIncrement:I

    invoke-static {p1, p0}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result p0

    return p0
.end method

.method reset(I[Ljava/lang/Object;)V
    .locals 8

    .line 2140
    iput p1, p0, Landroid/text/Layout$TabStops;->mIncrement:I

    const/4 p1, 0x0

    if-eqz p2, :cond_7

    .line 2144
    iget-object v0, p0, Landroid/text/Layout$TabStops;->mStops:[I

    .line 2145
    array-length v1, p2

    move v2, p1

    move-object v3, v0

    move v0, v2

    :goto_0
    if-ge v0, v1, :cond_4

    aget-object v4, p2, v0

    .line 2146
    instance-of v5, v4, Landroid/text/style/TabStopSpan;

    if-eqz v5, :cond_3

    if-nez v3, :cond_0

    const/16 v3, 0xa

    .line 2148
    new-array v3, v3, [I

    goto :goto_2

    .line 2149
    :cond_0
    array-length v5, v3

    if-ne v2, v5, :cond_2

    mul-int/lit8 v5, v2, 0x2

    .line 2150
    new-array v5, v5, [I

    move v6, p1

    :goto_1
    if-ge v6, v2, :cond_1

    .line 2152
    aget v7, v3, v6

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    move-object v3, v5

    :cond_2
    :goto_2
    add-int/lit8 v5, v2, 0x1

    .line 2156
    check-cast v4, Landroid/text/style/TabStopSpan;

    invoke-interface {v4}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v4

    aput v4, v3, v2

    move v2, v5

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 p2, 0x1

    if-le v2, p2, :cond_5

    .line 2160
    invoke-static {v3, p1, v2}, Ljava/util/Arrays;->sort([III)V

    .line 2162
    :cond_5
    iget-object p1, p0, Landroid/text/Layout$TabStops;->mStops:[I

    if-eq v3, p1, :cond_6

    .line 2163
    iput-object v3, p0, Landroid/text/Layout$TabStops;->mStops:[I

    :cond_6
    move p1, v2

    .line 2166
    :cond_7
    iput p1, p0, Landroid/text/Layout$TabStops;->mNumStops:I

    return-void
.end method
