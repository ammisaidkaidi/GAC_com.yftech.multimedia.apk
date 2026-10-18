.class public final Landroid/view/autofill/AutofillId;
.super Ljava/lang/Object;
.source "AutofillId.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mViewId:I

.field private final mVirtual:Z

.field private final mVirtualId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 121
    new-instance v0, Landroid/view/autofill/AutofillId$1;

    invoke-direct {v0}, Landroid/view/autofill/AutofillId$1;-><init>()V

    sput-object v0, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Landroid/view/autofill/AutofillId;->mVirtual:Z

    .line 36
    iput p1, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    const/4 p1, -0x1

    .line 37
    iput p1, p0, Landroid/view/autofill/AutofillId;->mVirtualId:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Landroid/view/autofill/AutofillId;->mVirtual:Z

    .line 51
    iput p1, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    .line 52
    iput p2, p0, Landroid/view/autofill/AutofillId;->mVirtualId:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/view/autofill/AutofillId;->mVirtual:Z

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/view/autofill/AutofillId;->mVirtualId:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/autofill/AutofillId$1;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillId;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/autofill/AutofillId;I)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Landroid/view/autofill/AutofillId;->mVirtual:Z

    .line 44
    iget p1, p1, Landroid/view/autofill/AutofillId;->mViewId:I

    iput p1, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    .line 45
    iput p2, p0, Landroid/view/autofill/AutofillId;->mVirtualId:I

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

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 87
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 88
    :cond_2
    check-cast p1, Landroid/view/autofill/AutofillId;

    .line 89
    iget v2, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    iget v3, p1, Landroid/view/autofill/AutofillId;->mViewId:I

    if-eq v2, v3, :cond_3

    return v1

    .line 90
    :cond_3
    iget p0, p0, Landroid/view/autofill/AutofillId;->mVirtualId:I

    iget p1, p1, Landroid/view/autofill/AutofillId;->mVirtualId:I

    if-eq p0, p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getViewId()I
    .locals 0

    .line 57
    iget p0, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    return p0
.end method

.method public getVirtualChildId()I
    .locals 0

    .line 62
    iget p0, p0, Landroid/view/autofill/AutofillId;->mVirtualId:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    .line 78
    iget v0, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 79
    iget p0, p0, Landroid/view/autofill/AutofillId;->mVirtualId:I

    add-int/2addr v0, p0

    return v0
.end method

.method public isVirtual()Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Landroid/view/autofill/AutofillId;->mVirtual:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    iget-boolean v1, p0, Landroid/view/autofill/AutofillId;->mVirtual:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x3a

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/view/autofill/AutofillId;->mVirtualId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 110
    iget p2, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-boolean p2, p0, Landroid/view/autofill/AutofillId;->mVirtual:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget p0, p0, Landroid/view/autofill/AutofillId;->mVirtualId:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
