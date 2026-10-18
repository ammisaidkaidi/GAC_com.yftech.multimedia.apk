.class Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener$2;
.super Ljava/lang/Object;
.source "CarouselChildSelectionListener.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener$2;->this$0:Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 36
    iget-object p0, p0, Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener$2;->this$0:Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;

    invoke-static {p0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;->access$200(Lcom/yftech/libradio/carousellayoutmanager/CarouselChildSelectionListener;)Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    .line 41
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
