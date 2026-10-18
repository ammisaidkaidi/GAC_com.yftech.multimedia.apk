.class Landroid/view/inputmethod/ExtractedTextRequest$1;
.super Ljava/lang/Object;
.source "ExtractedTextRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/ExtractedTextRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/inputmethod/ExtractedTextRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/inputmethod/ExtractedTextRequest;
    .locals 1

    .line 69
    new-instance p0, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {p0}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxLines:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/ExtractedTextRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/inputmethod/ExtractedTextRequest;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/view/inputmethod/ExtractedTextRequest;
    .locals 0

    .line 78
    new-array p0, p1, [Landroid/view/inputmethod/ExtractedTextRequest;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/ExtractedTextRequest$1;->newArray(I)[Landroid/view/inputmethod/ExtractedTextRequest;

    move-result-object p0

    return-object p0
.end method
