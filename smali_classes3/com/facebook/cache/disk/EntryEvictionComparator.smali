.class public interface abstract Lcom/facebook/cache/disk/EntryEvictionComparator;
.super Ljava/lang/Object;
.source "EntryEvictionComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/facebook/cache/disk/DiskStorage$Entry;",
        ">;"
    }
.end annotation
