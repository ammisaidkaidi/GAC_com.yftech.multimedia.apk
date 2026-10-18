.class public final Landroid/media/midi/MidiDeviceInfo$PortInfo;
.super Ljava/lang/Object;
.source "MidiDeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PortInfo"
.end annotation


# static fields
.field public static final TYPE_INPUT:I = 0x1

.field public static final TYPE_OUTPUT:I = 0x2


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mPortNumber:I

.field private final mPortType:I


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput p1, p0, Landroid/media/midi/MidiDeviceInfo$PortInfo;->mPortType:I

    .line 163
    iput p2, p0, Landroid/media/midi/MidiDeviceInfo$PortInfo;->mPortNumber:I

    if-nez p3, :cond_0

    const-string p3, ""

    .line 164
    :cond_0
    iput-object p3, p0, Landroid/media/midi/MidiDeviceInfo$PortInfo;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 188
    iget-object p0, p0, Landroid/media/midi/MidiDeviceInfo$PortInfo;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getPortNumber()I
    .locals 0

    .line 180
    iget p0, p0, Landroid/media/midi/MidiDeviceInfo$PortInfo;->mPortNumber:I

    return p0
.end method

.method public getType()I
    .locals 0

    .line 172
    iget p0, p0, Landroid/media/midi/MidiDeviceInfo$PortInfo;->mPortType:I

    return p0
.end method
