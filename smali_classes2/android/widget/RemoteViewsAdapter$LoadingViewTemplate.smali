.class Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadingViewTemplate"
.end annotation


# instance fields
.field public defaultHeight:I

.field public final remoteViews:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 0

    .line 1243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1244
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;->remoteViews:Landroid/widget/RemoteViews;

    .line 1246
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x42480000    # 50.0f

    mul-float/2addr p1, p2

    .line 1247
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;->defaultHeight:I

    return-void
.end method


# virtual methods
.method public loadFirstViewHeight(Landroid/widget/RemoteViews;Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1253
    new-instance v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;-><init>(Landroid/content/Context;Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)V

    new-instance v1, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate$1;

    invoke-direct {v1, p0}, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate$1;-><init>(Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;)V

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/widget/RemoteViews;->applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;)Landroid/os/CancellationSignal;

    return-void
.end method
