.class public final Landroid/service/autofill/UserData;
.super Ljava/lang/Object;
.source "UserData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/UserData$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/UserData;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_MAX_CATEGORY_COUNT:I = 0xa

.field private static final DEFAULT_MAX_FIELD_CLASSIFICATION_IDS_SIZE:I = 0xa

.field private static final DEFAULT_MAX_USER_DATA_SIZE:I = 0x32

.field private static final DEFAULT_MAX_VALUE_LENGTH:I = 0x64

.field private static final DEFAULT_MIN_VALUE_LENGTH:I = 0x3

.field private static final TAG:Ljava/lang/String; = "UserData"


# instance fields
.field private final mAlgorithm:Ljava/lang/String;

.field private final mAlgorithmArgs:Landroid/os/Bundle;

.field private final mCategoryIds:[Ljava/lang/String;

.field private final mId:Ljava/lang/String;

.field private final mValues:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 340
    new-instance v0, Landroid/service/autofill/UserData$1;

    invoke-direct {v0}, Landroid/service/autofill/UserData$1;-><init>()V

    sput-object v0, Landroid/service/autofill/UserData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/service/autofill/UserData$Builder;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {p1}, Landroid/service/autofill/UserData$Builder;->access$000(Landroid/service/autofill/UserData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/UserData;->mId:Ljava/lang/String;

    .line 67
    invoke-static {p1}, Landroid/service/autofill/UserData$Builder;->access$100(Landroid/service/autofill/UserData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/UserData;->mAlgorithm:Ljava/lang/String;

    .line 68
    invoke-static {p1}, Landroid/service/autofill/UserData$Builder;->access$200(Landroid/service/autofill/UserData$Builder;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/UserData;->mAlgorithmArgs:Landroid/os/Bundle;

    .line 69
    invoke-static {p1}, Landroid/service/autofill/UserData$Builder;->access$300(Landroid/service/autofill/UserData$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/service/autofill/UserData;->mCategoryIds:[Ljava/lang/String;

    .line 70
    invoke-static {p1}, Landroid/service/autofill/UserData$Builder;->access$300(Landroid/service/autofill/UserData$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/UserData;->mCategoryIds:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 71
    invoke-static {p1}, Landroid/service/autofill/UserData$Builder;->access$400(Landroid/service/autofill/UserData$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/service/autofill/UserData;->mValues:[Ljava/lang/String;

    .line 72
    invoke-static {p1}, Landroid/service/autofill/UserData$Builder;->access$400(Landroid/service/autofill/UserData$Builder;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Landroid/service/autofill/UserData;->mValues:[Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/autofill/UserData$Builder;Landroid/service/autofill/UserData$1;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Landroid/service/autofill/UserData;-><init>(Landroid/service/autofill/UserData$Builder;)V

    return-void
.end method

.method public static dumpConstraints(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    .line 127
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "maxUserDataSize: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/service/autofill/UserData;->getMaxUserDataSize()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 128
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "maxFieldClassificationIdsSize: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 129
    invoke-static {}, Landroid/service/autofill/UserData;->getMaxFieldClassificationIdsSize()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 130
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "maxCategoryCount: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/service/autofill/UserData;->getMaxCategoryCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 131
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "minValueLength: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/service/autofill/UserData;->getMinValueLength()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 132
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "maxValueLength: "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/service/autofill/UserData;->getMaxValueLength()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method private static getInt(Ljava/lang/String;I)I
    .locals 3

    .line 406
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "UserData"

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not read from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; hardcoding "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 415
    :cond_1
    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getMaxCategoryCount()I
    .locals 2

    const-string v0, "autofill_user_data_max_category_count"

    const/16 v1, 0xa

    .line 385
    invoke-static {v0, v1}, Landroid/service/autofill/UserData;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMaxFieldClassificationIdsSize()I
    .locals 2

    const-string v0, "autofill_user_data_max_field_classification_size"

    const/16 v1, 0xa

    .line 376
    invoke-static {v0, v1}, Landroid/service/autofill/UserData;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMaxUserDataSize()I
    .locals 2

    const-string v0, "autofill_user_data_max_user_data_size"

    const/16 v1, 0x32

    .line 368
    invoke-static {v0, v1}, Landroid/service/autofill/UserData;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMaxValueLength()I
    .locals 2

    const-string v0, "autofill_user_data_max_value_length"

    const/16 v1, 0x64

    .line 401
    invoke-static {v0, v1}, Landroid/service/autofill/UserData;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMinValueLength()I
    .locals 2

    const-string v0, "autofill_user_data_min_value_length"

    const/4 v1, 0x3

    .line 393
    invoke-static {v0, v1}, Landroid/service/autofill/UserData;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3

    .line 108
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "id: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/UserData;->mId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Algorithm: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/UserData;->mAlgorithm:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " Args: "

    .line 110
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/UserData;->mAlgorithmArgs:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 113
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Field ids size: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/UserData;->mCategoryIds:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const/4 v0, 0x0

    move v1, v0

    .line 114
    :goto_0
    iget-object v2, p0, Landroid/service/autofill/UserData;->mCategoryIds:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 115
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 116
    iget-object v2, p0, Landroid/service/autofill/UserData;->mCategoryIds:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, Landroid/view/autofill/Helper;->getRedacted(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Values size: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/autofill/UserData;->mValues:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 119
    :goto_1
    iget-object v1, p0, Landroid/service/autofill/UserData;->mValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 120
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Landroid/service/autofill/UserData;->mValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/view/autofill/Helper;->getRedacted(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getAlgorithmArgs()Landroid/os/Bundle;
    .locals 0

    .line 93
    iget-object p0, p0, Landroid/service/autofill/UserData;->mAlgorithmArgs:Landroid/os/Bundle;

    return-object p0
.end method

.method public getCategoryIds()[Ljava/lang/String;
    .locals 0

    .line 98
    iget-object p0, p0, Landroid/service/autofill/UserData;->mCategoryIds:[Ljava/lang/String;

    return-object p0
.end method

.method public getFieldClassificationAlgorithm()Ljava/lang/String;
    .locals 0

    .line 81
    iget-object p0, p0, Landroid/service/autofill/UserData;->mAlgorithm:Ljava/lang/String;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Landroid/service/autofill/UserData;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public getValues()[Ljava/lang/String;
    .locals 0

    .line 103
    iget-object p0, p0, Landroid/service/autofill/UserData;->mValues:[Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 310
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 312
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserData: [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/autofill/UserData;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", algorithm="

    .line 313
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/autofill/UserData;->mAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", categoryIds="

    .line 315
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    iget-object v1, p0, Landroid/service/autofill/UserData;->mCategoryIds:[Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/view/autofill/Helper;->appendRedacted(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    const-string v1, ", values="

    .line 317
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    iget-object p0, p0, Landroid/service/autofill/UserData;->mValues:[Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/view/autofill/Helper;->appendRedacted(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    const-string p0, "]"

    .line 319
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 333
    iget-object p2, p0, Landroid/service/autofill/UserData;->mId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 334
    iget-object p2, p0, Landroid/service/autofill/UserData;->mCategoryIds:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 335
    iget-object p2, p0, Landroid/service/autofill/UserData;->mValues:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 336
    iget-object p2, p0, Landroid/service/autofill/UserData;->mAlgorithm:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 337
    iget-object p0, p0, Landroid/service/autofill/UserData;->mAlgorithmArgs:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
