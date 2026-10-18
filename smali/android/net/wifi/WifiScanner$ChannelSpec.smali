.class public Landroid/net/wifi/WifiScanner$ChannelSpec;
.super Ljava/lang/Object;
.source "WifiScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChannelSpec"
.end annotation


# instance fields
.field public dwellTimeMS:I

.field public frequency:I

.field public passive:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput p1, p0, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    const/4 p1, 0x0

    .line 138
    iput-boolean p1, p0, Landroid/net/wifi/WifiScanner$ChannelSpec;->passive:Z

    .line 139
    iput p1, p0, Landroid/net/wifi/WifiScanner$ChannelSpec;->dwellTimeMS:I

    return-void
.end method
