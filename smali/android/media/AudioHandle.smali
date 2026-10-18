.class Landroid/media/AudioHandle;
.super Ljava/lang/Object;
.source "AudioHandle.java"


# instance fields
.field private final mId:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Landroid/media/AudioHandle;->mId:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 38
    instance-of v1, p1, Landroid/media/AudioHandle;

    if-nez v1, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    check-cast p1, Landroid/media/AudioHandle;

    .line 42
    iget p0, p0, Landroid/media/AudioHandle;->mId:I

    invoke-virtual {p1}, Landroid/media/AudioHandle;->id()I

    move-result p1

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 0

    .line 47
    iget p0, p0, Landroid/media/AudioHandle;->mId:I

    return p0
.end method

.method id()I
    .locals 0

    .line 33
    iget p0, p0, Landroid/media/AudioHandle;->mId:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 52
    iget p0, p0, Landroid/media/AudioHandle;->mId:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
