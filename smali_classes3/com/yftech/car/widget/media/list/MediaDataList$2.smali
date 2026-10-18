.class Lcom/yftech/car/widget/media/list/MediaDataList$2;
.super Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;
.source "MediaDataList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/car/widget/media/list/MediaDataList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/list/MediaDataList;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/list/MediaDataList;Landroid/content/Context;II)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList$2;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-direct {p0, p2, p3, p4}, Lcom/yftech/car/widget/media/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
