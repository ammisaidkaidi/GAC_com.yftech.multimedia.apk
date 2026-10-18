.class public interface abstract Lcom/yftech/libradio/DabDataManager$DabDataManagerCallback;
.super Ljava/lang/Object;
.source "DabDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/DabDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DabDataManagerCallback"
.end annotation


# virtual methods
.method public abstract onDataListChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/libradio/bean/DabChannelInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSlideShowImageChanged([B)V
.end method
