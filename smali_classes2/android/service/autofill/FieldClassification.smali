.class public final Landroid/service/autofill/FieldClassification;
.super Ljava/lang/Object;
.source "FieldClassification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/FieldClassification$Match;
    }
.end annotation


# instance fields
.field private final mMatches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/FieldClassification$Match;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/FieldClassification$Match;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/service/autofill/FieldClassification;->mMatches:Ljava/util/ArrayList;

    .line 43
    iget-object p1, p0, Landroid/service/autofill/FieldClassification;->mMatches:Ljava/util/ArrayList;

    new-instance v0, Landroid/service/autofill/FieldClassification$1;

    invoke-direct {v0, p0}, Landroid/service/autofill/FieldClassification$1;-><init>(Landroid/service/autofill/FieldClassification;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method static readArrayFromParcel(Landroid/os/Parcel;)[Landroid/service/autofill/FieldClassification;
    .locals 4

    .line 91
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 92
    new-array v1, v0, [Landroid/service/autofill/FieldClassification;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 94
    invoke-static {p0}, Landroid/service/autofill/FieldClassification;->readFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/FieldClassification;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/FieldClassification;
    .locals 4

    .line 81
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 84
    invoke-static {p0}, Landroid/service/autofill/FieldClassification$Match;->access$200(Landroid/os/Parcel;)Landroid/service/autofill/FieldClassification$Match;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    :cond_0
    new-instance p0, Landroid/service/autofill/FieldClassification;

    invoke-direct {p0, v1}, Landroid/service/autofill/FieldClassification;-><init>(Ljava/util/ArrayList;)V

    return-object p0
.end method

.method static writeArrayToParcel(Landroid/os/Parcel;[Landroid/service/autofill/FieldClassification;)V
    .locals 2

    .line 100
    array-length v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .line 101
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 102
    aget-object v1, p1, v0

    invoke-direct {v1, p0}, Landroid/service/autofill/FieldClassification;->writeToParcel(Landroid/os/Parcel;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeToParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 74
    iget-object v0, p0, Landroid/service/autofill/FieldClassification;->mMatches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .line 75
    :goto_0
    iget-object v1, p0, Landroid/service/autofill/FieldClassification;->mMatches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 76
    iget-object v1, p0, Landroid/service/autofill/FieldClassification;->mMatches:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/FieldClassification$Match;

    invoke-static {v1, p1}, Landroid/service/autofill/FieldClassification$Match;->access$100(Landroid/service/autofill/FieldClassification$Match;Landroid/os/Parcel;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getMatches()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/autofill/FieldClassification$Match;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object p0, p0, Landroid/service/autofill/FieldClassification;->mMatches:Ljava/util/ArrayList;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 68
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FieldClassification: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/service/autofill/FieldClassification;->mMatches:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
