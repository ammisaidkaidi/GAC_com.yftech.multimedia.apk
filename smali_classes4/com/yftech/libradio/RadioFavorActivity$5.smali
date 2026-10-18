.class Lcom/yftech/libradio/RadioFavorActivity$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RadioFavorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/RadioFavorActivity;->setBoardVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/RadioFavorActivity;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/RadioFavorActivity;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/yftech/libradio/RadioFavorActivity$5;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 272
    iget-object p0, p0, Lcom/yftech/libradio/RadioFavorActivity$5;->this$0:Lcom/yftech/libradio/RadioFavorActivity;

    invoke-static {p0}, Lcom/yftech/libradio/RadioFavorActivity;->access$600(Lcom/yftech/libradio/RadioFavorActivity;)Landroid/widget/ImageView;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
