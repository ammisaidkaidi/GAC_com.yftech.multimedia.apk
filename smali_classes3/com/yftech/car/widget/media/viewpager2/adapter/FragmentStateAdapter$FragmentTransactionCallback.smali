.class public abstract Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback;
.super Ljava/lang/Object;
.source "FragmentStateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FragmentTransactionCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener;
    }
.end annotation


# static fields
.field private static final NO_OP:Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 855
    new-instance v0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$1;

    invoke-direct {v0}, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$1;-><init>()V

    sput-object v0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback;->NO_OP:Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentMaxLifecyclePreUpdated(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener;
    .locals 0
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Lifecycle$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 895
    sget-object p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback;->NO_OP:Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener;

    return-object p0
.end method

.method public onFragmentPreAdded(Landroidx/fragment/app/Fragment;)Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener;
    .locals 0
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 870
    sget-object p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback;->NO_OP:Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener;

    return-object p0
.end method

.method public onFragmentPreRemoved(Landroidx/fragment/app/Fragment;)Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener;
    .locals 0
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 881
    sget-object p0, Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback;->NO_OP:Lcom/yftech/car/widget/media/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener;

    return-object p0
.end method
