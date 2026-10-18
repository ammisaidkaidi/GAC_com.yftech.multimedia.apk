.class public Lcom/yftech/car/widget/media/recyclerview/widget/StableIdStorage$NoStableIdStorage;
.super Ljava/lang/Object;
.source "StableIdStorage.java"

# interfaces
.implements Lcom/yftech/car/widget/media/recyclerview/widget/StableIdStorage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/recyclerview/widget/StableIdStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoStableIdStorage"
.end annotation


# instance fields
.field private final mNoIdLookup:Lcom/yftech/car/widget/media/recyclerview/widget/StableIdStorage$StableIdLookup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/yftech/car/widget/media/recyclerview/widget/StableIdStorage$NoStableIdStorage$1;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/StableIdStorage$NoStableIdStorage$1;-><init>(Lcom/yftech/car/widget/media/recyclerview/widget/StableIdStorage$NoStableIdStorage;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/StableIdStorage$NoStableIdStorage;->mNoIdLookup:Lcom/yftech/car/widget/media/recyclerview/widget/StableIdStorage$StableIdLookup;

    return-void
.end method


# virtual methods
.method public createStableIdLookup()Lcom/yftech/car/widget/media/recyclerview/widget/StableIdStorage$StableIdLookup;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 52
    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/StableIdStorage$NoStableIdStorage;->mNoIdLookup:Lcom/yftech/car/widget/media/recyclerview/widget/StableIdStorage$StableIdLookup;

    return-object p0
.end method
