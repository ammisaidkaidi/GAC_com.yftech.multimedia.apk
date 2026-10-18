.class public Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
.super Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
.source "MidiEventScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/midi/MidiEventScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MidiEvent"
.end annotation


# instance fields
.field public count:I

.field public data:[B


# direct methods
.method private constructor <init>(I)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 58
    invoke-direct {p0, v0, v1}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;-><init>(J)V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    .line 59
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    return-void
.end method

.method synthetic constructor <init>(ILcom/android/internal/midi/MidiEventScheduler$1;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;-><init>(I)V

    return-void
.end method

.method private constructor <init>([BIIJ)V
    .locals 0

    .line 63
    invoke-direct {p0, p4, p5}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;-><init>(J)V

    const/4 p4, 0x0

    .line 54
    iput p4, p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    .line 64
    new-array p5, p3, [B

    iput-object p5, p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    .line 65
    iget-object p5, p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    invoke-static {p1, p2, p5, p4, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 66
    iput p3, p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    return-void
.end method

.method synthetic constructor <init>([BIIJLcom/android/internal/midi/MidiEventScheduler$1;)V
    .locals 0

    .line 53
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;-><init>([BIIJ)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Event: "

    const/4 v1, 0x0

    .line 72
    :goto_0
    iget v2, p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    if-ge v1, v2, :cond_0

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    aget-byte v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
