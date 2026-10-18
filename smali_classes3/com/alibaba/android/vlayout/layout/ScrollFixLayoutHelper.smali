.class public Lcom/alibaba/android/vlayout/layout/ScrollFixLayoutHelper;
.super Lcom/alibaba/android/vlayout/layout/FixLayoutHelper;
.source "ScrollFixLayoutHelper.java"


# static fields
.field public static final SHOW_ALWAYS:I = 0x0

.field public static final SHOW_ON_ENTER:I = 0x1

.field public static final SHOW_ON_LEAVE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ScrollFixLayoutHelper"


# instance fields
.field private mShowType:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, v0, p1, p2}, Lcom/alibaba/android/vlayout/layout/ScrollFixLayoutHelper;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/vlayout/layout/FixLayoutHelper;-><init>(III)V

    const/4 p1, 0x0

    .line 46
    iput p1, p0, Lcom/alibaba/android/vlayout/layout/ScrollFixLayoutHelper;->mShowType:I

    return-void
.end method


# virtual methods
.method public getShowType()I
    .locals 0

    .line 61
    iget p0, p0, Lcom/alibaba/android/vlayout/layout/ScrollFixLayoutHelper;->mShowType:I

    return p0
.end method

.method public setShowType(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/alibaba/android/vlayout/layout/ScrollFixLayoutHelper;->mShowType:I

    return-void
.end method

.method protected shouldBeDraw(Lcom/alibaba/android/vlayout/LayoutManagerHelper;III)Z
    .locals 1

    .line 66
    iget p1, p0, Lcom/alibaba/android/vlayout/layout/ScrollFixLayoutHelper;->mShowType:I

    const/4 p4, 0x0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    return v0

    .line 73
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/ScrollFixLayoutHelper;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr p0, v0

    if-lt p2, p0, :cond_0

    move p4, v0

    :cond_0
    return p4

    .line 69
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/ScrollFixLayoutHelper;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sub-int/2addr p0, v0

    if-lt p3, p0, :cond_1

    move p4, v0

    :cond_1
    return p4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
