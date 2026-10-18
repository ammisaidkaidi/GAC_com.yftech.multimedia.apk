.class public Lcom/yftech/libradio/event/RadioSetFreqEvent;
.super Ljava/lang/Object;
.source "RadioSetFreqEvent.java"


# instance fields
.field public freq:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/yftech/libradio/event/RadioSetFreqEvent;->freq:I

    return-void
.end method
