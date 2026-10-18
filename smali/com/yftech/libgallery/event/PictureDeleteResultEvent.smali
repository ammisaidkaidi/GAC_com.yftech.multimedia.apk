.class public Lcom/yftech/libgallery/event/PictureDeleteResultEvent;
.super Ljava/lang/Object;
.source "PictureDeleteResultEvent.java"


# instance fields
.field public isSuccessful:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean p1, p0, Lcom/yftech/libgallery/event/PictureDeleteResultEvent;->isSuccessful:Z

    return-void
.end method
