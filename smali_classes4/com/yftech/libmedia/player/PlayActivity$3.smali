.class Lcom/yftech/libmedia/player/PlayActivity$3;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Lcom/media/common/ui/widget/TipsDialog$OnConfirmClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmedia/player/PlayActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmedia/player/PlayActivity;


# direct methods
.method constructor <init>(Lcom/yftech/libmedia/player/PlayActivity;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$3;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm()V
    .locals 3

    .line 308
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity$3;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-virtual {v0}, Lcom/yftech/libmedia/player/PlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object v0

    const-string v1, "TAG_VIDEO_VECHICLE_OVERFLOW_HOLDING"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/media/common/util/SharedPrefsUtil;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 311
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity$3;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-virtual {p0}, Lcom/yftech/libmedia/player/PlayActivity;->onBackPressed()V

    return-void
.end method
