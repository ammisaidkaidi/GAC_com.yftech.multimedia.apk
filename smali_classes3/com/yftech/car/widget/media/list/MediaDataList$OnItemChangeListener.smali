.class public abstract Lcom/yftech/car/widget/media/list/MediaDataList$OnItemChangeListener;
.super Ljava/lang/Object;
.source "MediaDataList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/list/MediaDataList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnItemChangeListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckBoxStatus(IZ)V
    .locals 0

    return-void
.end method

.method public onItemFile(Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 0

    return-void
.end method

.method public onItemFolder(Lcom/yftech/car/media/data/entity/MediaFolder;)V
    .locals 0

    return-void
.end method

.method public onListFile(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;I)V"
        }
    .end annotation

    return-void
.end method

.method public onListFolder(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFolder;",
            ">;I)V"
        }
    .end annotation

    return-void
.end method

.method public onListSizeChange(I)V
    .locals 0

    return-void
.end method
