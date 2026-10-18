.class final Landroid/view/textclassifier/SystemTextClassifier$TextClassificationCallback;
.super Landroid/service/textclassifier/ITextClassificationCallback$Stub;
.source "SystemTextClassifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/SystemTextClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TextClassificationCallback"
.end annotation


# instance fields
.field final mReceiver:Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver<",
            "Landroid/view/textclassifier/TextClassification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 197
    invoke-direct {p0}, Landroid/service/textclassifier/ITextClassificationCallback$Stub;-><init>()V

    .line 199
    new-instance v0, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;-><init>(Landroid/view/textclassifier/SystemTextClassifier$1;)V

    iput-object v0, p0, Landroid/view/textclassifier/SystemTextClassifier$TextClassificationCallback;->mReceiver:Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/textclassifier/SystemTextClassifier$1;)V
    .locals 0

    .line 197
    invoke-direct {p0}, Landroid/view/textclassifier/SystemTextClassifier$TextClassificationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 0

    .line 208
    iget-object p0, p0, Landroid/view/textclassifier/SystemTextClassifier$TextClassificationCallback;->mReceiver:Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;

    invoke-virtual {p0}, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;->onFailure()V

    return-void
.end method

.method public onSuccess(Landroid/view/textclassifier/TextClassification;)V
    .locals 0

    .line 203
    iget-object p0, p0, Landroid/view/textclassifier/SystemTextClassifier$TextClassificationCallback;->mReceiver:Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;

    invoke-virtual {p0, p1}, Landroid/view/textclassifier/SystemTextClassifier$ResponseReceiver;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
