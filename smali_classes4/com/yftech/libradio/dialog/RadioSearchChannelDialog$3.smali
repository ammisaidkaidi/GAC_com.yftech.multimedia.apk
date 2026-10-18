.class Lcom/yftech/libradio/dialog/RadioSearchChannelDialog$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RadioSearchChannelDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->setBoardVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog$3;->this$0:Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog$3;->this$0:Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;

    invoke-static {p0}, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->access$300(Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;)Landroid/widget/ImageView;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
