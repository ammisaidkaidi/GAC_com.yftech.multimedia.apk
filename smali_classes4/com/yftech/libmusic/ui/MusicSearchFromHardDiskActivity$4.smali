.class Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$4;
.super Ljava/lang/Object;
.source "MusicSearchFromHardDiskActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->initW()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$4;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 386
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$4;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->access$500(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
