.class public Landroid/text/style/TtsSpan$ElectronicBuilder;
.super Landroid/text/style/TtsSpan$SemioticClassBuilder;
.source "TtsSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ElectronicBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TtsSpan$SemioticClassBuilder<",
        "Landroid/text/style/TtsSpan$ElectronicBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "android.type.electronic"

    .line 1340
    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public setDomain(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .locals 1

    const-string v0, "android.arg.domain"

    .line 1387
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$ElectronicBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object p0

    check-cast p0, Landroid/text/style/TtsSpan$ElectronicBuilder;

    return-object p0
.end method

.method public setEmailArguments(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .locals 0

    .line 1352
    invoke-virtual {p0, p2}, Landroid/text/style/TtsSpan$ElectronicBuilder;->setDomain(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$ElectronicBuilder;->setUsername(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setFragmentId(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .locals 1

    const-string v0, "android.arg.fragment_id"

    .line 1421
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$ElectronicBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object p0

    check-cast p0, Landroid/text/style/TtsSpan$ElectronicBuilder;

    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .locals 1

    const-string v0, "android.arg.password"

    .line 1378
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$ElectronicBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object p0

    check-cast p0, Landroid/text/style/TtsSpan$ElectronicBuilder;

    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .locals 1

    const-string v0, "android.arg.path"

    .line 1404
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$ElectronicBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object p0

    check-cast p0, Landroid/text/style/TtsSpan$ElectronicBuilder;

    return-object p0
.end method

.method public setPort(I)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .locals 1

    const-string v0, "android.arg.port"

    .line 1395
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$ElectronicBuilder;->setIntArgument(Ljava/lang/String;I)Landroid/text/style/TtsSpan$Builder;

    move-result-object p0

    check-cast p0, Landroid/text/style/TtsSpan$ElectronicBuilder;

    return-object p0
.end method

.method public setProtocol(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .locals 1

    const-string v0, "android.arg.protocol"

    .line 1362
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$ElectronicBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object p0

    check-cast p0, Landroid/text/style/TtsSpan$ElectronicBuilder;

    return-object p0
.end method

.method public setQueryString(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .locals 1

    const-string v0, "android.arg.query_string"

    .line 1413
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$ElectronicBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object p0

    check-cast p0, Landroid/text/style/TtsSpan$ElectronicBuilder;

    return-object p0
.end method

.method public setUsername(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .locals 1

    const-string v0, "android.arg.username"

    .line 1370
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$ElectronicBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object p0

    check-cast p0, Landroid/text/style/TtsSpan$ElectronicBuilder;

    return-object p0
.end method
