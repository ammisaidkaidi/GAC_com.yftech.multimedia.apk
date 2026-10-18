.class public final Landroid/location/FusedBatchOptions$SourceTechnologies;
.super Ljava/lang/Object;
.source "FusedBatchOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/FusedBatchOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SourceTechnologies"
.end annotation


# static fields
.field public static BLUETOOTH:I = 0x10

.field public static CELL:I = 0x8

.field public static GNSS:I = 0x1

.field public static SENSORS:I = 0x4

.field public static WIFI:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
