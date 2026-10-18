.class Landroid/hardware/fingerprint/FingerprintManager$2;
.super Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;)V
    .locals 0

    .line 1115
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onAcquired$0(Landroid/hardware/fingerprint/FingerprintManager$2;JII)V
    .locals 0

    .line 1127
    iget-object p0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {p0, p1, p2, p3, p4}, Landroid/hardware/fingerprint/FingerprintManager;->access$500(Landroid/hardware/fingerprint/FingerprintManager;JII)V

    return-void
.end method

.method public static synthetic lambda$onAuthenticationFailed$2(Landroid/hardware/fingerprint/FingerprintManager$2;)V
    .locals 0

    .line 1150
    iget-object p0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {p0}, Landroid/hardware/fingerprint/FingerprintManager;->access$700(Landroid/hardware/fingerprint/FingerprintManager;)V

    return-void
.end method

.method public static synthetic lambda$onAuthenticationSucceeded$1(Landroid/hardware/fingerprint/FingerprintManager$2;Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 0

    .line 1139
    iget-object p0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->access$600(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/Fingerprint;I)V

    return-void
.end method

.method public static synthetic lambda$onError$3(Landroid/hardware/fingerprint/FingerprintManager$2;JII)V
    .locals 0

    .line 1166
    iget-object p0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {p0, p1, p2, p3, p4}, Landroid/hardware/fingerprint/FingerprintManager;->access$800(Landroid/hardware/fingerprint/FingerprintManager;JII)V

    return-void
.end method

.method public static synthetic lambda$onError$4(Landroid/hardware/fingerprint/FingerprintManager$2;JII)V
    .locals 0

    .line 1174
    iget-object p0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {p0, p1, p2, p3, p4}, Landroid/hardware/fingerprint/FingerprintManager;->access$800(Landroid/hardware/fingerprint/FingerprintManager;JII)V

    return-void
.end method

.method public static synthetic lambda$onError$5(Landroid/hardware/fingerprint/FingerprintManager$2;JII)V
    .locals 8

    .line 1173
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$1400(Landroid/hardware/fingerprint/FingerprintManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v7, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$2$DBgvtkIDrK5T5S0UgEanHtoKmOA;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$2$DBgvtkIDrK5T5S0UgEanHtoKmOA;-><init>(Landroid/hardware/fingerprint/FingerprintManager$2;JII)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onAcquired(JII)V
    .locals 8

    .line 1125
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$1400(Landroid/hardware/fingerprint/FingerprintManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1126
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$1400(Landroid/hardware/fingerprint/FingerprintManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v7, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$2$-CkUh5EAfiFsfsEamQtkeaLZq6M;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$2$-CkUh5EAfiFsfsEamQtkeaLZq6M;-><init>(Landroid/hardware/fingerprint/FingerprintManager$2;JII)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1130
    :cond_0
    iget-object p0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {p0}, Landroid/hardware/fingerprint/FingerprintManager;->access$400(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x65

    .line 1131
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 1130
    invoke-virtual {p0, v0, p3, p4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1131
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public onAuthenticationFailed(J)V
    .locals 0

    .line 1148
    iget-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {p1}, Landroid/hardware/fingerprint/FingerprintManager;->access$1400(Landroid/hardware/fingerprint/FingerprintManager;)Ljava/util/concurrent/Executor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1149
    iget-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {p1}, Landroid/hardware/fingerprint/FingerprintManager;->access$1400(Landroid/hardware/fingerprint/FingerprintManager;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$2$ycpCnXGQKksU_rpxKvBm1XDbloE;

    invoke-direct {p2, p0}, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$2$ycpCnXGQKksU_rpxKvBm1XDbloE;-><init>(Landroid/hardware/fingerprint/FingerprintManager$2;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1153
    :cond_0
    iget-object p0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {p0}, Landroid/hardware/fingerprint/FingerprintManager;->access$400(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x67

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public onAuthenticationSucceeded(JLandroid/hardware/fingerprint/Fingerprint;I)V
    .locals 0

    .line 1137
    iget-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {p1}, Landroid/hardware/fingerprint/FingerprintManager;->access$1400(Landroid/hardware/fingerprint/FingerprintManager;)Ljava/util/concurrent/Executor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1138
    iget-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {p1}, Landroid/hardware/fingerprint/FingerprintManager;->access$1400(Landroid/hardware/fingerprint/FingerprintManager;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$2$O5sigT8DLDwmCzdvD-k13MacOBU;

    invoke-direct {p2, p0, p3, p4}, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$2$O5sigT8DLDwmCzdvD-k13MacOBU;-><init>(Landroid/hardware/fingerprint/FingerprintManager$2;Landroid/hardware/fingerprint/Fingerprint;I)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1142
    :cond_0
    iget-object p0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {p0}, Landroid/hardware/fingerprint/FingerprintManager;->access$400(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x66

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p4, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public onEnrollResult(JIII)V
    .locals 7

    .line 1119
    iget-object p0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {p0}, Landroid/hardware/fingerprint/FingerprintManager;->access$400(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object p0

    new-instance v6, Landroid/hardware/fingerprint/Fingerprint;

    const/4 v1, 0x0

    move-object v0, v6

    move v2, p4

    move v3, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    const/16 p1, 0x64

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p5, p2, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1120
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onEnumerated(JIII)V
    .locals 0

    .line 1192
    iget-object p0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {p0}, Landroid/hardware/fingerprint/FingerprintManager;->access$400(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/16 p2, 0x6a

    invoke-virtual {p0, p2, p3, p4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onError(JII)V
    .locals 8

    .line 1159
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$1400(Landroid/hardware/fingerprint/FingerprintManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v0, 0xa

    if-eq p3, v0, :cond_1

    const/4 v0, 0x5

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 1172
    :cond_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$400(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$2$n67wlbYWr0PNZwBB3xLLO4RgAq4;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$2$n67wlbYWr0PNZwBB3xLLO4RgAq4;-><init>(Landroid/hardware/fingerprint/FingerprintManager$2;JII)V

    const-wide/16 p0, 0x7d0

    invoke-virtual {v0, v7, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 1165
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$1400(Landroid/hardware/fingerprint/FingerprintManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v7, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$2$iiSGvjInjtzVqJ-wXw-4RQIjKDs;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$2$iiSGvjInjtzVqJ-wXw-4RQIjKDs;-><init>(Landroid/hardware/fingerprint/FingerprintManager$2;JII)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1179
    :cond_2
    iget-object p0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {p0}, Landroid/hardware/fingerprint/FingerprintManager;->access$400(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x68

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p3, p4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_1
    return-void
.end method

.method public onRemoved(JIII)V
    .locals 7

    .line 1185
    iget-object p0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {p0}, Landroid/hardware/fingerprint/FingerprintManager;->access$400(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object p0

    new-instance v6, Landroid/hardware/fingerprint/Fingerprint;

    const/4 v1, 0x0

    move-object v0, v6

    move v2, p4

    move v3, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    const/16 p1, 0x69

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p5, p2, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1186
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
