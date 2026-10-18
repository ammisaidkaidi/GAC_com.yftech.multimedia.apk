.class Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$8;
.super Ljava/lang/Object;
.source "MusicSearchFromHardDiskActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->disableCopyAndPaste(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 487
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$8;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    iput-object p2, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$8;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 490
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 492
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$8;->this$0:Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;

    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity$8;->val$editText:Landroid/widget/EditText;

    invoke-static {p1, p0}, Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;->access$800(Lcom/yftech/libmusic/ui/MusicSearchFromHardDiskActivity;Landroid/widget/EditText;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
