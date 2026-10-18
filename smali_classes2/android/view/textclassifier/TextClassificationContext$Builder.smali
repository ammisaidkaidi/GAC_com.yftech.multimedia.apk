.class public final Landroid/view/textclassifier/TextClassificationContext$Builder;
.super Ljava/lang/Object;
.source "TextClassificationContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassificationContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mWidgetType:Ljava/lang/String;

.field private mWidgetVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/view/textclassifier/TextClassificationContext$Builder;->mPackageName:Ljava/lang/String;

    .line 102
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/view/textclassifier/TextClassificationContext$Builder;->mWidgetType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Landroid/view/textclassifier/TextClassificationContext;
    .locals 4

    .line 122
    new-instance v0, Landroid/view/textclassifier/TextClassificationContext;

    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationContext$Builder;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/view/textclassifier/TextClassificationContext$Builder;->mWidgetType:Ljava/lang/String;

    iget-object p0, p0, Landroid/view/textclassifier/TextClassificationContext$Builder;->mWidgetVersion:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/view/textclassifier/TextClassificationContext;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/textclassifier/TextClassificationContext$1;)V

    return-object v0
.end method

.method public setWidgetVersion(Ljava/lang/String;)Landroid/view/textclassifier/TextClassificationContext$Builder;
    .locals 0

    .line 111
    iput-object p1, p0, Landroid/view/textclassifier/TextClassificationContext$Builder;->mWidgetVersion:Ljava/lang/String;

    return-object p0
.end method
