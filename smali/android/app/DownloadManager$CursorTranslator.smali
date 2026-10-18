.class Landroid/app/DownloadManager$CursorTranslator;
.super Landroid/database/CursorWrapper;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CursorTranslator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAccessFilename:Z

.field private final mBaseUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1485
    const-class v0, Landroid/app/DownloadManager;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/net/Uri;Z)V
    .locals 0

    .line 1490
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 1491
    iput-object p2, p0, Landroid/app/DownloadManager$CursorTranslator;->mBaseUri:Landroid/net/Uri;

    .line 1492
    iput-boolean p3, p0, Landroid/app/DownloadManager$CursorTranslator;->mAccessFilename:Z

    return-void
.end method

.method private getErrorCode(I)J
    .locals 0

    const/16 p0, 0x190

    if-gt p0, p1, :cond_0

    const/16 p0, 0x1e8

    if-lt p1, p0, :cond_1

    :cond_0
    const/16 p0, 0x1f4

    if-gt p0, p1, :cond_2

    const/16 p0, 0x258

    if-ge p1, p0, :cond_2

    :cond_1
    int-to-long p0, p1

    return-wide p0

    :cond_2
    sparse-switch p1, :sswitch_data_0

    const-wide/16 p0, 0x3e8

    return-wide p0

    :sswitch_0
    const-wide/16 p0, 0x3ed

    return-wide p0

    :sswitch_1
    const-wide/16 p0, 0x3ec

    return-wide p0

    :sswitch_2
    const-wide/16 p0, 0x3ea

    return-wide p0

    :sswitch_3
    const-wide/16 p0, 0x3e9

    return-wide p0

    :sswitch_4
    const-wide/16 p0, 0x3f0

    return-wide p0

    :sswitch_5
    const-wide/16 p0, 0x3f1

    return-wide p0

    :sswitch_6
    const-wide/16 p0, 0x3ef

    return-wide p0

    :sswitch_7
    const-wide/16 p0, 0x3ee

    return-wide p0

    :sswitch_data_0
    .sparse-switch
        0xc6 -> :sswitch_7
        0xc7 -> :sswitch_6
        0x1e8 -> :sswitch_5
        0x1e9 -> :sswitch_4
        0x1ec -> :sswitch_3
        0x1ed -> :sswitch_2
        0x1ee -> :sswitch_2
        0x1ef -> :sswitch_1
        0x1f1 -> :sswitch_0
    .end sparse-switch
.end method

.method private getLocalUri()Ljava/lang/String;
    .locals 4

    const-string v0, "destination"

    .line 1529
    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x4

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x6

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "_id"

    .line 1541
    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v0

    .line 1542
    sget-object p0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string v0, "local_filename"

    .line 1533
    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 1537
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPausedReason(I)J
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-wide/16 p0, 0x4

    return-wide p0

    :pswitch_0
    const-wide/16 p0, 0x3

    return-wide p0

    :pswitch_1
    const-wide/16 p0, 0x2

    return-wide p0

    :pswitch_2
    const-wide/16 p0, 0x1

    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0xc2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getReason(I)J
    .locals 2

    .line 1546
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 1548
    :cond_0
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getErrorCode(I)J

    move-result-wide p0

    return-wide p0

    .line 1551
    :cond_1
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getPausedReason(I)J

    move-result-wide p0

    return-wide p0
.end method

.method private translateStatus(I)I
    .locals 0

    const/16 p0, 0xbe

    if-eq p1, p0, :cond_1

    const/16 p0, 0xc8

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/16 p0, 0x10

    return p0

    :pswitch_0
    const/4 p0, 0x4

    return p0

    :pswitch_1
    const/4 p0, 0x2

    return p0

    :cond_0
    const/16 p0, 0x8

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xc0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getInt(I)I
    .locals 0

    .line 1497
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public getLong(I)J
    .locals 2

    .line 1502
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p1, "status"

    .line 1503
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result p1

    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getReason(I)J

    move-result-wide p0

    return-wide p0

    .line 1504
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo p1, "status"

    .line 1505
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result p1

    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    .line 1507
    :cond_1
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3

    .line 1513
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    .line 1514
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x47d0d968

    if-eq v1, v2, :cond_1

    const v2, 0x150cc5b

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "local_filename"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "local_uri"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 1518
    :pswitch_0
    iget-boolean v0, p0, Landroid/app/DownloadManager$CursorTranslator;->mAccessFilename:Z

    if-eqz v0, :cond_3

    goto :goto_2

    .line 1519
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "COLUMN_LOCAL_FILENAME is deprecated; use ContentResolver.openFileDescriptor() instead"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1516
    :pswitch_1
    invoke-direct {p0}, Landroid/app/DownloadManager$CursorTranslator;->getLocalUri()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1524
    :goto_2
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
