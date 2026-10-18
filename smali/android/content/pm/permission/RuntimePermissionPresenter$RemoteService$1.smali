.class Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1;
.super Ljava/lang/Object;
.source "RuntimePermissionPresenter.java"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;

.field final synthetic val$callback:Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;Landroid/os/Handler;Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;)V
    .locals 0

    .line 212
    iput-object p1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1;->this$0:Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;

    iput-object p2, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1;->val$callback:Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "android.content.pm.permission.RuntimePermissionPresenter.key.result"

    .line 218
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 221
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 224
    :cond_1
    iget-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1;->val$handler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1$1;

    invoke-direct {v1, p0, p1}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1$1;-><init>(Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 232
    :cond_2
    iget-object p0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1;->val$callback:Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;

    invoke-virtual {p0, p1}, Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;->onGetAppPermissions(Ljava/util/List;)V

    :goto_1
    return-void
.end method
