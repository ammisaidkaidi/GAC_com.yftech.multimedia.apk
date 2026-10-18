.class public Lcom/facebook/cache/disk/DefaultEntryEvictionComparatorSupplier;
.super Ljava/lang/Object;
.source "DefaultEntryEvictionComparatorSupplier.java"

# interfaces
.implements Lcom/facebook/cache/disk/EntryEvictionComparatorSupplier;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/facebook/cache/disk/EntryEvictionComparator;
    .locals 1

    .line 18
    new-instance v0, Lcom/facebook/cache/disk/DefaultEntryEvictionComparatorSupplier$1;

    invoke-direct {v0, p0}, Lcom/facebook/cache/disk/DefaultEntryEvictionComparatorSupplier$1;-><init>(Lcom/facebook/cache/disk/DefaultEntryEvictionComparatorSupplier;)V

    return-object v0
.end method
