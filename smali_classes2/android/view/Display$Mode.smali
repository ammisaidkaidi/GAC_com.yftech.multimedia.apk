.class public final Landroid/view/Display$Mode;
.super Ljava/lang/Object;
.source "Display.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Display;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mode"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/Display$Mode;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_ARRAY:[Landroid/view/Display$Mode;


# instance fields
.field private final mHeight:I

.field private final mModeId:I

.field private final mRefreshRate:F

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 1162
    new-array v0, v0, [Landroid/view/Display$Mode;

    sput-object v0, Landroid/view/Display$Mode;->EMPTY_ARRAY:[Landroid/view/Display$Mode;

    .line 1287
    new-instance v0, Landroid/view/Display$Mode$1;

    invoke-direct {v0}, Landroid/view/Display$Mode$1;-><init>()V

    sput-object v0, Landroid/view/Display$Mode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 0

    .line 1172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1173
    iput p1, p0, Landroid/view/Display$Mode;->mModeId:I

    .line 1174
    iput p2, p0, Landroid/view/Display$Mode;->mWidth:I

    .line 1175
    iput p3, p0, Landroid/view/Display$Mode;->mHeight:I

    .line 1176
    iput p4, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 1275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/view/Display$Mode;-><init>(IIIF)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/Display$1;)V
    .locals 0

    .line 1158
    invoke-direct {p0, p1}, Landroid/view/Display$Mode;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1241
    :cond_0
    instance-of v1, p1, Landroid/view/Display$Mode;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1244
    :cond_1
    check-cast p1, Landroid/view/Display$Mode;

    .line 1245
    iget v1, p0, Landroid/view/Display$Mode;->mModeId:I

    iget v3, p1, Landroid/view/Display$Mode;->mModeId:I

    if-ne v1, v3, :cond_2

    iget v1, p1, Landroid/view/Display$Mode;->mWidth:I

    iget v3, p1, Landroid/view/Display$Mode;->mHeight:I

    iget p1, p1, Landroid/view/Display$Mode;->mRefreshRate:F

    invoke-virtual {p0, v1, v3, p1}, Landroid/view/Display$Mode;->matches(IIF)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getModeId()I
    .locals 0

    .line 1183
    iget p0, p0, Landroid/view/Display$Mode;->mModeId:I

    return p0
.end method

.method public getPhysicalHeight()I
    .locals 0

    .line 1215
    iget p0, p0, Landroid/view/Display$Mode;->mHeight:I

    return p0
.end method

.method public getPhysicalWidth()I
    .locals 0

    .line 1199
    iget p0, p0, Landroid/view/Display$Mode;->mWidth:I

    return p0
.end method

.method public getRefreshRate()F
    .locals 0

    .line 1222
    iget p0, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    return p0
.end method

.method public hashCode()I
    .locals 3

    .line 1251
    iget v0, p0, Landroid/view/Display$Mode;->mModeId:I

    const/16 v1, 0x11

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 1252
    iget v2, p0, Landroid/view/Display$Mode;->mWidth:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1253
    iget v2, p0, Landroid/view/Display$Mode;->mHeight:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 1254
    iget p0, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public matches(IIF)Z
    .locals 1

    .line 1231
    iget v0, p0, Landroid/view/Display$Mode;->mWidth:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Landroid/view/Display$Mode;->mHeight:I

    if-ne p1, p2, :cond_0

    iget p0, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    .line 1233
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1260
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "id="

    .line 1261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/Display$Mode;->mModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    .line 1262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/Display$Mode;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    .line 1263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/Display$Mode;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fps="

    .line 1264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 1265
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1280
    iget p2, p0, Landroid/view/Display$Mode;->mModeId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1281
    iget p2, p0, Landroid/view/Display$Mode;->mWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1282
    iget p2, p0, Landroid/view/Display$Mode;->mHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1283
    iget p0, p0, Landroid/view/Display$Mode;->mRefreshRate:F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
