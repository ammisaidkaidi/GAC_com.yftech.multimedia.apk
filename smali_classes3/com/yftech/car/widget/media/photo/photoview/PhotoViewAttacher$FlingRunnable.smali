.class Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$FlingRunnable;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mCurrentX:I

.field private mCurrentY:I

.field private final mScroller:Lcom/yftech/car/widget/media/photo/photoview/scrollerproxy/ScrollerProxy;

.field final synthetic this$0:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;


# direct methods
.method public constructor <init>(Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;Landroid/content/Context;)V
    .locals 0

    .line 1118
    iput-object p1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$FlingRunnable;->this$0:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1119
    invoke-static {p2}, Lcom/yftech/car/widget/media/photo/photoview/scrollerproxy/ScrollerProxy;->getScroller(Landroid/content/Context;)Lcom/yftech/car/widget/media/photo/photoview/scrollerproxy/ScrollerProxy;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$FlingRunnable;->mScroller:Lcom/yftech/car/widget/media/photo/photoview/scrollerproxy/ScrollerProxy;

    return-void
.end method


# virtual methods
.method public cancelFling()V
    .locals 3

    .line 1123
    invoke-static {}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1124
    invoke-static {}, Lcom/yftech/car/widget/media/photo/photoview/log/LogManager;->getLogger()Lcom/yftech/car/widget/media/photo/photoview/log/Logger;

    move-result-object v0

    const-string v1, "PhotoViewAttacher"

    const-string v2, "Cancel Fling"

    invoke-interface {v0, v1, v2}, Lcom/yftech/car/widget/media/photo/photoview/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$FlingRunnable;->mScroller:Lcom/yftech/car/widget/media/photo/photoview/scrollerproxy/ScrollerProxy;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/photo/photoview/scrollerproxy/ScrollerProxy;->forceFinished(Z)V

    return-void
.end method

.method public fling(IIII)V
    .locals 14

    move-object v0, p0

    .line 1131
    iget-object v1, v0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$FlingRunnable;->this$0:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 1136
    :cond_0
    iget v2, v1, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    move v2, p1

    int-to-float v2, v2

    .line 1139
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpg-float v3, v2, v3

    const/4 v5, 0x0

    if-gez v3, :cond_1

    .line 1141
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    move v9, v2

    move v8, v5

    goto :goto_0

    :cond_1
    move v8, v4

    move v9, v8

    .line 1146
    :goto_0
    iget v2, v1, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move/from16 v3, p2

    int-to-float v3, v3

    .line 1147
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v6

    cmpg-float v6, v3, v6

    if-gez v6, :cond_2

    .line 1149
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    move v11, v1

    move v10, v5

    goto :goto_1

    :cond_2
    move v10, v2

    move v11, v10

    .line 1154
    :goto_1
    iput v4, v0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$FlingRunnable;->mCurrentX:I

    .line 1155
    iput v2, v0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$FlingRunnable;->mCurrentY:I

    .line 1157
    invoke-static {}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->access$400()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1158
    invoke-static {}, Lcom/yftech/car/widget/media/photo/photoview/log/LogManager;->getLogger()Lcom/yftech/car/widget/media/photo/photoview/log/Logger;

    move-result-object v1

    const-string v3, "PhotoViewAttacher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fling. StartX:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " StartY:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " MaxX:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " MaxY:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Lcom/yftech/car/widget/media/photo/photoview/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-ne v4, v9, :cond_4

    if-eq v2, v11, :cond_5

    .line 1166
    :cond_4
    iget-object v3, v0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$FlingRunnable;->mScroller:Lcom/yftech/car/widget/media/photo/photoview/scrollerproxy/ScrollerProxy;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v5, v2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v3 .. v13}, Lcom/yftech/car/widget/media/photo/photoview/scrollerproxy/ScrollerProxy;->fling(IIIIIIIIII)V

    :cond_5
    return-void
.end method

.method public run()V
    .locals 7

    .line 1173
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$FlingRunnable;->mScroller:Lcom/yftech/car/widget/media/photo/photoview/scrollerproxy/ScrollerProxy;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/photo/photoview/scrollerproxy/ScrollerProxy;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1177
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$FlingRunnable;->this$0:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1178
    iget-object v1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$FlingRunnable;->mScroller:Lcom/yftech/car/widget/media/photo/photoview/scrollerproxy/ScrollerProxy;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/photo/photoview/scrollerproxy/ScrollerProxy;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1180
    iget-object v1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$FlingRunnable;->mScroller:Lcom/yftech/car/widget/media/photo/photoview/scrollerproxy/ScrollerProxy;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/photo/photoview/scrollerproxy/ScrollerProxy;->getCurrX()I

    move-result v1

    .line 1181
    iget-object v2, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$FlingRunnable;->mScroller:Lcom/yftech/car/widget/media/photo/photoview/scrollerproxy/ScrollerProxy;

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/photo/photoview/scrollerproxy/ScrollerProxy;->getCurrY()I

    move-result v2

    .line 1183
    invoke-static {}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->access$400()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1184
    invoke-static {}, Lcom/yftech/car/widget/media/photo/photoview/log/LogManager;->getLogger()Lcom/yftech/car/widget/media/photo/photoview/log/Logger;

    move-result-object v3

    const-string v4, "PhotoViewAttacher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fling run(). CurrentX:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$FlingRunnable;->mCurrentX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " CurrentY:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$FlingRunnable;->mCurrentY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " NewX:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " NewY:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/yftech/car/widget/media/photo/photoview/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    :cond_1
    iget-object v3, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$FlingRunnable;->this$0:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-static {v3}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->access$200(Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;

    move-result-object v3

    iget v4, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$FlingRunnable;->mCurrentX:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    iget v5, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$FlingRunnable;->mCurrentY:I

    sub-int/2addr v5, v2

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1192
    iget-object v3, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$FlingRunnable;->this$0:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    iget-object v4, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$FlingRunnable;->this$0:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-virtual {v4}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->access$500(Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;Landroid/graphics/Matrix;)V

    .line 1194
    iput v1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$FlingRunnable;->mCurrentX:I

    .line 1195
    iput v2, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$FlingRunnable;->mCurrentY:I

    .line 1198
    invoke-static {v0, p0}, Lcom/yftech/car/widget/media/photo/photoview/Compat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
