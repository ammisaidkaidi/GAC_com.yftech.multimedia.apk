.class Landroid/location/Location$1;
.super Ljava/lang/ThreadLocal;
.source "Location.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Landroid/location/Location$BearingDistanceCache;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Landroid/location/Location$BearingDistanceCache;
    .locals 1

    .line 121
    new-instance p0, Landroid/location/Location$BearingDistanceCache;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/location/Location$BearingDistanceCache;-><init>(Landroid/location/Location$1;)V

    return-object p0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 0

    .line 118
    invoke-virtual {p0}, Landroid/location/Location$1;->initialValue()Landroid/location/Location$BearingDistanceCache;

    move-result-object p0

    return-object p0
.end method
