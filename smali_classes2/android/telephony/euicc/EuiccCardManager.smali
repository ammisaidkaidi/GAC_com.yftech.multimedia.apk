.class public Landroid/telephony/euicc/EuiccCardManager;
.super Ljava/lang/Object;
.source "EuiccCardManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/euicc/EuiccCardManager$ResultCallback;,
        Landroid/telephony/euicc/EuiccCardManager$ResetOption;,
        Landroid/telephony/euicc/EuiccCardManager$CancelReason;
    }
.end annotation


# static fields
.field public static final CANCEL_REASON_END_USER_REJECTED:I = 0x0

.field public static final CANCEL_REASON_POSTPONED:I = 0x1

.field public static final CANCEL_REASON_PPR_NOT_ALLOWED:I = 0x3

.field public static final CANCEL_REASON_TIMEOUT:I = 0x2

.field public static final RESET_OPTION_DELETE_FIELD_LOADED_TEST_PROFILES:I = 0x2

.field public static final RESET_OPTION_DELETE_OPERATIONAL_PROFILES:I = 0x1

.field public static final RESET_OPTION_RESET_DEFAULT_SMDP_ADDRESS:I = 0x4

.field public static final RESULT_EUICC_NOT_FOUND:I = -0x2

.field public static final RESULT_OK:I = 0x0

.field public static final RESULT_UNKNOWN_ERROR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "EuiccCardManager"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;
    .locals 0

    const-string p0, "euicc_card_controller"

    .line 148
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 147
    invoke-static {p0}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public authenticateServer(Ljava/lang/String;Ljava/lang/String;[B[B[B[BLjava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B[B[B[B",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "[B>;)V"
        }
    .end annotation

    move-object v0, p0

    .line 508
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v1

    iget-object v2, v0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    .line 509
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Landroid/telephony/euicc/EuiccCardManager$15;

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    invoke-direct {v8, p0, v3, v4}, Landroid/telephony/euicc/EuiccCardManager$15;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 508
    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->authenticateServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B[BLcom/android/internal/telephony/euicc/IAuthenticateServerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "EuiccCardManager"

    const-string v2, "Error calling authenticateServer"

    .line 523
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 524
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public cancelSession(Ljava/lang/String;[BILjava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[BI",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "[B>;)V"
        }
    .end annotation

    .line 608
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    .line 609
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Landroid/telephony/euicc/EuiccCardManager$18;

    invoke-direct {v5, p0, p4, p5}, Landroid/telephony/euicc/EuiccCardManager$18;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .line 608
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->cancelSession(Ljava/lang/String;Ljava/lang/String;[BILcom/android/internal/telephony/euicc/ICancelSessionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "EuiccCardManager"

    const-string p2, "Error calling cancelSession"

    .line 620
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 621
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public deleteProfile(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 285
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$6;

    invoke-direct {v2, p0, p3, p4}, Landroid/telephony/euicc/EuiccCardManager$6;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->deleteProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IDeleteProfileCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "EuiccCardManager"

    const-string p2, "Error calling deleteProfile"

    .line 293
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 294
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public disableProfile(Ljava/lang/String;Ljava/lang/String;ZLjava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 210
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Landroid/telephony/euicc/EuiccCardManager$3;

    invoke-direct {v5, p0, p4, p5}, Landroid/telephony/euicc/EuiccCardManager$3;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->disableProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/euicc/IDisableProfileCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "EuiccCardManager"

    const-string p2, "Error calling disableProfile"

    .line 218
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public listNotifications(Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "[",
            "Landroid/telephony/euicc/EuiccNotification;",
            ">;)V"
        }
    .end annotation

    .line 636
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$19;

    invoke-direct {v2, p0, p3, p4}, Landroid/telephony/euicc/EuiccCardManager$19;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->listNotifications(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IListNotificationsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "EuiccCardManager"

    const-string p2, "Error calling listNotifications"

    .line 644
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 645
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public loadBoundProfilePackage(Ljava/lang/String;[BLjava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "[B>;)V"
        }
    .end annotation

    .line 579
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    .line 580
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$17;

    invoke-direct {v2, p0, p3, p4}, Landroid/telephony/euicc/EuiccCardManager$17;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    .line 579
    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->loadBoundProfilePackage(Ljava/lang/String;Ljava/lang/String;[BLcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "EuiccCardManager"

    const-string p2, "Error calling loadBoundProfilePackage"

    .line 590
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 591
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public prepareDownload(Ljava/lang/String;[B[B[B[BLjava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B[B[B[B",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "[B>;)V"
        }
    .end annotation

    .line 548
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    .line 549
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Landroid/telephony/euicc/EuiccCardManager$16;

    invoke-direct {v7, p0, p6, p7}, Landroid/telephony/euicc/EuiccCardManager$16;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 548
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->prepareDownload(Ljava/lang/String;Ljava/lang/String;[B[B[B[BLcom/android/internal/telephony/euicc/IPrepareDownloadCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "EuiccCardManager"

    const-string p2, "Error calling prepareDownload"

    .line 562
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 563
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public removeNotificationFromList(Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 708
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    .line 709
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$22;

    invoke-direct {v2, p0, p3, p4}, Landroid/telephony/euicc/EuiccCardManager$22;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    .line 708
    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->removeNotificationFromList(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IRemoveNotificationFromListCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "EuiccCardManager"

    const-string p2, "Error calling removeNotificationFromList"

    .line 719
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 720
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public requestAllProfiles(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "[",
            "Landroid/service/euicc/EuiccProfileInfo;",
            ">;)V"
        }
    .end annotation

    .line 161
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$1;

    invoke-direct {v2, p0, p2, p3}, Landroid/telephony/euicc/EuiccCardManager$1;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->getAllProfiles(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetAllProfilesCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "EuiccCardManager"

    const-string p2, "Error calling getAllProfiles"

    .line 169
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public requestDefaultSmdpAddress(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 333
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$8;

    invoke-direct {v2, p0, p2, p3}, Landroid/telephony/euicc/EuiccCardManager$8;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->getDefaultSmdpAddress(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetDefaultSmdpAddressCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "EuiccCardManager"

    const-string p2, "Error calling getDefaultSmdpAddress"

    .line 341
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public requestEuiccChallenge(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "[B>;)V"
        }
    .end annotation

    .line 427
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$12;

    invoke-direct {v2, p0, p2, p3}, Landroid/telephony/euicc/EuiccCardManager$12;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->getEuiccChallenge(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetEuiccChallengeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "EuiccCardManager"

    const-string p2, "Error calling getEuiccChallenge"

    .line 435
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 436
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public requestEuiccInfo1(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "[B>;)V"
        }
    .end annotation

    .line 450
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$13;

    invoke-direct {v2, p0, p2, p3}, Landroid/telephony/euicc/EuiccCardManager$13;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->getEuiccInfo1(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "EuiccCardManager"

    const-string p2, "Error calling getEuiccInfo1"

    .line 458
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 459
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public requestEuiccInfo2(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "[B>;)V"
        }
    .end annotation

    .line 473
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$14;

    invoke-direct {v2, p0, p2, p3}, Landroid/telephony/euicc/EuiccCardManager$14;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->getEuiccInfo2(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "EuiccCardManager"

    const-string p2, "Error calling getEuiccInfo2"

    .line 481
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 482
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public requestProfile(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "Landroid/service/euicc/EuiccProfileInfo;",
            ">;)V"
        }
    .end annotation

    .line 185
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$2;

    invoke-direct {v2, p0, p3, p4}, Landroid/telephony/euicc/EuiccCardManager$2;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->getProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetProfileCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "EuiccCardManager"

    const-string p2, "Error calling getProfile"

    .line 193
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public requestRulesAuthTable(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "Landroid/telephony/euicc/EuiccRulesAuthTable;",
            ">;)V"
        }
    .end annotation

    .line 404
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$11;

    invoke-direct {v2, p0, p2, p3}, Landroid/telephony/euicc/EuiccCardManager$11;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->getRulesAuthTable(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "EuiccCardManager"

    const-string p2, "Error calling getRulesAuthTable"

    .line 412
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 413
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public requestSmdsAddress(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 356
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$9;

    invoke-direct {v2, p0, p2, p3}, Landroid/telephony/euicc/EuiccCardManager$9;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->getSmdsAddress(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetSmdsAddressCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "EuiccCardManager"

    const-string p2, "Error calling getSmdsAddress"

    .line 364
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public resetMemory(Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 310
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$7;

    invoke-direct {v2, p0, p3, p4}, Landroid/telephony/euicc/EuiccCardManager$7;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->resetMemory(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IResetMemoryCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "EuiccCardManager"

    const-string p2, "Error calling resetMemory"

    .line 318
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public retrieveNotification(Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "Landroid/telephony/euicc/EuiccNotification;",
            ">;)V"
        }
    .end annotation

    .line 684
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$21;

    invoke-direct {v2, p0, p3, p4}, Landroid/telephony/euicc/EuiccCardManager$21;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->retrieveNotification(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IRetrieveNotificationCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "EuiccCardManager"

    const-string p2, "Error calling retrieveNotification"

    .line 692
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 693
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public retrieveNotificationList(Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "[",
            "Landroid/telephony/euicc/EuiccNotification;",
            ">;)V"
        }
    .end annotation

    .line 660
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$20;

    invoke-direct {v2, p0, p3, p4}, Landroid/telephony/euicc/EuiccCardManager$20;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->retrieveNotificationList(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IRetrieveNotificationListCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "EuiccCardManager"

    const-string p2, "Error calling retrieveNotificationList"

    .line 668
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 669
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setDefaultSmdpAddress(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 380
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/telephony/euicc/EuiccCardManager$10;

    invoke-direct {v2, p0, p3, p4}, Landroid/telephony/euicc/EuiccCardManager$10;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->setDefaultSmdpAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/ISetDefaultSmdpAddressCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "EuiccCardManager"

    const-string p2, "Error calling setDefaultSmdpAddress"

    .line 389
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 390
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setNickname(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 261
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Landroid/telephony/euicc/EuiccCardManager$5;

    invoke-direct {v5, p0, p4, p5}, Landroid/telephony/euicc/EuiccCardManager$5;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->setNickname(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/ISetNicknameCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "EuiccCardManager"

    const-string p2, "Error calling setNickname"

    .line 269
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public switchToProfile(Ljava/lang/String;Ljava/lang/String;ZLjava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/concurrent/Executor;",
            "Landroid/telephony/euicc/EuiccCardManager$ResultCallback<",
            "Landroid/service/euicc/EuiccProfileInfo;",
            ">;)V"
        }
    .end annotation

    .line 236
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/euicc/EuiccCardManager;->getIEuiccCardController()Lcom/android/internal/telephony/euicc/IEuiccCardController;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Landroid/telephony/euicc/EuiccCardManager$4;

    invoke-direct {v5, p0, p4, p5}, Landroid/telephony/euicc/EuiccCardManager$4;-><init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/IEuiccCardController;->switchToProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/euicc/ISwitchToProfileCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "EuiccCardManager"

    const-string p2, "Error calling switchToProfile"

    .line 244
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
