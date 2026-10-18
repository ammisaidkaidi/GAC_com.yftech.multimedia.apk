.class Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Span"
.end annotation


# static fields
.field static final INVALID_OFFSET:I = -0x80000000


# instance fields
.field mCachedEnd:I

.field mCachedStart:I

.field mDeletedSize:I

.field final mIndex:I

.field mLastEdgeEnd:I

.field mLastEdgeStart:I

.field private mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .locals 2

    .line 1080
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1072
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mViews:Ljava/util/ArrayList;

    const/high16 v0, -0x80000000

    .line 1073
    iput v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mCachedStart:I

    .line 1074
    iput v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mCachedEnd:I

    const/4 v1, 0x0

    .line 1075
    iput v1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mDeletedSize:I

    .line 1077
    iput v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mLastEdgeStart:I

    .line 1078
    iput v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mLastEdgeEnd:I

    .line 1081
    iput p1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mIndex:I

    return-void
.end method

.method synthetic constructor <init>(ILcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$1;)V
    .locals 0

    .line 1069
    invoke-direct {p0, p1}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;-><init>(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;)Ljava/util/ArrayList;
    .locals 0

    .line 1069
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mViews:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method appendToSpan(Landroid/view/View;Lcom/alibaba/android/vlayout/OrientationHelperEx;)V
    .locals 4

    .line 1157
    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->getLayoutParams(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object v0

    .line 1158
    iget-object v1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v1, -0x80000000

    .line 1159
    iput v1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mCachedEnd:I

    .line 1160
    iget-object v2, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1161
    iput v1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mCachedStart:I

    .line 1163
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1164
    :cond_1
    iget v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mDeletedSize:I

    invoke-virtual {p2, p1}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mDeletedSize:I

    :cond_2
    return-void
.end method

.method cacheReferenceLineAndClear(ZILcom/alibaba/android/vlayout/OrientationHelperEx;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1172
    invoke-virtual {p0, p3}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->getEndLine(Lcom/alibaba/android/vlayout/OrientationHelperEx;)I

    move-result v0

    goto :goto_0

    .line 1174
    :cond_0
    invoke-virtual {p0, p3}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->getStartLine(Lcom/alibaba/android/vlayout/OrientationHelperEx;)I

    move-result v0

    .line 1176
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->clear()V

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 1180
    invoke-virtual {p3}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getEndAfterPadding()I

    move-result v2

    if-lt v0, v2, :cond_3

    :cond_2
    if-nez p1, :cond_3

    .line 1181
    invoke-virtual {p3}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getStartAfterPadding()I

    :cond_3
    if-eq p2, v1, :cond_4

    add-int/2addr v0, p2

    .line 1187
    :cond_4
    iput v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mCachedEnd:I

    iput v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mCachedStart:I

    .line 1188
    iput v1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mLastEdgeEnd:I

    iput v1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mLastEdgeStart:I

    return-void
.end method

.method calculateCachedEnd(Lcom/alibaba/android/vlayout/OrientationHelperEx;)V
    .locals 2

    .line 1115
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/high16 p1, -0x80000000

    .line 1116
    iput p1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mCachedEnd:I

    goto :goto_0

    .line 1118
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1119
    invoke-virtual {p1, v0}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mCachedEnd:I

    :goto_0
    return-void
.end method

.method calculateCachedStart(Lcom/alibaba/android/vlayout/OrientationHelperEx;)V
    .locals 2
    .param p1    # Lcom/alibaba/android/vlayout/OrientationHelperEx;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1085
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/high16 p1, -0x80000000

    .line 1086
    iput p1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mCachedStart:I

    goto :goto_0

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mViews:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1089
    invoke-virtual {p1, v0}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mCachedStart:I

    :goto_0
    return-void
.end method

.method clear()V
    .locals 2

    const-string v0, "Longer"

    const-string v1, "clear span"

    .line 1192
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1194
    invoke-virtual {p0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->invalidateCache()V

    const/4 v0, 0x0

    .line 1195
    iput v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mDeletedSize:I

    return-void
.end method

.method findEnd(Landroid/view/View;)Z
    .locals 3

    .line 1224
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 1226
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mViews:Ljava/util/ArrayList;

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method findStart(Landroid/view/View;)Z
    .locals 2

    .line 1246
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 1248
    iget-object p0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public getDeletedSize()I
    .locals 0

    .line 1255
    iget p0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mDeletedSize:I

    return p0
.end method

.method getEndLine(ILcom/alibaba/android/vlayout/OrientationHelperEx;)I
    .locals 2

    .line 1129
    iget v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mCachedEnd:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 1130
    iget p0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mCachedEnd:I

    return p0

    :cond_0
    if-eq p1, v1, :cond_2

    .line 1133
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 1134
    iget p2, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mLastEdgeStart:I

    if-eq p2, v1, :cond_1

    .line 1135
    iget p0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mLastEdgeStart:I

    return p0

    :cond_1
    return p1

    .line 1140
    :cond_2
    invoke-virtual {p0, p2}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->calculateCachedEnd(Lcom/alibaba/android/vlayout/OrientationHelperEx;)V

    .line 1141
    iget p0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mCachedEnd:I

    return p0
.end method

.method getEndLine(Lcom/alibaba/android/vlayout/OrientationHelperEx;)I
    .locals 1

    const/high16 v0, -0x80000000

    .line 1124
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->getEndLine(ILcom/alibaba/android/vlayout/OrientationHelperEx;)I

    move-result p0

    return p0
.end method

.method getLayoutParams(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 0

    .line 1259
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    return-object p0
.end method

.method getNormalizedOffset(IIILcom/alibaba/android/vlayout/OrientationHelperEx;)I
    .locals 2

    .line 1282
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-gez p1, :cond_3

    .line 1286
    invoke-virtual {p0, v1, p4}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->getEndLine(ILcom/alibaba/android/vlayout/OrientationHelperEx;)I

    move-result p0

    sub-int/2addr p0, p3

    if-gtz p0, :cond_1

    return v1

    :cond_1
    neg-int p2, p1

    if-le p2, p0, :cond_2

    neg-int p1, p0

    :cond_2
    return p1

    .line 1292
    :cond_3
    invoke-virtual {p0, v1, p4}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->getStartLine(ILcom/alibaba/android/vlayout/OrientationHelperEx;)I

    move-result p0

    sub-int p0, p2, p0

    if-gtz p0, :cond_4

    return v1

    :cond_4
    if-ge p0, p1, :cond_5

    goto :goto_0

    :cond_5
    move p0, p1

    :goto_0
    return p0
.end method

.method getStartLine(ILcom/alibaba/android/vlayout/OrientationHelperEx;)I
    .locals 2

    .line 1099
    iget v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mCachedStart:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 1100
    iget p0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mCachedStart:I

    return p0

    :cond_0
    if-eq p1, v1, :cond_2

    .line 1103
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 1104
    iget p2, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mLastEdgeEnd:I

    if-eq p2, v1, :cond_1

    .line 1105
    iget p0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mLastEdgeEnd:I

    return p0

    :cond_1
    return p1

    .line 1110
    :cond_2
    invoke-virtual {p0, p2}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->calculateCachedStart(Lcom/alibaba/android/vlayout/OrientationHelperEx;)V

    .line 1111
    iget p0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mCachedStart:I

    return p0
.end method

.method getStartLine(Lcom/alibaba/android/vlayout/OrientationHelperEx;)I
    .locals 1

    const/high16 v0, -0x80000000

    .line 1094
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->getStartLine(ILcom/alibaba/android/vlayout/OrientationHelperEx;)I

    move-result p0

    return p0
.end method

.method invalidateCache()V
    .locals 1

    const/high16 v0, -0x80000000

    .line 1199
    iput v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mCachedStart:I

    .line 1200
    iput v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mCachedEnd:I

    .line 1201
    iput v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mLastEdgeEnd:I

    .line 1202
    iput v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mLastEdgeStart:I

    return-void
.end method

.method isEmpty(IILcom/alibaba/android/vlayout/OrientationHelperEx;)Z
    .locals 5

    .line 1308
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1310
    iget-object v3, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1311
    invoke-virtual {p3, v3}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-ge v4, p2, :cond_0

    .line 1312
    invoke-virtual {p3, v3}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    if-le v3, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method onOffset(I)V
    .locals 2

    .line 1263
    iget v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mLastEdgeStart:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 1264
    iget v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mLastEdgeStart:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mLastEdgeStart:I

    .line 1267
    :cond_0
    iget v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mCachedStart:I

    if-eq v0, v1, :cond_1

    .line 1268
    iget v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mCachedStart:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mCachedStart:I

    .line 1271
    :cond_1
    iget v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mLastEdgeEnd:I

    if-eq v0, v1, :cond_2

    .line 1272
    iget v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mLastEdgeEnd:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mLastEdgeEnd:I

    .line 1275
    :cond_2
    iget v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mCachedEnd:I

    if-eq v0, v1, :cond_3

    .line 1276
    iget v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mCachedEnd:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mCachedEnd:I

    :cond_3
    return-void
.end method

.method popEnd(Lcom/alibaba/android/vlayout/OrientationHelperEx;)V
    .locals 4

    .line 1211
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1212
    iget-object v1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mViews:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1213
    invoke-virtual {p0, v1}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->getLayoutParams(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object v2

    .line 1214
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1215
    :cond_0
    iget v2, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mDeletedSize:I

    invoke-virtual {p1, v1}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v2, p1

    iput v2, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mDeletedSize:I

    :cond_1
    const/high16 p1, -0x80000000

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1218
    iput p1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mCachedStart:I

    .line 1220
    :cond_2
    iput p1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mCachedEnd:I

    return-void
.end method

.method popStart(Lcom/alibaba/android/vlayout/OrientationHelperEx;)V
    .locals 4

    .line 1233
    iget-object v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mViews:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1234
    invoke-virtual {p0, v0}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->getLayoutParams(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object v1

    .line 1235
    iget-object v2, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/high16 v3, -0x80000000

    if-nez v2, :cond_0

    .line 1236
    iput v3, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mCachedEnd:I

    .line 1238
    :cond_0
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1239
    :cond_1
    iget v1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mDeletedSize:I

    invoke-virtual {p1, v0}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mDeletedSize:I

    .line 1241
    :cond_2
    iput v3, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mCachedStart:I

    return-void
.end method

.method prependToSpan(Landroid/view/View;Lcom/alibaba/android/vlayout/OrientationHelperEx;)V
    .locals 4

    .line 1145
    invoke-virtual {p0, p1}, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->getLayoutParams(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object v0

    .line 1146
    iget-object v1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/high16 v1, -0x80000000

    .line 1147
    iput v1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mCachedStart:I

    .line 1148
    iget-object v2, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1149
    iput v1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mCachedEnd:I

    .line 1151
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1152
    :cond_1
    iget v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mDeletedSize:I

    invoke-virtual {p2, p1}, Lcom/alibaba/android/vlayout/OrientationHelperEx;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mDeletedSize:I

    :cond_2
    return-void
.end method

.method setLine(I)V
    .locals 0

    .line 1206
    iput p1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mCachedStart:I

    iput p1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mCachedEnd:I

    const/high16 p1, -0x80000000

    .line 1207
    iput p1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mLastEdgeEnd:I

    iput p1, p0, Lcom/alibaba/android/vlayout/layout/StaggeredGridLayoutHelper$Span;->mLastEdgeStart:I

    return-void
.end method
