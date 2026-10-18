.class final Landroid/view/FrameInfo;
.super Ljava/lang/Object;
.source "FrameInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/FrameInfo$FrameInfoFlags;
    }
.end annotation


# static fields
.field private static final ANIMATION_START:I = 0x6

.field private static final DRAW_START:I = 0x8

.field private static final FLAGS:I = 0x0

.field public static final FLAG_WINDOW_LAYOUT_CHANGED:J = 0x1L

.field private static final HANDLE_INPUT_START:I = 0x5

.field private static final INTENDED_VSYNC:I = 0x1

.field private static final NEWEST_INPUT_EVENT:I = 0x4

.field private static final OLDEST_INPUT_EVENT:I = 0x3

.field private static final PERFORM_TRAVERSALS_START:I = 0x7

.field private static final VSYNC:I = 0x2


# instance fields
.field mFrameInfo:[J


# direct methods
.method constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    .line 43
    new-array v0, v0, [J

    iput-object v0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    return-void
.end method


# virtual methods
.method public addFlags(J)V
    .locals 3

    .line 115
    iget-object p0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    or-long/2addr p1, v1

    aput-wide p1, p0, v0

    return-void
.end method

.method public markAnimationsStart()V
    .locals 3

    .line 103
    iget-object p0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const/4 v2, 0x6

    aput-wide v0, p0, v2

    return-void
.end method

.method public markDrawStart()V
    .locals 3

    .line 111
    iget-object p0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const/16 v2, 0x8

    aput-wide v0, p0, v2

    return-void
.end method

.method public markInputHandlingStart()V
    .locals 3

    .line 99
    iget-object p0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const/4 v2, 0x5

    aput-wide v0, p0, v2

    return-void
.end method

.method public markPerformTraversalsStart()V
    .locals 3

    .line 107
    iget-object p0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const/4 v2, 0x7

    aput-wide v0, p0, v2

    return-void
.end method

.method public setVsync(JJ)V
    .locals 2

    .line 82
    iget-object v0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    const/4 v1, 0x1

    aput-wide p1, v0, v1

    .line 83
    iget-object p1, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    const/4 p2, 0x2

    aput-wide p3, p1, p2

    .line 84
    iget-object p1, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    const/4 p2, 0x3

    const-wide p3, 0x7fffffffffffffffL

    aput-wide p3, p1, p2

    .line 85
    iget-object p1, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    const-wide/16 p2, 0x0

    const/4 p4, 0x4

    aput-wide p2, p1, p4

    .line 86
    iget-object p0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    const/4 p1, 0x0

    aput-wide p2, p0, p1

    return-void
.end method

.method public updateInputEventTime(JJ)V
    .locals 4

    .line 90
    iget-object v0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    const/4 v1, 0x3

    aget-wide v2, v0, v1

    cmp-long v0, p3, v2

    if-gez v0, :cond_0

    .line 91
    iget-object v0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    aput-wide p3, v0, v1

    .line 93
    :cond_0
    iget-object p3, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    const/4 p4, 0x4

    aget-wide v0, p3, p4

    cmp-long p3, p1, v0

    if-lez p3, :cond_1

    .line 94
    iget-object p0, p0, Landroid/view/FrameInfo;->mFrameInfo:[J

    aput-wide p1, p0, p4

    :cond_1
    return-void
.end method
