.class public interface abstract Lcom/yftech/libradio/model/interfaces/IRadioModel$OnRadioFavorListLoadListener;
.super Ljava/lang/Object;
.source "IRadioModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/model/interfaces/IRadioModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnRadioFavorListLoadListener"
.end annotation


# virtual methods
.method public abstract onComplete(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/yftech/libradio/bean/RadioChannelInfo;",
            ">;)V"
        }
    .end annotation
.end method
