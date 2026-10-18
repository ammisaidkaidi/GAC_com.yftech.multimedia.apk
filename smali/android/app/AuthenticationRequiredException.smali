.class public final Landroid/app/AuthenticationRequiredException;
.super Ljava/lang/SecurityException;
.source "AuthenticationRequiredException.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AuthenticationRequiredException;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AuthenticationRequiredException"


# instance fields
.field private final mUserAction:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Landroid/app/AuthenticationRequiredException$1;

    invoke-direct {v0}, Landroid/app/AuthenticationRequiredException$1;-><init>()V

    sput-object v0, Landroid/app/AuthenticationRequiredException;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/SecurityException;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    invoke-direct {p0, v0, p1}, Landroid/app/AuthenticationRequiredException;-><init>(Ljava/lang/Throwable;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Landroid/app/PendingIntent;)V
    .locals 0

    .line 62
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    iput-object p1, p0, Landroid/app/AuthenticationRequiredException;->mUserAction:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getUserAction()Landroid/app/PendingIntent;
    .locals 0

    .line 70
    iget-object p0, p0, Landroid/app/AuthenticationRequiredException;->mUserAction:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 80
    invoke-virtual {p0}, Landroid/app/AuthenticationRequiredException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object p0, p0, Landroid/app/AuthenticationRequiredException;->mUserAction:Landroid/app/PendingIntent;

    invoke-virtual {p0, p1, p2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
