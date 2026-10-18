.class Lcom/android/ims/internal/uce/presence/PresPublishTriggerType$1;
.super Ljava/lang/Object;
.source "PresPublishTriggerType.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;
    .locals 1

    .line 95
    new-instance p0, Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;-><init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/presence/PresPublishTriggerType$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresPublishTriggerType$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;
    .locals 0

    .line 100
    new-array p0, p1, [Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresPublishTriggerType$1;->newArray(I)[Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;

    move-result-object p0

    return-object p0
.end method
