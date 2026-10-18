.class public final Landroid/telephony/LocationAccessPolicy;
.super Ljava/lang/Object;
.source "LocationAccessPolicy.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LocationAccessPolicy"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canAccessCellLocation(Landroid/content/Context;Ljava/lang/String;IIZ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v0, "TelephonyLohcationCheck"

    .line 55
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/16 v1, 0x3e9

    if-ne p2, v1, :cond_0

    .line 90
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v0

    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_1

    :try_start_0
    const-string p4, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v3, "canAccessCellLocation"

    .line 71
    invoke-virtual {p0, p4, p3, p2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const-string p4, "android.permission.ACCESS_COARSE_LOCATION"

    .line 73
    invoke-virtual {p0, p4, p3, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p3, v1, :cond_2

    .line 90
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v2

    :cond_2
    :goto_0
    :try_start_1
    const-string p3, "android.permission.ACCESS_COARSE_LOCATION"

    .line 77
    invoke-static {p3}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result p3

    if-eq p3, v1, :cond_3

    .line 79
    const-class p4, Landroid/app/AppOpsManager;

    invoke-virtual {p0, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/AppOpsManager;

    .line 80
    invoke-virtual {p4, p3, p2, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_3

    .line 90
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v2

    .line 83
    :cond_3
    :try_start_2
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-static {p0, p1}, Landroid/telephony/LocationAccessPolicy;->isLocationModeEnabled(Landroid/content/Context;I)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_4

    .line 90
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v2

    .line 88
    :cond_4
    :try_start_3
    invoke-static {p0, p2}, Landroid/telephony/LocationAccessPolicy;->isCurrentProfile(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {p0}, Landroid/telephony/LocationAccessPolicy;->checkInteractAcrossUsersFull(Landroid/content/Context;)Z

    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    move v0, v2

    .line 90
    :cond_6
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v0

    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method private static checkInteractAcrossUsersFull(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 104
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isCurrentProfile(Landroid/content/Context;I)Z
    .locals 5

    .line 110
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 112
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 113
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    if-ne p1, v2, :cond_0

    .line 127
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    .line 117
    :cond_0
    :try_start_1
    const-class v4, Landroid/os/UserManager;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 118
    invoke-virtual {p0, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p0

    .line 119
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 120
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, p1, :cond_1

    .line 127
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_2
    const/4 p0, 0x0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method private static isLocationModeEnabled(Landroid/content/Context;I)Z
    .locals 1

    .line 95
    const-class v0, Landroid/location/LocationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    if-nez p0, :cond_0

    .line 97
    sget-object p0, Landroid/telephony/LocationAccessPolicy;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Couldn\'t get location manager, denying location access"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 100
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method
