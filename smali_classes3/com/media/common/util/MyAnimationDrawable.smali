.class public Lcom/media/common/util/MyAnimationDrawable;
.super Ljava/lang/Object;
.source "MyAnimationDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/media/common/util/MyAnimationDrawable$OnAnimationListener;,
        Lcom/media/common/util/MyAnimationDrawable$MyFrame;
    }
.end annotation


# static fields
.field private static final handler:Landroid/os/Handler;

.field private static instance:Lcom/media/common/util/MyAnimationDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/media/common/util/MyAnimationDrawable;->handler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/media/common/util/MyAnimationDrawable;Landroid/graphics/BitmapFactory$Options;[I[ILjava/util/List;Landroid/widget/ImageView;Lcom/media/common/util/MyAnimationDrawable$OnAnimationListener;I)V
    .locals 0

    .line 12
    invoke-direct/range {p0 .. p7}, Lcom/media/common/util/MyAnimationDrawable;->animateDrawableManually(Landroid/graphics/BitmapFactory$Options;[I[ILjava/util/List;Landroid/widget/ImageView;Lcom/media/common/util/MyAnimationDrawable$OnAnimationListener;I)V

    return-void
.end method

.method private animateDrawableManually(Landroid/graphics/BitmapFactory$Options;[I[ILjava/util/List;Landroid/widget/ImageView;Lcom/media/common/util/MyAnimationDrawable$OnAnimationListener;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/BitmapFactory$Options;",
            "[I[I",
            "Ljava/util/List<",
            "Lcom/media/common/util/MyAnimationDrawable$MyFrame;",
            ">;",
            "Landroid/widget/ImageView;",
            "Lcom/media/common/util/MyAnimationDrawable$OnAnimationListener;",
            "I)V"
        }
    .end annotation

    move-object v6, p1

    move-object/from16 v7, p4

    move/from16 v3, p7

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animateDrawableManually:frameNumber=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez v3, :cond_0

    .line 55
    new-instance v2, Lcom/media/common/util/MyAnimationDrawable$MyFrame;

    invoke-direct {v2}, Lcom/media/common/util/MyAnimationDrawable$MyFrame;-><init>()V

    .line 56
    aget v5, p3, v1

    iput v5, v2, Lcom/media/common/util/MyAnimationDrawable$MyFrame;->duration:I

    .line 57
    invoke-virtual/range {p5 .. p5}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    aget v1, p2, v1

    invoke-static {v5, v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v2, Lcom/media/common/util/MyAnimationDrawable$MyFrame;->bitmap:Landroid/graphics/Bitmap;

    .line 58
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    move-object v9, v2

    goto :goto_1

    .line 60
    :cond_0
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/media/common/util/MyAnimationDrawable$MyFrame;

    .line 61
    invoke-interface {v7, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 64
    :goto_1
    iput-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 65
    iput v0, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 66
    iget-object v0, v9, Lcom/media/common/util/MyAnimationDrawable$MyFrame;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, v6, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 67
    iget-object v0, v9, Lcom/media/common/util/MyAnimationDrawable$MyFrame;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v5, p5

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 68
    sget-object v10, Lcom/media/common/util/MyAnimationDrawable;->handler:Landroid/os/Handler;

    new-instance v11, Lcom/media/common/util/MyAnimationDrawable$1;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p3

    move/from16 v3, p7

    move-object v4, p2

    move-object v6, p1

    move-object/from16 v7, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/media/common/util/MyAnimationDrawable$1;-><init>(Lcom/media/common/util/MyAnimationDrawable;[II[ILandroid/widget/ImageView;Landroid/graphics/BitmapFactory$Options;Ljava/util/List;Lcom/media/common/util/MyAnimationDrawable$OnAnimationListener;)V

    iget v0, v9, Lcom/media/common/util/MyAnimationDrawable$MyFrame;->duration:I

    int-to-long v0, v0

    invoke-virtual {v10, v11, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/media/common/util/MyAnimationDrawable;
    .locals 2

    const-class v0, Lcom/media/common/util/MyAnimationDrawable;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/media/common/util/MyAnimationDrawable;->instance:Lcom/media/common/util/MyAnimationDrawable;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lcom/media/common/util/MyAnimationDrawable;

    invoke-direct {v1}, Lcom/media/common/util/MyAnimationDrawable;-><init>()V

    sput-object v1, Lcom/media/common/util/MyAnimationDrawable;->instance:Lcom/media/common/util/MyAnimationDrawable;

    .line 23
    :cond_0
    sget-object v1, Lcom/media/common/util/MyAnimationDrawable;->instance:Lcom/media/common/util/MyAnimationDrawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 19
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public animateFromDrawableResource([I[ILandroid/widget/ImageView;Lcom/media/common/util/MyAnimationDrawable$OnAnimationListener;)V
    .locals 8

    .line 36
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/media/common/util/MyAnimationDrawable;->animateDrawableManually(Landroid/graphics/BitmapFactory$Options;[I[ILjava/util/List;Landroid/widget/ImageView;Lcom/media/common/util/MyAnimationDrawable$OnAnimationListener;I)V

    return-void
.end method
