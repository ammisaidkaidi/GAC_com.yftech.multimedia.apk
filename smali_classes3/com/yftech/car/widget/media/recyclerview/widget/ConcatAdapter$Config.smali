.class public final Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config;
.super Ljava/lang/Object;
.source "ConcatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config$Builder;,
        Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config$StableIdMode;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field public final isolateViewTypes:Z

.field public final stableIdMode:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config$StableIdMode;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 361
    new-instance v0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config;

    sget-object v1, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config$StableIdMode;->NO_STABLE_IDS:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config;-><init>(ZLcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config$StableIdMode;)V

    sput-object v0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config;->DEFAULT:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config;

    return-void
.end method

.method constructor <init>(ZLcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config$StableIdMode;)V
    .locals 0
    .param p2    # Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config$StableIdMode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config;->isolateViewTypes:Z

    .line 365
    iput-object p2, p0, Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config;->stableIdMode:Lcom/yftech/car/widget/media/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    return-void
.end method
