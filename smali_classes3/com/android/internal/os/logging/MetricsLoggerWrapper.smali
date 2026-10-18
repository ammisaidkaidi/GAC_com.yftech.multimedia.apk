.class public Lcom/android/internal/os/logging/MetricsLoggerWrapper;
.super Ljava/lang/Object;
.source "MetricsLoggerWrapper.java"


# static fields
.field private static final METRIC_VALUE_DISMISSED_BY_DRAG:I = 0x1

.field private static final METRIC_VALUE_DISMISSED_BY_TAP:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getUid(Landroid/content/Context;Landroid/content/ComponentName;I)I
    .locals 1

    .line 76
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 77
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static logAppOverlayEnter(ILjava/lang/String;ZIZ)V
    .locals 2

    if-eqz p2, :cond_1

    const/16 p2, 0x7f6

    const/16 v0, 0x3b

    const/4 v1, 0x1

    if-eq p3, p2, :cond_0

    .line 110
    invoke-static {v0, p0, p1, v1, v1}, Landroid/util/StatsLog;->write(IILjava/lang/String;ZI)I

    goto :goto_0

    :cond_0
    if-nez p4, :cond_1

    const/4 p2, 0x0

    .line 113
    invoke-static {v0, p0, p1, p2, v1}, Landroid/util/StatsLog;->write(IILjava/lang/String;ZI)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static logAppOverlayExit(ILjava/lang/String;ZIZ)V
    .locals 2

    if-eqz p2, :cond_1

    const/16 p2, 0x7f6

    const/4 v0, 0x2

    const/16 v1, 0x3b

    if-eq p3, p2, :cond_0

    const/4 p2, 0x1

    .line 122
    invoke-static {v1, p0, p1, p2, v0}, Landroid/util/StatsLog;->write(IILjava/lang/String;ZI)I

    goto :goto_0

    :cond_0
    if-nez p4, :cond_1

    const/4 p2, 0x0

    .line 125
    invoke-static {v1, p0, p1, p2, v0}, Landroid/util/StatsLog;->write(IILjava/lang/String;ZI)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static logPictureInPictureDismissByDrag(Landroid/content/Context;Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/Pair<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x336

    const/4 v1, 0x1

    .line 50
    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 53
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 54
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->getUid(Landroid/content/Context;Landroid/content/ComponentName;I)I

    move-result p0

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/content/ComponentName;

    .line 55
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x34

    const/4 v1, 0x4

    .line 53
    invoke-static {v0, p0, p1, v1}, Landroid/util/StatsLog;->write(IILjava/lang/String;I)I

    return-void
.end method

.method public static logPictureInPictureDismissByTap(Landroid/content/Context;Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/Pair<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x336

    const/4 v1, 0x0

    .line 40
    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 42
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 43
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->getUid(Landroid/content/Context;Landroid/content/ComponentName;I)I

    move-result p0

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/content/ComponentName;

    .line 44
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x34

    const/4 v1, 0x4

    .line 42
    invoke-static {v0, p0, p1, v1}, Landroid/util/StatsLog;->write(IILjava/lang/String;I)I

    return-void
.end method

.method public static logPictureInPictureEnter(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 1

    const/16 v0, 0x333

    .line 90
    invoke-static {p0, v0, p3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    const/16 p0, 0x34

    const/4 p3, 0x1

    .line 92
    invoke-static {p0, p1, p2, p3}, Landroid/util/StatsLog;->write(IILjava/lang/String;I)I

    return-void
.end method

.method public static logPictureInPictureFullScreen(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0x334

    .line 99
    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    const/16 p0, 0x34

    const/4 v0, 0x2

    .line 101
    invoke-static {p0, p1, p2, v0}, Landroid/util/StatsLog;->write(IILjava/lang/String;I)I

    return-void
.end method

.method public static logPictureInPictureMenuVisible(Landroid/content/Context;Z)V
    .locals 1

    const/16 v0, 0x337

    .line 84
    invoke-static {p0, v0, p1}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    return-void
.end method

.method public static logPictureInPictureMinimize(Landroid/content/Context;ZLandroid/util/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Landroid/util/Pair<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x335

    .line 61
    invoke-static {p0, v0, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 63
    iget-object p1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/content/ComponentName;

    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 64
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->getUid(Landroid/content/Context;Landroid/content/ComponentName;I)I

    move-result p0

    iget-object p1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/content/ComponentName;

    .line 65
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x34

    const/4 v0, 0x3

    .line 63
    invoke-static {p2, p0, p1, v0}, Landroid/util/StatsLog;->write(IILjava/lang/String;I)I

    return-void
.end method
