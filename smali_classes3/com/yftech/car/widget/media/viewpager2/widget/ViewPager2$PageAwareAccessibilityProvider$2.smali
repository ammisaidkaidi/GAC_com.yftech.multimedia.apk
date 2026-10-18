.class Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$2;
.super Ljava/lang/Object;
.source "ViewPager2.java"

# interfaces
.implements Landroidx/core/view/accessibility/AccessibilityViewCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;)V
    .locals 0

    .line 1414
    iput-object p1, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$2;->this$1:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1418
    check-cast p1, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;

    .line 1419
    iget-object p0, p0, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$2;->this$1:Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->setCurrentItemFromAccessibilityCommand(I)V

    return p2
.end method
