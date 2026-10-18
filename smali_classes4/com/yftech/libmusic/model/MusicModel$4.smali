.class Lcom/yftech/libmusic/model/MusicModel$4;
.super Ljava/lang/Object;
.source "MusicModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmusic/model/MusicModel;->getThumbDataByPath(Ljava/lang/String;Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnThumbDataLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/model/MusicModel;

.field final synthetic val$listener:Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnThumbDataLoadListener;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/model/MusicModel;Ljava/lang/String;Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnThumbDataLoadListener;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/yftech/libmusic/model/MusicModel$4;->this$0:Lcom/yftech/libmusic/model/MusicModel;

    iput-object p2, p0, Lcom/yftech/libmusic/model/MusicModel$4;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/yftech/libmusic/model/MusicModel$4;->val$listener:Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnThumbDataLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 392
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libmusic/model/MusicModel$4;->val$path:Ljava/lang/String;

    const/16 v2, 0xe0

    invoke-virtual {v0, v1, v2, v2}, Lcom/yftech/car/media/music/CarMusicManager;->getMusicAlbumBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 394
    invoke-static {v0}, Lcom/media/common/util/BitmapUtils;->getBitmapByte(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 396
    iget-object v1, p0, Lcom/yftech/libmusic/model/MusicModel$4;->val$listener:Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnThumbDataLoadListener;

    if-eqz v1, :cond_0

    .line 397
    iget-object p0, p0, Lcom/yftech/libmusic/model/MusicModel$4;->val$listener:Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnThumbDataLoadListener;

    invoke-interface {p0, v0}, Lcom/yftech/libmusic/model/interfaces/IMusicModel$OnThumbDataLoadListener;->onComplete([B)V

    :cond_0
    return-void
.end method
