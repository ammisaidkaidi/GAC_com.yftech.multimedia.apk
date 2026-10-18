.class public Lcom/yftech/car/widget/media/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage;
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
    name = "IsolatedStableIdStorage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage$WrapperStableIdLookup;
    }
.end annotation


# instance fields
.field mNextStableId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 80
    iput-wide v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage;->mNextStableId:J

    return-void
.end method


# virtual methods
.method public createStableIdLookup()Lcom/yftech/car/widget/media/recyclerview/widget/StableIdStorage$StableIdLookup;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 89
    new-instance v0, Lcom/yftech/car/widget/media/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage$WrapperStableIdLookup;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage$WrapperStableIdLookup;-><init>(Lcom/yftech/car/widget/media/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage;)V

    return-object v0
.end method

.method obtainId()J
    .locals 4

    .line 83
    iget-wide v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage;->mNextStableId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/StableIdStorage$IsolatedStableIdStorage;->mNextStableId:J

    return-wide v0
.end method
