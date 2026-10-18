.class public final Landroid/mtp/MtpObjectInfo;
.super Ljava/lang/Object;
.source "MtpObjectInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpObjectInfo$Builder;
    }
.end annotation


# instance fields
.field private mAssociationDesc:I

.field private mAssociationType:I

.field private mCompressedSize:I

.field private mDateCreated:J

.field private mDateModified:J

.field private mFormat:I

.field private mHandle:I

.field private mImagePixDepth:I

.field private mImagePixHeight:I

.field private mImagePixWidth:I

.field private mKeywords:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mParent:I

.field private mProtectionStatus:I

.field private mSequenceNumber:I

.field private mStorageId:I

.field private mThumbCompressedSize:I

.field private mThumbFormat:I

.field private mThumbPixHeight:I

.field private mThumbPixWidth:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 48
    iput-object v0, p0, Landroid/mtp/MtpObjectInfo;->mName:Ljava/lang/String;

    const-string v0, ""

    .line 51
    iput-object v0, p0, Landroid/mtp/MtpObjectInfo;->mKeywords:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/mtp/MtpObjectInfo$1;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/mtp/MtpObjectInfo;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Landroid/mtp/MtpObjectInfo;)I
    .locals 0

    .line 31
    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixWidth:I

    return p0
.end method

.method static synthetic access$1002(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    .line 31
    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mImagePixWidth:I

    return p1
.end method

.method static synthetic access$102(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    .line 31
    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mHandle:I

    return p1
.end method

.method static synthetic access$1100(Landroid/mtp/MtpObjectInfo;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Landroid/mtp/MtpObjectInfo;->mKeywords:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1102(Landroid/mtp/MtpObjectInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 31
    iput-object p1, p0, Landroid/mtp/MtpObjectInfo;->mKeywords:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Landroid/mtp/MtpObjectInfo;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Landroid/mtp/MtpObjectInfo;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1202(Landroid/mtp/MtpObjectInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 31
    iput-object p1, p0, Landroid/mtp/MtpObjectInfo;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Landroid/mtp/MtpObjectInfo;)I
    .locals 0

    .line 31
    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mParent:I

    return p0
.end method

.method static synthetic access$1302(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    .line 31
    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mParent:I

    return p1
.end method

.method static synthetic access$1400(Landroid/mtp/MtpObjectInfo;)I
    .locals 0

    .line 31
    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mProtectionStatus:I

    return p0
.end method

.method static synthetic access$1402(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    .line 31
    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mProtectionStatus:I

    return p1
.end method

.method static synthetic access$1500(Landroid/mtp/MtpObjectInfo;)I
    .locals 0

    .line 31
    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mSequenceNumber:I

    return p0
.end method

.method static synthetic access$1502(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    .line 31
    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mSequenceNumber:I

    return p1
.end method

.method static synthetic access$1600(Landroid/mtp/MtpObjectInfo;)I
    .locals 0

    .line 31
    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mStorageId:I

    return p0
.end method

.method static synthetic access$1602(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    .line 31
    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mStorageId:I

    return p1
.end method

.method static synthetic access$1700(Landroid/mtp/MtpObjectInfo;)I
    .locals 0

    .line 31
    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mThumbCompressedSize:I

    return p0
.end method

.method static synthetic access$1702(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    .line 31
    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mThumbCompressedSize:I

    return p1
.end method

.method static synthetic access$1800(Landroid/mtp/MtpObjectInfo;)I
    .locals 0

    .line 31
    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mThumbFormat:I

    return p0
.end method

.method static synthetic access$1802(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    .line 31
    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mThumbFormat:I

    return p1
.end method

.method static synthetic access$1900(Landroid/mtp/MtpObjectInfo;)I
    .locals 0

    .line 31
    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mThumbPixHeight:I

    return p0
.end method

.method static synthetic access$1902(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    .line 31
    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mThumbPixHeight:I

    return p1
.end method

.method static synthetic access$200(Landroid/mtp/MtpObjectInfo;)I
    .locals 0

    .line 31
    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mAssociationDesc:I

    return p0
.end method

.method static synthetic access$2000(Landroid/mtp/MtpObjectInfo;)I
    .locals 0

    .line 31
    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mThumbPixWidth:I

    return p0
.end method

.method static synthetic access$2002(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    .line 31
    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mThumbPixWidth:I

    return p1
.end method

.method static synthetic access$202(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    .line 31
    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mAssociationDesc:I

    return p1
.end method

.method static synthetic access$2100(JLjava/lang/String;)I
    .locals 0

    .line 31
    invoke-static {p0, p1, p2}, Landroid/mtp/MtpObjectInfo;->longToUint32(JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Landroid/mtp/MtpObjectInfo;)I
    .locals 0

    .line 31
    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mAssociationType:I

    return p0
.end method

.method static synthetic access$302(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    .line 31
    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mAssociationType:I

    return p1
.end method

.method static synthetic access$400(Landroid/mtp/MtpObjectInfo;)I
    .locals 0

    .line 31
    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mCompressedSize:I

    return p0
.end method

.method static synthetic access$402(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    .line 31
    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mCompressedSize:I

    return p1
.end method

.method static synthetic access$500(Landroid/mtp/MtpObjectInfo;)J
    .locals 2

    .line 31
    iget-wide v0, p0, Landroid/mtp/MtpObjectInfo;->mDateCreated:J

    return-wide v0
.end method

.method static synthetic access$502(Landroid/mtp/MtpObjectInfo;J)J
    .locals 0

    .line 31
    iput-wide p1, p0, Landroid/mtp/MtpObjectInfo;->mDateCreated:J

    return-wide p1
.end method

.method static synthetic access$600(Landroid/mtp/MtpObjectInfo;)J
    .locals 2

    .line 31
    iget-wide v0, p0, Landroid/mtp/MtpObjectInfo;->mDateModified:J

    return-wide v0
.end method

.method static synthetic access$602(Landroid/mtp/MtpObjectInfo;J)J
    .locals 0

    .line 31
    iput-wide p1, p0, Landroid/mtp/MtpObjectInfo;->mDateModified:J

    return-wide p1
.end method

.method static synthetic access$700(Landroid/mtp/MtpObjectInfo;)I
    .locals 0

    .line 31
    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mFormat:I

    return p0
.end method

.method static synthetic access$702(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    .line 31
    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mFormat:I

    return p1
.end method

.method static synthetic access$800(Landroid/mtp/MtpObjectInfo;)I
    .locals 0

    .line 31
    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixDepth:I

    return p0
.end method

.method static synthetic access$802(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    .line 31
    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mImagePixDepth:I

    return p1
.end method

.method static synthetic access$900(Landroid/mtp/MtpObjectInfo;)I
    .locals 0

    .line 31
    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixHeight:I

    return p0
.end method

.method static synthetic access$902(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    .line 31
    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mImagePixHeight:I

    return p1
.end method

.method private static longToUint32(JLjava/lang/String;)I
    .locals 7

    const-wide/16 v2, 0x0

    const-wide v4, 0xffffffffL

    move-wide v0, p0

    move-object v6, p2

    .line 520
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    long-to-int p0, p0

    return p0
.end method

.method private static uint32ToLong(I)J
    .locals 4

    if-gez p0, :cond_0

    const-wide v0, 0x100000000L

    int-to-long v2, p0

    add-long/2addr v2, v0

    goto :goto_0

    :cond_0
    int-to-long v2, p0

    :goto_0
    return-wide v2
.end method


# virtual methods
.method public final getAssociationDesc()I
    .locals 0

    .line 286
    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mAssociationDesc:I

    return p0
.end method

.method public final getAssociationType()I
    .locals 0

    .line 275
    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mAssociationType:I

    return p0
.end method

.method public final getCompressedSize()I
    .locals 1

    .line 106
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mCompressedSize:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 107
    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mCompressedSize:I

    return p0
.end method

.method public final getCompressedSizeLong()J
    .locals 2

    .line 116
    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mCompressedSize:I

    invoke-static {p0}, Landroid/mtp/MtpObjectInfo;->uint32ToLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getDateCreated()J
    .locals 2

    .line 330
    iget-wide v0, p0, Landroid/mtp/MtpObjectInfo;->mDateCreated:J

    return-wide v0
.end method

.method public final getDateModified()J
    .locals 2

    .line 340
    iget-wide v0, p0, Landroid/mtp/MtpObjectInfo;->mDateModified:J

    return-wide v0
.end method

.method public final getFormat()I
    .locals 0

    .line 81
    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mFormat:I

    return p0
.end method

.method public final getImagePixDepth()I
    .locals 1

    .line 241
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixDepth:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 242
    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixDepth:I

    return p0
.end method

.method public final getImagePixDepthLong()J
    .locals 2

    .line 252
    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixDepth:I

    invoke-static {p0}, Landroid/mtp/MtpObjectInfo;->uint32ToLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getImagePixHeight()I
    .locals 1

    .line 220
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixHeight:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 221
    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixHeight:I

    return p0
.end method

.method public final getImagePixHeightLong()J
    .locals 2

    .line 231
    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixHeight:I

    invoke-static {p0}, Landroid/mtp/MtpObjectInfo;->uint32ToLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getImagePixWidth()I
    .locals 1

    .line 199
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixWidth:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 200
    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixWidth:I

    return p0
.end method

.method public final getImagePixWidthLong()J
    .locals 2

    .line 210
    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixWidth:I

    invoke-static {p0}, Landroid/mtp/MtpObjectInfo;->uint32ToLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getKeywords()Ljava/lang/String;
    .locals 0

    .line 349
    iget-object p0, p0, Landroid/mtp/MtpObjectInfo;->mKeywords:Ljava/lang/String;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 320
    iget-object p0, p0, Landroid/mtp/MtpObjectInfo;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public final getObjectHandle()I
    .locals 0

    .line 63
    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mHandle:I

    return p0
.end method

.method public final getParent()I
    .locals 0

    .line 262
    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mParent:I

    return p0
.end method

.method public final getProtectionStatus()I
    .locals 0

    .line 97
    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mProtectionStatus:I

    return p0
.end method

.method public final getSequenceNumber()I
    .locals 1

    .line 298
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mSequenceNumber:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 299
    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mSequenceNumber:I

    return p0
.end method

.method public final getSequenceNumberLong()J
    .locals 2

    .line 311
    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mSequenceNumber:I

    invoke-static {p0}, Landroid/mtp/MtpObjectInfo;->uint32ToLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getStorageId()I
    .locals 0

    .line 72
    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mStorageId:I

    return p0
.end method

.method public final getThumbCompressedSize()I
    .locals 1

    .line 136
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mThumbCompressedSize:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 137
    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mThumbCompressedSize:I

    return p0
.end method

.method public final getThumbCompressedSizeLong()J
    .locals 2

    .line 147
    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mThumbCompressedSize:I

    invoke-static {p0}, Landroid/mtp/MtpObjectInfo;->uint32ToLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getThumbFormat()I
    .locals 0

    .line 126
    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mThumbFormat:I

    return p0
.end method

.method public final getThumbPixHeight()I
    .locals 1

    .line 178
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mThumbPixHeight:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 179
    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mThumbPixHeight:I

    return p0
.end method

.method public final getThumbPixHeightLong()J
    .locals 2

    .line 189
    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mThumbPixHeight:I

    invoke-static {p0}, Landroid/mtp/MtpObjectInfo;->uint32ToLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getThumbPixWidth()I
    .locals 1

    .line 157
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mThumbPixWidth:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 158
    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mThumbPixWidth:I

    return p0
.end method

.method public final getThumbPixWidthLong()J
    .locals 2

    .line 168
    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mThumbPixWidth:I

    invoke-static {p0}, Landroid/mtp/MtpObjectInfo;->uint32ToLong(I)J

    move-result-wide v0

    return-wide v0
.end method
