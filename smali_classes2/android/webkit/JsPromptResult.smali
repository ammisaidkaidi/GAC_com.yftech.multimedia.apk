.class public Landroid/webkit/JsPromptResult;
.super Landroid/webkit/JsResult;
.source "JsPromptResult.java"


# instance fields
.field private mStringResult:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/webkit/JsResult$ResultReceiver;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 46
    invoke-direct {p0, p1}, Landroid/webkit/JsResult;-><init>(Landroid/webkit/JsResult$ResultReceiver;)V

    return-void
.end method


# virtual methods
.method public confirm(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Landroid/webkit/JsPromptResult;->mStringResult:Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Landroid/webkit/JsPromptResult;->confirm()V

    return-void
.end method

.method public getStringResult()Ljava/lang/String;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 54
    iget-object p0, p0, Landroid/webkit/JsPromptResult;->mStringResult:Ljava/lang/String;

    return-object p0
.end method
