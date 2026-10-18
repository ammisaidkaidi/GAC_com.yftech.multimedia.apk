.class public Landroid/media/MediaScanner;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaScanner$WplHandler;,
        Landroid/media/MediaScanner$MediaBulkDeleter;,
        Landroid/media/MediaScanner$MyMediaScannerClient;,
        Landroid/media/MediaScanner$PlaylistEntry;,
        Landroid/media/MediaScanner$FileEntry;,
        Landroid/media/MediaScanner$MediaData;
    }
.end annotation


# static fields
.field private static final ALARMS_DIR:Ljava/lang/String; = "/alarms/"

.field private static final ATC_AOSP_ENHANCEMENT:Z

.field private static final ATC_AOSP_ENHANCEMENT_MS_STOP:Z

.field private static final DATE_MODIFIED_PLAYLISTS_COLUMN_INDEX:I = 0x2

.field private static final DEFAULT_RINGTONE_PROPERTY_PREFIX:Ljava/lang/String; = "ro.config."

.field private static final ENABLE_BULK_INSERTS:Z = true

.field private static final FILES_PRESCAN_DATE_MODIFIED_COLUMN_INDEX:I = 0x3

.field private static final FILES_PRESCAN_FORMAT_COLUMN_INDEX:I = 0x2

.field private static final FILES_PRESCAN_ID_COLUMN_INDEX:I = 0x0

.field private static final FILES_PRESCAN_PATH_COLUMN_INDEX:I = 0x1

.field private static final FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

.field private static final FLUSH_ALL:I = 0x2

.field private static final ID3_GENRES:[Ljava/lang/String;

.field private static final ID_PLAYLISTS_COLUMN_INDEX:I = 0x0

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field public static final LAST_INTERNAL_SCAN_FINGERPRINT:Ljava/lang/String; = "lastScanFingerprint"

.field private static final MEDIA_INSERT:I = 0x1

.field private static final MUSIC_DIR:Ljava/lang/String; = "/music/"

.field private static final NOTIFICATIONS_DIR:Ljava/lang/String; = "/notifications/"

.field private static final PATH_PLAYLISTS_COLUMN_INDEX:I = 0x1

.field private static final PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

.field private static final PODCAST_DIR:Ljava/lang/String; = "/podcasts/"

.field private static final PRODUCT_SOUNDS_DIR:Ljava/lang/String; = "/product/media/audio"

.field private static final QUIT:I = 0x3

.field private static final RINGTONES_DIR:Ljava/lang/String; = "/ringtones/"

.field public static final SCANNED_BUILD_PREFS_NAME:Ljava/lang/String; = "MediaScanBuild"

.field private static final SYSTEM_SOUNDS_DIR:Ljava/lang/String; = "/system/media/audio"

.field private static final TAG:Ljava/lang/String; = "MediaScanner"

.field private static mMediaPaths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mNoMediaPaths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sLastInternalScanFingerprint:Ljava/lang/String;


# instance fields
.field private mAudioCount:I

.field private mAudioCountLimit:I

.field private final mAudioUri:Landroid/net/Uri;

.field private final mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private final mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;

.field private mCurTotalCount:I

.field private mDebug:Z

.field private mDefaultAlarmAlertFilename:Ljava/lang/String;

.field private mDefaultAlarmSet:Z

.field private mDefaultNotificationFilename:Ljava/lang/String;

.field private mDefaultNotificationSet:Z

.field private mDefaultRingtoneFilename:Ljava/lang/String;

.field private mDefaultRingtoneSet:Z

.field private mDrmManagerClient:Landroid/drm/DrmManagerClient;

.field private mFileScanCnt4Sleep:I

.field private final mFilesUri:Landroid/net/Uri;

.field private final mFilesUriNoNotify:Landroid/net/Uri;

.field private mImageCount:I

.field private mImageCountLimit:I

.field private final mImagesUri:Landroid/net/Uri;

.field private mMediaInsertHandler:Landroid/os/Handler;

.field private mMediaInserter:Landroid/media/MediaInserter;

.field private final mMediaProvider:Landroid/content/ContentProviderClient;

.field private mMediaRequestStack:Ljava/util/Stack;

.field private mMtpObjectHandle:I

.field private mNativeContext:J

.field private mOriginalCount:I

.field private final mPackageName:Ljava/lang/String;

.field private mParseAudioOnly:Z

.field private final mPlayLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaScanner$FileEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlaylistEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaScanner$PlaylistEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlaylistsUri:Landroid/net/Uri;

.field private final mProcessGenres:Z

.field private final mProcessPlaylists:Z

.field private mScanOff:Z

.field private mSeparateInsertScan:Z

.field private mSleepTimeMs:I

.field private mVideoCount:I

.field private mVideoCountLimit:I

.field private final mVideoUri:Landroid/net/Uri;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 149

    const-string/jumbo v0, "media_jni"

    .line 133
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 134
    invoke-static {}, Landroid/media/MediaScanner;->native_init()V

    const-string/jumbo v0, "ro.atc.aosp_enhancement"

    const/4 v1, 0x0

    .line 140
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/media/MediaScanner;->ATC_AOSP_ENHANCEMENT:Z

    const-string v0, "atc_aosp_enhancement_ms_stop"

    .line 141
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/media/MediaScanner;->ATC_AOSP_ENHANCEMENT_MS_STOP:Z

    const-string v0, "_id"

    const-string v1, "_data"

    const-string v2, "format"

    const-string v3, "date_modified"

    .line 172
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const-string v0, "_id"

    .line 179
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v0, "playlist_id"

    .line 188
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MediaScanner;->PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 206
    sput-object v0, Landroid/media/MediaScanner;->sLastInternalScanFingerprint:Ljava/lang/String;

    const-string v1, "Blues"

    const-string v2, "Classic Rock"

    const-string v3, "Country"

    const-string v4, "Dance"

    const-string v5, "Disco"

    const-string v6, "Funk"

    const-string v7, "Grunge"

    const-string v8, "Hip-Hop"

    const-string v9, "Jazz"

    const-string v10, "Metal"

    const-string v11, "New Age"

    const-string v12, "Oldies"

    const-string v13, "Other"

    const-string v14, "Pop"

    const-string v15, "R&B"

    const-string v16, "Rap"

    const-string v17, "Reggae"

    const-string v18, "Rock"

    const-string v19, "Techno"

    const-string v20, "Industrial"

    const-string v21, "Alternative"

    const-string v22, "Ska"

    const-string v23, "Death Metal"

    const-string v24, "Pranks"

    const-string v25, "Soundtrack"

    const-string v26, "Euro-Techno"

    const-string v27, "Ambient"

    const-string v28, "Trip-Hop"

    const-string v29, "Vocal"

    const-string v30, "Jazz+Funk"

    const-string v31, "Fusion"

    const-string v32, "Trance"

    const-string v33, "Classical"

    const-string v34, "Instrumental"

    const-string v35, "Acid"

    const-string v36, "House"

    const-string v37, "Game"

    const-string v38, "Sound Clip"

    const-string v39, "Gospel"

    const-string v40, "Noise"

    const-string v41, "AlternRock"

    const-string v42, "Bass"

    const-string v43, "Soul"

    const-string v44, "Punk"

    const-string v45, "Space"

    const-string v46, "Meditative"

    const-string v47, "Instrumental Pop"

    const-string v48, "Instrumental Rock"

    const-string v49, "Ethnic"

    const-string v50, "Gothic"

    const-string v51, "Darkwave"

    const-string v52, "Techno-Industrial"

    const-string v53, "Electronic"

    const-string v54, "Pop-Folk"

    const-string v55, "Eurodance"

    const-string v56, "Dream"

    const-string v57, "Southern Rock"

    const-string v58, "Comedy"

    const-string v59, "Cult"

    const-string v60, "Gangsta"

    const-string v61, "Top 40"

    const-string v62, "Christian Rap"

    const-string v63, "Pop/Funk"

    const-string v64, "Jungle"

    const-string v65, "Native American"

    const-string v66, "Cabaret"

    const-string v67, "New Wave"

    const-string v68, "Psychadelic"

    const-string v69, "Rave"

    const-string v70, "Showtunes"

    const-string v71, "Trailer"

    const-string v72, "Lo-Fi"

    const-string v73, "Tribal"

    const-string v74, "Acid Punk"

    const-string v75, "Acid Jazz"

    const-string v76, "Polka"

    const-string v77, "Retro"

    const-string v78, "Musical"

    const-string v79, "Rock & Roll"

    const-string v80, "Hard Rock"

    const-string v81, "Folk"

    const-string v82, "Folk-Rock"

    const-string v83, "National Folk"

    const-string v84, "Swing"

    const-string v85, "Fast Fusion"

    const-string v86, "Bebob"

    const-string v87, "Latin"

    const-string v88, "Revival"

    const-string v89, "Celtic"

    const-string v90, "Bluegrass"

    const-string v91, "Avantgarde"

    const-string v92, "Gothic Rock"

    const-string v93, "Progressive Rock"

    const-string v94, "Psychedelic Rock"

    const-string v95, "Symphonic Rock"

    const-string v96, "Slow Rock"

    const-string v97, "Big Band"

    const-string v98, "Chorus"

    const-string v99, "Easy Listening"

    const-string v100, "Acoustic"

    const-string v101, "Humour"

    const-string v102, "Speech"

    const-string v103, "Chanson"

    const-string v104, "Opera"

    const-string v105, "Chamber Music"

    const-string v106, "Sonata"

    const-string v107, "Symphony"

    const-string v108, "Booty Bass"

    const-string v109, "Primus"

    const-string v110, "Porn Groove"

    const-string v111, "Satire"

    const-string v112, "Slow Jam"

    const-string v113, "Club"

    const-string v114, "Tango"

    const-string v115, "Samba"

    const-string v116, "Folklore"

    const-string v117, "Ballad"

    const-string v118, "Power Ballad"

    const-string v119, "Rhythmic Soul"

    const-string v120, "Freestyle"

    const-string v121, "Duet"

    const-string v122, "Punk Rock"

    const-string v123, "Drum Solo"

    const-string v124, "A capella"

    const-string v125, "Euro-House"

    const-string v126, "Dance Hall"

    const-string v127, "Goa"

    const-string v128, "Drum & Bass"

    const-string v129, "Club-House"

    const-string v130, "Hardcore"

    const-string v131, "Terror"

    const-string v132, "Indie"

    const-string v133, "Britpop"

    const-string v135, "Polsk Punk"

    const-string v136, "Beat"

    const-string v137, "Christian Gangsta"

    const-string v138, "Heavy Metal"

    const-string v139, "Black Metal"

    const-string v140, "Crossover"

    const-string v141, "Contemporary Christian"

    const-string v142, "Christian Rock"

    const-string v143, "Merengue"

    const-string v144, "Salsa"

    const-string v145, "Thrash Metal"

    const-string v146, "Anime"

    const-string v147, "JPop"

    const-string v148, "Synthpop"

    const/16 v134, 0x0

    .line 208
    filled-new-array/range {v1 .. v148}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    .line 1744
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    .line 1745
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "persist.mediascanner.slpTimeMs"

    const/4 v1, 0x0

    .line 147
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner;->mSleepTimeMs:I

    const-string/jumbo v0, "persist.mediascanner.fileCnt"

    .line 148
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner;->mFileScanCnt4Sleep:I

    const-string/jumbo v0, "persist.mediascanner.image.cnt"

    const/16 v2, 0x5dc

    .line 149
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner;->mImageCountLimit:I

    const-string/jumbo v0, "persist.mediascanner.video.cnt"

    const/16 v2, 0x1f4

    .line 150
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner;->mVideoCountLimit:I

    const-string/jumbo v0, "persist.mediascanner.audio.cnt"

    const/16 v2, 0xbb8

    .line 151
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner;->mAudioCountLimit:I

    const-string/jumbo v0, "persist.mediascanner.sperate.scan"

    const/4 v2, 0x1

    .line 152
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/MediaScanner;->mSeparateInsertScan:Z

    const-string/jumbo v0, "persist.mediascanner.parse.audio.only"

    .line 153
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/MediaScanner;->mParseAudioOnly:Z

    const-string/jumbo v0, "persist.mediascanner.log.on"

    .line 154
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/MediaScanner;->mDebug:Z

    .line 155
    iput-boolean v1, p0, Landroid/media/MediaScanner;->mScanOff:Z

    .line 157
    iput v1, p0, Landroid/media/MediaScanner;->mCurTotalCount:I

    .line 158
    iput v1, p0, Landroid/media/MediaScanner;->mImageCount:I

    .line 159
    iput v1, p0, Landroid/media/MediaScanner;->mVideoCount:I

    .line 160
    iput v1, p0, Landroid/media/MediaScanner;->mAudioCount:I

    .line 163
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner;->mMediaRequestStack:Ljava/util/Stack;

    .line 378
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 379
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 406
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    .line 436
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 440
    iput-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 507
    new-instance v3, Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-direct {v3, p0}, Landroid/media/MediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MediaScanner;)V

    iput-object v3, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    const-string v3, "MediaScanner"

    .line 443
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MediaScanner created, volume:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_setup()V

    .line 445
    iput-object p1, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    .line 446
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    .line 447
    iput-object p2, p0, Landroid/media/MediaScanner;->mVolumeName:Ljava/lang/String;

    .line 449
    iget-object p1, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v2, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 450
    iget-object p1, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 452
    invoke-direct {p0}, Landroid/media/MediaScanner;->setDefaultRingtoneFileNames()V

    .line 454
    iget-object p1, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v3, "media"

    .line 455
    invoke-virtual {p1, v3}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 457
    sget-object p1, Landroid/media/MediaScanner;->sLastInternalScanFingerprint:Ljava/lang/String;

    if-eqz p1, :cond_0

    sget-boolean p1, Landroid/media/MediaScanner;->ATC_AOSP_ENHANCEMENT:Z

    if-eqz p1, :cond_1

    sget-object p1, Landroid/media/MediaScanner;->sLastInternalScanFingerprint:Ljava/lang/String;

    const-string v3, ""

    .line 458
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 459
    :cond_0
    iget-object p1, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    const-string v3, "MediaScanBuild"

    .line 460
    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v3, "lastScanFingerprint"

    .line 461
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 462
    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Landroid/media/MediaScanner;->sLastInternalScanFingerprint:Ljava/lang/String;

    .line 465
    :cond_1
    invoke-static {p2}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    .line 466
    invoke-static {p2}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    .line 467
    invoke-static {p2}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    .line 468
    invoke-static {p2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    .line 469
    iget-object p1, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string/jumbo v3, "nonotify"

    const-string v4, "1"

    invoke-virtual {p1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaScanner;->mFilesUriNoNotify:Landroid/net/Uri;

    const-string p1, "internal"

    .line 471
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 473
    iput-boolean v2, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    .line 474
    iput-boolean v2, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    .line 475
    invoke-static {p2}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    goto :goto_0

    .line 477
    :cond_2
    iput-boolean v1, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    .line 478
    iput-boolean v1, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    .line 479
    iput-object v0, p0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    .line 482
    :goto_0
    iget-object p1, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz p1, :cond_4

    .line 484
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    .line 485
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_4

    if-eqz p1, :cond_3

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    goto :goto_1

    .line 490
    :cond_3
    invoke-direct {p0, p2}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    .line 495
    :cond_4
    :goto_1
    iget-object p0, p0, Landroid/media/MediaScanner;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string p1, "close"

    invoke-virtual {p0, p1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Z
    .locals 0

    .line 131
    invoke-static {p0}, Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Landroid/media/MediaScanner;)Z
    .locals 0

    .line 131
    invoke-direct {p0}, Landroid/media/MediaScanner;->isDrmEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Landroid/media/MediaScanner;)Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    return p0
.end method

.method static synthetic access$1002(Landroid/media/MediaScanner;Z)Z
    .locals 0

    .line 131
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    return p1
.end method

.method static synthetic access$1100(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 0

    .line 131
    iget-object p0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Landroid/media/MediaScanner;)Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    return p0
.end method

.method static synthetic access$1202(Landroid/media/MediaScanner;Z)Z
    .locals 0

    .line 131
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    return p1
.end method

.method static synthetic access$1300(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 0

    .line 131
    iget-object p0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Ljava/lang/String;)Z
    .locals 0

    .line 131
    invoke-static {p0}, Landroid/media/MediaScanner;->isSystemSoundWithMetadata(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .locals 1

    .line 131
    sget-object v0, Landroid/media/MediaScanner;->sLastInternalScanFingerprint:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/media/MediaScanner;)Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Landroid/media/MediaScanner;->mParseAudioOnly:Z

    return p0
.end method

.method static synthetic access$1700(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)Z
    .locals 0

    .line 131
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Landroid/media/MediaScanner;)I
    .locals 0

    .line 131
    iget p0, p0, Landroid/media/MediaScanner;->mAudioCount:I

    return p0
.end method

.method static synthetic access$1808(Landroid/media/MediaScanner;)I
    .locals 2

    .line 131
    iget v0, p0, Landroid/media/MediaScanner;->mAudioCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/media/MediaScanner;->mAudioCount:I

    return v0
.end method

.method static synthetic access$1900(Landroid/media/MediaScanner;)I
    .locals 0

    .line 131
    iget p0, p0, Landroid/media/MediaScanner;->mAudioCountLimit:I

    return p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 131
    sget-boolean v0, Landroid/media/MediaScanner;->ATC_AOSP_ENHANCEMENT:Z

    return v0
.end method

.method static synthetic access$2000(Landroid/media/MediaScanner;)I
    .locals 0

    .line 131
    iget p0, p0, Landroid/media/MediaScanner;->mVideoCount:I

    return p0
.end method

.method static synthetic access$2008(Landroid/media/MediaScanner;)I
    .locals 2

    .line 131
    iget v0, p0, Landroid/media/MediaScanner;->mVideoCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/media/MediaScanner;->mVideoCount:I

    return v0
.end method

.method static synthetic access$2100(Landroid/media/MediaScanner;)I
    .locals 0

    .line 131
    iget p0, p0, Landroid/media/MediaScanner;->mVideoCountLimit:I

    return p0
.end method

.method static synthetic access$2200(Landroid/media/MediaScanner;)I
    .locals 0

    .line 131
    iget p0, p0, Landroid/media/MediaScanner;->mImageCount:I

    return p0
.end method

.method static synthetic access$2208(Landroid/media/MediaScanner;)I
    .locals 2

    .line 131
    iget v0, p0, Landroid/media/MediaScanner;->mImageCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/media/MediaScanner;->mImageCount:I

    return v0
.end method

.method static synthetic access$2300(Landroid/media/MediaScanner;)I
    .locals 0

    .line 131
    iget p0, p0, Landroid/media/MediaScanner;->mImageCountLimit:I

    return p0
.end method

.method static synthetic access$2400(Landroid/media/MediaScanner;)I
    .locals 0

    .line 131
    iget p0, p0, Landroid/media/MediaScanner;->mFileScanCnt4Sleep:I

    return p0
.end method

.method static synthetic access$2500(Landroid/media/MediaScanner;)I
    .locals 0

    .line 131
    iget p0, p0, Landroid/media/MediaScanner;->mSleepTimeMs:I

    return p0
.end method

.method static synthetic access$2600(Landroid/media/MediaScanner;)I
    .locals 0

    .line 131
    iget p0, p0, Landroid/media/MediaScanner;->mCurTotalCount:I

    return p0
.end method

.method static synthetic access$2602(Landroid/media/MediaScanner;I)I
    .locals 0

    .line 131
    iput p1, p0, Landroid/media/MediaScanner;->mCurTotalCount:I

    return p1
.end method

.method static synthetic access$2612(Landroid/media/MediaScanner;I)I
    .locals 1

    .line 131
    iget v0, p0, Landroid/media/MediaScanner;->mCurTotalCount:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/media/MediaScanner;->mCurTotalCount:I

    return v0
.end method

.method static synthetic access$2700(Landroid/media/MediaScanner;)Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    return p0
.end method

.method static synthetic access$2800()[Ljava/lang/String;
    .locals 1

    .line 131
    sget-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;
    .locals 0

    .line 131
    iget-object p0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    return-object p0
.end method

.method static synthetic access$300(Landroid/media/MediaScanner;)Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    return p0
.end method

.method static synthetic access$3000(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 0

    .line 131
    iget-object p0, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$3100(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;
    .locals 0

    .line 131
    iget-object p0, p0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    return-object p0
.end method

.method static synthetic access$3200(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 0

    .line 131
    iget-object p0, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$3300(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 0

    .line 131
    iget-object p0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$3400(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 0

    .line 131
    iget-object p0, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$3500(Landroid/media/MediaScanner;)Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Landroid/media/MediaScanner;->mSeparateInsertScan:Z

    return p0
.end method

.method static synthetic access$3600(Landroid/media/MediaScanner;)Landroid/os/Handler;
    .locals 0

    .line 131
    iget-object p0, p0, Landroid/media/MediaScanner;->mMediaInsertHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3700(Landroid/media/MediaScanner;)Landroid/content/ContentProviderClient;
    .locals 0

    .line 131
    iget-object p0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    return-object p0
.end method

.method static synthetic access$3800(Landroid/media/MediaScanner;)Ljava/util/Stack;
    .locals 0

    .line 131
    iget-object p0, p0, Landroid/media/MediaScanner;->mMediaRequestStack:Ljava/util/Stack;

    return-object p0
.end method

.method static synthetic access$400(Landroid/media/MediaScanner;)Ljava/util/ArrayList;
    .locals 0

    .line 131
    iget-object p0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$4000(Landroid/media/MediaScanner;Ljava/lang/String;)Z
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Landroid/media/MediaScanner;->wasRingtoneAlreadySet(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4100(Landroid/media/MediaScanner;)Landroid/content/Context;
    .locals 0

    .line 131
    iget-object p0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$4200(Landroid/media/MediaScanner;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Landroid/media/MediaScanner;->settingSetIndicatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4300(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;
    .locals 0

    .line 131
    iget-object p0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    return-object p0
.end method

.method static synthetic access$4302(Landroid/media/MediaScanner;Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;
    .locals 0

    .line 131
    iput-object p1, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    return-object p1
.end method

.method static synthetic access$4500(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1, p2}, Landroid/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Landroid/media/MediaScanner;)Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Landroid/media/MediaScanner;->mScanOff:Z

    return p0
.end method

.method static synthetic access$600(Landroid/media/MediaScanner;)Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Landroid/media/MediaScanner;->mDebug:Z

    return p0
.end method

.method static synthetic access$700(Landroid/media/MediaScanner;)I
    .locals 0

    .line 131
    iget p0, p0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    return p0
.end method

.method static synthetic access$800(Landroid/media/MediaScanner;)Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    return p0
.end method

.method static synthetic access$802(Landroid/media/MediaScanner;Z)Z
    .locals 0

    .line 131
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    return p1
.end method

.method static synthetic access$900(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 0

    .line 131
    iget-object p0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    return-object p0
.end method

.method private cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1935
    new-instance v0, Landroid/media/MediaScanner$PlaylistEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/MediaScanner$PlaylistEntry;-><init>(Landroid/media/MediaScanner$1;)V

    .line 1937
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    .line 1938
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    return-void

    .line 1942
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1946
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    const/4 v4, 0x1

    if-eq v1, v2, :cond_3

    .line 1948
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_4

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_4

    :cond_3
    move v3, v4

    :cond_4
    if-nez v3, :cond_5

    .line 1951
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1952
    :cond_5
    iput-object p1, v0, Landroid/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    .line 1955
    iget-object p0, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static clearMediaPathCache(ZZ)V
    .locals 1

    .line 1749
    const-class v0, Landroid/media/MediaScanner;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 1751
    :try_start_0
    sget-object p0, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 1754
    sget-object p0, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 1756
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private isDrmEnabled()Z
    .locals 1

    const-string p0, "drm.service.enabled"

    .line 510
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string/jumbo v0, "true"

    .line 511
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isNoMediaFile(Ljava/lang/String;)Z
    .locals 11

    .line 1711
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1712
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x2f

    .line 1717
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_6

    add-int/lit8 v2, v0, 0x2

    .line 1718
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_6

    add-int/lit8 v2, v0, 0x1

    const-string v3, "._"

    const/4 v4, 0x2

    .line 1720
    invoke-virtual {p0, v2, v3, v1, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    const/4 v10, 0x1

    if-eqz v3, :cond_1

    return v10

    :cond_1
    const/4 v5, 0x1

    .line 1727
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v6, v3, -0x4

    const-string v7, ".jpg"

    const/4 v8, 0x0

    const/4 v9, 0x4

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v5, 0x1

    const-string v7, "AlbumArt_{"

    const/4 v8, 0x0

    const/16 v9, 0xa

    move-object v4, p0

    move v6, v2

    .line 1728
    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v5, 0x1

    const-string v7, "AlbumArt."

    const/4 v8, 0x0

    const/16 v9, 0x9

    move-object v4, p0

    move v6, v2

    .line 1729
    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 1732
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    sub-int/2addr v3, v10

    const/16 v0, 0x11

    if-ne v3, v0, :cond_3

    const/4 v5, 0x1

    const-string v7, "AlbumArtSmall"

    const/4 v8, 0x0

    const/16 v9, 0xd

    move-object v4, p0

    move v6, v2

    .line 1733
    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/16 v0, 0xa

    if-ne v3, v0, :cond_6

    const/4 v5, 0x1

    const-string v7, "Folder"

    const/4 v8, 0x0

    const/4 v9, 0x6

    move-object v4, p0

    move v6, v2

    .line 1736
    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_4
    return v10

    :cond_5
    :goto_0
    return v10

    :cond_6
    return v1
.end method

.method public static isNoMediaPath(Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "/."

    .line 1764
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_1

    return v2

    :cond_1
    const/16 v1, 0x2f

    .line 1768
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-gtz v3, :cond_2

    return v0

    .line 1772
    :cond_2
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1774
    const-class v4, Landroid/media/MediaScanner;

    monitor-enter v4

    .line 1775
    :try_start_0
    sget-object v5, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1776
    monitor-exit v4

    return v2

    .line 1777
    :cond_3
    sget-object v5, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    move v5, v2

    :goto_0
    if-ltz v5, :cond_5

    .line 1782
    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-le v6, v5, :cond_4

    add-int/lit8 v6, v6, 0x1

    .line 1785
    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".nomedia"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1786
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1788
    sget-object p0, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    const-string v0, ""

    invoke-virtual {p0, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1789
    monitor-exit v4

    return v2

    :cond_4
    move v5, v6

    goto :goto_0

    .line 1794
    :cond_5
    sget-object v0, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    const-string v1, ""

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1796
    :cond_6
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1798
    invoke-static {p0}, Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    .line 1796
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static isSystemSoundWithMetadata(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "/system/media/audio/alarms/"

    .line 1347
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/system/media/audio/ringtones/"

    .line 1348
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/system/media/audio/notifications/"

    .line 1349
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/product/media/audio/alarms/"

    .line 1350
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/product/media/audio/ringtones/"

    .line 1351
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/product/media/audio/notifications/"

    .line 1352
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private matchEntries(JLjava/lang/String;)Z
    .locals 7

    .line 1911
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v2

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 1914
    iget-object v4, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaScanner$PlaylistEntry;

    .line 1915
    iget v5, v4, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_0

    goto :goto_2

    .line 1919
    :cond_0
    iget-object v3, v4, Landroid/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1920
    iput-wide p1, v4, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    .line 1921
    iput v6, v4, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    goto :goto_1

    .line 1925
    :cond_1
    iget-object v3, v4, Landroid/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    invoke-direct {p0, p3, v3}, Landroid/media/MediaScanner;->matchPaths(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1926
    iget v5, v4, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-le v3, v5, :cond_2

    .line 1927
    iput-wide p1, v4, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    .line 1928
    iput v3, v4, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    :cond_2
    :goto_1
    move v3, v1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method private matchPaths(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11

    .line 1885
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    .line 1886
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lez p0, :cond_5

    if-lez v0, :cond_5

    add-int/lit8 v3, p0, -0x1

    const/16 v4, 0x2f

    .line 1889
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v5

    add-int/lit8 v6, v0, -0x1

    .line 1890
    invoke-virtual {p2, v4, v6}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v4

    const/16 v7, 0x5c

    .line 1891
    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    .line 1892
    invoke-virtual {p2, v7, v6}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v6

    if-le v5, v3, :cond_0

    move v3, v5

    :cond_0
    if-le v4, v6, :cond_1

    goto :goto_1

    :cond_1
    move v4, v6

    :goto_1
    if-gez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    :goto_2
    if-gez v4, :cond_3

    move v4, v1

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    :goto_3
    sub-int v10, p0, v3

    sub-int/2addr v0, v4

    if-eq v0, v10, :cond_4

    goto :goto_4

    :cond_4
    const/4 v6, 0x1

    move-object v5, p1

    move v7, v3

    move-object v8, p2

    move v9, v4

    .line 1899
    invoke-virtual/range {v5 .. v10}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_5

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p0, v3, -0x1

    add-int/lit8 v0, v4, -0x1

    goto :goto_0

    :cond_5
    :goto_4
    return v2
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_setup()V
.end method

.method private postscan([Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1521
    iget-boolean p1, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    if-eqz p1, :cond_0

    .line 1522
    invoke-direct {p0}, Landroid/media/MediaScanner;->processPlayLists()V

    .line 1526
    :cond_0
    iget-object p0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private prescan(Ljava/lang/String;Z)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1377
    iget-object v2, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    const-string v5, "_id>? AND _data=?"

    .line 1383
    new-array v6, v3, [Ljava/lang/String;

    const-string v7, ""

    aput-object v7, v6, v4

    aput-object p1, v6, v2

    goto :goto_0

    :cond_0
    const-string v5, "_id>?"

    const-string v1, ""

    .line 1386
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    :goto_0
    const-string/jumbo v1, "ringtone"

    .line 1389
    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->wasRingtoneAlreadySet(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    const-string/jumbo v1, "notification_sound"

    .line 1390
    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->wasRingtoneAlreadySet(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    const-string v1, "alarm_alert"

    .line 1391
    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->wasRingtoneAlreadySet(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    .line 1397
    iget-object v1, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v7, "deletedata"

    const-string v8, "false"

    .line 1398
    invoke-virtual {v1, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1399
    new-instance v14, Landroid/media/MediaScanner$MediaBulkDeleter;

    iget-object v7, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v14, v7, v1}, Landroid/media/MediaScanner$MediaBulkDeleter;-><init>(Landroid/content/ContentProviderClient;Landroid/net/Uri;)V

    const/4 v1, 0x0

    if-eqz p2, :cond_8

    const-wide/high16 v7, -0x8000000000000000L

    .line 1409
    :try_start_0
    iget-object v9, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    const-string v10, "limit"

    const-string v11, "1000"

    invoke-virtual {v9, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-wide v12, v7

    move-object v7, v1

    .line 1412
    :cond_1
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v4

    if-eqz v7, :cond_2

    .line 1414
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v16, v1

    goto :goto_1

    :cond_2
    move-object/from16 v16, v7

    .line 1417
    :goto_1
    :try_start_2
    iget-object v7, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    sget-object v9, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const-string v17, "_id"

    const/16 v18, 0x0

    move-object v8, v15

    move-object v10, v5

    move-object v11, v6

    move-wide/from16 v19, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    invoke-virtual/range {v7 .. v13}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v7, :cond_3

    goto :goto_2

    .line 1423
    :cond_3
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-nez v8, :cond_4

    :goto_2
    move-object v1, v7

    goto/16 :goto_7

    :cond_4
    move-wide/from16 v12, v19

    .line 1428
    :cond_5
    :goto_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1429
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1430
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1431
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v10, 0x3

    .line 1432
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getLong(I)J

    if-eqz v8, :cond_5

    const-string v10, "/"

    .line 1438
    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v10, :cond_5

    .line 1441
    :try_start_4
    sget v10, Landroid/system/OsConstants;->F_OK:I

    invoke-static {v8, v10}, Landroid/system/Os;->access(Ljava/lang/String;I)Z

    move-result v10
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catch_0
    move v10, v4

    :goto_4
    if-nez v10, :cond_5

    .line 1444
    :try_start_5
    invoke-static {v9}, Landroid/mtp/MtpConstants;->isAbstractObject(I)Z

    move-result v9

    if-nez v9, :cond_5

    .line 1449
    invoke-static {v8}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v9

    if-nez v9, :cond_6

    move v9, v4

    goto :goto_5

    .line 1450
    :cond_6
    iget v9, v9, Landroid/media/MediaFile$MediaFileType;->fileType:I

    .line 1452
    :goto_5
    invoke-static {v9}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v9

    if-nez v9, :cond_5

    .line 1453
    invoke-virtual {v14, v12, v13}, Landroid/media/MediaScanner$MediaBulkDeleter;->delete(J)V

    .line 1454
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "/.nomedia"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1455
    invoke-virtual {v14}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    .line 1456
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    .line 1457
    iget-object v9, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    const-string/jumbo v10, "unhide"

    invoke-virtual {v9, v10, v8, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 v7, v16

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v7, v1

    :goto_6
    if-eqz v7, :cond_7

    .line 1468
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1470
    :cond_7
    invoke-virtual {v14}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    throw v0

    :cond_8
    :goto_7
    if-eqz v1, :cond_9

    .line 1468
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1470
    :cond_9
    invoke-virtual {v14}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    .line 1474
    iput v4, v0, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 1475
    iget-object v5, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v6, v0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    sget-object v7, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 1477
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, v0, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 1478
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a
    return-void
.end method

.method private processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    .locals 6

    const/4 v0, -0x1

    .line 1959
    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1960
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1961
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v0, 0x1

    .line 1962
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1963
    invoke-direct {p0, v2, v3, v0}, Landroid/media/MediaScanner;->matchEntries(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1968
    :cond_1
    iget-object p1, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v0, v1

    :goto_0
    if-ge v1, p1, :cond_3

    .line 1971
    iget-object v2, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaScanner$PlaylistEntry;

    .line 1972
    iget v3, v2, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-lez v3, :cond_2

    .line 1974
    :try_start_0
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    const-string/jumbo v3, "play_order"

    .line 1975
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "audio_id"

    .line 1976
    iget-wide v4, v2, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1977
    iget-object v2, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v2, p3, p2}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "MediaScanner"

    const-string p2, "RemoteException in MediaScanner.processCachedPlaylist()"

    .line 1980
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1985
    :cond_3
    iget-object p0, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private native processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private native processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)Z
.end method

.method private processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 4

    const/4 v0, 0x0

    .line 1992
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1993
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1994
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x2000

    invoke-direct {p1, v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1996
    :try_start_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 1997
    iget-object v1, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :goto_0
    if-eqz v0, :cond_1

    .line 2000
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-eq v1, v2, :cond_0

    .line 2001
    invoke-direct {p0, v0, p2}, Landroid/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 2003
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2006
    :cond_1
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, p1

    goto :goto_4

    :catch_0
    move-exception p0

    move-object v0, p1

    goto :goto_2

    :cond_2
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_3

    .line 2013
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    const-string p1, "MediaScanner"

    const-string p2, "IOException in MediaScanner.processM3uPlayList()"

    .line 2015
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    :goto_2
    :try_start_3
    const-string p1, "MediaScanner"

    const-string p2, "IOException in MediaScanner.processM3uPlayList()"

    .line 2009
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_3

    .line 2013
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_3
    return-void

    :goto_4
    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    const-string p2, "MediaScanner"

    const-string p3, "IOException in MediaScanner.processM3uPlayList()"

    .line 2015
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2016
    :cond_4
    :goto_5
    throw p0
.end method

.method private processPlayList(Landroid/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2118
    iget-object v1, p1, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    .line 2119
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const/16 v0, 0x2f

    .line 2120
    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_7

    .line 2123
    iget-wide v2, p1, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    const-string/jumbo v5, "name"

    .line 2126
    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "title"

    .line 2128
    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    const/16 v5, 0x2e

    .line 2131
    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-gez v5, :cond_0

    add-int/lit8 v5, v0, 0x1

    .line 2132
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    add-int/lit8 v6, v0, 0x1

    .line 2133
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_1
    :goto_0
    const-string/jumbo v6, "name"

    .line 2137
    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "date_modified"

    .line 2138
    iget-wide v6, p1, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 v5, 0x0

    cmp-long p1, v2, v5

    if-nez p1, :cond_2

    const-string p1, "_data"

    .line 2141
    invoke-virtual {v4, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    iget-object p1, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v2, p0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    invoke-virtual {p1, v2, v4}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    .line 2143
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    const-string/jumbo v2, "members"

    .line 2144
    invoke-static {p1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_1
    move-object v3, p1

    goto :goto_2

    .line 2146
    :cond_2
    iget-object p1, p0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 2147
    iget-object v2, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v4, v3, v3}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string/jumbo v2, "members"

    .line 2150
    invoke-static {p1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2151
    iget-object v2, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v2, p1, v3, v3}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    const/4 p1, 0x0

    .line 2154
    invoke-virtual {v1, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2155
    invoke-static {v1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_3

    .line 2156
    :cond_3
    iget p1, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    :goto_3
    const/16 v0, 0x29

    if-ne p1, v0, :cond_4

    move-object v0, p0

    move-object v5, p2

    .line 2159
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaScanner;->processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    goto :goto_4

    :cond_4
    const/16 v0, 0x2a

    if-ne p1, v0, :cond_5

    move-object v0, p0

    move-object v5, p2

    .line 2161
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaScanner;->processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    goto :goto_4

    :cond_5
    const/16 v0, 0x2b

    if-ne p1, v0, :cond_6

    move-object v0, p0

    move-object v5, p2

    .line 2163
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaScanner;->processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    :cond_6
    :goto_4
    return-void

    .line 2121
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "bad path "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private processPlayLists()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2168
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 2173
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v3, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    sget-object v4, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "media_type=2"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2175
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2176
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaScanner$FileEntry;

    .line 2178
    iget-boolean v3, v1, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    if-eqz v3, :cond_0

    .line 2179
    invoke-direct {p0, v1, v2}, Landroid/media/MediaScanner;->processPlayList(Landroid/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    .line 2185
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-object v1, v2

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p0

    :catch_1
    :goto_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_3
    return-void
.end method

.method private processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 4

    const/4 v0, 0x0

    .line 2024
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2025
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2026
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x2000

    invoke-direct {p1, v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2028
    :try_start_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 2029
    iget-object v1, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "File"

    .line 2032
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x3d

    .line 2033
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 2035
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 2038
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2041
    :cond_1
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, p1

    goto :goto_4

    :catch_0
    move-exception p0

    move-object v0, p1

    goto :goto_2

    :cond_2
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_3

    .line 2048
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    const-string p1, "MediaScanner"

    const-string p2, "IOException in MediaScanner.processPlsPlayList()"

    .line 2050
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    :goto_2
    :try_start_3
    const-string p1, "MediaScanner"

    const-string p2, "IOException in MediaScanner.processPlsPlayList()"

    .line 2044
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_3

    .line 2048
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_3
    return-void

    :goto_4
    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    const-string p2, "MediaScanner"

    const-string p3, "IOException in MediaScanner.processPlsPlayList()"

    .line 2050
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2051
    :cond_4
    :goto_5
    throw p0
.end method

.method private processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x0

    .line 2093
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2094
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2095
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2097
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, "UTF-8"

    .line 2098
    invoke-static {v0}, Landroid/util/Xml;->findEncodingByName(Ljava/lang/String;)Landroid/util/Xml$Encoding;

    move-result-object v0

    new-instance v1, Landroid/media/MediaScanner$WplHandler;

    invoke-direct {v1, p0, p2, p3, p5}, Landroid/media/MediaScanner$WplHandler;-><init>(Landroid/media/MediaScanner;Ljava/lang/String;Landroid/net/Uri;Landroid/database/Cursor;)V

    .line 2099
    invoke-virtual {v1}, Landroid/media/MediaScanner$WplHandler;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object p2

    .line 2098
    invoke-static {p1, v0, p2}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    .line 2101
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    move-object v0, p1

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v0, p1

    goto :goto_2

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 2110
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object p1, v0

    goto :goto_4

    :catch_2
    move-exception p0

    .line 2106
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    .line 2110
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_3
    move-exception p0

    .line 2104
    :goto_2
    :try_start_5
    invoke-virtual {p0}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_1

    .line 2110
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_4
    move-exception p0

    const-string p1, "MediaScanner"

    const-string p2, "IOException in MediaScanner.processWplPlayList()"

    .line 2112
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_3
    return-void

    :goto_4
    if-eqz p1, :cond_2

    .line 2110
    :try_start_7
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_5

    :catch_5
    move-exception p1

    const-string p2, "MediaScanner"

    const-string p3, "IOException in MediaScanner.processWplPlayList()"

    .line 2112
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2113
    :cond_2
    :goto_5
    throw p0
.end method

.method private releaseResources()V
    .locals 1

    .line 1531
    iget-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_0

    .line 1532
    iget-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->close()V

    const/4 v0, 0x0

    .line 1533
    iput-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    :cond_0
    return-void
.end method

.method private setDefaultRingtoneFileNames()V
    .locals 1

    const-string/jumbo v0, "ro.config.ringtone"

    .line 499
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    const-string/jumbo v0, "ro.config.notification_sound"

    .line 501
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    const-string/jumbo v0, "ro.config.alarm_alert"

    .line 503
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    return-void
.end method

.method private native setFdClose()V
.end method

.method private native setLocale(Ljava/lang/String;)V
.end method

.method private native setScanOff()V
.end method

.method private settingSetIndicatorName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1359
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_set"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private wasRingtoneAlreadySet(Ljava/lang/String;)Z
    .locals 1

    .line 1363
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1364
    invoke-direct {p0, p1}, Landroid/media/MediaScanner;->settingSetIndicatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 1366
    :try_start_0
    invoke-static {v0, p0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1

    :catch_0
    return p1
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 2205
    iget-object v0, p0, Landroid/media/MediaScanner;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 2206
    iget-object v0, p0, Landroid/media/MediaScanner;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2207
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    .line 2208
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_finalize()V

    :cond_0
    return-void
.end method

.method public native extractAlbumArt(Ljava/io/FileDescriptor;)[B
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "MediaScanner"

    const-string v1, "MediaScanner finalized"

    .line 2214
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScanner;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 2217
    iget-object v0, p0, Landroid/media/MediaScanner;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 2220
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaScanner;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2222
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    :try_start_0
    const-string v5, "_data=?"

    const/4 v2, 0x1

    .line 1864
    new-array v6, v2, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v6, v9

    .line 1865
    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v3, v0, Landroid/media/MediaScanner;->mFilesUriNoNotify:Landroid/net/Uri;

    sget-object v4, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_1

    .line 1867
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1868
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/4 v0, 0x2

    .line 1869
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const/4 v0, 0x3

    .line 1870
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1871
    new-instance v0, Landroid/media/MediaScanner$FileEntry;

    move-object v10, v0

    move-object/from16 v13, p1

    invoke-direct/range {v10 .. v16}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    .line 1876
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :catch_0
    move-object v2, v1

    :catch_1
    if-eqz v2, :cond_3

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v1
.end method

.method public scanDirectories([Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x3

    .line 1550
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1551
    invoke-direct {p0, v2, v1}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1552
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1554
    sget-boolean v3, Landroid/media/MediaScanner;->ATC_AOSP_ENHANCEMENT:Z

    const/16 v4, 0x1f4

    if-eqz v3, :cond_3

    .line 1555
    iget v3, p0, Landroid/media/MediaScanner;->mImageCountLimit:I

    const/16 v5, 0x5dc

    if-le v3, v5, :cond_0

    goto :goto_0

    :cond_0
    iget v5, p0, Landroid/media/MediaScanner;->mImageCountLimit:I

    :goto_0
    iput v5, p0, Landroid/media/MediaScanner;->mImageCountLimit:I

    .line 1556
    iget v3, p0, Landroid/media/MediaScanner;->mVideoCountLimit:I

    if-le v3, v4, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    iget v3, p0, Landroid/media/MediaScanner;->mVideoCountLimit:I

    :goto_1
    iput v3, p0, Landroid/media/MediaScanner;->mVideoCountLimit:I

    .line 1557
    iget v3, p0, Landroid/media/MediaScanner;->mAudioCountLimit:I

    const/16 v5, 0xbb8

    if-le v3, v5, :cond_2

    goto :goto_2

    :cond_2
    iget v5, p0, Landroid/media/MediaScanner;->mAudioCountLimit:I

    :goto_2
    iput v5, p0, Landroid/media/MediaScanner;->mAudioCountLimit:I

    .line 1562
    :cond_3
    sget-boolean v3, Landroid/media/MediaScanner;->ATC_AOSP_ENHANCEMENT:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Landroid/media/MediaScanner;->mSeparateInsertScan:Z

    if-eqz v3, :cond_4

    const-string v3, "MediaScanner"

    const-string/jumbo v4, "use mediainsert to bulkinsert 100 files\n"

    .line 1563
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    new-instance v3, Landroid/media/MediaInserter;

    iget-object v4, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    const/16 v5, 0x64

    invoke-direct {v3, v4, v5}, Landroid/media/MediaInserter;-><init>(Landroid/content/ContentProviderClient;I)V

    iput-object v3, p0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    goto :goto_3

    .line 1566
    :cond_4
    new-instance v3, Landroid/media/MediaInserter;

    iget-object v5, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    invoke-direct {v3, v5, v4}, Landroid/media/MediaInserter;-><init>(Landroid/content/ContentProviderClient;I)V

    iput-object v3, p0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 1570
    :goto_3
    sget-boolean v3, Landroid/media/MediaScanner;->ATC_AOSP_ENHANCEMENT:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Landroid/media/MediaScanner;->mSeparateInsertScan:Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_5

    .line 1573
    :try_start_1
    new-instance v3, Landroid/os/HandlerThread;

    const-string/jumbo v5, "media insert"

    const/16 v6, 0xa

    invoke-direct {v3, v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 1576
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 1578
    new-instance v5, Landroid/media/MediaScanner$1;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6, v3}, Landroid/media/MediaScanner$1;-><init>(Landroid/media/MediaScanner;Landroid/os/Looper;Landroid/os/HandlerThread;)V

    iput-object v5, p0, Landroid/media/MediaScanner;->mMediaInsertHandler:Landroid/os/Handler;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catch_0
    move-exception v3

    :try_start_2
    const-string v5, "MediaScanner"

    .line 1622
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "start insert thread fail:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    iput-boolean v4, p0, Landroid/media/MediaScanner;->mSeparateInsertScan:Z

    .line 1627
    :cond_5
    :goto_4
    array-length v3, p1

    if-ge v4, v3, :cond_6

    .line 1628
    aget-object v3, p1, v4

    iget-object v5, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-direct {p0, v3, v5}, Landroid/media/MediaScanner;->processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1631
    :cond_6
    sget-boolean v3, Landroid/media/MediaScanner;->ATC_AOSP_ENHANCEMENT:Z

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Landroid/media/MediaScanner;->mSeparateInsertScan:Z

    if-eqz v3, :cond_8

    .line 1632
    :goto_5
    iget-object v3, p0, Landroid/media/MediaScanner;->mMediaInsertHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_7

    const-wide/16 v3, 0x5

    .line 1633
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_5

    :cond_7
    const-wide/16 v3, 0x1

    .line 1635
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 1636
    monitor-enter p0
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1637
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    invoke-virtual {v1}, Landroid/media/MediaInserter;->flushAll()V

    .line 1638
    iput-object v2, p0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 1639
    monitor-exit p0

    goto :goto_6

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 1643
    :cond_8
    iget-object v1, p0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    invoke-virtual {v1}, Landroid/media/MediaInserter;->flushAll()V

    .line 1644
    iput-object v2, p0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 1648
    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1649
    invoke-direct {p0, p1}, Landroid/media/MediaScanner;->postscan([Ljava/lang/String;)V

    .line 1650
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1667
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 1669
    sget-boolean p1, Landroid/media/MediaScanner;->ATC_AOSP_ENHANCEMENT:Z

    if-eqz p1, :cond_9

    .line 1670
    iget-boolean p1, p0, Landroid/media/MediaScanner;->mSeparateInsertScan:Z

    if-eqz p1, :cond_9

    goto :goto_7

    :catchall_1
    move-exception p1

    goto :goto_8

    :catch_1
    move-exception p1

    :try_start_5
    const-string v1, "MediaScanner"

    const-string v2, "RemoteException in MediaScanner.scan()"

    .line 1665
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1667
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 1669
    sget-boolean p1, Landroid/media/MediaScanner;->ATC_AOSP_ENHANCEMENT:Z

    if-eqz p1, :cond_9

    .line 1670
    iget-boolean p1, p0, Landroid/media/MediaScanner;->mSeparateInsertScan:Z

    if-eqz p1, :cond_9

    goto :goto_7

    :catch_2
    move-exception p1

    :try_start_6
    const-string v1, "MediaScanner"

    const-string v2, "UnsupportedOperationException in MediaScanner.scan()"

    .line 1663
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1667
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 1669
    sget-boolean p1, Landroid/media/MediaScanner;->ATC_AOSP_ENHANCEMENT:Z

    if-eqz p1, :cond_9

    .line 1670
    iget-boolean p1, p0, Landroid/media/MediaScanner;->mSeparateInsertScan:Z

    if-eqz p1, :cond_9

    goto :goto_7

    :catch_3
    move-exception p1

    :try_start_7
    const-string v1, "MediaScanner"

    const-string v2, "SQLException in MediaScanner.scan()"

    .line 1660
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1667
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 1669
    sget-boolean p1, Landroid/media/MediaScanner;->ATC_AOSP_ENHANCEMENT:Z

    if-eqz p1, :cond_9

    .line 1670
    iget-boolean p1, p0, Landroid/media/MediaScanner;->mSeparateInsertScan:Z

    if-eqz p1, :cond_9

    .line 1671
    :goto_7
    iget-object p0, p0, Landroid/media/MediaScanner;->mMediaInsertHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 1672
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_9
    return-void

    .line 1667
    :goto_8
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 1669
    sget-boolean v1, Landroid/media/MediaScanner;->ATC_AOSP_ENHANCEMENT:Z

    if-eqz v1, :cond_a

    .line 1670
    iget-boolean v1, p0, Landroid/media/MediaScanner;->mSeparateInsertScan:Z

    if-eqz v1, :cond_a

    .line 1671
    iget-object p0, p0, Landroid/media/MediaScanner;->mMediaInsertHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 1672
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 1673
    :cond_a
    throw p1
.end method

.method public scanMtpFile(Ljava/lang/String;II)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1802
    invoke-static/range {p1 .. p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v2

    const/4 v12, 0x0

    if-nez v2, :cond_0

    move v3, v12

    goto :goto_0

    .line 1803
    :cond_0
    iget v3, v2, Landroid/media/MediaFile$MediaFileType;->fileType:I

    .line 1804
    :goto_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1805
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    .line 1807
    invoke-static {v3}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_1

    invoke-static {v3}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1808
    invoke-static {v3}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v3}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1809
    invoke-static {v3}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1812
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "_size"

    .line 1813
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "date_modified"

    .line 1814
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1816
    :try_start_0
    new-array v2, v8, [Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v12

    .line 1817
    iget-object v3, v1, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v1, v1, Landroid/media/MediaScanner;->mVolumeName:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v4, "_id=?"

    invoke-virtual {v3, v1, v0, v4, v2}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "MediaScanner"

    const-string v2, "RemoteException in scanMtpFile"

    .line 1820
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void

    :cond_1
    move/from16 v7, p2

    .line 1825
    iput v7, v1, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    const/4 v13, 0x0

    .line 1828
    :try_start_1
    invoke-static {v3}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1830
    invoke-direct {v1, v13, v8}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1832
    invoke-virtual/range {p0 .. p1}, Landroid/media/MediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1834
    iget-object v2, v1, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v3, v1, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    sget-object v4, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1836
    :try_start_2
    invoke-direct {v1, v0, v2}, Landroid/media/MediaScanner;->processPlayList(Landroid/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v13, v2

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v13, v2

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v13, v2

    goto :goto_4

    .line 1840
    :cond_2
    :try_start_3
    invoke-direct {v1, v0, v12}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1843
    iget-object v3, v1, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    iget-object v7, v2, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v9

    const/16 v2, 0x3001

    move/from16 v4, p3

    if-ne v4, v2, :cond_3

    move v11, v8

    goto :goto_2

    :cond_3
    move v11, v12

    :goto_2
    const/4 v14, 0x1

    .line 1844
    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v15

    move-object v2, v3

    move-object/from16 v3, p1

    move-object v4, v7

    move-wide v7, v9

    move v9, v11

    move v10, v14

    move v11, v15

    .line 1843
    invoke-virtual/range {v2 .. v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1849
    :cond_4
    :goto_3
    iput v12, v1, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    if-eqz v13, :cond_5

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    :goto_4
    :try_start_4
    const-string v2, "MediaScanner"

    const-string v3, "RemoteException in MediaScanner.scanFile()"

    .line 1847
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1849
    iput v12, v1, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    if-eqz v13, :cond_5

    .line 1851
    :goto_5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1853
    :cond_5
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    return-void

    .line 1849
    :goto_6
    iput v12, v1, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    if-eqz v13, :cond_6

    .line 1851
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1853
    :cond_6
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    throw v0
.end method

.method public scanSingleFile(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 12

    const/4 v11, 0x0

    .line 1681
    :try_start_0
    sget-boolean v1, Landroid/media/MediaScanner;->ATC_AOSP_ENHANCEMENT:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/MediaScanner;->mSeparateInsertScan:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 1682
    iput-boolean v1, p0, Landroid/media/MediaScanner;->mSeparateInsertScan:Z

    :cond_0
    const/4 v1, 0x1

    .line 1684
    invoke-direct {p0, p1, v1}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1686
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1687
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1692
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    .line 1695
    sget-boolean v2, Landroid/media/MediaScanner;->ATC_AOSP_ENHANCEMENT:Z

    if-eqz v2, :cond_2

    .line 1696
    iget-object v2, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 1697
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    const/4 v9, 0x1

    invoke-static {p1}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v10

    move-object v1, v2

    move-object v2, p1

    move-object v3, p2

    .line 1696
    invoke-virtual/range {v1 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1706
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    return-object v0

    .line 1700
    :cond_2
    :try_start_1
    iget-object v2, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 1701
    invoke-static {p1}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v10

    move-object v1, v2

    move-object v2, p1

    move-object v3, p2

    .line 1700
    invoke-virtual/range {v1 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1706
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    return-object v0

    :cond_3
    :goto_0
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    return-object v11

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "MediaScanner"

    const-string v2, "RemoteException in MediaScanner.scanFile()"

    .line 1703
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1706
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    return-object v11

    :goto_1
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    throw v0
.end method

.method public setScanOffFlag(Z)V
    .locals 1

    .line 1538
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mScanOff:Z

    if-eqz p1, :cond_0

    const-string p1, "MediaScanner"

    const-string v0, "MediaScanner.java::setScanOff"

    .line 1540
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    invoke-direct {p0}, Landroid/media/MediaScanner;->setScanOff()V

    .line 1542
    sget-boolean p1, Landroid/media/MediaScanner;->ATC_AOSP_ENHANCEMENT_MS_STOP:Z

    if-eqz p1, :cond_0

    .line 1543
    invoke-direct {p0}, Landroid/media/MediaScanner;->setFdClose()V

    :cond_0
    return-void
.end method
