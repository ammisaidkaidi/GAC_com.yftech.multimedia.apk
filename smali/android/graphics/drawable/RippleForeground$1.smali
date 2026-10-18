.class Landroid/graphics/drawable/RippleForeground$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RippleForeground.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/RippleForeground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/graphics/drawable/RippleForeground;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/RippleForeground;)V
    .locals 0

    .line 394
    iput-object p1, p0, Landroid/graphics/drawable/RippleForeground$1;->this$0:Landroid/graphics/drawable/RippleForeground;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 397
    iget-object p1, p0, Landroid/graphics/drawable/RippleForeground$1;->this$0:Landroid/graphics/drawable/RippleForeground;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/graphics/drawable/RippleForeground;->access$002(Landroid/graphics/drawable/RippleForeground;Z)Z

    .line 398
    iget-object p1, p0, Landroid/graphics/drawable/RippleForeground$1;->this$0:Landroid/graphics/drawable/RippleForeground;

    invoke-static {p1}, Landroid/graphics/drawable/RippleForeground;->access$100(Landroid/graphics/drawable/RippleForeground;)V

    .line 399
    iget-object p1, p0, Landroid/graphics/drawable/RippleForeground$1;->this$0:Landroid/graphics/drawable/RippleForeground;

    invoke-static {p1}, Landroid/graphics/drawable/RippleForeground;->access$200(Landroid/graphics/drawable/RippleForeground;)V

    .line 401
    iget-object p1, p0, Landroid/graphics/drawable/RippleForeground$1;->this$0:Landroid/graphics/drawable/RippleForeground;

    invoke-static {p1}, Landroid/graphics/drawable/RippleForeground;->access$300(Landroid/graphics/drawable/RippleForeground;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 402
    iget-object p0, p0, Landroid/graphics/drawable/RippleForeground$1;->this$0:Landroid/graphics/drawable/RippleForeground;

    invoke-static {p0}, Landroid/graphics/drawable/RippleForeground;->access$400(Landroid/graphics/drawable/RippleForeground;)V

    :cond_0
    return-void
.end method
