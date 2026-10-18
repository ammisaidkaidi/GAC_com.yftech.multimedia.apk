.class Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter$1;
.super Ljava/lang/Object;
.source "MusicLyricAdapter.java"

# interfaces
.implements Lcom/yftech/libmusic/widget/SongTextView$OnTextItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/yftech/libmusic/bean/LyricObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;

.field final synthetic val$helper:Lcom/chad/library/adapter/base/BaseViewHolder;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;Lcom/chad/library/adapter/base/BaseViewHolder;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter$1;->this$0:Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;

    iput-object p2, p0, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter$1;->val$helper:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextItemClick(Lcom/yftech/libmusic/bean/LyricObject;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter$1;->this$0:Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->access$000(Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;)Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter$1;->this$0:Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;->access$000(Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter;)Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter$OnItemClickListener;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter$1;->val$helper:Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/yftech/libmusic/ui/adapter/MusicLyricAdapter$OnItemClickListener;->onTextItemClick(ILcom/yftech/libmusic/bean/LyricObject;)V

    :cond_0
    return-void
.end method
