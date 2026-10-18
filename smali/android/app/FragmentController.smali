.class public Landroid/app/FragmentController;
.super Ljava/lang/Object;
.source "FragmentController.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mHost:Landroid/app/FragmentHostCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/FragmentHostCallback<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/app/FragmentHostCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentHostCallback<",
            "*>;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    return-void
.end method

.method public static final createController(Landroid/app/FragmentHostCallback;)Landroid/app/FragmentController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentHostCallback<",
            "*>;)",
            "Landroid/app/FragmentController;"
        }
    .end annotation

    .line 52
    new-instance v0, Landroid/app/FragmentController;

    invoke-direct {v0, p0}, Landroid/app/FragmentController;-><init>(Landroid/app/FragmentHostCallback;)V

    return-object v0
.end method


# virtual methods
.method public attachHost(Landroid/app/Fragment;)V
    .locals 2

    .line 86
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    iget-object v1, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0, v1, p0, p1}, Landroid/app/FragmentManagerImpl;->attachController(Landroid/app/FragmentHostCallback;Landroid/app/FragmentContainer;Landroid/app/Fragment;)V

    return-void
.end method

.method public dispatchActivityCreated()V
    .locals 0

    .line 182
    iget-object p0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->dispatchActivityCreated()V

    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 310
    iget-object p0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 384
    iget-object p0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public dispatchCreate()V
    .locals 0

    .line 171
    iget-object p0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->dispatchCreate()V

    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 0

    .line 346
    iget-object p0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {p0, p1, p2}, Landroid/app/FragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p0

    return p0
.end method

.method public dispatchDestroy()V
    .locals 0

    .line 248
    iget-object p0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->dispatchDestroy()V

    return-void
.end method

.method public dispatchDestroyView()V
    .locals 0

    .line 237
    iget-object p0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->dispatchDestroyView()V

    return-void
.end method

.method public dispatchLowMemory()V
    .locals 0

    .line 322
    iget-object p0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->dispatchLowMemory()V

    return-void
.end method

.method public dispatchMultiWindowModeChanged(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 261
    iget-object p0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->dispatchMultiWindowModeChanged(Z)V

    return-void
.end method

.method public dispatchMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    .line 273
    iget-object p0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {p0, p1, p2}, Landroid/app/FragmentManagerImpl;->dispatchMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    return-void
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 371
    iget-object p0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0

    .line 395
    iget-object p0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public dispatchPause()V
    .locals 0

    .line 215
    iget-object p0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->dispatchPause()V

    return-void
.end method

.method public dispatchPictureInPictureModeChanged(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 286
    iget-object p0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->dispatchPictureInPictureModeChanged(Z)V

    return-void
.end method

.method public dispatchPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    .line 298
    iget-object p0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {p0, p1, p2}, Landroid/app/FragmentManagerImpl;->dispatchPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 358
    iget-object p0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public dispatchResume()V
    .locals 0

    .line 204
    iget-object p0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->dispatchResume()V

    return-void
.end method

.method public dispatchStart()V
    .locals 0

    .line 193
    iget-object p0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->dispatchStart()V

    return-void
.end method

.method public dispatchStop()V
    .locals 0

    .line 226
    iget-object p0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->dispatchStop()V

    return-void
.end method

.method public dispatchTrimMemory(I)V
    .locals 0

    .line 334
    iget-object p0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->dispatchTrimMemory(I)V

    return-void
.end method

.method public doLoaderDestroy()V
    .locals 0

    .line 431
    iget-object p0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {p0}, Landroid/app/FragmentHostCallback;->doLoaderDestroy()V

    return-void
.end method

.method public doLoaderStart()V
    .locals 0

    .line 413
    iget-object p0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {p0}, Landroid/app/FragmentHostCallback;->doLoaderStart()V

    return-void
.end method

.method public doLoaderStop(Z)V
    .locals 0

    .line 424
    iget-object p0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {p0, p1}, Landroid/app/FragmentHostCallback;->doLoaderStop(Z)V

    return-void
.end method

.method public dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 463
    iget-object p0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/FragmentHostCallback;->dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public execPendingActions()Z
    .locals 0

    .line 406
    iget-object p0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    move-result p0

    return p0
.end method

.method public findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 0

    .line 78
    iget-object p0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public getFragmentManager()Landroid/app/FragmentManager;
    .locals 0

    .line 63
    iget-object p0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {p0}, Landroid/app/FragmentHostCallback;->getFragmentManagerImpl()Landroid/app/FragmentManagerImpl;

    move-result-object p0

    return-object p0
.end method

.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 0

    .line 70
    iget-object p0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {p0}, Landroid/app/FragmentHostCallback;->getLoaderManagerImpl()Landroid/app/LoaderManagerImpl;

    move-result-object p0

    return-object p0
.end method

.method public noteStateNotSaved()V
    .locals 0

    .line 109
    iget-object p0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 102
    iget-object p0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/FragmentManagerImpl;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public reportLoaderStart()V
    .locals 0

    .line 438
    iget-object p0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {p0}, Landroid/app/FragmentHostCallback;->reportLoaderStart()V

    return-void
.end method

.method public restoreAllState(Landroid/os/Parcelable;Landroid/app/FragmentManagerNonConfig;)V
    .locals 0

    .line 140
    iget-object p0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {p0, p1, p2}, Landroid/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Landroid/app/FragmentManagerNonConfig;)V

    return-void
.end method

.method public restoreAllState(Landroid/os/Parcelable;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/List<",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 129
    iget-object p0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    new-instance v0, Landroid/app/FragmentManagerNonConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Landroid/app/FragmentManagerNonConfig;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, p1, v0}, Landroid/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Landroid/app/FragmentManagerNonConfig;)V

    return-void
.end method

.method public restoreLoaderNonConfig(Landroid/util/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/LoaderManager;",
            ">;)V"
        }
    .end annotation

    .line 456
    iget-object p0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {p0, p1}, Landroid/app/FragmentHostCallback;->restoreLoaderNonConfig(Landroid/util/ArrayMap;)V

    return-void
.end method

.method public retainLoaderNonConfig()Landroid/util/ArrayMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/LoaderManager;",
            ">;"
        }
    .end annotation

    .line 446
    iget-object p0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {p0}, Landroid/app/FragmentHostCallback;->retainLoaderNonConfig()Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public retainNestedNonConfig()Landroid/app/FragmentManagerNonConfig;
    .locals 0

    .line 160
    iget-object p0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->retainNonConfig()Landroid/app/FragmentManagerNonConfig;

    move-result-object p0

    return-object p0
.end method

.method public retainNonConfig()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 152
    iget-object p0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->retainNonConfig()Landroid/app/FragmentManagerNonConfig;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public saveAllState()Landroid/os/Parcelable;
    .locals 0

    .line 116
    iget-object p0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method
