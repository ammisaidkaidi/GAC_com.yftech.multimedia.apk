.class public final Landroid/content/pm/ActivityInfo$WindowLayout;
.super Ljava/lang/Object;
.source "ActivityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ActivityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WindowLayout"
.end annotation


# instance fields
.field public final gravity:I

.field public final height:I

.field public final heightFraction:F

.field public final minHeight:I

.field public final minWidth:I

.field public final width:I

.field public final widthFraction:F


# direct methods
.method public constructor <init>(IFIFIII)V
    .locals 0

    .line 1321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1322
    iput p1, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    .line 1323
    iput p2, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    .line 1324
    iput p3, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    .line 1325
    iput p4, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    .line 1326
    iput p5, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    .line 1327
    iput p6, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    .line 1328
    iput p7, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    .line 1333
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    .line 1334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    .line 1335
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    .line 1336
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    .line 1337
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    .line 1338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    return-void
.end method
