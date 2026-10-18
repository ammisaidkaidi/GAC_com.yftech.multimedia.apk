.class public Lcom/media/common/util/MyFragmentManger;
.super Ljava/lang/Object;
.source "MyFragmentManger.java"


# static fields
.field private static volatile instance:Lcom/media/common/util/MyFragmentManger;


# instance fields
.field private currentFragment:Landroidx/fragment/app/Fragment;

.field private fragmentManager:Landroidx/fragment/app/FragmentManager;

.field private fragments:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Stack<",
            "Landroidx/fragment/app/Fragment;",
            ">;>;"
        }
    .end annotation
.end field

.field private photoLayoutId:I

.field private videoPlayerLayoutId:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/media/common/util/MyFragmentManger;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 19
    iput-object v0, p0, Lcom/media/common/util/MyFragmentManger;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 37
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/media/common/util/MyFragmentManger;->fragments:Landroid/util/SparseArray;

    return-void
.end method

.method public static getInstance()Lcom/media/common/util/MyFragmentManger;
    .locals 2

    .line 26
    sget-object v0, Lcom/media/common/util/MyFragmentManger;->instance:Lcom/media/common/util/MyFragmentManger;

    if-nez v0, :cond_1

    .line 27
    const-class v0, Lcom/media/common/util/MyFragmentManger;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcom/media/common/util/MyFragmentManger;->instance:Lcom/media/common/util/MyFragmentManger;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Lcom/media/common/util/MyFragmentManger;

    invoke-direct {v1}, Lcom/media/common/util/MyFragmentManger;-><init>()V

    sput-object v1, Lcom/media/common/util/MyFragmentManger;->instance:Lcom/media/common/util/MyFragmentManger;

    .line 31
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 33
    :cond_1
    :goto_0
    sget-object v0, Lcom/media/common/util/MyFragmentManger;->instance:Lcom/media/common/util/MyFragmentManger;

    return-object v0
.end method


# virtual methods
.method public getAllFragments()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/util/Stack<",
            "Landroidx/fragment/app/Fragment;",
            ">;>;"
        }
    .end annotation

    .line 117
    iget-object p0, p0, Lcom/media/common/util/MyFragmentManger;->fragments:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getFragmentStack(I)Ljava/util/Stack;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Stack<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFragmentStack:index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fragments:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/media/common/util/MyFragmentManger;->fragments:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/media/common/util/MyFragmentManger;->fragments:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 102
    iget-object p0, p0, Lcom/media/common/util/MyFragmentManger;->fragments:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Stack;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPhotoLayoutId()I
    .locals 0

    .line 129
    iget p0, p0, Lcom/media/common/util/MyFragmentManger;->photoLayoutId:I

    return p0
.end method

.method public getVideoPlayerLayoutId()I
    .locals 0

    .line 121
    iget p0, p0, Lcom/media/common/util/MyFragmentManger;->videoPlayerLayoutId:I

    return p0
.end method

.method public init(Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    const-string v0, "init FragmentManager"

    .line 42
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/media/common/util/MyFragmentManger;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lcom/media/common/util/MyFragmentManger;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 46
    iget-object p1, p0, Lcom/media/common/util/MyFragmentManger;->fragments:Landroid/util/SparseArray;

    if-eqz p1, :cond_0

    .line 47
    iget-object p0, p0, Lcom/media/common/util/MyFragmentManger;->fragments:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    :cond_0
    return-void
.end method

.method public declared-synchronized pushFragment(ILandroidx/fragment/app/Fragment;)V
    .locals 2

    monitor-enter p0

    .line 85
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pushFragment:index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/media/common/util/MyFragmentManger;->fragments:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/media/common/util/MyFragmentManger;->fragments:Landroid/util/SparseArray;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/media/common/util/MyFragmentManger;->fragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    if-nez v0, :cond_1

    .line 91
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 92
    invoke-virtual {v0, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object p2, p0, Lcom/media/common/util/MyFragmentManger;->fragments:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 84
    monitor-exit p0

    throw p1
.end method

.method public release()V
    .locals 4

    const-string/jumbo v0, "release MyFragmentManger"

    .line 52
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/media/common/util/MyFragmentManger;->fragments:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 57
    :goto_0
    iget-object v1, p0, Lcom/media/common/util/MyFragmentManger;->fragments:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 59
    iget-object v1, p0, Lcom/media/common/util/MyFragmentManger;->fragments:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 62
    invoke-static {}, Lcom/media/common/util/MyFragmentManger;->getInstance()Lcom/media/common/util/MyFragmentManger;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/media/common/util/MyFragmentManger;->getFragmentStack(I)Ljava/util/Stack;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 66
    iget-object v2, p0, Lcom/media/common/util/MyFragmentManger;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 67
    :goto_1
    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 69
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 70
    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_1

    .line 73
    :cond_1
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/media/common/util/MyFragmentManger;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 78
    iput-object v0, p0, Lcom/media/common/util/MyFragmentManger;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 79
    iget-object v1, p0, Lcom/media/common/util/MyFragmentManger;->fragments:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 80
    iput-object v0, p0, Lcom/media/common/util/MyFragmentManger;->fragments:Landroid/util/SparseArray;

    return-void
.end method

.method public removeFragmentStack(I)V
    .locals 2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeFragmentStack:index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/media/common/util/MyFragmentManger;->fragments:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 111
    iget-object p0, p0, Lcom/media/common/util/MyFragmentManger;->fragments:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-void
.end method

.method public setPhotoLayoutId(I)V
    .locals 0

    .line 133
    iput p1, p0, Lcom/media/common/util/MyFragmentManger;->photoLayoutId:I

    return-void
.end method

.method public setVideoPlayerLayoutId(I)V
    .locals 0

    .line 125
    iput p1, p0, Lcom/media/common/util/MyFragmentManger;->videoPlayerLayoutId:I

    return-void
.end method

.method public declared-synchronized switchContent(Landroidx/fragment/app/Fragment;I)V
    .locals 2

    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/media/common/util/MyFragmentManger;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_4

    .line 144
    iget-object v0, p0, Lcom/media/common/util/MyFragmentManger;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/media/common/util/MyFragmentManger;->currentFragment:Landroidx/fragment/app/Fragment;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    goto :goto_0

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/media/common/util/MyFragmentManger;->currentFragment:Landroidx/fragment/app/Fragment;

    if-nez v1, :cond_1

    .line 150
    invoke-virtual {v0, p2, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    goto :goto_0

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/media/common/util/MyFragmentManger;->currentFragment:Landroidx/fragment/app/Fragment;

    if-eq v1, p1, :cond_3

    .line 155
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_2

    .line 157
    iget-object v1, p0, Lcom/media/common/util/MyFragmentManger;->currentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    goto :goto_0

    .line 159
    :cond_2
    iget-object p2, p0, Lcom/media/common/util/MyFragmentManger;->currentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p2}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 162
    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/media/common/util/MyFragmentManger;->currentFragment:Landroidx/fragment/app/Fragment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    return-void

    .line 142
    :cond_4
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fragmentManager is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 140
    monitor-exit p0

    throw p1
.end method
