.class Landroid/service/autofill/CustomDescription$1;
.super Ljava/lang/Object;
.source "CustomDescription.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/CustomDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/CustomDescription;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/CustomDescription;
    .locals 8

    const/4 p0, 0x0

    .line 350
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    return-object p0

    .line 353
    :cond_0
    new-instance v1, Landroid/service/autofill/CustomDescription$Builder;

    invoke-direct {v1, v0}, Landroid/service/autofill/CustomDescription$Builder;-><init>(Landroid/widget/RemoteViews;)V

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 356
    const-class v3, Landroid/service/autofill/InternalTransformation;

    .line 357
    invoke-virtual {p1, p0, v3}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, [Landroid/service/autofill/InternalTransformation;

    .line 358
    array-length v4, v0

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_1

    .line 360
    aget v6, v0, v5

    aget-object v7, v3, v5

    invoke-virtual {v1, v6, v7}, Landroid/service/autofill/CustomDescription$Builder;->addChild(ILandroid/service/autofill/Transformation;)Landroid/service/autofill/CustomDescription$Builder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 363
    :cond_1
    const-class v0, Landroid/service/autofill/InternalValidator;

    .line 364
    invoke-virtual {p1, p0, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, [Landroid/service/autofill/InternalValidator;

    if-eqz v0, :cond_2

    .line 366
    const-class v3, Landroid/service/autofill/BatchUpdates;

    invoke-virtual {p1, p0, v3}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, [Landroid/service/autofill/BatchUpdates;

    .line 367
    array-length p1, v0

    :goto_1
    if-ge v2, p1, :cond_2

    .line 369
    aget-object v3, v0, v2

    aget-object v4, p0, v2

    invoke-virtual {v1, v3, v4}, Landroid/service/autofill/CustomDescription$Builder;->batchUpdate(Landroid/service/autofill/Validator;Landroid/service/autofill/BatchUpdates;)Landroid/service/autofill/CustomDescription$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 372
    :cond_2
    invoke-virtual {v1}, Landroid/service/autofill/CustomDescription$Builder;->build()Landroid/service/autofill/CustomDescription;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 344
    invoke-virtual {p0, p1}, Landroid/service/autofill/CustomDescription$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/CustomDescription;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/service/autofill/CustomDescription;
    .locals 0

    .line 377
    new-array p0, p1, [Landroid/service/autofill/CustomDescription;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 344
    invoke-virtual {p0, p1}, Landroid/service/autofill/CustomDescription$1;->newArray(I)[Landroid/service/autofill/CustomDescription;

    move-result-object p0

    return-object p0
.end method
