.class Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$2;
.super Ljava/lang/Object;
.source "MusicSoundEffectsDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$2;->this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$2;->this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-static {p0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->access$100(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;)Landroid/widget/RelativeLayout;

    move-result-object p0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
