.class public Landroid/os/PooledStringReader;
.super Ljava/lang/Object;
.source "PooledStringReader.java"


# instance fields
.field private final mIn:Landroid/os/Parcel;

.field private final mPool:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Landroid/os/PooledStringReader;->mIn:Landroid/os/Parcel;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 36
    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Landroid/os/PooledStringReader;->mPool:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getStringCount()I
    .locals 0

    .line 40
    iget-object p0, p0, Landroid/os/PooledStringReader;->mPool:[Ljava/lang/String;

    array-length p0, p0

    return p0
.end method

.method public readString()Ljava/lang/String;
    .locals 2

    .line 44
    iget-object v0, p0, Landroid/os/PooledStringReader;->mIn:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ltz v0, :cond_0

    .line 46
    iget-object p0, p0, Landroid/os/PooledStringReader;->mPool:[Ljava/lang/String;

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 49
    iget-object v1, p0, Landroid/os/PooledStringReader;->mIn:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 50
    iget-object p0, p0, Landroid/os/PooledStringReader;->mPool:[Ljava/lang/String;

    aput-object v1, p0, v0

    return-object v1
.end method
