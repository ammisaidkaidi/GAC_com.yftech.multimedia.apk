.class Lcom/facebook/imagepipeline/core/CloseableReferenceFactory$1;
.super Ljava/lang/Object;
.source "CloseableReferenceFactory.java"

# interfaces
.implements Lcom/facebook/common/references/CloseableReference$LeakHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/core/CloseableReferenceFactory;-><init>(Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/imagepipeline/core/CloseableReferenceFactory;

.field final synthetic val$closeableReferenceLeakTracker:Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/core/CloseableReferenceFactory;Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/CloseableReferenceFactory$1;->this$0:Lcom/facebook/imagepipeline/core/CloseableReferenceFactory;

    iput-object p2, p0, Lcom/facebook/imagepipeline/core/CloseableReferenceFactory$1;->val$closeableReferenceLeakTracker:Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reportLeak(Lcom/facebook/common/references/SharedReference;Ljava/lang/Throwable;)V
    .locals 5
    .param p2    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/SharedReference<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/CloseableReferenceFactory$1;->val$closeableReferenceLeakTracker:Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;->trackCloseableReferenceLeak(Lcom/facebook/common/references/SharedReference;Ljava/lang/Throwable;)V

    .line 34
    invoke-virtual {p1}, Lcom/facebook/common/references/SharedReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "<value is null>"

    :goto_0
    const-string v1, "Fresco"

    const-string v2, "Finalized without closing: %x %x (type = %s).\nStack:\n%s"

    const/4 v3, 0x4

    .line 36
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 39
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v4

    const/4 p0, 0x1

    .line 40
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, p0

    const/4 p0, 0x2

    aput-object v0, v3, p0

    const/4 p0, 0x3

    .line 42
    invoke-static {p2}, Lcom/facebook/imagepipeline/core/CloseableReferenceFactory;->access$000(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, p0

    .line 36
    invoke-static {v1, v2, v3}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public requiresStacktrace()Z
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/CloseableReferenceFactory$1;->val$closeableReferenceLeakTracker:Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;

    invoke-interface {p0}, Lcom/facebook/imagepipeline/debug/CloseableReferenceLeakTracker;->isSet()Z

    move-result p0

    return p0
.end method
