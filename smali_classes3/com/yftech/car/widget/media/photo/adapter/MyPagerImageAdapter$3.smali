.class Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter$3;
.super Ljava/lang/Object;
.source "MyPagerImageAdapter.java"

# interfaces
.implements Lcom/yftech/car/widget/media/photo/photoview/ImageOnTouch;


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

    .line 154
    iput-object p1, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter$3;->this$0:Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OntouchListener()V
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter$3;->this$0:Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;

    invoke-static {p0}, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;->access$200(Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter;)Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter$OnImageTouchListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/yftech/car/widget/media/photo/adapter/MyPagerImageAdapter$OnImageTouchListener;->onImageTouch()V

    return-void
.end method
