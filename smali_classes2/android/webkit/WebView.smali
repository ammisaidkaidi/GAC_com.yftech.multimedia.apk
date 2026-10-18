.class public Landroid/webkit/WebView;
.super Landroid/widget/AbsoluteLayout;
.source "WebView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;
.implements Landroid/view/ViewDebug$HierarchyHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebView$FindListenerDistributor;,
        Landroid/webkit/WebView$PrivateAccess;,
        Landroid/webkit/WebView$RendererPriority;,
        Landroid/webkit/WebView$HitTestResult;,
        Landroid/webkit/WebView$PictureListener;,
        Landroid/webkit/WebView$VisualStateCallback;,
        Landroid/webkit/WebView$FindListener;,
        Landroid/webkit/WebView$WebViewTransport;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "WebView"

.field public static final RENDERER_PRIORITY_BOUND:I = 0x1

.field public static final RENDERER_PRIORITY_IMPORTANT:I = 0x2

.field public static final RENDERER_PRIORITY_WAIVED:I = 0x0

.field public static final SCHEME_GEO:Ljava/lang/String; = "geo:0,0?q="

.field public static final SCHEME_MAILTO:Ljava/lang/String; = "mailto:"

.field public static final SCHEME_TEL:Ljava/lang/String; = "tel:"

.field private static volatile sEnforceThreadChecking:Z = false


# instance fields
.field private mFindListener:Landroid/webkit/WebView$FindListenerDistributor;

.field private mProvider:Landroid/webkit/WebViewProvider;

.field private final mWebViewThread:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 564
    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010085

    .line 574
    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 587
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 604
    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/util/Map;Z)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 659
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2684
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    iput-object p2, p0, Landroid/webkit/WebView;->mWebViewThread:Landroid/os/Looper;

    .line 662
    invoke-virtual {p0}, Landroid/webkit/WebView;->getImportantForAutofill()I

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_0

    .line 663
    invoke-virtual {p0, p3}, Landroid/webkit/WebView;->setImportantForAutofill(I)V

    :cond_0
    if-eqz p1, :cond_3

    .line 669
    iget-object p2, p0, Landroid/webkit/WebView;->mWebViewThread:Landroid/os/Looper;

    if-eqz p2, :cond_2

    .line 673
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p2, 0x12

    if-lt p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    sput-boolean p3, Landroid/webkit/WebView;->sEnforceThreadChecking:Z

    .line 675
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 677
    invoke-direct {p0}, Landroid/webkit/WebView;->ensureProviderCreated()V

    .line 678
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p5, p6}, Landroid/webkit/WebViewProvider;->init(Ljava/util/Map;Z)V

    .line 680
    invoke-static {}, Landroid/webkit/CookieSyncManager;->setGetInstanceIsAllowed()V

    return-void

    .line 670
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "WebView cannot be initialized on a thread that has no Looper."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 667
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid context argument"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move v6, p5

    .line 650
    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/util/Map;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    .line 626
    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/util/Map;Z)V

    return-void
.end method

.method static synthetic access$1001(Landroid/webkit/WebView;ILandroid/graphics/Rect;)Z
    .locals 0

    .line 357
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$101(Landroid/webkit/WebView;)I
    .locals 0

    .line 357
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->getScrollBarStyle()I

    move-result p0

    return p0
.end method

.method static synthetic access$1101(Landroid/webkit/WebView;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 357
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$1201(Landroid/webkit/WebView;Landroid/content/Intent;I)V
    .locals 0

    .line 357
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$1300(Landroid/webkit/WebView;IIIIIIIIZ)Z
    .locals 0

    .line 357
    invoke-virtual/range {p0 .. p9}, Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Landroid/webkit/WebView;I)Z
    .locals 0

    .line 357
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->awakenScrollBars(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Landroid/webkit/WebView;IZ)Z
    .locals 0

    .line 357
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->awakenScrollBars(IZ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Landroid/webkit/WebView;)F
    .locals 0

    .line 357
    invoke-virtual {p0}, Landroid/webkit/WebView;->getVerticalScrollFactor()F

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Landroid/webkit/WebView;)F
    .locals 0

    .line 357
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHorizontalScrollFactor()F

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Landroid/webkit/WebView;II)V
    .locals 0

    .line 357
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$1900(Landroid/webkit/WebView;)I
    .locals 0

    .line 357
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHorizontalScrollbarHeight()I

    move-result p0

    return p0
.end method

.method static synthetic access$2001(Landroid/webkit/WebView;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 0

    .line 357
    invoke-super/range {p0 .. p6}, Landroid/widget/AbsoluteLayout;->onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    return-void
.end method

.method static synthetic access$201(Landroid/webkit/WebView;II)V
    .locals 0

    .line 357
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->scrollTo(II)V

    return-void
.end method

.method static synthetic access$2102(Landroid/webkit/WebView;I)I
    .locals 0

    .line 357
    iput p1, p0, Landroid/webkit/WebView;->mScrollX:I

    return p1
.end method

.method static synthetic access$2202(Landroid/webkit/WebView;I)I
    .locals 0

    .line 357
    iput p1, p0, Landroid/webkit/WebView;->mScrollY:I

    return p1
.end method

.method static synthetic access$301(Landroid/webkit/WebView;)V
    .locals 0

    .line 357
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->computeScroll()V

    return-void
.end method

.method static synthetic access$401(Landroid/webkit/WebView;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 357
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$501(Landroid/webkit/WebView;ILandroid/os/Bundle;)Z
    .locals 0

    .line 357
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$601(Landroid/webkit/WebView;)Z
    .locals 0

    .line 357
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->performLongClick()Z

    move-result p0

    return p0
.end method

.method static synthetic access$701(Landroid/webkit/WebView;IIII)Z
    .locals 0

    .line 357
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->setFrame(IIII)Z

    move-result p0

    return p0
.end method

.method static synthetic access$801(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 0

    .line 357
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$901(Landroid/webkit/WebView;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 357
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private checkThread()V
    .locals 3

    .line 2689
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewThread:Landroid/os/Looper;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewThread:Landroid/os/Looper;

    if-eq v0, v1, :cond_1

    .line 2690
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A WebView method was called on thread \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2692
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'. All WebView methods must be called on the same thread. (Expected Looper "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/webkit/WebView;->mWebViewThread:Landroid/os/Looper;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " called on "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2694
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", FYI main Looper is "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2695
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string p0, "WebView"

    .line 2696
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    invoke-static {v0}, Landroid/os/StrictMode;->onWebViewMethodCalledOnWrongThread(Ljava/lang/Throwable;)V

    .line 2699
    sget-boolean p0, Landroid/webkit/WebView;->sEnforceThreadChecking:Z

    if-nez p0, :cond_0

    goto :goto_0

    .line 2700
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static clearClientCertPreferences(Ljava/lang/Runnable;)V
    .locals 1

    .line 1685
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/webkit/WebViewFactoryProvider$Statics;->clearClientCertPreferences(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static disablePlatformNotifications()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static disableWebView()V
    .locals 0

    .line 2187
    invoke-static {}, Landroid/webkit/WebViewFactory;->disableWebView()V

    return-void
.end method

.method public static enablePlatformNotifications()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static enableSlowWholeDocumentDraw()V
    .locals 1

    .line 1888
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider$Statics;->enableSlowWholeDocumentDraw()V

    return-void
.end method

.method private ensureProviderCreated()V
    .locals 2

    .line 2672
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 2673
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    if-nez v0, :cond_0

    .line 2676
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    new-instance v1, Landroid/webkit/WebView$PrivateAccess;

    invoke-direct {v1, p0}, Landroid/webkit/WebView$PrivateAccess;-><init>(Landroid/webkit/WebView;)V

    invoke-interface {v0, p0, v1}, Landroid/webkit/WebViewFactoryProvider;->createWebView(Landroid/webkit/WebView;Landroid/webkit/WebView$PrivateAccess;)Landroid/webkit/WebViewProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    :cond_0
    return-void
.end method

.method public static findAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_0

    .line 1869
    invoke-static {p0}, Landroid/webkit/FindAddress;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1867
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "addr is null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static freeMemoryForTests()V
    .locals 1

    .line 860
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider$Statics;->freeMemoryForTests()V

    return-void
.end method

.method public static getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;
    .locals 1

    .line 3126
    invoke-static {}, Landroid/webkit/WebViewFactory;->getLoadedPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 3131
    :cond_0
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 3136
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/webkit/IWebViewUpdateService;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3138
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static getFactory()Landroid/webkit/WebViewFactoryProvider;
    .locals 1

    .line 2681
    invoke-static {}, Landroid/webkit/WebViewFactory;->getProvider()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getPluginList()Landroid/webkit/PluginList;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Landroid/webkit/WebView;

    monitor-enter v0

    .line 2130
    :try_start_0
    new-instance v1, Landroid/webkit/PluginList;

    invoke-direct {v1}, Landroid/webkit/PluginList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getSafeBrowsingPrivacyPolicyUrl()Landroid/net/Uri;
    .locals 1

    .line 1745
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider$Statics;->getSafeBrowsingPrivacyPolicyUrl()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getWebViewClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 2477
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getWebViewClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static setDataDirectorySuffix(Ljava/lang/String;)V
    .locals 0

    .line 2165
    invoke-static {p0}, Landroid/webkit/WebViewFactory;->setDataDirectorySuffix(Ljava/lang/String;)V

    return-void
.end method

.method public static setSafeBrowsingWhitelist(Ljava/util/List;Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1735
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/webkit/WebViewFactoryProvider$Statics;->setSafeBrowsingWhitelist(Ljava/util/List;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public static setWebContentsDebuggingEnabled(Z)V
    .locals 1

    .line 2118
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/webkit/WebViewFactoryProvider$Statics;->setWebContentsDebuggingEnabled(Z)V

    return-void
.end method

.method private setupFindListenerIfNeeded()V
    .locals 2

    .line 2665
    iget-object v0, p0, Landroid/webkit/WebView;->mFindListener:Landroid/webkit/WebView$FindListenerDistributor;

    if-nez v0, :cond_0

    .line 2666
    new-instance v0, Landroid/webkit/WebView$FindListenerDistributor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/webkit/WebView$FindListenerDistributor;-><init>(Landroid/webkit/WebView;Landroid/webkit/WebView$1;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mFindListener:Landroid/webkit/WebView$FindListenerDistributor;

    .line 2667
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    iget-object p0, p0, Landroid/webkit/WebView;->mFindListener:Landroid/webkit/WebView$FindListenerDistributor;

    invoke-interface {v0, p0}, Landroid/webkit/WebViewProvider;->setFindListener(Landroid/webkit/WebView$FindListener;)V

    :cond_0
    return-void
.end method

.method public static startSafeBrowsing(Landroid/content/Context;Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1707
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/webkit/WebViewFactoryProvider$Statics;->initSafeBrowsing(Landroid/content/Context;Landroid/webkit/ValueCallback;)V

    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 2038
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 2039
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1, p2}, Landroid/webkit/WebViewProvider;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public autofill(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/autofill/AutofillValue;",
            ">;)V"
        }
    .end annotation

    .line 2936
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->autofill(Landroid/util/SparseArray;)V

    return-void
.end method

.method public canGoBack()Z
    .locals 0

    .line 1166
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1167
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->canGoBack()Z

    move-result p0

    return p0
.end method

.method public canGoBackOrForward(I)Z
    .locals 0

    .line 1204
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1205
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider;->canGoBackOrForward(I)Z

    move-result p0

    return p0
.end method

.method public canGoForward()Z
    .locals 0

    .line 1184
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1185
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->canGoForward()Z

    move-result p0

    return p0
.end method

.method public canZoomIn()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2284
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 2285
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->canZoomIn()Z

    move-result p0

    return p0
.end method

.method public canZoomOut()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2299
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 2300
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->canZoomOut()Z

    move-result p0

    return p0
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1345
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1346
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->capturePicture()Landroid/graphics/Picture;

    move-result-object p0

    return-object p0
.end method

.method public clearCache(Z)V
    .locals 0

    .line 1642
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1643
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider;->clearCache(Z)V

    return-void
.end method

.method public clearFormData()V
    .locals 0

    .line 1653
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1654
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->clearFormData()V

    return-void
.end method

.method public clearHistory()V
    .locals 0

    .line 1661
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1662
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->clearHistory()V

    return-void
.end method

.method public clearMatches()V
    .locals 0

    .line 1896
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1897
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->clearMatches()V

    return-void
.end method

.method public clearSslPreferences()V
    .locals 0

    .line 1670
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1671
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->clearSslPreferences()V

    return-void
.end method

.method public clearView()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1315
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1316
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->clearView()V

    return-void
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 0

    .line 2758
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;

    move-result-object p0

    invoke-interface {p0}, Landroid/webkit/WebViewProvider$ScrollDelegate;->computeHorizontalScrollOffset()I

    move-result p0

    return p0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 0

    .line 2753
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;

    move-result-object p0

    invoke-interface {p0}, Landroid/webkit/WebViewProvider$ScrollDelegate;->computeHorizontalScrollRange()I

    move-result p0

    return p0
.end method

.method public computeScroll()V
    .locals 0

    .line 2778
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;

    move-result-object p0

    invoke-interface {p0}, Landroid/webkit/WebViewProvider$ScrollDelegate;->computeScroll()V

    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 0

    .line 2773
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;

    move-result-object p0

    invoke-interface {p0}, Landroid/webkit/WebViewProvider$ScrollDelegate;->computeVerticalScrollExtent()I

    move-result p0

    return p0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 0

    .line 2768
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;

    move-result-object p0

    invoke-interface {p0}, Landroid/webkit/WebViewProvider$ScrollDelegate;->computeVerticalScrollOffset()I

    move-result p0

    return p0
.end method

.method protected computeVerticalScrollRange()I
    .locals 0

    .line 2763
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;

    move-result-object p0

    invoke-interface {p0}, Landroid/webkit/WebViewProvider$ScrollDelegate;->computeVerticalScrollRange()I

    move-result p0

    return p0
.end method

.method public copyBackForwardList()Landroid/webkit/WebBackForwardList;
    .locals 0

    .line 1757
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1758
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object p0

    return-object p0
.end method

.method public createPrintDocumentAdapter()Landroid/print/PrintDocumentAdapter;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1355
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1356
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    const-string v0, "default"

    invoke-interface {p0, v0}, Landroid/webkit/WebViewProvider;->createPrintDocumentAdapter(Ljava/lang/String;)Landroid/print/PrintDocumentAdapter;

    move-result-object p0

    return-object p0
.end method

.method public createPrintDocumentAdapter(Ljava/lang/String;)Landroid/print/PrintDocumentAdapter;
    .locals 0

    .line 1373
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1374
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider;->createPrintDocumentAdapter(Ljava/lang/String;)Landroid/print/PrintDocumentAdapter;

    move-result-object p0

    return-object p0
.end method

.method public createWebMessageChannel()[Landroid/webkit/WebMessagePort;
    .locals 0

    .line 2066
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 2067
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->createWebMessageChannel()[Landroid/webkit/WebMessagePort;

    move-result-object p0

    return-object p0
.end method

.method public debugDump()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2344
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    return-void
.end method

.method public destroy()V
    .locals 0

    .line 826
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 827
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->destroy()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 3087
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->preDispatchDraw(Landroid/graphics/Canvas;)V

    .line 3088
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 3055
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public documentHasImages(Landroid/os/Message;)V
    .locals 0

    .line 1908
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1909
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider;->documentHasImages(Landroid/os/Message;)V

    return-void
.end method

.method public dumpViewHierarchyWithProperties(Ljava/io/BufferedWriter;I)V
    .locals 0

    .line 2353
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1, p2}, Landroid/webkit/WebViewProvider;->dumpViewHierarchyWithProperties(Ljava/io/BufferedWriter;I)V

    return-void
.end method

.method public emulateShiftHeld()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2209
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2

    .line 3167
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 3169
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    const-string/jumbo v0, "webview:contentHeight"

    .line 3170
    iget-object v1, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v1}, Landroid/webkit/WebViewProvider;->getContentHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string/jumbo v0, "webview:contentWidth"

    .line 3171
    iget-object v1, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v1}, Landroid/webkit/WebViewProvider;->getContentWidth()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string/jumbo v0, "webview:scale"

    .line 3172
    iget-object v1, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v1}, Landroid/webkit/WebViewProvider;->getScale()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    const-string/jumbo v0, "webview:title"

    .line 3173
    iget-object v1, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v1}, Landroid/webkit/WebViewProvider;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "webview:url"

    .line 3174
    iget-object v1, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v1}, Landroid/webkit/WebViewProvider;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "webview:originalUrl"

    .line 3175
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getOriginalUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1112
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1113
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1, p2}, Landroid/webkit/WebViewProvider;->evaluateJavaScript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public findAll(Ljava/lang/String;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1800
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    const-string v0, "findAll blocks UI: prefer findAllAsync"

    .line 1801
    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 1802
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider;->findAll(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public findAllAsync(Ljava/lang/String;)V
    .locals 0

    .line 1814
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1815
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider;->findAllAsync(Ljava/lang/String;)V

    return-void
.end method

.method public findFocus()Landroid/view/View;
    .locals 1

    .line 3110
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->findFocus()Landroid/view/View;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/webkit/WebViewProvider$ViewDelegate;->findFocus(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public findHierarchyView(Ljava/lang/String;I)Landroid/view/View;
    .locals 0

    .line 2362
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1, p2}, Landroid/webkit/WebViewProvider;->findHierarchyView(Ljava/lang/String;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public findNext(Z)V
    .locals 0

    .line 1785
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1786
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider;->findNext(Z)V

    return-void
.end method

.method public flingScroll(II)V
    .locals 0

    .line 2251
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 2252
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1, p2}, Landroid/webkit/WebViewProvider;->flingScroll(II)V

    return-void
.end method

.method public freeMemory()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1631
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1632
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->freeMemory()V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 2849
    const-class p0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .line 2836
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    .line 2837
    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ViewDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2838
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 0

    .line 747
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 748
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object p0

    return-object p0
.end method

.method public getContentHeight()I
    .locals 0
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "webview"
    .end annotation

    .line 1558
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1559
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getContentHeight()I

    move-result p0

    return p0
.end method

.method public getContentWidth()I
    .locals 0
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "webview"
    .end annotation

    .line 1570
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getContentWidth()I

    move-result p0

    return p0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 0

    .line 1526
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1527
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 3105
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/webkit/WebViewProvider$ViewDelegate;->getHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public getHitTestResult()Landroid/webkit/WebView$HitTestResult;
    .locals 0

    .line 1445
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1446
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object p0

    return-object p0
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 816
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 817
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1, p2}, Landroid/webkit/WebViewProvider;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 0
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "webview"
    .end annotation

    .line 1503
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1504
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getOriginalUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getProgress()I
    .locals 0

    .line 1547
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1548
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getProgress()I

    move-result p0

    return p0
.end method

.method public getRendererPriorityWaivedWhenNotVisible()Z
    .locals 0

    .line 2451
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getRendererPriorityWaivedWhenNotVisible()Z

    move-result p0

    return p0
.end method

.method public getRendererRequestedPriority()I
    .locals 0

    .line 2440
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getRendererRequestedPriority()I

    move-result p0

    return p0
.end method

.method public getScale()F
    .locals 0
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "webview"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1389
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1390
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getScale()F

    move-result p0

    return p0
.end method

.method public getSettings()Landroid/webkit/WebSettings;
    .locals 0

    .line 2102
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 2103
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    return-object p0
.end method

.method public getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .locals 0

    .line 2467
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "webview"
    .end annotation

    .line 1515
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1516
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTouchIconUrl()Ljava/lang/String;
    .locals 0

    .line 1538
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getTouchIconUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "webview"
    .end annotation

    .line 1488
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1489
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVisibleTitleHeight()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 735
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 736
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getVisibleTitleHeight()I

    move-result p0

    return p0
.end method

.method public getWebChromeClient()Landroid/webkit/WebChromeClient;
    .locals 0

    .line 1968
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1969
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object p0

    return-object p0
.end method

.method public getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 0

    .line 1931
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1932
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object p0

    return-object p0
.end method

.method public getWebViewLooper()Landroid/os/Looper;
    .locals 0

    .line 2485
    iget-object p0, p0, Landroid/webkit/WebView;->mWebViewThread:Landroid/os/Looper;

    return-object p0
.end method

.method public getWebViewProvider()Landroid/webkit/WebViewProvider;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2501
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    return-object p0
.end method

.method public getZoomControls()Landroid/view/View;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2269
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 2270
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getZoomControls()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public goBack()V
    .locals 0

    .line 1174
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1175
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->goBack()V

    return-void
.end method

.method public goBackOrForward(I)V
    .locals 0

    .line 1217
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1218
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider;->goBackOrForward(I)V

    return-void
.end method

.method public goForward()V
    .locals 0

    .line 1192
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1193
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->goForward()V

    return-void
.end method

.method public invokeZoomPicker()V
    .locals 0

    .line 1422
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1423
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->invokeZoomPicker()V

    return-void
.end method

.method public isPaused()Z
    .locals 0

    .line 1620
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->isPaused()Z

    move-result p0

    return p0
.end method

.method public isPrivateBrowsingEnabled()Z
    .locals 0

    .line 1225
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1226
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->isPrivateBrowsingEnabled()Z

    move-result p0

    return p0
.end method

.method public isVisibleToUserForAutofill(I)Z
    .locals 0

    .line 2941
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->isVisibleToUserForAutofill(I)Z

    move-result p0

    return p0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1043
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1044
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1, p2, p3}, Landroid/webkit/WebViewProvider;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1090
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1091
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/webkit/WebViewProvider;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 0

    .line 969
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 970
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 957
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 958
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1, p2}, Landroid/webkit/WebViewProvider;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method notifyFindDialogDismissed()V
    .locals 0

    .line 2629
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 2630
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->notifyFindDialogDismissed()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 3156
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/webkit/WebViewProvider$ViewDelegate;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 2714
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onAttachedToWindow()V

    .line 2715
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object p0

    invoke-interface {p0}, Landroid/webkit/WebViewProvider$ViewDelegate;->onAttachedToWindow()V

    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 0

    .line 3161
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object p0

    invoke-interface {p0}, Landroid/webkit/WebViewProvider$ViewDelegate;->onCheckIsTextEditor()Z

    move-result p0

    return p0
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 2994
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 0

    .line 3006
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p0

    return-object p0
.end method

.method protected onDetachedFromWindowInternal()V
    .locals 1

    .line 2721
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ViewDelegate;->onDetachedFromWindow()V

    .line 2722
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onDetachedFromWindowInternal()V

    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 0

    .line 3011
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 2984
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 7

    .line 2968
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/webkit/WebViewProvider$ViewDelegate;->onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 0

    .line 3099
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onFinishTemporaryDetach()V

    .line 3100
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object p0

    invoke-interface {p0}, Landroid/webkit/WebViewProvider$ViewDelegate;->onFinishTemporaryDetach()V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .line 3031
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewProvider$ViewDelegate;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3032
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsoluteLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 2793
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 2783
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 2954
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2955
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 2947
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2948
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 2803
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 0

    .line 2813
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/webkit/WebViewProvider$ViewDelegate;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 2808
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 3065
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->onMeasure(II)V

    .line 3066
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->onMeasure(II)V

    return-void
.end method

.method public onMovedToDisplay(ILandroid/content/res/Configuration;)V
    .locals 0

    .line 2728
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->onMovedToDisplay(ILandroid/content/res/Configuration;)V

    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 0

    .line 2973
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewProvider$ViewDelegate;->onOverScrolled(IIZZ)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1601
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1602
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->onPause()V

    return-void
.end method

.method public onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V
    .locals 0

    .line 2931
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V

    return-void
.end method

.method public onProvideVirtualStructure(Landroid/view/ViewStructure;)V
    .locals 0

    .line 2854
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onProvideVirtualStructure(Landroid/view/ViewStructure;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1609
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1610
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->onResume()V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 3049
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onScrollChanged(IIII)V

    .line 3050
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewProvider$ViewDelegate;->onScrollChanged(IIII)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 3043
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onSizeChanged(IIII)V

    .line 3044
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewProvider$ViewDelegate;->onSizeChanged(IIII)V

    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 0

    .line 3093
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onStartTemporaryDetach()V

    .line 3094
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object p0

    invoke-interface {p0}, Landroid/webkit/WebViewProvider$ViewDelegate;->onStartTemporaryDetach()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 2788
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 2798
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 3016
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 3019
    invoke-direct {p0}, Landroid/webkit/WebView;->ensureProviderCreated()V

    .line 3020
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 3025
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onWindowFocusChanged(Z)V

    .line 3026
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onWindowFocusChanged(Z)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .line 2978
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onWindowVisibilityChanged(I)V

    .line 2979
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public overlayHorizontalScrollbar()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public overlayVerticalScrollbar()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public pageDown(Z)Z
    .locals 0

    .line 1247
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1248
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider;->pageDown(Z)Z

    move-result p0

    return p0
.end method

.method public pageUp(Z)Z
    .locals 0

    .line 1236
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1237
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider;->pageUp(Z)Z

    move-result p0

    return p0
.end method

.method public pauseTimers()V
    .locals 0

    .line 1579
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1580
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->pauseTimers()V

    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 0

    .line 2961
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public performLongClick()Z
    .locals 0

    .line 2989
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object p0

    invoke-interface {p0}, Landroid/webkit/WebViewProvider$ViewDelegate;->performLongClick()Z

    move-result p0

    return p0
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 1

    .line 983
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 984
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 985
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1, p2}, Landroid/webkit/WebViewProvider;->postUrl(Ljava/lang/String;[B)V

    goto :goto_0

    .line 987
    :cond_0
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public postVisualStateCallback(JLandroid/webkit/WebView$VisualStateCallback;)V
    .locals 0

    .line 1303
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1304
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1, p2, p3}, Landroid/webkit/WebViewProvider;->insertVisualStateCallback(JLandroid/webkit/WebView$VisualStateCallback;)V

    return-void
.end method

.method public postWebMessage(Landroid/webkit/WebMessage;Landroid/net/Uri;)V
    .locals 0

    .line 2090
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 2091
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1, p2}, Landroid/webkit/WebViewProvider;->postMessageToMainFrame(Landroid/webkit/WebMessage;Landroid/net/Uri;)V

    return-void
.end method

.method public refreshPlugins(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2197
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    return-void
.end method

.method public reload()V
    .locals 0

    .line 1156
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1157
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->reload()V

    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 0

    .line 2050
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 2051
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider;->removeJavascriptInterface(Ljava/lang/String;)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 0

    .line 3071
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/webkit/WebViewProvider$ViewDelegate;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p0

    return p0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 0

    .line 3060
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public requestFocusNodeHref(Landroid/os/Message;)V
    .locals 0

    .line 1463
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1464
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider;->requestFocusNodeHref(Landroid/os/Message;)V

    return-void
.end method

.method public requestImageRef(Landroid/os/Message;)V
    .locals 0

    .line 1475
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1476
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider;->requestImageRef(Landroid/os/Message;)V

    return-void
.end method

.method public restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 921
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 922
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1, p2}, Landroid/webkit/WebViewProvider;->restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 0

    .line 939
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 940
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object p0

    return-object p0
.end method

.method public resumeTimers()V
    .locals 0

    .line 1588
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1589
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->resumeTimers()V

    return-void
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 782
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 783
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1, p2, p3}, Landroid/webkit/WebViewProvider;->savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public savePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 904
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 905
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1, p2}, Landroid/webkit/WebViewProvider;->savePicture(Landroid/os/Bundle;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 0

    .line 888
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 889
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object p0

    return-object p0
.end method

.method public saveWebArchive(Ljava/lang/String;)V
    .locals 0

    .line 1122
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1123
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider;->saveWebArchive(Ljava/lang/String;)V

    return-void
.end method

.method public saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1140
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1141
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1, p2, p3}, Landroid/webkit/WebViewProvider;->saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 3076
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->setBackgroundColor(I)V

    return-void
.end method

.method public setCertificate(Landroid/net/http/SslCertificate;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 759
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 760
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider;->setCertificate(Landroid/net/http/SslCertificate;)V

    return-void
.end method

.method public setDownloadListener(Landroid/webkit/DownloadListener;)V
    .locals 0

    .line 1943
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1944
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method setFindDialogFindListener(Landroid/webkit/WebView$FindListener;)V
    .locals 0

    .line 2622
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 2623
    invoke-direct {p0}, Landroid/webkit/WebView;->setupFindListenerIfNeeded()V

    .line 2624
    iget-object p0, p0, Landroid/webkit/WebView;->mFindListener:Landroid/webkit/WebView$FindListenerDistributor;

    invoke-static {p0, p1}, Landroid/webkit/WebView$FindListenerDistributor;->access$2302(Landroid/webkit/WebView$FindListenerDistributor;Landroid/webkit/WebView$FindListener;)Landroid/webkit/WebView$FindListener;

    return-void
.end method

.method public setFindListener(Landroid/webkit/WebView$FindListener;)V
    .locals 0

    .line 1769
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1770
    invoke-direct {p0}, Landroid/webkit/WebView;->setupFindListenerIfNeeded()V

    .line 1771
    iget-object p0, p0, Landroid/webkit/WebView;->mFindListener:Landroid/webkit/WebView$FindListenerDistributor;

    invoke-static {p0, p1}, Landroid/webkit/WebView$FindListenerDistributor;->access$002(Landroid/webkit/WebView$FindListenerDistributor;Landroid/webkit/WebView$FindListener;)Landroid/webkit/WebView$FindListener;

    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 0

    .line 3038
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewProvider$ViewDelegate;->setFrame(IIII)Z

    move-result p0

    return p0
.end method

.method public setHorizontalScrollbarOverlay(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 799
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 800
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewProvider;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setInitialScale(I)V
    .locals 0

    .line 1412
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1413
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider;->setInitialScale(I)V

    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 0

    .line 3081
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3082
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 2733
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setMapTrackballToArrowKeys(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2245
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 2246
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider;->setMapTrackballToArrowKeys(Z)V

    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 0

    .line 871
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 872
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider;->setNetworkAvailable(Z)V

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 0

    .line 2738
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setOverScrollMode(I)V

    .line 2741
    invoke-direct {p0}, Landroid/webkit/WebView;->ensureProviderCreated()V

    .line 2742
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->setOverScrollMode(I)V

    return-void
.end method

.method public setPictureListener(Landroid/webkit/WebView$PictureListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1981
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1982
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    return-void
.end method

.method public setRendererPriorityPolicy(IZ)V
    .locals 0

    .line 2430
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1, p2}, Landroid/webkit/WebViewProvider;->setRendererPriorityPolicy(IZ)V

    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1

    .line 2747
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->setScrollBarStyle(I)V

    .line 2748
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setScrollBarStyle(I)V

    return-void
.end method

.method public setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
    .locals 0

    .line 2458
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider;->setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V

    return-void
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 0

    .line 1956
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1957
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 0

    .line 1920
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1921
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2844
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object p0

    invoke-interface {p0}, Landroid/webkit/WebViewProvider$ViewDelegate;->shouldDelayChildPressedState()Z

    move-result p0

    return p0
.end method

.method public showFindDialog(Ljava/lang/String;Z)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1834
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1835
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1, p2}, Landroid/webkit/WebViewProvider;->showFindDialog(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public stopLoading()V
    .locals 0

    .line 1148
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 1149
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->stopLoading()V

    return-void
.end method

.method public zoomBy(F)V
    .locals 4

    .line 2310
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    float-to-double v0, p1

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v2, v0, v2

    if-ltz v2, :cond_1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 2315
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0, p1}, Landroid/webkit/WebViewProvider;->zoomBy(F)Z

    return-void

    .line 2314
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "zoomFactor must be less than 100."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2312
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "zoomFactor must be greater than 0.01."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public zoomIn()Z
    .locals 0

    .line 2324
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 2325
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->zoomIn()Z

    move-result p0

    return p0
.end method

.method public zoomOut()Z
    .locals 0

    .line 2334
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    .line 2335
    iget-object p0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {p0}, Landroid/webkit/WebViewProvider;->zoomOut()Z

    move-result p0

    return p0
.end method
