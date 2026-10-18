.class public interface abstract Lcom/facebook/common/lifecycle/AttachDetachListener;
.super Ljava/lang/Object;
.source "AttachDetachListener.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# virtual methods
.method public abstract onAttachToView(Landroid/view/View;)V
.end method

.method public abstract onDetachFromView(Landroid/view/View;)V
.end method
