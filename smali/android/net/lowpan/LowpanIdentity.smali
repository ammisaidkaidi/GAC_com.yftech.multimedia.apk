.class public Landroid/net/lowpan/LowpanIdentity;
.super Ljava/lang/Object;
.source "LowpanIdentity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/LowpanIdentity$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/lowpan/LowpanIdentity;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LowpanIdentity"

.field public static final UNSPECIFIED_CHANNEL:I = -0x1

.field public static final UNSPECIFIED_PANID:I = -0x1


# instance fields
.field private mChannel:I

.field private mIsNameValid:Z

.field private mName:Ljava/lang/String;

.field private mPanid:I

.field private mRawName:[B

.field private mType:Ljava/lang/String;

.field private mXpanid:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 236
    new-instance v0, Landroid/net/lowpan/LowpanIdentity$1;

    invoke-direct {v0}, Landroid/net/lowpan/LowpanIdentity$1;-><init>()V

    sput-object v0, Landroid/net/lowpan/LowpanIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 137
    iput-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mName:Ljava/lang/String;

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Landroid/net/lowpan/LowpanIdentity;->mIsNameValid:Z

    const/4 v0, 0x0

    .line 139
    new-array v1, v0, [B

    iput-object v1, p0, Landroid/net/lowpan/LowpanIdentity;->mRawName:[B

    const-string v1, ""

    .line 140
    iput-object v1, p0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    .line 141
    new-array v0, v0, [B

    iput-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    const/4 v0, -0x1

    .line 142
    iput v0, p0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    .line 143
    iput v0, p0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    return-void
.end method

.method static synthetic access$000(Landroid/net/lowpan/LowpanIdentity;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Landroid/net/lowpan/LowpanIdentity;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Landroid/net/lowpan/LowpanIdentity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    iput-object p1, p0, Landroid/net/lowpan/LowpanIdentity;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Landroid/net/lowpan/LowpanIdentity;[B)[B
    .locals 0

    .line 36
    iput-object p1, p0, Landroid/net/lowpan/LowpanIdentity;->mRawName:[B

    return-object p1
.end method

.method static synthetic access$200(Landroid/net/lowpan/LowpanIdentity;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Landroid/net/lowpan/LowpanIdentity;->mIsNameValid:Z

    return p0
.end method

.method static synthetic access$202(Landroid/net/lowpan/LowpanIdentity;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Landroid/net/lowpan/LowpanIdentity;->mIsNameValid:Z

    return p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Landroid/net/lowpan/LowpanIdentity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Landroid/net/lowpan/LowpanIdentity;[B)[B
    .locals 0

    .line 36
    iput-object p1, p0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    return-object p1
.end method

.method static synthetic access$502(Landroid/net/lowpan/LowpanIdentity;I)I
    .locals 0

    .line 36
    iput p1, p0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    return p1
.end method

.method static synthetic access$602(Landroid/net/lowpan/LowpanIdentity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    iput-object p1, p0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Landroid/net/lowpan/LowpanIdentity;I)I
    .locals 0

    .line 36
    iput p1, p0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 202
    instance-of v0, p1, Landroid/net/lowpan/LowpanIdentity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 205
    :cond_0
    check-cast p1, Landroid/net/lowpan/LowpanIdentity;

    .line 206
    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mRawName:[B

    iget-object v2, p1, Landroid/net/lowpan/LowpanIdentity;->mRawName:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    iget-object v2, p1, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    .line 207
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    .line 208
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    iget v2, p1, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    if-ne v0, v2, :cond_1

    iget p0, p0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    iget p1, p1, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getChannel()I
    .locals 0

    .line 172
    iget p0, p0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 148
    iget-object p0, p0, Landroid/net/lowpan/LowpanIdentity;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getPanid()I
    .locals 0

    .line 164
    iget p0, p0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    return p0
.end method

.method public getRawName()[B
    .locals 0

    .line 156
    iget-object p0, p0, Landroid/net/lowpan/LowpanIdentity;->mRawName:[B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    .line 168
    iget-object p0, p0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    return-object p0
.end method

.method public getXpanid()[B
    .locals 0

    .line 160
    iget-object p0, p0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    .line 215
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/lowpan/LowpanIdentity;->mRawName:[B

    .line 216
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget p0, p0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x4

    aput-object p0, v0, v1

    .line 215
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isNameValid()Z
    .locals 0

    .line 152
    iget-boolean p0, p0, Landroid/net/lowpan/LowpanIdentity;->mIsNameValid:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 177
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Name:"

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroid/net/lowpan/LowpanIdentity;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    iget-object v1, p0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, ", Type:"

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    :cond_0
    iget-object v1, p0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    array-length v1, v1

    if-lez v1, :cond_1

    const-string v1, ", XPANID:"

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    invoke-static {v1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    :cond_1
    iget v1, p0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const-string v1, ", PANID:"

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "0x%04X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    :cond_2
    iget v1, p0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    if-eq v1, v2, :cond_3

    const-string v1, ", Channel:"

    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p0, p0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 197
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 228
    iget-object p2, p0, Landroid/net/lowpan/LowpanIdentity;->mRawName:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 229
    iget-object p2, p0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-object p2, p0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 231
    iget p2, p0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    iget p0, p0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
