.class Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter$1;
.super Ljava/lang/Object;
.source "MusicSourceAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;I)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter$1;->this$0:Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

    iput p2, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 269
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter$1;->this$0:Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

    invoke-static {p1}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->access$000(Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;)Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 270
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter$1;->this$0:Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

    invoke-static {p1}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->access$200(Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter$1;->this$0:Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

    invoke-static {v0}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->access$100(Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter$1;->this$0:Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

    invoke-static {v0}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->access$000(Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;)Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter$OnItemClickListener;

    move-result-object v0

    iget v1, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter$1;->val$position:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v2, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter$1;->this$0:Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

    invoke-static {v2}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->access$300(Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter$1;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter$1;->this$0:Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;

    invoke-static {v3}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;->access$100(Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter;)Ljava/util/List;

    move-result-object v3

    iget p0, p0, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter$1;->val$position:I

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {v0, v1, p1, v2, p0}, Lcom/yftech/libmusic/dialog/adapter/MusicSourceAdapter$OnItemClickListener;->onItemClickListener(IILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
