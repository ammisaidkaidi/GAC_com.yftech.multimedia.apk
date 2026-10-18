.class public Landroid/os/Parcel$ReadWriteHelper;
.super Ljava/lang/Object;
.source "Parcel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Parcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadWriteHelper"
.end annotation


# static fields
.field public static final DEFAULT:Landroid/os/Parcel$ReadWriteHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 358
    new-instance v0, Landroid/os/Parcel$ReadWriteHelper;

    invoke-direct {v0}, Landroid/os/Parcel$ReadWriteHelper;-><init>()V

    sput-object v0, Landroid/os/Parcel$ReadWriteHelper;->DEFAULT:Landroid/os/Parcel$ReadWriteHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public readString(Landroid/os/Parcel;)Ljava/lang/String;
    .locals 0

    .line 375
    invoke-static {p1}, Landroid/os/Parcel;->access$000(Landroid/os/Parcel;)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroid/os/Parcel;->nativeReadString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeString(Landroid/os/Parcel;Ljava/lang/String;)V
    .locals 0

    .line 366
    invoke-static {p1}, Landroid/os/Parcel;->access$000(Landroid/os/Parcel;)J

    move-result-wide p0

    invoke-static {p0, p1, p2}, Landroid/os/Parcel;->nativeWriteString(JLjava/lang/String;)V

    return-void
.end method
