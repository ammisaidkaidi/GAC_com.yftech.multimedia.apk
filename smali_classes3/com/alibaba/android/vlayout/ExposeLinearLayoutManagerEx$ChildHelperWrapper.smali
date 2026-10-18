.class Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;
.super Ljava/lang/Object;
.source "ExposeLinearLayoutManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChildHelperWrapper"
.end annotation


# instance fields
.field private args:[Ljava/lang/Object;

.field private mChildHelperField:Ljava/lang/reflect/Field;

.field private mClearMethod:Ljava/lang/reflect/Method;

.field private mFindHiddenNonRemovedViewMethod:Ljava/lang/reflect/Method;

.field private mFindHiddenNonRemovedViewMethod25:Ljava/lang/reflect/Method;

.field private mHiddenViewField:Ljava/lang/reflect/Field;

.field private mHideMethod:Ljava/lang/reflect/Method;

.field private mInnerBucket:Ljava/lang/Object;

.field private mInnerChildHelper:Ljava/lang/Object;

.field private mInnerHiddenView:Ljava/util/List;

.field private mIsHideMethod:Ljava/lang/reflect/Method;

.field private mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field final synthetic this$0:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;


# direct methods
.method constructor <init>(Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 1928
    iput-object p1, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->this$0:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 1890
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->args:[Ljava/lang/Object;

    .line 1929
    iput-object p2, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 1931
    :try_start_0
    const-class p2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const-string v0, "mChildHelper"

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->mChildHelperField:Ljava/lang/reflect/Field;

    .line 1932
    iget-object p2, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->mChildHelperField:Ljava/lang/reflect/Field;

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1933
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->ensureChildHelper()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1935
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method ensureChildHelper()V
    .locals 7

    .line 1894
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->mInnerChildHelper:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 1895
    iget-object v0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->mChildHelperField:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->mInnerChildHelper:Ljava/lang/Object;

    .line 1896
    iget-object v0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->mInnerChildHelper:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 1898
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->mInnerChildHelper:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "hide"

    const/4 v2, 0x1

    .line 1899
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/view/View;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->mHideMethod:Ljava/lang/reflect/Method;

    .line 1900
    iget-object v1, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->mHideMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "findHiddenNonRemovedView"

    const/4 v3, 0x2

    .line 1902
    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->mFindHiddenNonRemovedViewMethod:Ljava/lang/reflect/Method;

    .line 1903
    iget-object v1, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->mFindHiddenNonRemovedViewMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v1, "findHiddenNonRemovedView"

    .line 1905
    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->mFindHiddenNonRemovedViewMethod25:Ljava/lang/reflect/Method;

    .line 1906
    iget-object v1, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->mFindHiddenNonRemovedViewMethod25:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :goto_0
    const-string v1, "isHidden"

    .line 1908
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/view/View;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->mIsHideMethod:Ljava/lang/reflect/Method;

    .line 1909
    iget-object v1, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->mIsHideMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-string v1, "mBucket"

    .line 1911
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1912
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1914
    iget-object v3, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->mInnerChildHelper:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->mInnerBucket:Ljava/lang/Object;

    .line 1915
    iget-object v1, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->mInnerBucket:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "clear"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->mClearMethod:Ljava/lang/reflect/Method;

    .line 1916
    iget-object v1, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->mClearMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-string v1, "mHiddenViews"

    .line 1918
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->mHiddenViewField:Ljava/lang/reflect/Field;

    .line 1919
    iget-object v0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->mHiddenViewField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1920
    iget-object v0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->mHiddenViewField:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->mInnerChildHelper:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->mInnerHiddenView:Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 1923
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method findHiddenNonRemovedView(II)Landroid/view/View;
    .locals 3

    .line 1966
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->ensureChildHelper()V

    .line 1967
    iget-object p2, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->mFindHiddenNonRemovedViewMethod:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 1968
    iget-object p2, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->mFindHiddenNonRemovedViewMethod:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->mInnerChildHelper:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-virtual {p2, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    .line 1969
    :cond_0
    iget-object p2, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->mFindHiddenNonRemovedViewMethod25:Ljava/lang/reflect/Method;

    if-eqz p2, :cond_1

    .line 1970
    iget-object p2, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->mFindHiddenNonRemovedViewMethod25:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->mInnerChildHelper:Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1977
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 1975
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 1973
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method hide(Landroid/view/View;)V
    .locals 2

    .line 1941
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->ensureChildHelper()V

    .line 1942
    iget-object v0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->mInnerHiddenView:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1943
    iget-object v0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1944
    iget-object p1, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->mHideMethod:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->mInnerChildHelper:Ljava/lang/Object;

    iget-object p0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->args:[Ljava/lang/Object;

    invoke-virtual {p1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1947
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method isHidden(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1985
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->ensureChildHelper()V

    .line 1986
    iget-object v1, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->args:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 1987
    iget-object p1, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->mIsHideMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->mInnerChildHelper:Ljava/lang/Object;

    iget-object p0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->args:[Ljava/lang/Object;

    invoke-virtual {p1, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1993
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 1991
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 1989
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method show(Landroid/view/View;)V
    .locals 3

    .line 1953
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->ensureChildHelper()V

    .line 1954
    iget-object v0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->this$0:Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;

    invoke-static {v0}, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;->access$100(Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1955
    iget-object v1, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    .line 1956
    iget-object v0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->mClearMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->mInnerBucket:Ljava/lang/Object;

    iget-object v2, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->args:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1957
    iget-object v0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->mInnerHiddenView:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1958
    iget-object p0, p0, Lcom/alibaba/android/vlayout/ExposeLinearLayoutManagerEx$ChildHelperWrapper;->mInnerHiddenView:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1960
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
