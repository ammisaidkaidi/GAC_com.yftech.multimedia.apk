.class Lcom/yftech/multimedia/model/SubjectModel$6$1;
.super Ljava/lang/Object;
.source "SubjectModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/multimedia/model/SubjectModel$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/yftech/car/media/data/entity/MediaFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/multimedia/model/SubjectModel$6;


# direct methods
.method constructor <init>(Lcom/yftech/multimedia/model/SubjectModel$6;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/yftech/multimedia/model/SubjectModel$6$1;->this$1:Lcom/yftech/multimedia/model/SubjectModel$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/yftech/car/media/data/entity/MediaFile;Lcom/yftech/car/media/data/entity/MediaFile;)I
    .locals 4

    .line 142
    invoke-virtual {p2}, Lcom/yftech/car/media/data/entity/MediaFile;->getLastModified()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getLastModified()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 145
    :cond_0
    invoke-virtual {p2}, Lcom/yftech/car/media/data/entity/MediaFile;->getLastModified()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getLastModified()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 139
    check-cast p1, Lcom/yftech/car/media/data/entity/MediaFile;

    check-cast p2, Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/multimedia/model/SubjectModel$6$1;->compare(Lcom/yftech/car/media/data/entity/MediaFile;Lcom/yftech/car/media/data/entity/MediaFile;)I

    move-result p0

    return p0
.end method
