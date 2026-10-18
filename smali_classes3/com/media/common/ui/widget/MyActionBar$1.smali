.class Lcom/media/common/ui/widget/MyActionBar$1;
.super Ljava/lang/Object;
.source "MyActionBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/media/common/ui/widget/MyActionBar;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/media/common/ui/widget/MyActionBar;


# direct methods
.method constructor <init>(Lcom/media/common/ui/widget/MyActionBar;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/media/common/ui/widget/MyActionBar$1;->this$0:Lcom/media/common/ui/widget/MyActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 91
    iget-object p1, p0, Lcom/media/common/ui/widget/MyActionBar$1;->this$0:Lcom/media/common/ui/widget/MyActionBar;

    invoke-static {p1}, Lcom/media/common/ui/widget/MyActionBar;->access$000(Lcom/media/common/ui/widget/MyActionBar;)Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 92
    iget-object p0, p0, Lcom/media/common/ui/widget/MyActionBar$1;->this$0:Lcom/media/common/ui/widget/MyActionBar;

    invoke-static {p0}, Lcom/media/common/ui/widget/MyActionBar;->access$000(Lcom/media/common/ui/widget/MyActionBar;)Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method
