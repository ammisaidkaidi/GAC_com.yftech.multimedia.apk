.class public final Landroid/os/BatteryStats$BitDescription;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BitDescription"
.end annotation


# instance fields
.field public final mask:I

.field public final name:Ljava/lang/String;

.field public final shift:I

.field public final shortName:Ljava/lang/String;

.field public final shortValues:[Ljava/lang/String;

.field public final values:[Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1976
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1977
    iput p1, p0, Landroid/os/BatteryStats$BitDescription;->mask:I

    .line 1978
    iput p2, p0, Landroid/os/BatteryStats$BitDescription;->shift:I

    .line 1979
    iput-object p3, p0, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    .line 1980
    iput-object p4, p0, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    .line 1981
    iput-object p5, p0, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    .line 1982
    iput-object p6, p0, Landroid/os/BatteryStats$BitDescription;->shortValues:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1966
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1967
    iput p1, p0, Landroid/os/BatteryStats$BitDescription;->mask:I

    const/4 p1, -0x1

    .line 1968
    iput p1, p0, Landroid/os/BatteryStats$BitDescription;->shift:I

    .line 1969
    iput-object p2, p0, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    .line 1970
    iput-object p3, p0, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 1971
    iput-object p1, p0, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    .line 1972
    iput-object p1, p0, Landroid/os/BatteryStats$BitDescription;->shortValues:[Ljava/lang/String;

    return-void
.end method
