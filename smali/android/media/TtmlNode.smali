.class Landroid/media/TtmlNode;
.super Ljava/lang/Object;
.source "TtmlRenderer.java"


# instance fields
.field public final mAttributes:Ljava/lang/String;

.field public final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TtmlNode;",
            ">;"
        }
    .end annotation
.end field

.field public final mEndTimeMs:J

.field public final mName:Ljava/lang/String;

.field public final mParent:Landroid/media/TtmlNode;

.field public final mRunId:J

.field public final mStartTimeMs:J

.field public final mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/media/TtmlNode;J)V
    .locals 1

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    .line 305
    iput-object p1, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    .line 306
    iput-object p2, p0, Landroid/media/TtmlNode;->mAttributes:Ljava/lang/String;

    .line 307
    iput-object p3, p0, Landroid/media/TtmlNode;->mText:Ljava/lang/String;

    .line 308
    iput-wide p4, p0, Landroid/media/TtmlNode;->mStartTimeMs:J

    .line 309
    iput-wide p6, p0, Landroid/media/TtmlNode;->mEndTimeMs:J

    .line 310
    iput-object p8, p0, Landroid/media/TtmlNode;->mParent:Landroid/media/TtmlNode;

    .line 311
    iput-wide p9, p0, Landroid/media/TtmlNode;->mRunId:J

    return-void
.end method


# virtual methods
.method public isActive(JJ)Z
    .locals 2

    .line 323
    iget-wide v0, p0, Landroid/media/TtmlNode;->mEndTimeMs:J

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    iget-wide p0, p0, Landroid/media/TtmlNode;->mStartTimeMs:J

    cmp-long p0, p0, p3

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
