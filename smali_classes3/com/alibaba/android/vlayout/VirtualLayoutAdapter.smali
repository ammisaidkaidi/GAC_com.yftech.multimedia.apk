.class public abstract Lcom/alibaba/android/vlayout/VirtualLayoutAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "VirtualLayoutAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field protected mLayoutManager:Lcom/alibaba/android/vlayout/VirtualLayoutManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/android/vlayout/VirtualLayoutManager;)V
    .locals 0
    .param p1    # Lcom/alibaba/android/vlayout/VirtualLayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 40
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/alibaba/android/vlayout/VirtualLayoutAdapter;->mLayoutManager:Lcom/alibaba/android/vlayout/VirtualLayoutManager;

    return-void
.end method


# virtual methods
.method public getLayoutHelpers()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/android/vlayout/LayoutHelper;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object p0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutAdapter;->mLayoutManager:Lcom/alibaba/android/vlayout/VirtualLayoutManager;

    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->getLayoutHelpers()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public setLayoutHelpers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/android/vlayout/LayoutHelper;",
            ">;)V"
        }
    .end annotation

    .line 45
    iget-object p0, p0, Lcom/alibaba/android/vlayout/VirtualLayoutAdapter;->mLayoutManager:Lcom/alibaba/android/vlayout/VirtualLayoutManager;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/VirtualLayoutManager;->setLayoutHelpers(Ljava/util/List;)V

    return-void
.end method
