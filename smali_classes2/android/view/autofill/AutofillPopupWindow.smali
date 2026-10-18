.class public Landroid/view/autofill/AutofillPopupWindow;
.super Landroid/widget/PopupWindow;
.source "AutofillPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AutofillPopupWindow"


# instance fields
.field private mFullScreen:Z

.field private final mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mWindowPresenter:Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;


# direct methods
.method public constructor <init>(Landroid/view/autofill/IAutofillWindowPresenter;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 52
    new-instance v0, Landroid/view/autofill/AutofillPopupWindow$1;

    invoke-direct {v0, p0}, Landroid/view/autofill/AutofillPopupWindow$1;-><init>(Landroid/view/autofill/AutofillPopupWindow;)V

    iput-object v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 81
    new-instance v0, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;

    invoke-direct {v0, p0, p1}, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;-><init>(Landroid/view/autofill/AutofillPopupWindow;Landroid/view/autofill/IAutofillWindowPresenter;)V

    iput-object v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mWindowPresenter:Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;

    const/4 p1, 0x0

    .line 83
    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillPopupWindow;->setTouchModal(Z)V

    const/4 p1, 0x1

    .line 84
    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillPopupWindow;->setOutsideTouchable(Z)V

    const/4 v0, 0x2

    .line 85
    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->setInputMethodMode(I)V

    .line 86
    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillPopupWindow;->setFocusable(Z)V

    return-void
.end method

.method static synthetic lambda$update$0([ILandroid/view/View;IIII)V
    .locals 1

    const/4 p1, 0x0

    .line 211
    aget v0, p0, p1

    sub-int/2addr p2, p4

    sub-int/2addr v0, p2

    aput v0, p0, p1

    const/4 p1, 0x1

    .line 212
    aget p2, p0, p1

    sub-int/2addr p3, p5

    sub-int/2addr p2, p3

    aput p2, p0, p1

    return-void
.end method


# virtual methods
.method protected attachToAnchor(Landroid/view/View;III)V
    .locals 0

    .line 288
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->attachToAnchor(Landroid/view/View;III)V

    .line 289
    iget-object p0, p0, Landroid/view/autofill/AutofillPopupWindow;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method protected detachFromAnchor()V
    .locals 2

    .line 294
    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getAnchor()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v1, p0, Landroid/view/autofill/AutofillPopupWindow;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 298
    :cond_0
    invoke-super {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 303
    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isTransitioningToDismiss()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 307
    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->setShowing(Z)V

    const/4 v0, 0x1

    .line 308
    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->setTransitioningToDismiss(Z)V

    .line 310
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mWindowPresenter:Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getTransitionEpicenter()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;->hide(Landroid/graphics/Rect;)V

    .line 311
    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->detachFromAnchor()V

    .line 312
    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getOnDismissListener()Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 313
    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getOnDismissListener()Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object p0

    invoke-interface {p0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method protected findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .locals 1

    .line 249
    iget-boolean v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mFullScreen:Z

    if-eqz v0, :cond_0

    .line 251
    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 252
    iput p4, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 253
    iput p5, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 254
    iput p6, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 255
    iput p7, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 p0, 0x0

    return p0

    .line 258
    :cond_0
    invoke-super/range {p0 .. p8}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result p0

    return p0
.end method

.method public getAnimationStyle()I
    .locals 1

    .line 319
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You can\'t call this!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 324
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You can\'t call this!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 329
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You can\'t call this!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 101
    iget-object p0, p0, Landroid/view/autofill/AutofillPopupWindow;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method public getElevation()F
    .locals 1

    .line 334
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You can\'t call this!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getEnterTransition()Landroid/transition/Transition;
    .locals 1

    .line 339
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You can\'t call this!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getExitTransition()Landroid/transition/Transition;
    .locals 1

    .line 344
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You can\'t call this!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected hasContentView()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected hasDecorView()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 349
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You can\'t call this!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 355
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You can\'t call this!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setElevation(F)V
    .locals 0

    .line 361
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You can\'t call this!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .locals 0

    .line 366
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You can\'t call this!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .locals 0

    .line 371
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You can\'t call this!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 376
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You can\'t call this!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 10

    .line 264
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "AutofillPopupWindow"

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showAsDropDown(): anchor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", xoff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", yoff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isShowing(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 272
    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->setShowing(Z)V

    .line 273
    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->setDropDown(Z)V

    .line 274
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/autofill/AutofillPopupWindow;->attachToAnchor(Landroid/view/View;III)V

    .line 276
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 275
    invoke-virtual {p0, v0}, Landroid/view/autofill/AutofillPopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 277
    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 278
    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getAllowScrollingAnchorParent()Z

    move-result v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move v4, p2

    move v5, p3

    move v8, p4

    .line 277
    invoke-virtual/range {v1 .. v9}, Landroid/view/autofill/AutofillPopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result p2

    .line 279
    invoke-virtual {p0, p2}, Landroid/view/autofill/AutofillPopupWindow;->updateAboveAnchor(Z)V

    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    .line 281
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 282
    iget-object p2, p0, Landroid/view/autofill/AutofillPopupWindow;->mWindowPresenter:Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getTransitionEpicenter()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isLayoutInsetDecor()Z

    move-result p0

    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    .line 282
    invoke-virtual {p2, v0, p3, p0, p1}, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;->show(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)V

    return-void
.end method

.method public update(Landroid/view/View;IIIILandroid/graphics/Rect;)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move/from16 v5, p5

    move-object/from16 v2, p6

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v6, 0x0

    move/from16 v7, p4

    if-ne v7, v4, :cond_0

    move v8, v3

    goto :goto_0

    :cond_0
    move v8, v6

    .line 109
    :goto_0
    iput-boolean v8, v0, Landroid/view/autofill/AutofillPopupWindow;->mFullScreen:Z

    .line 117
    iget-boolean v8, v0, Landroid/view/autofill/AutofillPopupWindow;->mFullScreen:Z

    if-eqz v8, :cond_1

    const/16 v8, 0x7d8

    goto :goto_1

    :cond_1
    const/16 v8, 0x3ed

    :goto_1
    invoke-virtual {p0, v8}, Landroid/view/autofill/AutofillPopupWindow;->setWindowLayoutType(I)V

    .line 124
    iget-boolean v8, v0, Landroid/view/autofill/AutofillPopupWindow;->mFullScreen:Z

    if-eqz v8, :cond_3

    .line 130
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 132
    iget v3, v2, Landroid/graphics/Point;->x:I

    if-eq v5, v4, :cond_2

    .line 134
    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v5

    goto :goto_2

    :cond_2
    move v2, v6

    :goto_2
    move v7, v3

    move v3, v2

    move v2, v6

    goto :goto_3

    :cond_3
    if-eqz v2, :cond_4

    const/4 v8, 0x2

    .line 138
    new-array v8, v8, [I

    iget v9, v2, Landroid/graphics/Rect;->left:I

    aput v9, v8, v6

    iget v9, v2, Landroid/graphics/Rect;->top:I

    aput v9, v8, v3

    .line 139
    new-instance v9, Landroid/view/autofill/AutofillPopupWindow$2;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, p0, v10, v8, p1}, Landroid/view/autofill/AutofillPopupWindow$2;-><init>(Landroid/view/autofill/AutofillPopupWindow;Landroid/content/Context;[ILandroid/view/View;)V

    .line 204
    iget v10, v2, Landroid/graphics/Rect;->left:I

    iget v11, v2, Landroid/graphics/Rect;->top:I

    iget v12, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v10, v11, v12, v2}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 207
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/view/View;->setScrollX(I)V

    .line 208
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/view/View;->setScrollY(I)V

    .line 210
    new-instance v2, Landroid/view/autofill/-$$Lambda$AutofillPopupWindow$DnLs9aVkSgQ89oSTe4P9EweBBks;

    invoke-direct {v2, v8}, Landroid/view/autofill/-$$Lambda$AutofillPopupWindow$DnLs9aVkSgQ89oSTe4P9EweBBks;-><init>([I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 214
    invoke-virtual {v9, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    move v2, p2

    move/from16 v3, p3

    move-object v1, v9

    goto :goto_3

    :cond_4
    move v2, p2

    move/from16 v3, p3

    .line 219
    :goto_3
    iget-boolean v8, v0, Landroid/view/autofill/AutofillPopupWindow;->mFullScreen:Z

    if-nez v8, :cond_5

    .line 221
    invoke-virtual {p0, v4}, Landroid/view/autofill/AutofillPopupWindow;->setAnimationStyle(I)V

    goto :goto_4

    :cond_5
    if-ne v5, v4, :cond_6

    .line 224
    invoke-virtual {p0, v6}, Landroid/view/autofill/AutofillPopupWindow;->setAnimationStyle(I)V

    goto :goto_4

    :cond_6
    const v4, 0x103030b

    .line 227
    invoke-virtual {p0, v4}, Landroid/view/autofill/AutofillPopupWindow;->setAnimationStyle(I)V

    .line 229
    :goto_4
    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_7

    .line 230
    invoke-virtual {p0, v7}, Landroid/view/autofill/AutofillPopupWindow;->setWidth(I)V

    .line 231
    invoke-virtual {p0, v5}, Landroid/view/autofill/AutofillPopupWindow;->setHeight(I)V

    .line 232
    invoke-virtual {p0, v1, v2, v3}, Landroid/view/autofill/AutofillPopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_5

    :cond_7
    move-object v0, p0

    move v4, v7

    move/from16 v5, p5

    .line 234
    invoke-virtual/range {v0 .. v5}, Landroid/view/autofill/AutofillPopupWindow;->update(Landroid/view/View;IIII)V

    :goto_5
    return-void
.end method

.method protected update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 240
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 242
    :goto_0
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow;->mWindowPresenter:Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->getTransitionEpicenter()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/autofill/AutofillPopupWindow;->isLayoutInsetDecor()Z

    move-result p0

    invoke-virtual {v0, p2, v1, p0, p1}, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;->show(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)V

    return-void
.end method
