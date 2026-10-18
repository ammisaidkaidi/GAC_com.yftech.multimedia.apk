.class public Landroid/location/GpsNavigationMessage;
.super Ljava/lang/Object;
.source "GpsNavigationMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GpsNavigationMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_ARRAY:[B

.field public static final STATUS_PARITY_PASSED:S = 0x1s

.field public static final STATUS_PARITY_REBUILT:S = 0x2s

.field public static final STATUS_UNKNOWN:S = 0x0s

.field public static final TYPE_CNAV2:B = 0x4t

.field public static final TYPE_L1CA:B = 0x1t

.field public static final TYPE_L2CNAV:B = 0x2t

.field public static final TYPE_L5CNAV:B = 0x3t

.field public static final TYPE_UNKNOWN:B


# instance fields
.field private mData:[B

.field private mMessageId:S

.field private mPrn:B

.field private mStatus:S

.field private mSubmessageId:S

.field private mType:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 34
    new-array v0, v0, [B

    sput-object v0, Landroid/location/GpsNavigationMessage;->EMPTY_ARRAY:[B

    .line 246
    new-instance v0, Landroid/location/GpsNavigationMessage$1;

    invoke-direct {v0}, Landroid/location/GpsNavigationMessage$1;-><init>()V

    sput-object v0, Landroid/location/GpsNavigationMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-direct {p0}, Landroid/location/GpsNavigationMessage;->initialize()V

    return-void
.end method

.method private getStatusString()Ljava/lang/String;
    .locals 2

    .line 234
    iget-short v0, p0, Landroid/location/GpsNavigationMessage;->mStatus:S

    packed-switch v0, :pswitch_data_0

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Invalid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short p0, p0, Landroid/location/GpsNavigationMessage;->mStatus:S

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "ParityRebuilt"

    return-object p0

    :pswitch_1
    const-string p0, "ParityPassed"

    return-object p0

    :pswitch_2
    const-string p0, "Unknown"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTypeString()Ljava/lang/String;
    .locals 2

    .line 130
    iget-byte v0, p0, Landroid/location/GpsNavigationMessage;->mType:B

    packed-switch v0, :pswitch_data_0

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Invalid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Landroid/location/GpsNavigationMessage;->mType:B

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "CNAV-2"

    return-object p0

    :pswitch_1
    const-string p0, "L5-CNAV"

    return-object p0

    :pswitch_2
    const-string p0, "L2-CNAV"

    return-object p0

    :pswitch_3
    const-string p0, "L1 C/A"

    return-object p0

    :pswitch_4
    const-string p0, "Unknown"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initialize()V
    .locals 2

    const/4 v0, 0x0

    .line 317
    iput-byte v0, p0, Landroid/location/GpsNavigationMessage;->mType:B

    .line 318
    iput-byte v0, p0, Landroid/location/GpsNavigationMessage;->mPrn:B

    const/4 v1, -0x1

    .line 319
    iput-short v1, p0, Landroid/location/GpsNavigationMessage;->mMessageId:S

    .line 320
    iput-short v1, p0, Landroid/location/GpsNavigationMessage;->mSubmessageId:S

    .line 321
    sget-object v1, Landroid/location/GpsNavigationMessage;->EMPTY_ARRAY:[B

    iput-object v1, p0, Landroid/location/GpsNavigationMessage;->mData:[B

    .line 322
    iput-short v0, p0, Landroid/location/GpsNavigationMessage;->mStatus:S

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getData()[B
    .locals 0

    .line 201
    iget-object p0, p0, Landroid/location/GpsNavigationMessage;->mData:[B

    return-object p0
.end method

.method public getMessageId()S
    .locals 0

    .line 168
    iget-short p0, p0, Landroid/location/GpsNavigationMessage;->mMessageId:S

    return p0
.end method

.method public getPrn()B
    .locals 0

    .line 151
    iget-byte p0, p0, Landroid/location/GpsNavigationMessage;->mPrn:B

    return p0
.end method

.method public getStatus()S
    .locals 0

    .line 219
    iget-short p0, p0, Landroid/location/GpsNavigationMessage;->mStatus:S

    return p0
.end method

.method public getSubmessageId()S
    .locals 0

    .line 185
    iget-short p0, p0, Landroid/location/GpsNavigationMessage;->mSubmessageId:S

    return p0
.end method

.method public getType()B
    .locals 0

    .line 115
    iget-byte p0, p0, Landroid/location/GpsNavigationMessage;->mType:B

    return p0
.end method

.method public reset()V
    .locals 0

    .line 108
    invoke-direct {p0}, Landroid/location/GpsNavigationMessage;->initialize()V

    return-void
.end method

.method public set(Landroid/location/GpsNavigationMessage;)V
    .locals 1

    .line 96
    iget-byte v0, p1, Landroid/location/GpsNavigationMessage;->mType:B

    iput-byte v0, p0, Landroid/location/GpsNavigationMessage;->mType:B

    .line 97
    iget-byte v0, p1, Landroid/location/GpsNavigationMessage;->mPrn:B

    iput-byte v0, p0, Landroid/location/GpsNavigationMessage;->mPrn:B

    .line 98
    iget-short v0, p1, Landroid/location/GpsNavigationMessage;->mMessageId:S

    iput-short v0, p0, Landroid/location/GpsNavigationMessage;->mMessageId:S

    .line 99
    iget-short v0, p1, Landroid/location/GpsNavigationMessage;->mSubmessageId:S

    iput-short v0, p0, Landroid/location/GpsNavigationMessage;->mSubmessageId:S

    .line 100
    iget-object v0, p1, Landroid/location/GpsNavigationMessage;->mData:[B

    iput-object v0, p0, Landroid/location/GpsNavigationMessage;->mData:[B

    .line 101
    iget-short p1, p1, Landroid/location/GpsNavigationMessage;->mStatus:S

    iput-short p1, p0, Landroid/location/GpsNavigationMessage;->mStatus:S

    return-void
.end method

.method public setData([B)V
    .locals 0

    if-eqz p1, :cond_0

    .line 212
    iput-object p1, p0, Landroid/location/GpsNavigationMessage;->mData:[B

    return-void

    .line 209
    :cond_0
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "Data must be a non-null array"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMessageId(S)V
    .locals 0

    .line 175
    iput-short p1, p0, Landroid/location/GpsNavigationMessage;->mMessageId:S

    return-void
.end method

.method public setPrn(B)V
    .locals 0

    .line 158
    iput-byte p1, p0, Landroid/location/GpsNavigationMessage;->mPrn:B

    return-void
.end method

.method public setStatus(S)V
    .locals 0

    .line 226
    iput-short p1, p0, Landroid/location/GpsNavigationMessage;->mStatus:S

    return-void
.end method

.method public setSubmessageId(S)V
    .locals 0

    .line 192
    iput-short p1, p0, Landroid/location/GpsNavigationMessage;->mSubmessageId:S

    return-void
.end method

.method public setType(B)V
    .locals 0

    .line 122
    iput-byte p1, p0, Landroid/location/GpsNavigationMessage;->mType:B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GpsNavigationMessage:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "   %-15s = %s\n"

    const/4 v2, 0x2

    .line 298
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Type"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-direct {p0}, Landroid/location/GpsNavigationMessage;->getTypeString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   %-15s = %s\n"

    .line 299
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Prn"

    aput-object v4, v3, v5

    iget-byte v4, p0, Landroid/location/GpsNavigationMessage;->mPrn:B

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   %-15s = %s\n"

    .line 300
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Status"

    aput-object v4, v3, v5

    invoke-direct {p0}, Landroid/location/GpsNavigationMessage;->getStatusString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   %-15s = %s\n"

    .line 301
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "MessageId"

    aput-object v4, v3, v5

    iget-short v4, p0, Landroid/location/GpsNavigationMessage;->mMessageId:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   %-15s = %s\n"

    .line 302
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "SubmessageId"

    aput-object v4, v3, v5

    iget-short v4, p0, Landroid/location/GpsNavigationMessage;->mSubmessageId:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   %-15s = %s\n"

    .line 304
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Data"

    aput-object v3, v2, v5

    const-string/jumbo v3, "{"

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "        "

    .line 306
    iget-object p0, p0, Landroid/location/GpsNavigationMessage;->mData:[B

    array-length v2, p0

    :goto_0
    if-ge v5, v2, :cond_0

    aget-byte v3, p0, v5

    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-string p0, " }"

    .line 311
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 279
    iget-byte p2, p0, Landroid/location/GpsNavigationMessage;->mType:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 280
    iget-byte p2, p0, Landroid/location/GpsNavigationMessage;->mPrn:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 281
    iget-short p2, p0, Landroid/location/GpsNavigationMessage;->mMessageId:S

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    iget-short p2, p0, Landroid/location/GpsNavigationMessage;->mSubmessageId:S

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    iget-object p2, p0, Landroid/location/GpsNavigationMessage;->mData:[B

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    iget-object p2, p0, Landroid/location/GpsNavigationMessage;->mData:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 285
    iget-short p0, p0, Landroid/location/GpsNavigationMessage;->mStatus:S

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
