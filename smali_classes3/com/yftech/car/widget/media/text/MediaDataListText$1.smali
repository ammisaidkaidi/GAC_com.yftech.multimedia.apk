.class Lcom/yftech/car/widget/media/text/MediaDataListText$1;
.super Ljava/lang/Object;
.source "MediaDataListText.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/car/widget/media/text/MediaDataListText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/text/MediaDataListText;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/text/MediaDataListText;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaDataListText$1;->this$0:Lcom/yftech/car/widget/media/text/MediaDataListText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;)I
    .locals 0

    .line 157
    invoke-static {p1}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$100(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;)I

    move-result p0

    invoke-static {p2}, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;->access$100(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;)I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 154
    check-cast p1, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;

    check-cast p2, Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/text/MediaDataListText$1;->compare(Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;Lcom/yftech/car/widget/media/text/MediaDataListText$MediaListInfoItem;)I

    move-result p0

    return p0
.end method
