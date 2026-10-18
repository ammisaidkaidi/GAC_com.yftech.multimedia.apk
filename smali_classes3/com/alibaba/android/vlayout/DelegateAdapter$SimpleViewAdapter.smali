.class Lcom/alibaba/android/vlayout/DelegateAdapter$SimpleViewAdapter;
.super Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;
.source "DelegateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/vlayout/DelegateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimpleViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mLayoutHelper:Lcom/alibaba/android/vlayout/LayoutHelper;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 629
    new-instance v0, Lcom/alibaba/android/vlayout/layout/SingleLayoutHelper;

    invoke-direct {v0}, Lcom/alibaba/android/vlayout/layout/SingleLayoutHelper;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/vlayout/DelegateAdapter$SimpleViewAdapter;-><init>(Landroid/view/View;Lcom/alibaba/android/vlayout/LayoutHelper;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/alibaba/android/vlayout/LayoutHelper;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/alibaba/android/vlayout/LayoutHelper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 623
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;-><init>()V

    .line 624
    iput-object p1, p0, Lcom/alibaba/android/vlayout/DelegateAdapter$SimpleViewAdapter;->mView:Landroid/view/View;

    .line 625
    iput-object p2, p0, Lcom/alibaba/android/vlayout/DelegateAdapter$SimpleViewAdapter;->mLayoutHelper:Lcom/alibaba/android/vlayout/LayoutHelper;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method

.method public onCreateLayoutHelper()Lcom/alibaba/android/vlayout/LayoutHelper;
    .locals 0

    .line 634
    new-instance p0, Lcom/alibaba/android/vlayout/layout/SingleLayoutHelper;

    invoke-direct {p0}, Lcom/alibaba/android/vlayout/layout/SingleLayoutHelper;-><init>()V

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 639
    new-instance p1, Lcom/alibaba/android/vlayout/DelegateAdapter$SimpleViewHolder;

    iget-object p0, p0, Lcom/alibaba/android/vlayout/DelegateAdapter$SimpleViewAdapter;->mView:Landroid/view/View;

    invoke-direct {p1, p0}, Lcom/alibaba/android/vlayout/DelegateAdapter$SimpleViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
