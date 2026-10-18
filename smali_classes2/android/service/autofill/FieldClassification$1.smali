.class Landroid/service/autofill/FieldClassification$1;
.super Ljava/lang/Object;
.source "FieldClassification.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/autofill/FieldClassification;-><init>(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/service/autofill/FieldClassification$Match;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/autofill/FieldClassification;


# direct methods
.method constructor <init>(Landroid/service/autofill/FieldClassification;)V
    .locals 0

    .line 43
    iput-object p1, p0, Landroid/service/autofill/FieldClassification$1;->this$0:Landroid/service/autofill/FieldClassification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/service/autofill/FieldClassification$Match;Landroid/service/autofill/FieldClassification$Match;)I
    .locals 1

    .line 46
    invoke-static {p1}, Landroid/service/autofill/FieldClassification$Match;->access$000(Landroid/service/autofill/FieldClassification$Match;)F

    move-result p0

    invoke-static {p2}, Landroid/service/autofill/FieldClassification$Match;->access$000(Landroid/service/autofill/FieldClassification$Match;)F

    move-result v0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 47
    :cond_0
    invoke-static {p1}, Landroid/service/autofill/FieldClassification$Match;->access$000(Landroid/service/autofill/FieldClassification$Match;)F

    move-result p0

    invoke-static {p2}, Landroid/service/autofill/FieldClassification$Match;->access$000(Landroid/service/autofill/FieldClassification$Match;)F

    move-result p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 43
    check-cast p1, Landroid/service/autofill/FieldClassification$Match;

    check-cast p2, Landroid/service/autofill/FieldClassification$Match;

    invoke-virtual {p0, p1, p2}, Landroid/service/autofill/FieldClassification$1;->compare(Landroid/service/autofill/FieldClassification$Match;Landroid/service/autofill/FieldClassification$Match;)I

    move-result p0

    return p0
.end method
