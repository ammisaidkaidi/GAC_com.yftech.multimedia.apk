.class public interface abstract Lcom/yftech/libradio/rds/RdsDataManager$RdsDataManagerCallback;
.super Ljava/lang/Object;
.source "RdsDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/rds/RdsDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RdsDataManagerCallback"
.end annotation


# virtual methods
.method public abstract onRdsInfoListChanged(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/yftech/car/media/radio/rds/entity/RdsInfo;",
            ">;)V"
        }
    .end annotation
.end method
