.class public Lcom/yftech/libradio/event/RadioSearchResultEvent;
.super Ljava/lang/Object;
.source "RadioSearchResultEvent.java"


# instance fields
.field public result:Z

.field public resultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/media/radio/entity/DataOfRadio;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/radio/entity/DataOfRadio;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean p1, p0, Lcom/yftech/libradio/event/RadioSearchResultEvent;->result:Z

    .line 18
    iput-object p2, p0, Lcom/yftech/libradio/event/RadioSearchResultEvent;->resultList:Ljava/util/List;

    return-void
.end method
