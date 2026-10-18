.class public Landroid/text/style/TtsSpan$MeasureBuilder;
.super Landroid/text/style/TtsSpan$SemioticClassBuilder;
.source "TtsSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MeasureBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TtsSpan$SemioticClassBuilder<",
        "Landroid/text/style/TtsSpan$MeasureBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "android.type.measure"

    .line 986
    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public setDenominator(J)Landroid/text/style/TtsSpan$MeasureBuilder;
    .locals 0

    .line 1068
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$MeasureBuilder;->setDenominator(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setDenominator(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;
    .locals 1

    const-string v0, "android.arg.denominator"

    .line 1078
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$MeasureBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object p0

    check-cast p0, Landroid/text/style/TtsSpan$MeasureBuilder;

    return-object p0
.end method

.method public setFractionalPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;
    .locals 1

    const-string v0, "android.arg.fractional_part"

    .line 1037
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$MeasureBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object p0

    check-cast p0, Landroid/text/style/TtsSpan$MeasureBuilder;

    return-object p0
.end method

.method public setIntegerPart(J)Landroid/text/style/TtsSpan$MeasureBuilder;
    .locals 0

    .line 1016
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$MeasureBuilder;->setIntegerPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setIntegerPart(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;
    .locals 1

    const-string v0, "android.arg.integer_part"

    .line 1027
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$MeasureBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object p0

    check-cast p0, Landroid/text/style/TtsSpan$MeasureBuilder;

    return-object p0
.end method

.method public setNumber(J)Landroid/text/style/TtsSpan$MeasureBuilder;
    .locals 0

    .line 996
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$MeasureBuilder;->setNumber(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setNumber(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;
    .locals 1

    const-string v0, "android.arg.number"

    .line 1006
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$MeasureBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object p0

    check-cast p0, Landroid/text/style/TtsSpan$MeasureBuilder;

    return-object p0
.end method

.method public setNumerator(J)Landroid/text/style/TtsSpan$MeasureBuilder;
    .locals 0

    .line 1048
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$MeasureBuilder;->setNumerator(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setNumerator(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;
    .locals 1

    const-string v0, "android.arg.numerator"

    .line 1058
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$MeasureBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object p0

    check-cast p0, Landroid/text/style/TtsSpan$MeasureBuilder;

    return-object p0
.end method

.method public setUnit(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;
    .locals 1

    const-string v0, "android.arg.unit"

    .line 1088
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$MeasureBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object p0

    check-cast p0, Landroid/text/style/TtsSpan$MeasureBuilder;

    return-object p0
.end method
