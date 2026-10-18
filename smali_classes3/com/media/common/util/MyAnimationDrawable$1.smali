.class Lcom/media/common/util/MyAnimationDrawable$1;
.super Ljava/lang/Object;
.source "MyAnimationDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/media/common/util/MyAnimationDrawable;->animateDrawableManually(Landroid/graphics/BitmapFactory$Options;[I[ILjava/util/List;Landroid/widget/ImageView;Lcom/media/common/util/MyAnimationDrawable$OnAnimationListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/media/common/util/MyAnimationDrawable;

.field final synthetic val$durations:[I

.field final synthetic val$frameNumber:I

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$myFrame:Ljava/util/List;

.field final synthetic val$onAnimationListener:Lcom/media/common/util/MyAnimationDrawable$OnAnimationListener;

.field final synthetic val$options:Landroid/graphics/BitmapFactory$Options;

.field final synthetic val$resIds:[I


# direct methods
.method constructor <init>(Lcom/media/common/util/MyAnimationDrawable;[II[ILandroid/widget/ImageView;Landroid/graphics/BitmapFactory$Options;Ljava/util/List;Lcom/media/common/util/MyAnimationDrawable$OnAnimationListener;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/media/common/util/MyAnimationDrawable$1;->this$0:Lcom/media/common/util/MyAnimationDrawable;

    iput-object p2, p0, Lcom/media/common/util/MyAnimationDrawable$1;->val$durations:[I

    iput p3, p0, Lcom/media/common/util/MyAnimationDrawable$1;->val$frameNumber:I

    iput-object p4, p0, Lcom/media/common/util/MyAnimationDrawable$1;->val$resIds:[I

    iput-object p5, p0, Lcom/media/common/util/MyAnimationDrawable$1;->val$imageView:Landroid/widget/ImageView;

    iput-object p6, p0, Lcom/media/common/util/MyAnimationDrawable$1;->val$options:Landroid/graphics/BitmapFactory$Options;

    iput-object p7, p0, Lcom/media/common/util/MyAnimationDrawable$1;->val$myFrame:Ljava/util/List;

    iput-object p8, p0, Lcom/media/common/util/MyAnimationDrawable$1;->val$onAnimationListener:Lcom/media/common/util/MyAnimationDrawable$OnAnimationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 73
    new-instance v0, Lcom/media/common/util/MyAnimationDrawable$MyFrame;

    invoke-direct {v0}, Lcom/media/common/util/MyAnimationDrawable$MyFrame;-><init>()V

    .line 74
    iget-object v1, p0, Lcom/media/common/util/MyAnimationDrawable$1;->val$durations:[I

    iget v2, p0, Lcom/media/common/util/MyAnimationDrawable$1;->val$frameNumber:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/media/common/util/MyAnimationDrawable$1;->val$resIds:[I

    array-length v3, v3

    rem-int/2addr v2, v3

    aget v1, v1, v2

    iput v1, v0, Lcom/media/common/util/MyAnimationDrawable$MyFrame;->duration:I

    .line 75
    iget-object v1, p0, Lcom/media/common/util/MyAnimationDrawable$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/media/common/util/MyAnimationDrawable$1;->val$resIds:[I

    iget v3, p0, Lcom/media/common/util/MyAnimationDrawable$1;->val$frameNumber:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/media/common/util/MyAnimationDrawable$1;->val$resIds:[I

    array-length v4, v4

    rem-int/2addr v3, v4

    aget v2, v2, v3

    iget-object v3, p0, Lcom/media/common/util/MyAnimationDrawable$1;->val$options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/media/common/util/MyAnimationDrawable$MyFrame;->bitmap:Landroid/graphics/Bitmap;

    .line 76
    iget-object v1, v0, Lcom/media/common/util/MyAnimationDrawable$MyFrame;->bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/media/common/util/MyAnimationDrawable$1;->val$options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2}, Lcom/media/common/util/BitmapUtils;->canUseForInBitmap(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)Z

    move-result v1

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "run: $$$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/media/common/util/MyAnimationDrawable$MyFrame;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/media/common/util/MyAnimationDrawable$1;->val$myFrame:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v2, p0, Lcom/media/common/util/MyAnimationDrawable$1;->this$0:Lcom/media/common/util/MyAnimationDrawable;

    iget-object v3, p0, Lcom/media/common/util/MyAnimationDrawable$1;->val$options:Landroid/graphics/BitmapFactory$Options;

    iget-object v4, p0, Lcom/media/common/util/MyAnimationDrawable$1;->val$resIds:[I

    iget-object v5, p0, Lcom/media/common/util/MyAnimationDrawable$1;->val$durations:[I

    iget-object v6, p0, Lcom/media/common/util/MyAnimationDrawable$1;->val$myFrame:Ljava/util/List;

    iget-object v7, p0, Lcom/media/common/util/MyAnimationDrawable$1;->val$imageView:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/media/common/util/MyAnimationDrawable$1;->val$onAnimationListener:Lcom/media/common/util/MyAnimationDrawable$OnAnimationListener;

    iget v0, p0, Lcom/media/common/util/MyAnimationDrawable$1;->val$frameNumber:I

    add-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Lcom/media/common/util/MyAnimationDrawable$1;->val$resIds:[I

    array-length p0, p0

    rem-int v9, v0, p0

    invoke-static/range {v2 .. v9}, Lcom/media/common/util/MyAnimationDrawable;->access$000(Lcom/media/common/util/MyAnimationDrawable;Landroid/graphics/BitmapFactory$Options;[I[ILjava/util/List;Landroid/widget/ImageView;Lcom/media/common/util/MyAnimationDrawable$OnAnimationListener;I)V

    return-void
.end method
