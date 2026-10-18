.class Lcom/yftech/libgallery/ui/BrowseImageActivity$5$1;
.super Ljava/lang/Object;
.source "BrowseImageActivity.java"

# interfaces
.implements Lcom/media/common/ui/widget/TipsDialog$OnConfirmClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libgallery/ui/BrowseImageActivity$5;->onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/libgallery/ui/BrowseImageActivity$5;


# direct methods
.method constructor <init>(Lcom/yftech/libgallery/ui/BrowseImageActivity$5;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity$5$1;->this$1:Lcom/yftech/libgallery/ui/BrowseImageActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm()V
    .locals 0

    .line 329
    iget-object p0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity$5$1;->this$1:Lcom/yftech/libgallery/ui/BrowseImageActivity$5;

    iget-object p0, p0, Lcom/yftech/libgallery/ui/BrowseImageActivity$5;->this$0:Lcom/yftech/libgallery/ui/BrowseImageActivity;

    invoke-virtual {p0}, Lcom/yftech/libgallery/ui/BrowseImageActivity;->onBackPressed()V

    return-void
.end method
