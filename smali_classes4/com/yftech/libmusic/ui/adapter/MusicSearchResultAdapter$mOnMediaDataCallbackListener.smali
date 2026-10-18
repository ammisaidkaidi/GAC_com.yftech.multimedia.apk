.class Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter$mOnMediaDataCallbackListener;
.super Ljava/lang/Object;
.source "MusicSearchResultAdapter.java"

# interfaces
.implements Lcom/media/common/ui/widget/SyncImageView$OnMediaInformationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "mOnMediaDataCallbackListener"
.end annotation


# instance fields
.field private position:I

.field final synthetic this$0:Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;


# direct methods
.method public constructor <init>(Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;I)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter$mOnMediaDataCallbackListener;->this$0:Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput p2, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter$mOnMediaDataCallbackListener;->position:I

    return-void
.end method


# virtual methods
.method public onMediaDurationCallback(I)V
    .locals 0

    return-void
.end method

.method public onMediaImageCallback(Ljava/lang/String;[BII)V
    .locals 0

    .line 237
    iget-object p1, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter$mOnMediaDataCallbackListener;->this$0:Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;

    iget p3, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter$mOnMediaDataCallbackListener;->position:I

    invoke-virtual {p1, p3}, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/libmusic/bean/MediaFileItem;

    if-eqz p1, :cond_0

    .line 239
    invoke-virtual {p1, p2}, Lcom/yftech/libmusic/bean/MediaFileItem;->setThumbData([B)V

    .line 243
    :cond_0
    iget-object p1, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter$mOnMediaDataCallbackListener;->this$0:Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;

    iget p0, p0, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter$mOnMediaDataCallbackListener;->position:I

    invoke-virtual {p1, p0, p2}, Lcom/yftech/libmusic/ui/adapter/MusicSearchResultAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method
