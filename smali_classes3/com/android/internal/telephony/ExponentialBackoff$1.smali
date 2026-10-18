.class Lcom/android/internal/telephony/ExponentialBackoff$1;
.super Ljava/lang/Object;
.source "ExponentialBackoff.java"

# interfaces
.implements Lcom/android/internal/telephony/ExponentialBackoff$HandlerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ExponentialBackoff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ExponentialBackoff;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ExponentialBackoff;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/android/internal/telephony/ExponentialBackoff$1;->this$0:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/internal/telephony/ExponentialBackoff$1;->this$0:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-static {p0}, Lcom/android/internal/telephony/ExponentialBackoff;->access$000(Lcom/android/internal/telephony/ExponentialBackoff;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p0

    return p0
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/internal/telephony/ExponentialBackoff$1;->this$0:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-static {p0}, Lcom/android/internal/telephony/ExponentialBackoff;->access$000(Lcom/android/internal/telephony/ExponentialBackoff;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
