.class public abstract Lcom/yftech/car/widget/media/layout/BaseLayoutChildManager;
.super Ljava/lang/Object;
.source "BaseLayoutChildManager.java"


# static fields
.field public static final MUSIC:I = 0x0

.field public static final PHOTO:I = 0x2

.field public static final VIDEO:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract initView(Landroid/view/ViewGroup;)V
.end method

.method public abstract onWindowFocusChanged(Z)V
.end method

.method public abstract unregister()V
.end method

.method public abstract updateTouchEvent(Z)V
.end method
