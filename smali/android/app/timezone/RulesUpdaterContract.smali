.class public final Landroid/app/timezone/RulesUpdaterContract;
.super Ljava/lang/Object;
.source "RulesUpdaterContract.java"


# static fields
.field public static final ACTION_TRIGGER_RULES_UPDATE_CHECK:Ljava/lang/String; = "com.android.intent.action.timezone.TRIGGER_RULES_UPDATE_CHECK"

.field public static final EXTRA_CHECK_TOKEN:Ljava/lang/String; = "com.android.intent.extra.timezone.CHECK_TOKEN"

.field public static final TRIGGER_TIME_ZONE_RULES_CHECK_PERMISSION:Ljava/lang/String; = "android.permission.TRIGGER_TIME_ZONE_RULES_CHECK"

.field public static final UPDATE_TIME_ZONE_RULES_PERMISSION:Ljava/lang/String; = "android.permission.UPDATE_TIME_ZONE_RULES"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createUpdaterIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.intent.action.timezone.TRIGGER_RULES_UPDATE_CHECK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p0, 0x20

    .line 72
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static sendBroadcast(Landroid/content/Context;Ljava/lang/String;[B)V
    .locals 1

    .line 83
    invoke-static {p1}, Landroid/app/timezone/RulesUpdaterContract;->createUpdaterIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.android.intent.extra.timezone.CHECK_TOKEN"

    .line 84
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 85
    sget-object p2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string v0, "android.permission.UPDATE_TIME_ZONE_RULES"

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method
