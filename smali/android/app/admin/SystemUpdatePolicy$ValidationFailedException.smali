.class public final Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;
.super Ljava/lang/IllegalArgumentException;
.source "SystemUpdatePolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/SystemUpdatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ValidationFailedException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException$ValidationFailureType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_COMBINED_FREEZE_PERIOD_TOO_CLOSE:I = 0x6

.field public static final ERROR_COMBINED_FREEZE_PERIOD_TOO_LONG:I = 0x5

.field public static final ERROR_DUPLICATE_OR_OVERLAP:I = 0x2

.field public static final ERROR_NEW_FREEZE_PERIOD_TOO_CLOSE:I = 0x4

.field public static final ERROR_NEW_FREEZE_PERIOD_TOO_LONG:I = 0x3

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_UNKNOWN:I = 0x1


# instance fields
.field private final mErrorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 285
    new-instance v0, Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException$1;

    invoke-direct {v0}, Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException$1;-><init>()V

    sput-object v0, Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 237
    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 238
    iput p1, p0, Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;->mErrorCode:I

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Landroid/app/admin/SystemUpdatePolicy$1;)V
    .locals 0

    .line 180
    invoke-direct {p0, p1, p2}, Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public static combinedPeriodTooClose(Ljava/lang/String;)Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;
    .locals 2

    .line 271
    new-instance v0, Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static combinedPeriodTooLong(Ljava/lang/String;)Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;
    .locals 2

    .line 266
    new-instance v0, Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static duplicateOrOverlapPeriods()Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;
    .locals 3

    .line 250
    new-instance v0, Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;

    const-string v1, "Found duplicate or overlapping periods"

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static freezePeriodTooClose(Ljava/lang/String;)Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;
    .locals 2

    .line 261
    new-instance v0, Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static freezePeriodTooLong(Ljava/lang/String;)Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;
    .locals 2

    .line 256
    new-instance v0, Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getErrorCode()I
    .locals 0

    .line 245
    iget p0, p0, Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;->mErrorCode:I

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 281
    iget p2, p0, Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;->mErrorCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    invoke-virtual {p0}, Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
