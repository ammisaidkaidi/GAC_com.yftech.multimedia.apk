.class Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter$2;
.super Ljava/lang/Object;
.source "MyPagerImageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter$2;->this$0:Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter$2;->this$0:Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;

    invoke-static {p0}, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->access$200(Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;)Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter$OnImageTouchListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter$OnImageTouchListener;->onImageTouch()V

    return-void
.end method
