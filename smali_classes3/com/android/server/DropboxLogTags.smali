.class public Lcom/android/server/DropboxLogTags;
.super Ljava/lang/Object;
.source "DropboxLogTags.java"


# static fields
.field public static final DROPBOX_FILE_COPY:I = 0x13c6a


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeDropboxFileCopy(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    .line 17
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const p0, 0x13c6a

    invoke-static {p0, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method
