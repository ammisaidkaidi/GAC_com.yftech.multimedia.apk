.class public abstract Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;
.super Ljava/lang/Object;
.source "MediaFileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnItemFileListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMediaListType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSearchFlags()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCheckBoxStatus(IZ)V
    .locals 0

    return-void
.end method

.method public onItemFile(Lcom/yftech/car/media/data/entity/MediaFile;)V
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

.method public onListSizeChange(I)V
    .locals 0

    return-void
.end method

.method public removeItemDecorationAt(I)V
    .locals 0

    return-void
.end method
