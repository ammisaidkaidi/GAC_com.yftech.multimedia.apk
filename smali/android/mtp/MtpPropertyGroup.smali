.class Landroid/mtp/MtpPropertyGroup;
.super Ljava/lang/Object;
.source "MtpPropertyGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpPropertyGroup$Property;
    }
.end annotation


# static fields
.field private static final PATH_WHERE:Ljava/lang/String; = "_data=?"

.field private static final TAG:Ljava/lang/String; = "MtpPropertyGroup"


# instance fields
.field private mColumns:[Ljava/lang/String;

.field private final mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

.field private final mProvider:Landroid/content/ContentProviderClient;

.field private final mUri:Landroid/net/Uri;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentProviderClient;Ljava/lang/String;[I)V
    .locals 4

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/ContentProviderClient;

    .line 64
    iput-object p2, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    .line 65
    invoke-static {p2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    .line 67
    array-length p1, p3

    .line 68
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v0, "_id"

    .line 69
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    new-array v0, p1, [Landroid/mtp/MtpPropertyGroup$Property;

    iput-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 73
    iget-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget v3, p3, v1

    invoke-direct {p0, v3, p2}, Landroid/mtp/MtpPropertyGroup;->createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 76
    new-array p3, p1, [Ljava/lang/String;

    iput-object p3, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    :goto_1
    if-ge v0, p1, :cond_1

    .line 78
    iget-object p3, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/mtp/MtpPropertyGroup$Property;"
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x6

    const v2, 0xffff

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    .line 167
    sget-object v1, Landroid/mtp/MtpPropertyGroup;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unsupported property "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :sswitch_0
    move v2, v0

    goto :goto_2

    :sswitch_1
    const-string v3, "album_artist"

    goto :goto_2

    :sswitch_2
    const-string/jumbo v3, "year"

    goto :goto_2

    :sswitch_3
    const-string v3, "composer"

    goto :goto_2

    :sswitch_4
    const-string/jumbo v3, "track"

    goto :goto_0

    :sswitch_5
    const-string v3, "duration"

    goto :goto_1

    :sswitch_6
    const-string v3, "description"

    goto :goto_2

    :sswitch_7
    const/16 v0, 0xa

    goto :goto_0

    :sswitch_8
    const/16 v0, 0x8

    goto :goto_0

    :goto_1
    :sswitch_9
    move v2, v1

    :goto_2
    :sswitch_a
    if-eqz v3, :cond_0

    .line 172
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v0, Landroid/mtp/MtpPropertyGroup$Property;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-direct {v0, p0, p1, v2, p2}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    return-object v0

    .line 175
    :cond_0
    new-instance p2, Landroid/mtp/MtpPropertyGroup$Property;

    const/4 v0, -0x1

    invoke-direct {p2, p0, p1, v2, v0}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    return-object p2

    :sswitch_data_0
    .sparse-switch
        0xdc01 -> :sswitch_9
        0xdc02 -> :sswitch_0
        0xdc03 -> :sswitch_0
        0xdc04 -> :sswitch_8
        0xdc07 -> :sswitch_a
        0xdc09 -> :sswitch_a
        0xdc0b -> :sswitch_9
        0xdc41 -> :sswitch_7
        0xdc44 -> :sswitch_a
        0xdc46 -> :sswitch_a
        0xdc48 -> :sswitch_6
        0xdc4e -> :sswitch_a
        0xdc89 -> :sswitch_5
        0xdc8b -> :sswitch_4
        0xdc8c -> :sswitch_a
        0xdc96 -> :sswitch_3
        0xdc99 -> :sswitch_2
        0xdc9a -> :sswitch_a
        0xdc9b -> :sswitch_1
        0xdce0 -> :sswitch_a
        0xde92 -> :sswitch_0
        0xde93 -> :sswitch_9
        0xde94 -> :sswitch_0
        0xde99 -> :sswitch_9
        0xde9a -> :sswitch_9
    .end sparse-switch
.end method

.method private native format_date_time(J)Ljava/lang/String;
.end method

.method private queryAudio(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    .line 182
    :try_start_0
    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/ContentProviderClient;

    iget-object p0, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {p0}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 p0, 0x1

    new-array v3, p0, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v3, v8

    const-string v4, "_data=?"

    new-array v5, p0, [Ljava/lang/String;

    aput-object p1, v5, v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_1

    .line 185
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 186
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 194
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_1

    :catch_0
    move-object v0, p0

    goto :goto_0

    :cond_1
    :try_start_2
    const-string p1, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p1

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    :goto_0
    :try_start_3
    const-string p0, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object p0

    :goto_1
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p1
.end method

.method private queryGenre(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    .line 202
    :try_start_0
    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/ContentProviderClient;

    iget-object p0, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {p0}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo p0, "name"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "_data=?"

    const/4 p0, 0x1

    new-array v5, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    aput-object p1, v5, p0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_1

    .line 205
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 214
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, p1

    goto :goto_1

    :catch_0
    move-object v0, p1

    goto :goto_0

    :cond_1
    :try_start_2
    const-string p0, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_1
    :goto_0
    :try_start_3
    const-string p0, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object p0

    :goto_1
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p0
.end method


# virtual methods
.method public getPropertyList(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpPropertyList;)I
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    .line 226
    invoke-virtual/range {p1 .. p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v8

    .line 227
    invoke-virtual/range {p1 .. p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v9

    .line 228
    iget-object v10, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v11, v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, v12

    move v14, v13

    :goto_0
    if-ge v14, v11, :cond_a

    aget-object v2, v10, v14

    .line 229
    iget v3, v2, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    if-nez v1, :cond_1

    .line 232
    :try_start_0
    iget-object v15, v0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/ContentProviderClient;

    iget-object v3, v0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    iget-object v4, v0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    const-string v18, "_data=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object v9, v5, v13

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v19, v5

    invoke-virtual/range {v15 .. v21}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    .line 234
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 235
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v12

    goto :goto_1

    :catch_0
    move-object v1, v3

    goto :goto_2

    :cond_0
    :goto_1
    move-object v15, v3

    goto :goto_3

    .line 239
    :catch_1
    :goto_2
    sget-object v3, Landroid/mtp/MtpPropertyGroup;->TAG:Ljava/lang/String;

    const-string v4, "Mediaprovider lookup failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v15, v1

    .line 242
    :goto_3
    iget v1, v2, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    const-wide/16 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    .line 319
    iget v1, v2, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    goto/16 :goto_7

    .line 311
    :sswitch_0
    iget v3, v2, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    const/4 v4, 0x6

    const-wide/16 v5, 0x0

    move-object/from16 v1, p2

    move v2, v8

    invoke-virtual/range {v1 .. v6}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_8

    .line 316
    :sswitch_1
    iget v3, v2, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    const/4 v4, 0x4

    const-wide/16 v5, 0x0

    move-object/from16 v1, p2

    move v2, v8

    invoke-virtual/range {v1 .. v6}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_8

    .line 298
    :sswitch_2
    iget v1, v2, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    const-string v2, "album"

    .line 299
    invoke-direct {v0, v9, v2}, Landroid/mtp/MtpPropertyGroup;->queryAudio(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 298
    invoke-virtual {v7, v8, v1, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_8

    :sswitch_3
    if-eqz v15, :cond_2

    .line 282
    iget v1, v2, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    goto :goto_4

    :cond_2
    move v1, v13

    .line 283
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0101T000000"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 284
    iget v2, v2, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    invoke-virtual {v7, v8, v2, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_8

    .line 302
    :sswitch_4
    invoke-direct {v0, v9}, Landroid/mtp/MtpPropertyGroup;->queryGenre(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 304
    iget v2, v2, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    invoke-virtual {v7, v8, v2, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_8

    :sswitch_5
    if-eqz v15, :cond_3

    .line 289
    iget v1, v2, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    goto :goto_5

    :cond_3
    move v1, v13

    .line 290
    :goto_5
    iget v3, v2, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    const/4 v4, 0x4

    rem-int/lit16 v1, v1, 0x3e8

    int-to-long v5, v1

    move-object/from16 v1, p2

    move v2, v8

    invoke-virtual/range {v1 .. v6}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_8

    .line 294
    :sswitch_6
    iget v1, v2, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    const-string v2, "artist"

    .line 295
    invoke-direct {v0, v9, v2}, Landroid/mtp/MtpPropertyGroup;->queryAudio(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 294
    invoke-virtual {v7, v8, v1, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_8

    .line 274
    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x20

    int-to-long v3, v1

    .line 275
    invoke-virtual/range {p1 .. p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide v5

    add-long/2addr v5, v3

    .line 276
    iget v3, v2, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v4, v2, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move-object/from16 v1, p2

    move v2, v8

    invoke-virtual/range {v1 .. v6}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_8

    .line 268
    :sswitch_8
    iget v5, v2, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v6, v2, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    .line 269
    invoke-virtual/range {p1 .. p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v1

    if-eqz v1, :cond_4

    move-wide/from16 v16, v3

    goto :goto_6

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v1

    int-to-long v1, v1

    move-wide/from16 v16, v1

    :goto_6
    move-object/from16 v1, p2

    move v2, v8

    move v3, v5

    move v4, v6

    move-wide/from16 v5, v16

    .line 268
    invoke-virtual/range {v1 .. v6}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_8

    .line 255
    :sswitch_9
    iget v1, v2, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    .line 256
    invoke-virtual/range {p1 .. p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Landroid/mtp/MtpPropertyGroup;->format_date_time(J)Ljava/lang/String;

    move-result-object v2

    .line 255
    invoke-virtual {v7, v8, v1, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_8

    .line 250
    :sswitch_a
    iget v1, v2, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    invoke-virtual/range {p1 .. p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v8, v1, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_8

    .line 265
    :sswitch_b
    iget v3, v2, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v4, v2, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    invoke-virtual/range {p1 .. p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getSize()J

    move-result-wide v5

    move-object/from16 v1, p2

    move v2, v8

    invoke-virtual/range {v1 .. v6}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_8

    .line 245
    :sswitch_c
    iget v3, v2, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v4, v2, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    const-wide/16 v5, 0x0

    move-object/from16 v1, p2

    move v2, v8

    invoke-virtual/range {v1 .. v6}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto :goto_8

    .line 262
    :sswitch_d
    iget v3, v2, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v4, v2, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    invoke-virtual/range {p1 .. p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v1

    int-to-long v5, v1

    move-object/from16 v1, p2

    move v2, v8

    invoke-virtual/range {v1 .. v6}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto :goto_8

    .line 259
    :sswitch_e
    iget v3, v2, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v4, v2, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    invoke-virtual/range {p1 .. p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorageId()I

    move-result v1

    int-to-long v5, v1

    move-object/from16 v1, p2

    move v2, v8

    invoke-virtual/range {v1 .. v6}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto :goto_8

    :goto_7
    if-eqz v1, :cond_8

    const v5, 0xffff

    if-eq v1, v5, :cond_6

    if-eqz v15, :cond_5

    .line 332
    iget v1, v2, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    :cond_5
    move-wide v5, v3

    .line 333
    iget v3, v2, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v4, v2, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move-object/from16 v1, p2

    move v2, v8

    invoke-virtual/range {v1 .. v6}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto :goto_8

    :cond_6
    const-string v1, ""

    if-eqz v15, :cond_7

    .line 326
    iget v1, v2, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 327
    :cond_7
    iget v2, v2, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    invoke-virtual {v7, v8, v2, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_8

    .line 321
    :cond_8
    iget v3, v2, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v4, v2, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    const-wide/16 v5, 0x0

    move-object/from16 v1, p2

    move v2, v8

    invoke-virtual/range {v1 .. v6}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    :cond_9
    :goto_8
    add-int/lit8 v14, v14, 0x1

    move-object v1, v15

    goto/16 :goto_0

    :cond_a
    if-eqz v1, :cond_b

    .line 338
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b
    const/16 v0, 0x2001

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xdc01 -> :sswitch_e
        0xdc02 -> :sswitch_d
        0xdc03 -> :sswitch_c
        0xdc04 -> :sswitch_b
        0xdc07 -> :sswitch_a
        0xdc09 -> :sswitch_9
        0xdc0b -> :sswitch_8
        0xdc41 -> :sswitch_7
        0xdc44 -> :sswitch_a
        0xdc46 -> :sswitch_6
        0xdc4e -> :sswitch_9
        0xdc8b -> :sswitch_5
        0xdc8c -> :sswitch_4
        0xdc99 -> :sswitch_3
        0xdc9a -> :sswitch_2
        0xdce0 -> :sswitch_a
        0xde92 -> :sswitch_1
        0xde93 -> :sswitch_0
        0xde94 -> :sswitch_1
        0xde99 -> :sswitch_0
        0xde9a -> :sswitch_0
    .end sparse-switch
.end method
