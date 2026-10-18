.class public interface abstract Lcom/facebook/common/disk/DiskTrimmableRegistry;
.super Ljava/lang/Object;
.source "DiskTrimmableRegistry.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# virtual methods
.method public abstract registerDiskTrimmable(Lcom/facebook/common/disk/DiskTrimmable;)V
.end method

.method public abstract unregisterDiskTrimmable(Lcom/facebook/common/disk/DiskTrimmable;)V
.end method
