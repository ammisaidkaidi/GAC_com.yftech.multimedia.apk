.class public interface abstract Lcom/facebook/callercontext/CallerContextVerifier;
.super Ljava/lang/Object;
.source "CallerContextVerifier.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# virtual methods
.method public abstract verifyCallerContext(Ljava/lang/Object;Z)V
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method
