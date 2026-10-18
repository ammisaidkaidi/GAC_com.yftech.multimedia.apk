.class Landroid/appwidget/AppWidgetProviderInfo$1;
.super Ljava/lang/Object;
.source "AppWidgetProviderInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/appwidget/AppWidgetProviderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/appwidget/AppWidgetProviderInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 0

    .line 452
    new-instance p0, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetProviderInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 449
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetProviderInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/appwidget/AppWidgetProviderInfo;
    .locals 0

    .line 457
    new-array p0, p1, [Landroid/appwidget/AppWidgetProviderInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 449
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetProviderInfo$1;->newArray(I)[Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p0

    return-object p0
.end method
