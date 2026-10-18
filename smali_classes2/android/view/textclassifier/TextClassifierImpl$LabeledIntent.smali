.class final Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;
.super Ljava/lang/Object;
.source "TextClassifierImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifierImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LabeledIntent"
.end annotation


# static fields
.field static final DEFAULT_REQUEST_CODE:I


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private final mIntent:Landroid/content/Intent;

.field private final mRequestCode:I

.field private final mTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 0

    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 591
    iput-object p1, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mTitle:Ljava/lang/String;

    .line 592
    iput-object p2, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mDescription:Ljava/lang/String;

    .line 593
    iput-object p3, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mIntent:Landroid/content/Intent;

    .line 594
    iput p4, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mRequestCode:I

    return-void
.end method


# virtual methods
.method asRemoteAction(Landroid/content/Context;)Landroid/app/RemoteAction;
    .locals 7

    .line 615
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 616
    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 617
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_0

    .line 618
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_1

    const-string v4, "android"

    .line 621
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 623
    iget-object v4, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mIntent:Landroid/content/Intent;

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v3, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 624
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v4

    if-eqz v4, :cond_1

    .line 625
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 626
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v0

    .line 625
    invoke-static {v3, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_2

    const-string v0, "android"

    const v3, 0x10804a0

    .line 632
    invoke-static {v0, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 635
    :cond_2
    iget-object v3, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mIntent:Landroid/content/Intent;

    iget v4, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mRequestCode:I

    .line 636
    invoke-static {p1, v3, v4}, Landroid/view/textclassifier/TextClassification;->createPendingIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v1

    .line 640
    :cond_3
    new-instance v1, Landroid/app/RemoteAction;

    iget-object v3, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mTitle:Ljava/lang/String;

    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mDescription:Ljava/lang/String;

    invoke-direct {v1, v0, v3, p0, p1}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 641
    invoke-virtual {v1, v2}, Landroid/app/RemoteAction;->setShouldShowIcon(Z)V

    return-object v1
.end method

.method getDescription()Ljava/lang/String;
    .locals 0

    .line 602
    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method getIntent()Landroid/content/Intent;
    .locals 0

    .line 606
    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method getRequestCode()I
    .locals 0

    .line 610
    iget p0, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mRequestCode:I

    return p0
.end method

.method getTitle()Ljava/lang/String;
    .locals 0

    .line 598
    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mTitle:Ljava/lang/String;

    return-object p0
.end method
