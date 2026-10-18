.class Landroid/text/style/SuggestionSpan$1;
.super Ljava/lang/Object;
.source "SuggestionSpan.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/SuggestionSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/text/style/SuggestionSpan;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/text/style/SuggestionSpan;
    .locals 0

    .line 339
    new-instance p0, Landroid/text/style/SuggestionSpan;

    invoke-direct {p0, p1}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 336
    invoke-virtual {p0, p1}, Landroid/text/style/SuggestionSpan$1;->createFromParcel(Landroid/os/Parcel;)Landroid/text/style/SuggestionSpan;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/text/style/SuggestionSpan;
    .locals 0

    .line 344
    new-array p0, p1, [Landroid/text/style/SuggestionSpan;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 336
    invoke-virtual {p0, p1}, Landroid/text/style/SuggestionSpan$1;->newArray(I)[Landroid/text/style/SuggestionSpan;

    move-result-object p0

    return-object p0
.end method
