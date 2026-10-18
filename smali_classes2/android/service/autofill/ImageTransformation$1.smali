.class Landroid/service/autofill/ImageTransformation$1;
.super Ljava/lang/Object;
.source "ImageTransformation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/ImageTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/ImageTransformation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/ImageTransformation;
    .locals 7

    const/4 p0, 0x0

    .line 249
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/view/autofill/AutofillId;

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Ljava/util/regex/Pattern;

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v2, 0x0

    .line 257
    aget-object v3, p1, v2

    if-eqz v3, :cond_0

    .line 259
    new-instance v4, Landroid/service/autofill/ImageTransformation$Builder;

    aget-object v5, v0, v2

    aget v2, v1, v2

    invoke-direct {v4, p0, v5, v2, v3}, Landroid/service/autofill/ImageTransformation$Builder;-><init>(Landroid/view/autofill/AutofillId;Ljava/util/regex/Pattern;ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 260
    :cond_0
    new-instance v4, Landroid/service/autofill/ImageTransformation$Builder;

    aget-object v3, v0, v2

    aget v2, v1, v2

    invoke-direct {v4, p0, v3, v2}, Landroid/service/autofill/ImageTransformation$Builder;-><init>(Landroid/view/autofill/AutofillId;Ljava/util/regex/Pattern;I)V

    .line 262
    :goto_0
    array-length p0, v0

    const/4 v2, 0x1

    :goto_1
    if-ge v2, p0, :cond_2

    .line 264
    aget-object v3, p1, v2

    if-eqz v3, :cond_1

    .line 265
    aget-object v3, v0, v2

    aget v5, v1, v2

    aget-object v6, p1, v2

    invoke-virtual {v4, v3, v5, v6}, Landroid/service/autofill/ImageTransformation$Builder;->addOption(Ljava/util/regex/Pattern;ILjava/lang/CharSequence;)Landroid/service/autofill/ImageTransformation$Builder;

    goto :goto_2

    .line 267
    :cond_1
    aget-object v3, v0, v2

    aget v5, v1, v2

    invoke-virtual {v4, v3, v5}, Landroid/service/autofill/ImageTransformation$Builder;->addOption(Ljava/util/regex/Pattern;I)Landroid/service/autofill/ImageTransformation$Builder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 271
    :cond_2
    invoke-virtual {v4}, Landroid/service/autofill/ImageTransformation$Builder;->build()Landroid/service/autofill/ImageTransformation;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 246
    invoke-virtual {p0, p1}, Landroid/service/autofill/ImageTransformation$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/ImageTransformation;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/service/autofill/ImageTransformation;
    .locals 0

    .line 276
    new-array p0, p1, [Landroid/service/autofill/ImageTransformation;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 246
    invoke-virtual {p0, p1}, Landroid/service/autofill/ImageTransformation$1;->newArray(I)[Landroid/service/autofill/ImageTransformation;

    move-result-object p0

    return-object p0
.end method
