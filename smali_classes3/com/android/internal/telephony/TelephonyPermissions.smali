.class public final Lcom/android/internal/telephony/TelephonyPermissions;
.super Ljava/lang/Object;
.source "TelephonyPermissions.java"


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "TelephonyPermissions"

.field private static final TELEPHONY_SUPPLIER:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/internal/telephony/ITelephony;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    sget-object v0, Lcom/android/internal/telephony/-$$Lambda$TelephonyPermissions$LxEEC4irBSbjD1lSC4EeVLgFY9I;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$TelephonyPermissions$LxEEC4irBSbjD1lSC4EeVLgFY9I;

    sput-object v0, Lcom/android/internal/telephony/TelephonyPermissions;->TELEPHONY_SUPPLIER:Ljava/util/function/Supplier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCallingOrSelfReadPhoneNumber(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 179
    sget-object v1, Lcom/android/internal/telephony/TelephonyPermissions;->TELEPHONY_SUPPLIER:Ljava/util/function/Supplier;

    .line 180
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move v2, p1

    move-object v5, p2

    move-object v6, p3

    .line 179
    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/TelephonyPermissions;->checkReadPhoneNumber(Landroid/content/Context;Ljava/util/function/Supplier;IIILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 74
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyPermissions;->checkReadPhoneState(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static checkReadCallLog(Landroid/content/Context;IIILjava/lang/String;)Z
    .locals 6

    .line 144
    sget-object v1, Lcom/android/internal/telephony/TelephonyPermissions;->TELEPHONY_SUPPLIER:Ljava/util/function/Supplier;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyPermissions;->checkReadCallLog(Landroid/content/Context;Ljava/util/function/Supplier;IIILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static checkReadCallLog(Landroid/content/Context;Ljava/util/function/Supplier;IIILjava/lang/String;)Z
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/internal/telephony/ITelephony;",
            ">;III",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const-string v0, "android.permission.READ_CALL_LOG"

    .line 153
    invoke-virtual {p0, v0, p3, p4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    .line 157
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "readCallLog"

    .line 158
    invoke-static {p1, p2, p4, p0}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCarrierPrivilege(Ljava/util/function/Supplier;IILjava/lang/String;)V

    return v1

    :cond_0
    return v0

    :cond_1
    const-string p1, "appops"

    .line 166
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    const/4 p1, 0x6

    .line 167
    invoke-virtual {p0, p1, p4, p5}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public static checkReadPhoneNumber(Landroid/content/Context;Ljava/util/function/Supplier;IIILjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/internal/telephony/ITelephony;",
            ">;III",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const-string v0, "appops"

    .line 189
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    const/16 v1, 0xf

    .line 190
    invoke-virtual {v0, v1, p4, p5}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 200
    :cond_0
    :try_start_0
    invoke-static/range {p0 .. p6}, Lcom/android/internal/telephony/TelephonyPermissions;->checkReadPhoneState(Landroid/content/Context;Ljava/util/function/Supplier;IIILjava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    const/4 p2, -0x1

    :try_start_1
    const-string v1, "android.permission.READ_SMS"

    .line 206
    invoke-virtual {p0, v1, p3, p4, p6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    const-string v1, "android.permission.READ_SMS"

    .line 207
    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v1

    if-eq v1, p2, :cond_2

    .line 209
    invoke-virtual {v0, v1, p4, p5}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v1, :cond_1

    move p1, v2

    :cond_1
    return p1

    :cond_2
    return v2

    :catch_1
    :try_start_2
    const-string v1, "android.permission.READ_PHONE_NUMBERS"

    .line 217
    invoke-virtual {p0, v1, p3, p4, p6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    const-string p0, "android.permission.READ_PHONE_NUMBERS"

    .line 219
    invoke-static {p0}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result p0

    if-eq p0, p2, :cond_4

    .line 222
    invoke-virtual {v0, p0, p4, p5}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result p0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    if-nez p0, :cond_3

    move p1, v2

    :cond_3
    return p1

    :cond_4
    return v2

    .line 229
    :catch_2
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": Neither user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " nor current process has "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "android.permission.READ_SMS"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", or "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "android.permission.READ_PHONE_NUMBERS"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkReadPhoneState(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 101
    sget-object v1, Lcom/android/internal/telephony/TelephonyPermissions;->TELEPHONY_SUPPLIER:Ljava/util/function/Supplier;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/TelephonyPermissions;->checkReadPhoneState(Landroid/content/Context;Ljava/util/function/Supplier;IIILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static checkReadPhoneState(Landroid/content/Context;Ljava/util/function/Supplier;IIILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/internal/telephony/ITelephony;",
            ">;III",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 110
    invoke-virtual {p0, v1, p3, p4, p6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :try_start_1
    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 117
    invoke-virtual {p0, v1, p3, p4, p6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    const-string p1, "appops"

    .line 132
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    const/16 p1, 0x33

    .line 133
    invoke-virtual {p0, p1, p4, p5}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_1
    move-exception p0

    .line 122
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 123
    invoke-static {p1, p2, p4, p6}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCarrierPrivilege(Ljava/util/function/Supplier;IILjava/lang/String;)V

    return v0

    .line 126
    :cond_1
    throw p0
.end method

.method public static enforceCallingOrSelfCarrierPrivilege(ILjava/lang/String;)V
    .locals 1

    .line 262
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCarrierPrivilege(IILjava/lang/String;)V

    return-void
.end method

.method public static enforceCallingOrSelfModifyPermissionOrCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    .line 243
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 249
    :cond_0
    invoke-static {p1, p2}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfCarrierPrivilege(ILjava/lang/String;)V

    return-void
.end method

.method private static enforceCarrierPrivilege(IILjava/lang/String;)V
    .locals 1

    .line 266
    sget-object v0, Lcom/android/internal/telephony/TelephonyPermissions;->TELEPHONY_SUPPLIER:Ljava/util/function/Supplier;

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCarrierPrivilege(Ljava/util/function/Supplier;IILjava/lang/String;)V

    return-void
.end method

.method private static enforceCarrierPrivilege(Ljava/util/function/Supplier;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/android/internal/telephony/ITelephony;",
            ">;II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 271
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/TelephonyPermissions;->getCarrierPrivilegeStatus(Ljava/util/function/Supplier;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return-void

    .line 274
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0, p3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getCarrierPrivilegeStatus(Ljava/util/function/Supplier;II)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/android/internal/telephony/ITelephony;",
            ">;II)I"
        }
    .end annotation

    .line 280
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/ITelephony;

    if-eqz p0, :cond_0

    .line 283
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getCarrierPrivilegeStatusForUid(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    const-string p0, "TelephonyPermissions"

    const-string p1, "Phone process is down, cannot check carrier privileges"

    .line 288
    invoke-static {p0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$static$0()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    const-string v0, "phone"

    .line 42
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method
