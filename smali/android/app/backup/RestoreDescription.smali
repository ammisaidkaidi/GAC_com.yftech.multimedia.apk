.class public Landroid/app/backup/RestoreDescription;
.super Ljava/lang/Object;
.source "RestoreDescription.java"

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
            "Landroid/app/backup/RestoreDescription;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_MORE_PACKAGES:Landroid/app/backup/RestoreDescription;

.field private static final NO_MORE_PACKAGES_SENTINEL:Ljava/lang/String; = "NO_MORE_PACKAGES"

.field public static final TYPE_FULL_STREAM:I = 0x2

.field public static final TYPE_KEY_VALUE:I = 0x1


# instance fields
.field private final mDataType:I

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    new-instance v0, Landroid/app/backup/RestoreDescription;

    const-string v1, "NO_MORE_PACKAGES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/app/backup/RestoreDescription;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/backup/RestoreDescription;->NO_MORE_PACKAGES:Landroid/app/backup/RestoreDescription;

    .line 92
    new-instance v0, Landroid/app/backup/RestoreDescription$1;

    invoke-direct {v0}, Landroid/app/backup/RestoreDescription$1;-><init>()V

    sput-object v0, Landroid/app/backup/RestoreDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/backup/RestoreDescription;->mPackageName:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/app/backup/RestoreDescription;->mDataType:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/backup/RestoreDescription$1;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/app/backup/RestoreDescription;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroid/app/backup/RestoreDescription;->mPackageName:Ljava/lang/String;

    .line 67
    iput p2, p0, Landroid/app/backup/RestoreDescription;->mDataType:I

    return-void
.end method

.method static synthetic access$100(Landroid/app/backup/RestoreDescription;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Landroid/app/backup/RestoreDescription;->mPackageName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDataType()I
    .locals 0

    .line 75
    iget p0, p0, Landroid/app/backup/RestoreDescription;->mDataType:I

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Landroid/app/backup/RestoreDescription;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RestoreDescription{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/backup/RestoreDescription;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget p0, p0, Landroid/app/backup/RestoreDescription;->mDataType:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    const-string p0, "KEY_VALUE"

    goto :goto_0

    :cond_0
    const-string p0, "STREAM"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 88
    iget-object p2, p0, Landroid/app/backup/RestoreDescription;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget p0, p0, Landroid/app/backup/RestoreDescription;->mDataType:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
