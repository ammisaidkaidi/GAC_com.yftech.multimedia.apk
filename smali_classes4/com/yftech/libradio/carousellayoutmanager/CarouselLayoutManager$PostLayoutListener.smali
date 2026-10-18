.class public abstract Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$PostLayoutListener;
.super Ljava/lang/Object;
.source "CarouselLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PostLayoutListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformChild(Landroid/view/View;FI)Lcom/yftech/libradio/carousellayoutmanager/ItemTransformation;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 856
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "at least one transformChild should be implemented"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public transformChild(Landroid/view/View;FII)Lcom/yftech/libradio/carousellayoutmanager/ItemTransformation;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 841
    invoke-virtual {p0, p1, p2, p3}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$PostLayoutListener;->transformChild(Landroid/view/View;FI)Lcom/yftech/libradio/carousellayoutmanager/ItemTransformation;

    move-result-object p0

    return-object p0
.end method
