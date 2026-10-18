.class Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder$LayoutHelperItem;
.super Ljava/lang/Object;
.source "RangeLayoutHelperFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayoutHelperItem"
.end annotation


# instance fields
.field layoutHelper:Lcom/alibaba/android/vlayout/LayoutHelper;


# direct methods
.method constructor <init>(Lcom/alibaba/android/vlayout/LayoutHelper;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder$LayoutHelperItem;->layoutHelper:Lcom/alibaba/android/vlayout/LayoutHelper;

    return-void
.end method


# virtual methods
.method public getEndPosition()I
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder$LayoutHelperItem;->layoutHelper:Lcom/alibaba/android/vlayout/LayoutHelper;

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/LayoutHelper;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getStartPosition()I
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/alibaba/android/vlayout/RangeLayoutHelperFinder$LayoutHelperItem;->layoutHelper:Lcom/alibaba/android/vlayout/LayoutHelper;

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/LayoutHelper;->getRange()Lcom/alibaba/android/vlayout/Range;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
