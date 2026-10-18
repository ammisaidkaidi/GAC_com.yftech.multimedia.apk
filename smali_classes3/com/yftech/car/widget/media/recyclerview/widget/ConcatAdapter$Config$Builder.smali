.class public final Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config$Builder;
.super Ljava/lang/Object;
.source "ConcatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mIsolateViewTypes:Z

.field private mStableIdMode:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config$StableIdMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    sget-object v0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config;->DEFAULT:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config;->isolateViewTypes:Z

    iput-boolean v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config$Builder;->mIsolateViewTypes:Z

    .line 411
    sget-object v0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config;->DEFAULT:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config;

    iget-object v0, v0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config;->stableIdMode:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    iput-object v0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config$Builder;->mStableIdMode:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    return-void
.end method


# virtual methods
.method public build()Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 453
    new-instance v0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config;

    iget-boolean v1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config$Builder;->mIsolateViewTypes:Z

    iget-object p0, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config$Builder;->mStableIdMode:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    invoke-direct {v0, v1, p0}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config;-><init>(ZLcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config$StableIdMode;)V

    return-object v0
.end method

.method public setIsolateViewTypes(Z)Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 427
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config$Builder;->mIsolateViewTypes:Z

    return-object p0
.end method

.method public setStableIdMode(Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config$StableIdMode;)Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config$Builder;
    .locals 0
    .param p1    # Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config$StableIdMode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 444
    iput-object p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config$Builder;->mStableIdMode:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    return-object p0
.end method
