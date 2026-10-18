.class public final Landroid/media/TimedText$Karaoke;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Karaoke"
.end annotation


# instance fields
.field public final endChar:I

.field public final endTimeMs:I

.field public final startChar:I

.field public final startTimeMs:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput p1, p0, Landroid/media/TimedText$Karaoke;->startTimeMs:I

    .line 315
    iput p2, p0, Landroid/media/TimedText$Karaoke;->endTimeMs:I

    .line 316
    iput p3, p0, Landroid/media/TimedText$Karaoke;->startChar:I

    .line 317
    iput p4, p0, Landroid/media/TimedText$Karaoke;->endChar:I

    return-void
.end method
