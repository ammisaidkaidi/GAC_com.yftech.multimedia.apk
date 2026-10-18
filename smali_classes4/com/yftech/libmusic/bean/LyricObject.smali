.class public Lcom/yftech/libmusic/bean/LyricObject;
.super Ljava/lang/Object;
.source "LyricObject.java"


# instance fields
.field public begintime:I

.field public endtime:I

.field public lrc:Ljava/lang/String;

.field public timeline:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, " "

    .line 15
    iput-object v0, p0, Lcom/yftech/libmusic/bean/LyricObject;->lrc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/yftech/libmusic/bean/LyricObject;->lrc:Ljava/lang/String;

    return-void
.end method
