.class public abstract Landroid/service/textclassifier/TextClassifierService;
.super Landroid/app/Service;
.source "TextClassifierService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/textclassifier/TextClassifierService$Callback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TextClassifierService"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.textclassifier.TextClassifierService"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final mBinder:Landroid/service/textclassifier/ITextClassifierService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 87
    new-instance v0, Landroid/service/textclassifier/TextClassifierService$1;

    invoke-direct {v0, p0}, Landroid/service/textclassifier/TextClassifierService$1;-><init>(Landroid/service/textclassifier/TextClassifierService;)V

    iput-object v0, p0, Landroid/service/textclassifier/TextClassifierService;->mBinder:Landroid/service/textclassifier/ITextClassifierService$Stub;

    return-void
.end method

.method public static getServiceComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 7

    .line 396
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getSystemTextClassifierPackageName()Ljava/lang/String;

    move-result-object v0

    .line 397
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p0, "TextClassifierService"

    const-string v0, "No configured system TextClassifierService"

    .line 398
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 402
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.service.textclassifier.TextClassifierService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 404
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v3, 0x100000

    invoke-virtual {p0, v1, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz p0, :cond_3

    .line 407
    iget-object v4, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v4, :cond_1

    goto :goto_0

    .line 412
    :cond_1
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 414
    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v4, "android.permission.BIND_TEXTCLASSIFIER_SERVICE"

    .line 415
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 416
    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "TextClassifierService"

    const-string v4, "Service %s should require %s permission. Found %s permission"

    const/4 v5, 0x3

    .line 418
    new-array v5, v5, [Ljava/lang/Object;

    .line 420
    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v1, "android.permission.BIND_TEXTCLASSIFIER_SERVICE"

    aput-object v1, v5, v3

    const/4 v1, 0x2

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    aput-object p0, v5, v1

    .line 418
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3
    :goto_0
    const-string p0, "TextClassifierService"

    const-string v4, "Package or service not found in package %s"

    .line 408
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method


# virtual methods
.method public final getLocalTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .locals 1

    .line 363
    const-class v0, Landroid/view/textclassifier/TextClassificationManager;

    invoke-virtual {p0, v0}, Landroid/service/textclassifier/TextClassifierService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/textclassifier/TextClassificationManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 365
    invoke-virtual {p0, v0}, Landroid/view/textclassifier/TextClassificationManager;->getTextClassifier(I)Landroid/view/textclassifier/TextClassifier;

    move-result-object p0

    return-object p0

    .line 367
    :cond_0
    sget-object p0, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    return-object p0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "android.service.textclassifier.TextClassifierService"

    .line 220
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 221
    iget-object p0, p0, Landroid/service/textclassifier/TextClassifierService;->mBinder:Landroid/service/textclassifier/ITextClassifierService$Stub;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract onClassifyText(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/os/CancellationSignal;Landroid/service/textclassifier/TextClassifierService$Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/textclassifier/TextClassificationSessionId;",
            "Landroid/view/textclassifier/TextClassification$Request;",
            "Landroid/os/CancellationSignal;",
            "Landroid/service/textclassifier/TextClassifierService$Callback<",
            "Landroid/view/textclassifier/TextClassification;",
            ">;)V"
        }
    .end annotation
.end method

.method public onClassifyText(Ljava/lang/CharSequence;IILandroid/view/textclassifier/TextClassification$Options;Landroid/os/CancellationSignal;Landroid/service/textclassifier/TextClassifierService$Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II",
            "Landroid/view/textclassifier/TextClassification$Options;",
            "Landroid/os/CancellationSignal;",
            "Landroid/service/textclassifier/TextClassifierService$Callback<",
            "Landroid/view/textclassifier/TextClassification;",
            ">;)V"
        }
    .end annotation

    .line 284
    invoke-virtual {p4}, Landroid/view/textclassifier/TextClassification$Options;->getSessionId()Landroid/view/textclassifier/TextClassificationSessionId;

    move-result-object v0

    .line 285
    invoke-virtual {p4}, Landroid/view/textclassifier/TextClassification$Options;->getRequest()Landroid/view/textclassifier/TextClassification$Request;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 286
    invoke-virtual {p4}, Landroid/view/textclassifier/TextClassification$Options;->getRequest()Landroid/view/textclassifier/TextClassification$Request;

    move-result-object p1

    goto :goto_0

    .line 291
    :cond_0
    new-instance v1, Landroid/view/textclassifier/TextClassification$Request$Builder;

    invoke-direct {v1, p1, p2, p3}, Landroid/view/textclassifier/TextClassification$Request$Builder;-><init>(Ljava/lang/CharSequence;II)V

    .line 289
    invoke-virtual {p4}, Landroid/view/textclassifier/TextClassification$Options;->getDefaultLocales()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/textclassifier/TextClassification$Request$Builder;->setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextClassification$Request$Builder;

    move-result-object p1

    .line 290
    invoke-virtual {p4}, Landroid/view/textclassifier/TextClassification$Options;->getReferenceTime()Ljava/time/ZonedDateTime;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/textclassifier/TextClassification$Request$Builder;->setReferenceTime(Ljava/time/ZonedDateTime;)Landroid/view/textclassifier/TextClassification$Request$Builder;

    move-result-object p1

    .line 291
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification$Request$Builder;->build()Landroid/view/textclassifier/TextClassification$Request;

    move-result-object p1

    .line 292
    :goto_0
    invoke-virtual {p0, v0, p1, p5, p6}, Landroid/service/textclassifier/TextClassifierService;->onClassifyText(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/os/CancellationSignal;Landroid/service/textclassifier/TextClassifierService$Callback;)V

    return-void
.end method

.method public onCreateTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V
    .locals 0

    return-void
.end method

.method public onDestroyTextClassificationSession(Landroid/view/textclassifier/TextClassificationSessionId;)V
    .locals 0

    return-void
.end method

.method public abstract onGenerateLinks(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/os/CancellationSignal;Landroid/service/textclassifier/TextClassifierService$Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/textclassifier/TextClassificationSessionId;",
            "Landroid/view/textclassifier/TextLinks$Request;",
            "Landroid/os/CancellationSignal;",
            "Landroid/service/textclassifier/TextClassifierService$Callback<",
            "Landroid/view/textclassifier/TextLinks;",
            ">;)V"
        }
    .end annotation
.end method

.method public onGenerateLinks(Ljava/lang/CharSequence;Landroid/view/textclassifier/TextLinks$Options;Landroid/os/CancellationSignal;Landroid/service/textclassifier/TextClassifierService$Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Landroid/view/textclassifier/TextLinks$Options;",
            "Landroid/os/CancellationSignal;",
            "Landroid/service/textclassifier/TextClassifierService$Callback<",
            "Landroid/view/textclassifier/TextLinks;",
            ">;)V"
        }
    .end annotation

    .line 317
    invoke-virtual {p2}, Landroid/view/textclassifier/TextLinks$Options;->getSessionId()Landroid/view/textclassifier/TextClassificationSessionId;

    move-result-object v0

    .line 318
    invoke-virtual {p2}, Landroid/view/textclassifier/TextLinks$Options;->getRequest()Landroid/view/textclassifier/TextLinks$Request;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 319
    invoke-virtual {p2}, Landroid/view/textclassifier/TextLinks$Options;->getRequest()Landroid/view/textclassifier/TextLinks$Request;

    move-result-object p1

    goto :goto_0

    .line 323
    :cond_0
    new-instance v1, Landroid/view/textclassifier/TextLinks$Request$Builder;

    invoke-direct {v1, p1}, Landroid/view/textclassifier/TextLinks$Request$Builder;-><init>(Ljava/lang/CharSequence;)V

    .line 321
    invoke-virtual {p2}, Landroid/view/textclassifier/TextLinks$Options;->getDefaultLocales()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/textclassifier/TextLinks$Request$Builder;->setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextLinks$Request$Builder;

    move-result-object p1

    .line 322
    invoke-virtual {p2}, Landroid/view/textclassifier/TextLinks$Options;->getEntityConfig()Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/textclassifier/TextLinks$Request$Builder;->setEntityConfig(Landroid/view/textclassifier/TextClassifier$EntityConfig;)Landroid/view/textclassifier/TextLinks$Request$Builder;

    move-result-object p1

    .line 323
    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$Request$Builder;->build()Landroid/view/textclassifier/TextLinks$Request;

    move-result-object p1

    .line 324
    :goto_0
    invoke-virtual {p0, v0, p1, p3, p4}, Landroid/service/textclassifier/TextClassifierService;->onGenerateLinks(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/os/CancellationSignal;Landroid/service/textclassifier/TextClassifierService$Callback;)V

    return-void
.end method

.method public onSelectionEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;)V
    .locals 0

    return-void
.end method

.method public abstract onSuggestSelection(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/os/CancellationSignal;Landroid/service/textclassifier/TextClassifierService$Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/textclassifier/TextClassificationSessionId;",
            "Landroid/view/textclassifier/TextSelection$Request;",
            "Landroid/os/CancellationSignal;",
            "Landroid/service/textclassifier/TextClassifierService$Callback<",
            "Landroid/view/textclassifier/TextSelection;",
            ">;)V"
        }
    .end annotation
.end method

.method public onSuggestSelection(Ljava/lang/CharSequence;IILandroid/view/textclassifier/TextSelection$Options;Landroid/os/CancellationSignal;Landroid/service/textclassifier/TextClassifierService$Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II",
            "Landroid/view/textclassifier/TextSelection$Options;",
            "Landroid/os/CancellationSignal;",
            "Landroid/service/textclassifier/TextClassifierService$Callback<",
            "Landroid/view/textclassifier/TextSelection;",
            ">;)V"
        }
    .end annotation

    .line 250
    invoke-virtual {p4}, Landroid/view/textclassifier/TextSelection$Options;->getSessionId()Landroid/view/textclassifier/TextClassificationSessionId;

    move-result-object v0

    .line 251
    invoke-virtual {p4}, Landroid/view/textclassifier/TextSelection$Options;->getRequest()Landroid/view/textclassifier/TextSelection$Request;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 252
    invoke-virtual {p4}, Landroid/view/textclassifier/TextSelection$Options;->getRequest()Landroid/view/textclassifier/TextSelection$Request;

    move-result-object p1

    goto :goto_0

    .line 256
    :cond_0
    new-instance v1, Landroid/view/textclassifier/TextSelection$Request$Builder;

    invoke-direct {v1, p1, p2, p3}, Landroid/view/textclassifier/TextSelection$Request$Builder;-><init>(Ljava/lang/CharSequence;II)V

    .line 255
    invoke-virtual {p4}, Landroid/view/textclassifier/TextSelection$Options;->getDefaultLocales()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/textclassifier/TextSelection$Request$Builder;->setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextSelection$Request$Builder;

    move-result-object p1

    .line 256
    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request$Builder;->build()Landroid/view/textclassifier/TextSelection$Request;

    move-result-object p1

    .line 257
    :goto_0
    invoke-virtual {p0, v0, p1, p5, p6}, Landroid/service/textclassifier/TextClassifierService;->onSuggestSelection(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/os/CancellationSignal;Landroid/service/textclassifier/TextClassifierService$Callback;)V

    return-void
.end method
