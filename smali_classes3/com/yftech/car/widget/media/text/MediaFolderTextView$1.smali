.class Lcom/yftech/car/widget/media/text/MediaFolderTextView$1;
.super Ljava/lang/Object;
.source "MediaFolderTextView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/car/widget/media/text/MediaFolderTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/text/MediaFolderTextView;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/text/MediaFolderTextView;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaFolderTextView$1;->this$0:Lcom/yftech/car/widget/media/text/MediaFolderTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;)I
    .locals 0

    .line 146
    invoke-static {p1}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->access$100(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;)I

    move-result p0

    invoke-static {p2}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;->access$100(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;)I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 143
    check-cast p1, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;

    check-cast p2, Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/text/MediaFolderTextView$1;->compare(Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;Lcom/yftech/car/widget/media/text/MediaFolderTextView$MediaFolderInfoItem;)I

    move-result p0

    return p0
.end method
