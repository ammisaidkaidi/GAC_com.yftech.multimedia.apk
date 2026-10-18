package android.media;

import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.DownloadManager;
import android.app.SearchManager;
import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.drm.DrmManagerClient;
import android.graphics.BitmapFactory;
import android.media.MediaCodec;
import android.media.MediaFile;
import android.media.midi.MidiDeviceInfo;
import android.mtp.MtpConstants;
import android.net.Uri;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.provider.MediaStore;
import android.provider.Settings;
import android.sax.ElementListener;
import android.sax.RootElement;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.text.TextUtils;
import android.util.Log;
import android.util.Xml;
import dalvik.system.CloseGuard;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Stack;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicBoolean;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.SAXException;

/* loaded from: /home/user/work/dex/classes.dex */
public class MediaScanner implements AutoCloseable {
    private static final String ALARMS_DIR = "/alarms/";
    private static final boolean ATC_AOSP_ENHANCEMENT;
    private static final boolean ATC_AOSP_ENHANCEMENT_MS_STOP;
    private static final int DATE_MODIFIED_PLAYLISTS_COLUMN_INDEX = 2;
    private static final String DEFAULT_RINGTONE_PROPERTY_PREFIX = "ro.config.";
    private static final boolean ENABLE_BULK_INSERTS = true;
    private static final int FILES_PRESCAN_DATE_MODIFIED_COLUMN_INDEX = 3;
    private static final int FILES_PRESCAN_FORMAT_COLUMN_INDEX = 2;
    private static final int FILES_PRESCAN_ID_COLUMN_INDEX = 0;
    private static final int FILES_PRESCAN_PATH_COLUMN_INDEX = 1;
    private static final String[] FILES_PRESCAN_PROJECTION;
    private static final int FLUSH_ALL = 2;
    private static final String[] ID3_GENRES;
    private static final int ID_PLAYLISTS_COLUMN_INDEX = 0;
    private static final String[] ID_PROJECTION;
    public static final String LAST_INTERNAL_SCAN_FINGERPRINT = "lastScanFingerprint";
    private static final int MEDIA_INSERT = 1;
    private static final String MUSIC_DIR = "/music/";
    private static final String NOTIFICATIONS_DIR = "/notifications/";
    private static final int PATH_PLAYLISTS_COLUMN_INDEX = 1;
    private static final String[] PLAYLIST_MEMBERS_PROJECTION;
    private static final String PODCAST_DIR = "/podcasts/";
    private static final String PRODUCT_SOUNDS_DIR = "/product/media/audio";
    private static final int QUIT = 3;
    private static final String RINGTONES_DIR = "/ringtones/";
    public static final String SCANNED_BUILD_PREFS_NAME = "MediaScanBuild";
    private static final String SYSTEM_SOUNDS_DIR = "/system/media/audio";
    private static final String TAG = "MediaScanner";
    private static HashMap<String, String> mMediaPaths;
    private static HashMap<String, String> mNoMediaPaths;
    private static String sLastInternalScanFingerprint;
    private final Uri mAudioUri;
    private final Context mContext;
    private String mDefaultAlarmAlertFilename;
    private boolean mDefaultAlarmSet;
    private String mDefaultNotificationFilename;
    private boolean mDefaultNotificationSet;
    private String mDefaultRingtoneFilename;
    private boolean mDefaultRingtoneSet;
    private final Uri mFilesUri;
    private final Uri mFilesUriNoNotify;
    private final Uri mImagesUri;
    private Handler mMediaInsertHandler;
    private MediaInserter mMediaInserter;
    private final ContentProviderClient mMediaProvider;
    private int mMtpObjectHandle;
    private long mNativeContext;
    private int mOriginalCount;
    private final String mPackageName;
    private final Uri mPlaylistsUri;
    private final boolean mProcessGenres;
    private final boolean mProcessPlaylists;
    private final Uri mVideoUri;
    private final String mVolumeName;
    private int mSleepTimeMs = SystemProperties.getInt("persist.mediascanner.slpTimeMs", 0);
    private int mFileScanCnt4Sleep = SystemProperties.getInt("persist.mediascanner.fileCnt", 0);
    private int mImageCountLimit = SystemProperties.getInt("persist.mediascanner.image.cnt", 1500);
    private int mVideoCountLimit = SystemProperties.getInt("persist.mediascanner.video.cnt", ActivityManager.RunningAppProcessInfo.IMPORTANCE_EMPTY);
    private int mAudioCountLimit = SystemProperties.getInt("persist.mediascanner.audio.cnt", 3000);
    private boolean mSeparateInsertScan = SystemProperties.getBoolean("persist.mediascanner.sperate.scan", true);
    private boolean mParseAudioOnly = SystemProperties.getBoolean("persist.mediascanner.parse.audio.only", true);
    private boolean mDebug = SystemProperties.getBoolean("persist.mediascanner.log.on", false);
    private boolean mScanOff = false;
    private int mCurTotalCount = 0;
    private int mImageCount = 0;
    private int mVideoCount = 0;
    private int mAudioCount = 0;
    private Stack mMediaRequestStack = new Stack();
    private final AtomicBoolean mClosed = new AtomicBoolean();
    private final CloseGuard mCloseGuard = CloseGuard.get();
    private final BitmapFactory.Options mBitmapOptions = new BitmapFactory.Options();
    private final ArrayList<PlaylistEntry> mPlaylistEntries = new ArrayList<>();
    private final ArrayList<FileEntry> mPlayLists = new ArrayList<>();
    private DrmManagerClient mDrmManagerClient = null;
    private final MyMediaScannerClient mClient = new MyMediaScannerClient();

    private final native void native_finalize();

    private static final native void native_init();

    private final native void native_setup();

    private native void processDirectory(String str, MediaScannerClient mediaScannerClient);

    /* JADX INFO: Access modifiers changed from: private */
    public native boolean processFile(String str, String str2, MediaScannerClient mediaScannerClient);

    private native void setFdClose();

    private native void setLocale(String str);

    private native void setScanOff();

    public native byte[] extractAlbumArt(FileDescriptor fileDescriptor);

    static /* synthetic */ int access$1808(MediaScanner mediaScanner) {
        int i = mediaScanner.mAudioCount;
        mediaScanner.mAudioCount = i + 1;
        return i;
    }

    static /* synthetic */ int access$2008(MediaScanner mediaScanner) {
        int i = mediaScanner.mVideoCount;
        mediaScanner.mVideoCount = i + 1;
        return i;
    }

    static /* synthetic */ int access$2208(MediaScanner mediaScanner) {
        int i = mediaScanner.mImageCount;
        mediaScanner.mImageCount = i + 1;
        return i;
    }

    static /* synthetic */ int access$2612(MediaScanner mediaScanner, int i) {
        int i2 = mediaScanner.mCurTotalCount + i;
        mediaScanner.mCurTotalCount = i2;
        return i2;
    }

    static {
        System.loadLibrary("media_jni");
        native_init();
        ATC_AOSP_ENHANCEMENT = SystemProperties.getBoolean("ro.atc.aosp_enhancement", false);
        ATC_AOSP_ENHANCEMENT_MS_STOP = SystemProperties.getBoolean("atc_aosp_enhancement_ms_stop", false);
        FILES_PRESCAN_PROJECTION = new String[]{DownloadManager.COLUMN_ID, "_data", "format", "date_modified"};
        ID_PROJECTION = new String[]{DownloadManager.COLUMN_ID};
        PLAYLIST_MEMBERS_PROJECTION = new String[]{"playlist_id"};
        sLastInternalScanFingerprint = null;
        ID3_GENRES = new String[]{"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "Britpop", null, "Polsk Punk", "Beat", "Christian Gangsta", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "JPop", "Synthpop"};
        mNoMediaPaths = new HashMap<>();
        mMediaPaths = new HashMap<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class MediaData {
        boolean fgPriority;
        Uri tableUri;
        ContentValues values;

        private MediaData() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class FileEntry {
        int mFormat;
        long mLastModified;
        boolean mLastModifiedChanged = false;
        String mPath;
        long mRowId;

        FileEntry(long j, String str, long j2, int i) {
            this.mRowId = j;
            this.mPath = str;
            this.mLastModified = j2;
            this.mFormat = i;
        }

        public String toString() {
            return this.mPath + " mRowId: " + this.mRowId;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class PlaylistEntry {
        long bestmatchid;
        int bestmatchlevel;
        String path;

        private PlaylistEntry() {
        }
    }

    public MediaScanner(Context context, String str) {
        Log.d(TAG, "MediaScanner created, volume:" + str);
        native_setup();
        this.mContext = context;
        this.mPackageName = context.getPackageName();
        this.mVolumeName = str;
        this.mBitmapOptions.inSampleSize = 1;
        this.mBitmapOptions.inJustDecodeBounds = true;
        setDefaultRingtoneFileNames();
        this.mMediaProvider = this.mContext.getContentResolver().acquireContentProviderClient("media");
        if (sLastInternalScanFingerprint == null || (ATC_AOSP_ENHANCEMENT && sLastInternalScanFingerprint.equals(""))) {
            sLastInternalScanFingerprint = this.mContext.getSharedPreferences(SCANNED_BUILD_PREFS_NAME, 0).getString(LAST_INTERNAL_SCAN_FINGERPRINT, new String());
        }
        this.mAudioUri = MediaStore.Audio.Media.getContentUri(str);
        this.mVideoUri = MediaStore.Video.Media.getContentUri(str);
        this.mImagesUri = MediaStore.Images.Media.getContentUri(str);
        this.mFilesUri = MediaStore.Files.getContentUri(str);
        this.mFilesUriNoNotify = this.mFilesUri.buildUpon().appendQueryParameter("nonotify", WifiEnterpriseConfig.ENGINE_ENABLE).build();
        if (!str.equals("internal")) {
            this.mProcessPlaylists = true;
            this.mProcessGenres = true;
            this.mPlaylistsUri = MediaStore.Audio.Playlists.getContentUri(str);
        } else {
            this.mProcessPlaylists = false;
            this.mProcessGenres = false;
            this.mPlaylistsUri = null;
        }
        Locale locale = this.mContext.getResources().getConfiguration().locale;
        if (locale != null) {
            String language = locale.getLanguage();
            String country = locale.getCountry();
            if (language != null) {
                if (country != null) {
                    setLocale(language + "_" + country);
                } else {
                    setLocale(language);
                }
            }
        }
        this.mCloseGuard.open("close");
    }

    private void setDefaultRingtoneFileNames() {
        this.mDefaultRingtoneFilename = SystemProperties.get("ro.config.ringtone");
        this.mDefaultNotificationFilename = SystemProperties.get("ro.config.notification_sound");
        this.mDefaultAlarmAlertFilename = SystemProperties.get("ro.config.alarm_alert");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isDrmEnabled() {
        String str = SystemProperties.get("drm.service.enabled");
        return str != null && str.equals("true");
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private class MyMediaScannerClient implements MediaScannerClient {
        private String mAlbum;
        private String mAlbumArtist;
        private String mArtist;
        private int mCompilation;
        private String mComposer;
        private long mDate;
        private final SimpleDateFormat mDateFormatter = new SimpleDateFormat("yyyyMMdd'T'HHmmss");
        private int mDuration;
        private long mFileSize;
        private int mFileType;
        private String mGenre;
        private int mHeight;
        private boolean mIsDrm;
        private long mLastModified;
        private String mMimeType;
        private boolean mNoMedia;
        private String mPath;
        private boolean mScanSuccess;
        private String mTitle;
        private int mTrack;
        private int mWidth;
        private String mWriter;
        private int mYear;

        public MyMediaScannerClient() {
            this.mDateFormatter.setTimeZone(TimeZone.getTimeZone("UTC"));
        }

        public FileEntry beginFile(String str, String str2, long j, long j2, boolean z, boolean z2) {
            MediaFile.MediaFileType fileType;
            this.mMimeType = str2;
            this.mFileType = 0;
            this.mFileSize = j2;
            this.mIsDrm = false;
            this.mScanSuccess = true;
            if (!z) {
                this.mNoMedia = (z2 || !MediaScanner.isNoMediaFile(str)) ? z2 : true;
                if (str2 != null) {
                    this.mFileType = MediaFile.getFileTypeForMimeType(str2);
                }
                if (this.mFileType == 0 && (fileType = MediaFile.getFileType(str)) != null) {
                    this.mFileType = fileType.fileType;
                    if (this.mMimeType == null) {
                        this.mMimeType = fileType.mimeType;
                    }
                }
                if (MediaScanner.this.isDrmEnabled() && MediaFile.isDrmFileType(this.mFileType)) {
                    this.mFileType = getFileTypeFromDrm(str);
                }
            }
            FileEntry makeEntryFor = MediaScanner.this.makeEntryFor(str);
            long j3 = makeEntryFor != null ? j - makeEntryFor.mLastModified : 0L;
            boolean z3 = j3 > 1 || j3 < -1;
            if (makeEntryFor == null || z3) {
                if (z3 && (!MediaScanner.ATC_AOSP_ENHANCEMENT || makeEntryFor != null)) {
                    makeEntryFor.mLastModified = j;
                } else {
                    makeEntryFor = new FileEntry(0L, str, j, z ? 12289 : 0);
                }
                makeEntryFor.mLastModifiedChanged = true;
            }
            if (MediaScanner.this.mProcessPlaylists && MediaFile.isPlayListFileType(this.mFileType)) {
                MediaScanner.this.mPlayLists.add(makeEntryFor);
                return null;
            }
            this.mArtist = null;
            this.mAlbumArtist = null;
            this.mAlbum = null;
            this.mTitle = null;
            this.mComposer = null;
            this.mGenre = null;
            this.mTrack = 0;
            this.mYear = 0;
            this.mDuration = 0;
            this.mPath = str;
            this.mDate = 0L;
            this.mLastModified = j;
            this.mWriter = null;
            this.mCompilation = 0;
            this.mWidth = 0;
            this.mHeight = 0;
            return makeEntryFor;
        }

        @Override // android.media.MediaScannerClient
        public void scanFile(String str, long j, long j2, boolean z, boolean z2) {
            if (MediaScanner.ATC_AOSP_ENHANCEMENT) {
                synchronized (this) {
                    if (MediaScanner.this.mScanOff) {
                        if (MediaScanner.this.mDebug) {
                            Log.i(MediaScanner.TAG, "it is scan off now, path:" + str);
                        }
                        return;
                    }
                }
            }
            doScanFile(str, null, j, j2, z, false, z2);
        }

        /* JADX WARN: Removed duplicated region for block: B:39:0x0147 A[Catch: RemoteException -> 0x03c7, TryCatch #1 {RemoteException -> 0x03c7, blocks: (B:3:0x000d, B:5:0x0013, B:8:0x001b, B:10:0x0023, B:11:0x0027, B:13:0x002c, B:15:0x0034, B:17:0x006e, B:20:0x00da, B:24:0x00e2, B:26:0x00f7, B:32:0x0120, B:34:0x0126, B:37:0x0130, B:39:0x0147, B:40:0x014d, B:42:0x0153, B:44:0x015b, B:46:0x0169, B:48:0x0187, B:49:0x018d, B:51:0x0195, B:53:0x01a3, B:55:0x01c1, B:56:0x01c7, B:58:0x01cf, B:60:0x01dd, B:62:0x01fb, B:63:0x0200, B:65:0x020b, B:68:0x0216, B:70:0x021a, B:73:0x0225, B:75:0x0229, B:78:0x0234, B:80:0x0238, B:83:0x0243, B:85:0x0249, B:88:0x0261, B:106:0x024d, B:120:0x013d, B:121:0x0112, B:122:0x02cb, B:125:0x02d3, B:127:0x02db, B:129:0x02e8, B:132:0x0325, B:134:0x032d, B:136:0x033a, B:139:0x0376, B:141:0x037e, B:143:0x038b, B:149:0x0042, B:151:0x004a, B:153:0x0058, B:155:0x0060, B:157:0x008e, B:159:0x0096, B:161:0x00a2), top: B:2:0x000d }] */
        /* JADX WARN: Removed duplicated region for block: B:42:0x0153 A[Catch: RemoteException -> 0x03c7, TryCatch #1 {RemoteException -> 0x03c7, blocks: (B:3:0x000d, B:5:0x0013, B:8:0x001b, B:10:0x0023, B:11:0x0027, B:13:0x002c, B:15:0x0034, B:17:0x006e, B:20:0x00da, B:24:0x00e2, B:26:0x00f7, B:32:0x0120, B:34:0x0126, B:37:0x0130, B:39:0x0147, B:40:0x014d, B:42:0x0153, B:44:0x015b, B:46:0x0169, B:48:0x0187, B:49:0x018d, B:51:0x0195, B:53:0x01a3, B:55:0x01c1, B:56:0x01c7, B:58:0x01cf, B:60:0x01dd, B:62:0x01fb, B:63:0x0200, B:65:0x020b, B:68:0x0216, B:70:0x021a, B:73:0x0225, B:75:0x0229, B:78:0x0234, B:80:0x0238, B:83:0x0243, B:85:0x0249, B:88:0x0261, B:106:0x024d, B:120:0x013d, B:121:0x0112, B:122:0x02cb, B:125:0x02d3, B:127:0x02db, B:129:0x02e8, B:132:0x0325, B:134:0x032d, B:136:0x033a, B:139:0x0376, B:141:0x037e, B:143:0x038b, B:149:0x0042, B:151:0x004a, B:153:0x0058, B:155:0x0060, B:157:0x008e, B:159:0x0096, B:161:0x00a2), top: B:2:0x000d }] */
        /* JADX WARN: Removed duplicated region for block: B:92:0x0276 A[Catch: RemoteException -> 0x02c7, TryCatch #0 {RemoteException -> 0x02c7, blocks: (B:90:0x0270, B:92:0x0276, B:94:0x027e, B:96:0x0286, B:98:0x0299), top: B:89:0x0270 }] */
        /* JADX WARN: Removed duplicated region for block: B:98:0x0299 A[Catch: RemoteException -> 0x02c7, TRY_LEAVE, TryCatch #0 {RemoteException -> 0x02c7, blocks: (B:90:0x0270, B:92:0x0276, B:94:0x027e, B:96:0x0286, B:98:0x0299), top: B:89:0x0270 }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Uri doScanFile(String str, String str2, long j, long j2, boolean z, boolean z2, boolean z3) {
            boolean z4;
            String absolutePath;
            boolean z5;
            Uri endFile;
            Uri uri = null;
            try {
                FileEntry beginFile = beginFile(str, str2, j, j2, z, z3);
                if (beginFile != null) {
                    if (MediaScanner.this.mMtpObjectHandle != 0) {
                        beginFile.mRowId = 0L;
                    }
                    if (beginFile.mPath != null) {
                        if ((MediaScanner.this.mDefaultNotificationSet || !doesPathHaveFilename(beginFile.mPath, MediaScanner.this.mDefaultNotificationFilename)) && ((MediaScanner.this.mDefaultRingtoneSet || !doesPathHaveFilename(beginFile.mPath, MediaScanner.this.mDefaultRingtoneFilename)) && (MediaScanner.this.mDefaultAlarmSet || !doesPathHaveFilename(beginFile.mPath, MediaScanner.this.mDefaultAlarmAlertFilename)))) {
                            if (MediaScanner.isSystemSoundWithMetadata(beginFile.mPath) && !Build.FINGERPRINT.equals(MediaScanner.sLastInternalScanFingerprint)) {
                                Log.i(MediaScanner.TAG, "forcing rescan of " + beginFile.mPath + " since build fingerprint changed  (" + Build.FINGERPRINT + ") && (" + MediaScanner.sLastInternalScanFingerprint + ")");
                            }
                        } else {
                            Log.w(MediaScanner.TAG, "forcing rescan of " + beginFile.mPath + "since ringtone setting didn't finish");
                        }
                        z4 = true;
                        if (beginFile != null || (!beginFile.mLastModifiedChanged && !z4)) {
                            if (!MediaScanner.ATC_AOSP_ENHANCEMENT && !z3) {
                                if (MediaFile.isAudioFileType(this.mFileType)) {
                                    MediaScanner.access$1808(MediaScanner.this);
                                    if (!MediaScanner.this.mDebug) {
                                        return null;
                                    }
                                    Log.d(MediaScanner.TAG, "path:" + this.mPath + ", file type:" + this.mFileType + ", mime:" + this.mMimeType + ", mAudioCount:" + MediaScanner.this.mAudioCount);
                                    return null;
                                }
                                if (MediaFile.isVideoFileType(this.mFileType)) {
                                    MediaScanner.access$2008(MediaScanner.this);
                                    if (!MediaScanner.this.mDebug) {
                                        return null;
                                    }
                                    Log.d(MediaScanner.TAG, "path:" + this.mPath + ", file type:" + this.mFileType + ", mime:" + this.mMimeType + ", mVideoCount:" + MediaScanner.this.mVideoCount);
                                    return null;
                                }
                                if (!MediaFile.isImageFileType(this.mFileType)) {
                                    return null;
                                }
                                MediaScanner.access$2208(MediaScanner.this);
                                if (!MediaScanner.this.mDebug) {
                                    return null;
                                }
                                Log.d(MediaScanner.TAG, "path:" + this.mPath + ", file type:" + this.mFileType + ", mime:" + this.mMimeType + ", mImageCount:" + MediaScanner.this.mImageCount);
                                return null;
                            }
                        }
                        if (z3) {
                            return endFile(beginFile, false, false, false, false, false);
                        }
                        boolean isAudioFileType = MediaFile.isAudioFileType(this.mFileType);
                        boolean isVideoFileType = MediaFile.isVideoFileType(this.mFileType);
                        boolean isImageFileType = MediaFile.isImageFileType(this.mFileType);
                        try {
                            if (!isAudioFileType && !isVideoFileType && !isImageFileType) {
                                absolutePath = str;
                                if (MediaScanner.ATC_AOSP_ENHANCEMENT || !MediaScanner.this.mParseAudioOnly) {
                                    if (!isAudioFileType || isVideoFileType) {
                                        this.mScanSuccess = MediaScanner.this.processFile(absolutePath, str2, this);
                                    }
                                } else if (isAudioFileType) {
                                    this.mScanSuccess = MediaScanner.this.processFile(absolutePath, str2, this);
                                }
                                if (isImageFileType) {
                                    this.mScanSuccess = processImageFile(absolutePath);
                                }
                                if (MediaScanner.ATC_AOSP_ENHANCEMENT) {
                                    if (MediaFile.isAudioFileType(this.mFileType)) {
                                        if (MediaScanner.this.mAudioCount >= MediaScanner.this.mAudioCountLimit) {
                                            Log.w(MediaScanner.TAG, "too many files, just support audio:" + MediaScanner.this.mAudioCountLimit);
                                            return null;
                                        }
                                        MediaScanner.access$1808(MediaScanner.this);
                                    } else if (MediaFile.isVideoFileType(this.mFileType)) {
                                        if (MediaScanner.this.mVideoCount >= MediaScanner.this.mVideoCountLimit) {
                                            Log.w(MediaScanner.TAG, "too many files, just support video:" + MediaScanner.this.mVideoCountLimit);
                                            return null;
                                        }
                                        MediaScanner.access$2008(MediaScanner.this);
                                    } else if (MediaFile.isImageFileType(this.mFileType)) {
                                        if (MediaScanner.this.mImageCount >= MediaScanner.this.mImageCountLimit) {
                                            Log.w(MediaScanner.TAG, "too many files, just support image:" + MediaScanner.this.mImageCountLimit);
                                            return null;
                                        }
                                        MediaScanner.access$2208(MediaScanner.this);
                                    }
                                }
                                String lowerCase = absolutePath.toLowerCase(Locale.ROOT);
                                boolean z6 = !this.mScanSuccess && lowerCase.indexOf(MediaScanner.RINGTONES_DIR) > 0;
                                boolean z7 = !this.mScanSuccess && lowerCase.indexOf(MediaScanner.NOTIFICATIONS_DIR) > 0;
                                boolean z8 = !this.mScanSuccess && lowerCase.indexOf(MediaScanner.ALARMS_DIR) > 0;
                                boolean z9 = !this.mScanSuccess && lowerCase.indexOf(MediaScanner.PODCAST_DIR) > 0;
                                if ((!MediaScanner.ATC_AOSP_ENHANCEMENT && !this.mScanSuccess) || (lowerCase.indexOf(MediaScanner.MUSIC_DIR) <= 0 && (z6 || z7 || z8 || z9))) {
                                    z5 = false;
                                    endFile = endFile(beginFile, z6, z7, z8, z5, z9);
                                    if (MediaScanner.ATC_AOSP_ENHANCEMENT && MediaScanner.this.mFileScanCnt4Sleep != 0 && MediaScanner.this.mSleepTimeMs > 0) {
                                        MediaScanner.access$2612(MediaScanner.this, 1);
                                        if (MediaScanner.this.mCurTotalCount >= MediaScanner.this.mFileScanCnt4Sleep) {
                                            Log.v(MediaScanner.TAG, " Sleep " + MediaScanner.this.mSleepTimeMs);
                                            SystemClock.sleep((long) MediaScanner.this.mSleepTimeMs);
                                            MediaScanner.this.mCurTotalCount = 0;
                                        }
                                    }
                                    return endFile;
                                }
                                z5 = true;
                                endFile = endFile(beginFile, z6, z7, z8, z5, z9);
                                if (MediaScanner.ATC_AOSP_ENHANCEMENT) {
                                    MediaScanner.access$2612(MediaScanner.this, 1);
                                    if (MediaScanner.this.mCurTotalCount >= MediaScanner.this.mFileScanCnt4Sleep) {
                                    }
                                }
                                return endFile;
                            }
                            if (!MediaScanner.ATC_AOSP_ENHANCEMENT) {
                                z5 = false;
                                endFile = endFile(beginFile, z6, z7, z8, z5, z9);
                                if (MediaScanner.ATC_AOSP_ENHANCEMENT) {
                                }
                                return endFile;
                            }
                            if (MediaScanner.ATC_AOSP_ENHANCEMENT) {
                            }
                            return endFile;
                        } catch (RemoteException e) {
                            e = e;
                            uri = endFile;
                            Log.e(MediaScanner.TAG, "RemoteException in MediaScanner.scanFile()", e);
                            return uri;
                        }
                        absolutePath = Environment.maybeTranslateEmulatedPathToInternal(new File(str)).getAbsolutePath();
                        if (MediaScanner.ATC_AOSP_ENHANCEMENT) {
                        }
                        if (!isAudioFileType) {
                        }
                        this.mScanSuccess = MediaScanner.this.processFile(absolutePath, str2, this);
                        if (isImageFileType) {
                        }
                        if (MediaScanner.ATC_AOSP_ENHANCEMENT) {
                        }
                        String lowerCase2 = absolutePath.toLowerCase(Locale.ROOT);
                        if (this.mScanSuccess) {
                        }
                        if (this.mScanSuccess) {
                        }
                        if (this.mScanSuccess) {
                        }
                        if (this.mScanSuccess) {
                        }
                        z5 = false;
                        endFile = endFile(beginFile, z6, z7, z8, z5, z9);
                    }
                    z4 = z2;
                    if (beginFile != null) {
                    }
                    return !MediaScanner.ATC_AOSP_ENHANCEMENT ? null : null;
                }
                Log.w(MediaScanner.TAG, "entry is null");
                return null;
            } catch (RemoteException e2) {
                e = e2;
            }
        }

        private long parseDate(String str) {
            try {
                return this.mDateFormatter.parse(str).getTime();
            } catch (ParseException unused) {
                return 0L;
            }
        }

        private int parseSubstring(String str, int i, int i2) {
            int length = str.length();
            if (i == length) {
                return i2;
            }
            int i3 = i + 1;
            char charAt = str.charAt(i);
            if (charAt < '0' || charAt > '9') {
                return i2;
            }
            int i4 = charAt - '0';
            while (i3 < length) {
                int i5 = i3 + 1;
                char charAt2 = str.charAt(i3);
                if (charAt2 < '0' || charAt2 > '9') {
                    return i4;
                }
                i4 = (i4 * 10) + (charAt2 - '0');
                i3 = i5;
            }
            return i4;
        }

        @Override // android.media.MediaScannerClient
        public void handleStringTag(String str, String str2) {
            if (str.equalsIgnoreCase("title") || str.startsWith("title;")) {
                this.mTitle = str2;
                return;
            }
            if (str.equalsIgnoreCase("artist") || str.startsWith("artist;")) {
                this.mArtist = str2.trim();
                return;
            }
            if (str.equalsIgnoreCase("albumartist") || str.startsWith("albumartist;") || str.equalsIgnoreCase("band") || str.startsWith("band;")) {
                this.mAlbumArtist = str2.trim();
                return;
            }
            if (str.equalsIgnoreCase("album") || str.startsWith("album;")) {
                this.mAlbum = str2.trim();
                return;
            }
            if (!str.equalsIgnoreCase("composer") && !str.startsWith("composer;")) {
                if (MediaScanner.this.mProcessGenres && (str.equalsIgnoreCase("genre") || str.startsWith("genre;"))) {
                    this.mGenre = getGenreName(str2);
                    return;
                }
                if (str.equalsIgnoreCase("year") || str.startsWith("year;")) {
                    this.mYear = parseSubstring(str2, 0, 0);
                    return;
                }
                if (str.equalsIgnoreCase("tracknumber") || str.startsWith("tracknumber;")) {
                    this.mTrack = ((this.mTrack / 1000) * 1000) + parseSubstring(str2, 0, 0);
                    return;
                }
                if (str.equalsIgnoreCase("discnumber") || str.equals("set") || str.startsWith("set;")) {
                    this.mTrack = (parseSubstring(str2, 0, 0) * 1000) + (this.mTrack % 1000);
                    return;
                }
                if (str.equalsIgnoreCase("duration")) {
                    this.mDuration = parseSubstring(str2, 0, 0);
                    return;
                }
                if (str.equalsIgnoreCase("writer") || str.startsWith("writer;")) {
                    this.mWriter = str2.trim();
                    return;
                }
                if (str.equalsIgnoreCase("compilation")) {
                    this.mCompilation = parseSubstring(str2, 0, 0);
                    return;
                }
                if (str.equalsIgnoreCase("isdrm")) {
                    this.mIsDrm = parseSubstring(str2, 0, 0) == 1;
                    return;
                }
                if (str.equalsIgnoreCase("date")) {
                    this.mDate = parseDate(str2);
                    return;
                } else if (str.equalsIgnoreCase(MediaFormat.KEY_WIDTH)) {
                    this.mWidth = parseSubstring(str2, 0, 0);
                    return;
                } else {
                    if (str.equalsIgnoreCase(MediaFormat.KEY_HEIGHT)) {
                        this.mHeight = parseSubstring(str2, 0, 0);
                        return;
                    }
                    return;
                }
            }
            this.mComposer = str2.trim();
        }

        private boolean convertGenreCode(String str, String str2) {
            String genreName = getGenreName(str);
            if (genreName.equals(str2)) {
                return true;
            }
            Log.d(MediaScanner.TAG, "'" + str + "' -> '" + genreName + "', expected '" + str2 + "'");
            return false;
        }

        private void testGenreNameConverter() {
            convertGenreCode("2", "Country");
            convertGenreCode("(2)", "Country");
            convertGenreCode("(2", "(2");
            convertGenreCode("2 Foo", "Country");
            convertGenreCode("(2) Foo", "Country");
            convertGenreCode("(2 Foo", "(2 Foo");
            convertGenreCode("2Foo", "2Foo");
            convertGenreCode("(2)Foo", "Country");
            convertGenreCode("200 Foo", "Foo");
            convertGenreCode("(200) Foo", "Foo");
            convertGenreCode("200Foo", "200Foo");
            convertGenreCode("(200)Foo", "Foo");
            convertGenreCode("200)Foo", "200)Foo");
            convertGenreCode("200) Foo", "200) Foo");
        }

        public String getGenreName(String str) {
            int i;
            if (str == null) {
                return null;
            }
            int length = str.length();
            if (length > 0) {
                StringBuffer stringBuffer = new StringBuffer();
                int i2 = 0;
                boolean z = false;
                while (i2 < length) {
                    char charAt = str.charAt(i2);
                    if (i2 != 0 || charAt != '(') {
                        if (!Character.isDigit(charAt)) {
                            break;
                        }
                        stringBuffer.append(charAt);
                    } else {
                        z = true;
                    }
                    i2++;
                }
                char charAt2 = i2 < length ? str.charAt(i2) : ' ';
                if ((z && charAt2 == ')') || (!z && Character.isWhitespace(charAt2))) {
                    try {
                        short parseShort = Short.parseShort(stringBuffer.toString());
                        if (parseShort >= 0) {
                            if (parseShort < MediaScanner.ID3_GENRES.length && MediaScanner.ID3_GENRES[parseShort] != null) {
                                return MediaScanner.ID3_GENRES[parseShort];
                            }
                            if (parseShort == 255) {
                                return null;
                            }
                            if (parseShort < 255 && (i = i2 + 1) < length) {
                                if (!z || charAt2 != ')') {
                                    i = i2;
                                }
                                String trim = str.substring(i).trim();
                                if (trim.length() != 0) {
                                    return trim;
                                }
                            } else {
                                return stringBuffer.toString();
                            }
                        }
                    } catch (NumberFormatException unused) {
                    }
                }
            }
            return str;
        }

        private boolean processImageFile(String str) {
            try {
                MediaScanner.this.mBitmapOptions.outWidth = 0;
                MediaScanner.this.mBitmapOptions.outHeight = 0;
                BitmapFactory.decodeFile(str, MediaScanner.this.mBitmapOptions);
                this.mWidth = MediaScanner.this.mBitmapOptions.outWidth;
                this.mHeight = MediaScanner.this.mBitmapOptions.outHeight;
                if (this.mWidth > 0) {
                    return this.mHeight > 0;
                }
                return false;
            } catch (Throwable unused) {
                return false;
            }
        }

        @Override // android.media.MediaScannerClient
        public void setMimeType(String str) {
            if ("audio/mp4".equals(this.mMimeType) && str.startsWith(MediaCodec.MetricsConstants.MODE_VIDEO)) {
                return;
            }
            if (MediaScanner.this.mDebug) {
                Log.d(MediaScanner.TAG, "mMimeType:" + this.mMimeType + ", mimeType:" + str);
            }
            this.mMimeType = str;
            this.mFileType = MediaFile.getFileTypeForMimeType(str);
        }

        private ContentValues toValues() {
            String str;
            ContentValues contentValues = new ContentValues();
            contentValues.put("_data", this.mPath);
            contentValues.put("title", this.mTitle);
            contentValues.put("date_modified", Long.valueOf(this.mLastModified));
            contentValues.put("_size", Long.valueOf(this.mFileSize));
            contentValues.put("mime_type", this.mMimeType);
            contentValues.put("is_drm", Boolean.valueOf(this.mIsDrm));
            String str2 = null;
            if (this.mWidth <= 0 || this.mHeight <= 0) {
                str = null;
            } else {
                contentValues.put(MediaFormat.KEY_WIDTH, Integer.valueOf(this.mWidth));
                contentValues.put(MediaFormat.KEY_HEIGHT, Integer.valueOf(this.mHeight));
                str = this.mWidth + "x" + this.mHeight;
            }
            if (!this.mNoMedia) {
                if (MediaFile.isVideoFileType(this.mFileType)) {
                    contentValues.put("artist", (this.mArtist == null || this.mArtist.length() <= 0) ? "<unknown>" : this.mArtist);
                    contentValues.put("album", (this.mAlbum == null || this.mAlbum.length() <= 0) ? "<unknown>" : this.mAlbum);
                    contentValues.put("duration", Integer.valueOf(this.mDuration));
                    if (str != null) {
                        contentValues.put("resolution", str);
                    }
                    if (this.mDate > 0) {
                        contentValues.put("datetaken", Long.valueOf(this.mDate));
                    }
                } else if (!MediaFile.isImageFileType(this.mFileType) && ((MediaScanner.ATC_AOSP_ENHANCEMENT || this.mScanSuccess) && MediaFile.isAudioFileType(this.mFileType))) {
                    contentValues.put("artist", (this.mArtist == null || this.mArtist.length() <= 0) ? "<unknown>" : this.mArtist);
                    if (this.mAlbumArtist != null && this.mAlbumArtist.length() > 0) {
                        str2 = this.mAlbumArtist;
                    }
                    contentValues.put("album_artist", str2);
                    contentValues.put("album", (this.mAlbum == null || this.mAlbum.length() <= 0) ? "<unknown>" : this.mAlbum);
                    contentValues.put("composer", this.mComposer);
                    if (MediaScanner.ATC_AOSP_ENHANCEMENT) {
                        contentValues.put("genre", (this.mGenre == null || this.mGenre.length() <= 0) ? "<unknown>" : this.mGenre);
                    } else {
                        contentValues.put("genre", this.mGenre);
                    }
                    if (this.mYear != 0) {
                        contentValues.put("year", Integer.valueOf(this.mYear));
                    }
                    contentValues.put("track", Integer.valueOf(this.mTrack));
                    contentValues.put("duration", Integer.valueOf(this.mDuration));
                    contentValues.put("compilation", Integer.valueOf(this.mCompilation));
                }
                if (!this.mScanSuccess) {
                    contentValues.put(DownloadManager.COLUMN_MEDIA_TYPE, (Integer) 0);
                }
            }
            return contentValues;
        }

        private void computeDisplayName(String str, ContentValues contentValues) {
            String str2 = str == null ? "" : str.toString();
            int lastIndexOf = str2.lastIndexOf(47);
            if (lastIndexOf >= 0) {
                str2 = str2.substring(lastIndexOf + 1);
            }
            contentValues.put("_display_name", str2);
        }

        private Uri endFile(FileEntry fileEntry, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) throws RemoteException {
            ExifInterface exifInterface;
            Uri withAppendedId;
            String asString;
            int lastIndexOf;
            int i;
            if (this.mArtist == null || this.mArtist.length() == 0) {
                this.mArtist = this.mAlbumArtist;
            }
            ContentValues values = toValues();
            String asString2 = values.getAsString("title");
            if (asString2 == null || TextUtils.isEmpty(asString2.trim())) {
                values.put("title", MediaFile.getFileTitle(values.getAsString("_data")));
            }
            if ("<unknown>".equals(values.getAsString("album")) && (lastIndexOf = (asString = values.getAsString("_data")).lastIndexOf(47)) >= 0) {
                int i2 = 0;
                while (true) {
                    i = i2 + 1;
                    int indexOf = asString.indexOf(47, i);
                    if (indexOf < 0 || indexOf >= lastIndexOf) {
                        break;
                    }
                    i2 = indexOf;
                }
                if (i2 != 0) {
                    values.put("album", asString.substring(i, lastIndexOf));
                }
            }
            long j = fileEntry.mRowId;
            int i3 = 3;
            if (MediaFile.isAudioFileType(this.mFileType) && (j == 0 || MediaScanner.this.mMtpObjectHandle != 0)) {
                values.put("is_ringtone", Boolean.valueOf(z));
                values.put("is_notification", Boolean.valueOf(z2));
                values.put("is_alarm", Boolean.valueOf(z3));
                values.put("is_music", Boolean.valueOf(z4));
                values.put("is_podcast", Boolean.valueOf(z5));
            } else if ((this.mFileType == 31 || this.mFileType == 37 || MediaFile.isRawImageFileType(this.mFileType)) && !this.mNoMedia) {
                try {
                    exifInterface = new ExifInterface(fileEntry.mPath);
                } catch (IOException unused) {
                    exifInterface = null;
                }
                if (exifInterface != null) {
                    float[] fArr = new float[2];
                    if (exifInterface.getLatLong(fArr)) {
                        values.put("latitude", Float.valueOf(fArr[0]));
                        values.put("longitude", Float.valueOf(fArr[1]));
                    }
                    long gpsDateTime = exifInterface.getGpsDateTime();
                    if (gpsDateTime != -1) {
                        values.put("datetaken", Long.valueOf(gpsDateTime));
                    } else {
                        long dateTime = exifInterface.getDateTime();
                        if (dateTime != -1 && Math.abs((this.mLastModified * 1000) - dateTime) >= AlarmManager.INTERVAL_DAY) {
                            values.put("datetaken", Long.valueOf(dateTime));
                        }
                    }
                    int attributeInt = exifInterface.getAttributeInt(ExifInterface.TAG_ORIENTATION, -1);
                    if (attributeInt != -1) {
                        values.put("orientation", Integer.valueOf(attributeInt != 3 ? attributeInt != 6 ? attributeInt != 8 ? 0 : 270 : 90 : 180));
                    }
                }
            }
            Uri uri = MediaScanner.this.mFilesUri;
            MediaInserter mediaInserter = MediaScanner.this.mMediaInserter;
            if ((MediaScanner.ATC_AOSP_ENHANCEMENT || this.mScanSuccess) && !this.mNoMedia) {
                if (MediaFile.isVideoFileType(this.mFileType)) {
                    uri = MediaScanner.this.mVideoUri;
                } else if (MediaFile.isImageFileType(this.mFileType)) {
                    uri = MediaScanner.this.mImagesUri;
                } else if (MediaFile.isAudioFileType(this.mFileType)) {
                    uri = MediaScanner.this.mAudioUri;
                }
            }
            if (MediaScanner.this.mDebug) {
                Log.d(MediaScanner.TAG, "path:" + this.mPath + ", file type:" + this.mFileType + ", mime:" + this.mMimeType + ", values:" + values + ", table:" + uri);
            }
            boolean z6 = !z2 || MediaScanner.this.mDefaultNotificationSet ? !(!z || MediaScanner.this.mDefaultRingtoneSet ? !(z3 && !MediaScanner.this.mDefaultAlarmSet && (TextUtils.isEmpty(MediaScanner.this.mDefaultAlarmAlertFilename) || doesPathHaveFilename(fileEntry.mPath, MediaScanner.this.mDefaultAlarmAlertFilename))) : !(TextUtils.isEmpty(MediaScanner.this.mDefaultRingtoneFilename) || doesPathHaveFilename(fileEntry.mPath, MediaScanner.this.mDefaultRingtoneFilename))) : TextUtils.isEmpty(MediaScanner.this.mDefaultNotificationFilename) || doesPathHaveFilename(fileEntry.mPath, MediaScanner.this.mDefaultNotificationFilename);
            if (j == 0) {
                if (MediaScanner.this.mMtpObjectHandle != 0) {
                    values.put("media_scanner_new_object_id", Integer.valueOf(MediaScanner.this.mMtpObjectHandle));
                }
                if (uri == MediaScanner.this.mFilesUri) {
                    int i4 = fileEntry.mFormat;
                    if (i4 == 0) {
                        i4 = MediaFile.getFormatCode(fileEntry.mPath, this.mMimeType);
                    }
                    values.put("format", Integer.valueOf(i4));
                }
                if (mediaInserter == null || z6) {
                    if (mediaInserter != null) {
                        if (MediaScanner.ATC_AOSP_ENHANCEMENT && MediaScanner.this.mSeparateInsertScan) {
                            while (MediaScanner.this.mMediaInsertHandler.hasMessages(1)) {
                                Log.d(MediaScanner.TAG, " hasMessages flush all wait 5ms \n");
                                SystemClock.sleep(5L);
                            }
                            SystemClock.sleep(1L);
                            synchronized (this) {
                                MediaScanner.this.mMediaInserter.flushAll();
                            }
                        } else {
                            mediaInserter.flushAll();
                        }
                    }
                    withAppendedId = MediaScanner.this.mMediaProvider.insert(uri, values);
                } else {
                    if (fileEntry.mFormat == 12289) {
                        if (MediaScanner.ATC_AOSP_ENHANCEMENT && MediaScanner.this.mSeparateInsertScan) {
                            synchronized (MediaScanner.this.mMediaRequestStack) {
                                MediaData mediaData = new MediaData();
                                mediaData.fgPriority = true;
                                mediaData.tableUri = uri;
                                mediaData.values = values;
                                MediaScanner.this.mMediaRequestStack.push(mediaData);
                            }
                            MediaScanner.this.mMediaInsertHandler.obtainMessage(1).sendToTarget();
                        } else {
                            mediaInserter.insertwithPriority(uri, values);
                        }
                    } else if (MediaScanner.ATC_AOSP_ENHANCEMENT && MediaScanner.this.mSeparateInsertScan) {
                        synchronized (MediaScanner.this.mMediaRequestStack) {
                            MediaData mediaData2 = new MediaData();
                            mediaData2.fgPriority = false;
                            mediaData2.tableUri = uri;
                            mediaData2.values = values;
                            MediaScanner.this.mMediaRequestStack.push(mediaData2);
                        }
                        MediaScanner.this.mMediaInsertHandler.obtainMessage(1).sendToTarget();
                    } else {
                        mediaInserter.insert(uri, values);
                    }
                    withAppendedId = null;
                }
                if (withAppendedId != null) {
                    j = ContentUris.parseId(withAppendedId);
                    fileEntry.mRowId = j;
                }
            } else {
                withAppendedId = ContentUris.withAppendedId(uri, j);
                if (MediaScanner.ATC_AOSP_ENHANCEMENT) {
                    computeDisplayName(values.getAsString("_data"), values);
                }
                values.remove("_data");
                if (this.mScanSuccess && !MediaScanner.isNoMediaPath(fileEntry.mPath)) {
                    int fileTypeForMimeType = MediaFile.getFileTypeForMimeType(this.mMimeType);
                    if (MediaFile.isAudioFileType(fileTypeForMimeType)) {
                        i3 = 2;
                    } else if (!MediaFile.isVideoFileType(fileTypeForMimeType)) {
                        if (MediaFile.isImageFileType(fileTypeForMimeType)) {
                            i3 = 1;
                        } else {
                            i3 = MediaFile.isPlayListFileType(fileTypeForMimeType) ? 4 : 0;
                        }
                    }
                    values.put(DownloadManager.COLUMN_MEDIA_TYPE, Integer.valueOf(i3));
                }
                MediaScanner.this.mMediaProvider.update(withAppendedId, values, null, null);
            }
            if (z6) {
                if (z2) {
                    setRingtoneIfNotSet("notification_sound", uri, j);
                    MediaScanner.this.mDefaultNotificationSet = true;
                } else if (z) {
                    setRingtoneIfNotSet("ringtone", uri, j);
                    MediaScanner.this.mDefaultRingtoneSet = true;
                } else if (z3) {
                    setRingtoneIfNotSet("alarm_alert", uri, j);
                    MediaScanner.this.mDefaultAlarmSet = true;
                }
            }
            return withAppendedId;
        }

        private boolean doesPathHaveFilename(String str, String str2) {
            int lastIndexOf = str.lastIndexOf(File.separatorChar) + 1;
            int length = str2.length();
            return str.regionMatches(lastIndexOf, str2, 0, length) && lastIndexOf + length == str.length();
        }

        private void setRingtoneIfNotSet(String str, Uri uri, long j) {
            if (MediaScanner.this.wasRingtoneAlreadySet(str)) {
                return;
            }
            ContentResolver contentResolver = MediaScanner.this.mContext.getContentResolver();
            if (TextUtils.isEmpty(Settings.System.getString(contentResolver, str))) {
                Uri uriFor = Settings.System.getUriFor(str);
                RingtoneManager.setActualDefaultRingtoneUri(MediaScanner.this.mContext, RingtoneManager.getDefaultType(uriFor), ContentUris.withAppendedId(uri, j));
            }
            Settings.System.putInt(contentResolver, MediaScanner.this.settingSetIndicatorName(str), 1);
        }

        private int getFileTypeFromDrm(String str) {
            if (!MediaScanner.this.isDrmEnabled()) {
                return 0;
            }
            if (MediaScanner.this.mDrmManagerClient == null) {
                MediaScanner.this.mDrmManagerClient = new DrmManagerClient(MediaScanner.this.mContext);
            }
            if (!MediaScanner.this.mDrmManagerClient.canHandle(str, (String) null)) {
                return 0;
            }
            this.mIsDrm = true;
            String originalMimeType = MediaScanner.this.mDrmManagerClient.getOriginalMimeType(str);
            if (originalMimeType == null) {
                return 0;
            }
            this.mMimeType = originalMimeType;
            return MediaFile.getFileTypeForMimeType(originalMimeType);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isSystemSoundWithMetadata(String str) {
        return str.startsWith("/system/media/audio/alarms/") || str.startsWith("/system/media/audio/ringtones/") || str.startsWith("/system/media/audio/notifications/") || str.startsWith("/product/media/audio/alarms/") || str.startsWith("/product/media/audio/ringtones/") || str.startsWith("/product/media/audio/notifications/");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String settingSetIndicatorName(String str) {
        return str + "_set";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean wasRingtoneAlreadySet(String str) {
        try {
            return Settings.System.getInt(this.mContext.getContentResolver(), settingSetIndicatorName(str)) != 0;
        } catch (Settings.SettingNotFoundException unused) {
            return false;
        }
    }

    private void prescan(String str, boolean z) throws RemoteException {
        String str2;
        String[] strArr;
        Cursor cursor;
        Cursor cursor2;
        boolean z2;
        this.mPlayLists.clear();
        if (str != null) {
            str2 = "_id>? AND _data=?";
            strArr = new String[]{"", str};
        } else {
            str2 = "_id>?";
            strArr = new String[]{""};
        }
        this.mDefaultRingtoneSet = wasRingtoneAlreadySet("ringtone");
        this.mDefaultNotificationSet = wasRingtoneAlreadySet("notification_sound");
        this.mDefaultAlarmSet = wasRingtoneAlreadySet("alarm_alert");
        Uri.Builder buildUpon = this.mFilesUri.buildUpon();
        buildUpon.appendQueryParameter("deletedata", "false");
        MediaBulkDeleter mediaBulkDeleter = new MediaBulkDeleter(this.mMediaProvider, buildUpon.build());
        Cursor cursor3 = null;
        if (z) {
            try {
                Uri build = this.mFilesUri.buildUpon().appendQueryParameter(SearchManager.SUGGEST_PARAMETER_LIMIT, "1000").build();
                long j = Long.MIN_VALUE;
                cursor = null;
                while (true) {
                    try {
                        strArr[0] = "" + j;
                        if (cursor != null) {
                            cursor.close();
                            cursor2 = null;
                        } else {
                            cursor2 = cursor;
                        }
                        try {
                            long j2 = j;
                            cursor = this.mMediaProvider.query(build, FILES_PRESCAN_PROJECTION, str2, strArr, DownloadManager.COLUMN_ID, null);
                            if (cursor != null && cursor.getCount() != 0) {
                                j = j2;
                                while (cursor.moveToNext()) {
                                    j = cursor.getLong(0);
                                    String string = cursor.getString(1);
                                    int i = cursor.getInt(2);
                                    cursor.getLong(3);
                                    if (string != null && string.startsWith("/")) {
                                        try {
                                            z2 = Os.access(string, OsConstants.F_OK);
                                        } catch (ErrnoException unused) {
                                            z2 = false;
                                        }
                                        if (!z2 && !MtpConstants.isAbstractObject(i)) {
                                            MediaFile.MediaFileType fileType = MediaFile.getFileType(string);
                                            if (!MediaFile.isPlayListFileType(fileType == null ? 0 : fileType.fileType)) {
                                                mediaBulkDeleter.delete(j);
                                                if (string.toLowerCase(Locale.US).endsWith("/.nomedia")) {
                                                    mediaBulkDeleter.flush();
                                                    this.mMediaProvider.call("unhide", new File(string).getParent(), null);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        } catch (Throwable th) {
                            th = th;
                            cursor = cursor2;
                            if (cursor != null) {
                                cursor.close();
                            }
                            mediaBulkDeleter.flush();
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
                cursor3 = cursor;
            } catch (Throwable th3) {
                th = th3;
                cursor = null;
            }
        }
        if (cursor3 != null) {
            cursor3.close();
        }
        mediaBulkDeleter.flush();
        this.mOriginalCount = 0;
        Cursor query = this.mMediaProvider.query(this.mImagesUri, ID_PROJECTION, null, null, null, null);
        if (query != null) {
            this.mOriginalCount = query.getCount();
            query.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class MediaBulkDeleter {
        final Uri mBaseUri;
        final ContentProviderClient mProvider;
        StringBuilder whereClause = new StringBuilder();
        ArrayList<String> whereArgs = new ArrayList<>(100);

        public MediaBulkDeleter(ContentProviderClient contentProviderClient, Uri uri) {
            this.mProvider = contentProviderClient;
            this.mBaseUri = uri;
        }

        public void delete(long j) throws RemoteException {
            if (this.whereClause.length() != 0) {
                this.whereClause.append(",");
            }
            this.whereClause.append("?");
            this.whereArgs.add("" + j);
            if (this.whereArgs.size() > 100) {
                flush();
            }
        }

        public void flush() throws RemoteException {
            int size = this.whereArgs.size();
            if (size > 0) {
                String[] strArr = (String[]) this.whereArgs.toArray(new String[size]);
                this.mProvider.delete(this.mBaseUri, "_id IN (" + this.whereClause.toString() + ")", strArr);
                this.whereClause.setLength(0);
                this.whereArgs.clear();
            }
        }
    }

    private void postscan(String[] strArr) throws RemoteException {
        if (this.mProcessPlaylists) {
            processPlayLists();
        }
        this.mPlayLists.clear();
    }

    private void releaseResources() {
        if (this.mDrmManagerClient != null) {
            this.mDrmManagerClient.close();
            this.mDrmManagerClient = null;
        }
    }

    public void setScanOffFlag(boolean z) {
        this.mScanOff = z;
        if (z) {
            Log.i(TAG, "MediaScanner.java::setScanOff");
            setScanOff();
            if (ATC_AOSP_ENHANCEMENT_MS_STOP) {
                setFdClose();
            }
        }
    }

    public void scanDirectories(String[] strArr) {
        try {
            try {
                try {
                    try {
                        System.currentTimeMillis();
                        prescan(null, true);
                        System.currentTimeMillis();
                        if (ATC_AOSP_ENHANCEMENT) {
                            int i = 1500;
                            if (this.mImageCountLimit <= 1500) {
                                i = this.mImageCountLimit;
                            }
                            this.mImageCountLimit = i;
                            this.mVideoCountLimit = this.mVideoCountLimit > 500 ? 500 : this.mVideoCountLimit;
                            int i2 = 3000;
                            if (this.mAudioCountLimit <= 3000) {
                                i2 = this.mAudioCountLimit;
                            }
                            this.mAudioCountLimit = i2;
                        }
                        if (ATC_AOSP_ENHANCEMENT && this.mSeparateInsertScan) {
                            Log.i(TAG, "use mediainsert to bulkinsert 100 files\n");
                            this.mMediaInserter = new MediaInserter(this.mMediaProvider, 100);
                        } else {
                            this.mMediaInserter = new MediaInserter(this.mMediaProvider, ActivityManager.RunningAppProcessInfo.IMPORTANCE_EMPTY);
                        }
                        if (ATC_AOSP_ENHANCEMENT && this.mSeparateInsertScan) {
                            try {
                                final HandlerThread handlerThread = new HandlerThread("media insert", 10);
                                handlerThread.start();
                                this.mMediaInsertHandler = new Handler(handlerThread.getLooper()) { // from class: android.media.MediaScanner.1
                                    @Override // android.os.Handler
                                    public void handleMessage(Message message) {
                                        MediaData mediaData;
                                        synchronized (this) {
                                            if (message.what == 1) {
                                                try {
                                                    synchronized (MediaScanner.this.mMediaRequestStack) {
                                                        mediaData = (MediaData) MediaScanner.this.mMediaRequestStack.pop();
                                                    }
                                                    if (mediaData.fgPriority) {
                                                        MediaScanner.this.mMediaInserter.insertwithPriority(mediaData.tableUri, mediaData.values);
                                                    } else {
                                                        MediaScanner.this.mMediaInserter.insert(mediaData.tableUri, mediaData.values);
                                                    }
                                                } catch (RemoteException e) {
                                                    Log.e(MediaScanner.TAG, "RemoteException in insert media value ", e);
                                                }
                                            } else if (message.what == 2) {
                                                try {
                                                    synchronized (MediaScanner.this.mMediaRequestStack) {
                                                        MediaScanner.this.mMediaInserter.flushAll();
                                                    }
                                                } catch (RemoteException e2) {
                                                    Log.e(MediaScanner.TAG, "RemoteException in insert media value", e2);
                                                }
                                            } else if (message.what == 3) {
                                                try {
                                                    synchronized (MediaScanner.this.mMediaRequestStack) {
                                                        Log.d(MediaScanner.TAG, " mMediaInserter Quit start \n");
                                                        handlerThread.getLooper().quit();
                                                    }
                                                    Log.d(MediaScanner.TAG, " mMediaInserter quit done \n");
                                                } catch (Exception e3) {
                                                    Log.e(MediaScanner.TAG, "Exception in quit insert thread", e3);
                                                }
                                            }
                                        }
                                    }
                                };
                            } catch (Exception e) {
                                Log.e(TAG, "start insert thread fail:" + e);
                                this.mSeparateInsertScan = false;
                            }
                        }
                        for (String str : strArr) {
                            processDirectory(str, this.mClient);
                        }
                        if (ATC_AOSP_ENHANCEMENT && this.mSeparateInsertScan) {
                            while (this.mMediaInsertHandler.hasMessages(1)) {
                                SystemClock.sleep(5L);
                            }
                            SystemClock.sleep(1L);
                            synchronized (this) {
                                this.mMediaInserter.flushAll();
                                this.mMediaInserter = null;
                            }
                        } else {
                            this.mMediaInserter.flushAll();
                            this.mMediaInserter = null;
                        }
                        System.currentTimeMillis();
                        postscan(strArr);
                        System.currentTimeMillis();
                        releaseResources();
                        if (!ATC_AOSP_ENHANCEMENT || !this.mSeparateInsertScan) {
                            return;
                        }
                    } catch (Throwable th) {
                        releaseResources();
                        if (ATC_AOSP_ENHANCEMENT && this.mSeparateInsertScan) {
                            this.mMediaInsertHandler.obtainMessage(3).sendToTarget();
                        }
                        throw th;
                    }
                } catch (SQLException e2) {
                    Log.e(TAG, "SQLException in MediaScanner.scan()", e2);
                    releaseResources();
                    if (!ATC_AOSP_ENHANCEMENT || !this.mSeparateInsertScan) {
                        return;
                    }
                }
            } catch (UnsupportedOperationException e3) {
                Log.e(TAG, "UnsupportedOperationException in MediaScanner.scan()", e3);
                releaseResources();
                if (!ATC_AOSP_ENHANCEMENT || !this.mSeparateInsertScan) {
                    return;
                }
            }
        } catch (RemoteException e4) {
            Log.e(TAG, "RemoteException in MediaScanner.scan()", e4);
            releaseResources();
            if (!ATC_AOSP_ENHANCEMENT || !this.mSeparateInsertScan) {
                return;
            }
        }
        this.mMediaInsertHandler.obtainMessage(3).sendToTarget();
    }

    public Uri scanSingleFile(String str, String str2) {
        try {
            if (ATC_AOSP_ENHANCEMENT && this.mSeparateInsertScan) {
                this.mSeparateInsertScan = false;
            }
            prescan(str, true);
            File file = new File(str);
            if (file.exists() && file.canRead()) {
                long lastModified = file.lastModified() / 1000;
                if (ATC_AOSP_ENHANCEMENT) {
                    return this.mClient.doScanFile(str, str2, lastModified, file.length(), file.isDirectory(), true, isNoMediaPath(str));
                }
                return this.mClient.doScanFile(str, str2, lastModified, file.length(), false, true, isNoMediaPath(str));
            }
            return null;
        } catch (RemoteException e) {
            Log.e(TAG, "RemoteException in MediaScanner.scanFile()", e);
            return null;
        } finally {
            releaseResources();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isNoMediaFile(String str) {
        int lastIndexOf;
        if (!new File(str).isDirectory() && (lastIndexOf = str.lastIndexOf(47)) >= 0 && lastIndexOf + 2 < str.length()) {
            int i = lastIndexOf + 1;
            if (str.regionMatches(i, "._", 0, 2)) {
                return true;
            }
            if (str.regionMatches(true, str.length() - 4, ".jpg", 0, 4)) {
                if (str.regionMatches(true, i, "AlbumArt_{", 0, 10) || str.regionMatches(true, i, "AlbumArt.", 0, 9)) {
                    return true;
                }
                int length = (str.length() - lastIndexOf) - 1;
                if ((length == 17 && str.regionMatches(true, i, "AlbumArtSmall", 0, 13)) || (length == 10 && str.regionMatches(true, i, "Folder", 0, 6))) {
                    return true;
                }
            }
        }
        return false;
    }

    public static void clearMediaPathCache(boolean z, boolean z2) {
        synchronized (MediaScanner.class) {
            if (z) {
                try {
                    mMediaPaths.clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (z2) {
                mNoMediaPaths.clear();
            }
        }
    }

    public static boolean isNoMediaPath(String str) {
        if (str == null) {
            return false;
        }
        if (str.indexOf("/.") >= 0) {
            return true;
        }
        int lastIndexOf = str.lastIndexOf(47);
        if (lastIndexOf <= 0) {
            return false;
        }
        String substring = str.substring(0, lastIndexOf);
        synchronized (MediaScanner.class) {
            if (mNoMediaPaths.containsKey(substring)) {
                return true;
            }
            if (!mMediaPaths.containsKey(substring)) {
                int i = 1;
                while (i >= 0) {
                    int indexOf = str.indexOf(47, i);
                    if (indexOf > i) {
                        indexOf++;
                        if (new File(str.substring(0, indexOf) + ".nomedia").exists()) {
                            mNoMediaPaths.put(substring, "");
                            return true;
                        }
                    }
                    i = indexOf;
                }
                mMediaPaths.put(substring, "");
            }
            return isNoMediaFile(str);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00d6, code lost:
    
        if (r13 == null) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00d8, code lost:
    
        r13.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00db, code lost:
    
        releaseResources();
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00de, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00c7, code lost:
    
        if (r13 != null) goto L48;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void scanMtpFile(String str, int i, int i2) {
        MediaFile.MediaFileType fileType = MediaFile.getFileType(str);
        int i3 = fileType == null ? 0 : fileType.fileType;
        File file = new File(str);
        long lastModified = file.lastModified() / 1000;
        if (!MediaFile.isAudioFileType(i3) && !MediaFile.isVideoFileType(i3) && !MediaFile.isImageFileType(i3) && !MediaFile.isPlayListFileType(i3) && !MediaFile.isDrmFileType(i3)) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("_size", Long.valueOf(file.length()));
            contentValues.put("date_modified", Long.valueOf(lastModified));
            try {
                this.mMediaProvider.update(MediaStore.Files.getMtpObjectsUri(this.mVolumeName), contentValues, "_id=?", new String[]{Integer.toString(i)});
                return;
            } catch (RemoteException e) {
                Log.e(TAG, "RemoteException in scanMtpFile", e);
                return;
            }
        }
        this.mMtpObjectHandle = i;
        Cursor cursor = null;
        try {
            try {
                if (MediaFile.isPlayListFileType(i3)) {
                    prescan(null, true);
                    FileEntry makeEntryFor = makeEntryFor(str);
                    if (makeEntryFor != null) {
                        Cursor query = this.mMediaProvider.query(this.mFilesUri, FILES_PRESCAN_PROJECTION, null, null, null, null);
                        try {
                            processPlayList(makeEntryFor, query);
                            cursor = query;
                        } catch (RemoteException e2) {
                            e = e2;
                            cursor = query;
                            Log.e(TAG, "RemoteException in MediaScanner.scanFile()", e);
                            this.mMtpObjectHandle = 0;
                        } catch (Throwable th) {
                            th = th;
                            cursor = query;
                            this.mMtpObjectHandle = 0;
                            if (cursor != null) {
                                cursor.close();
                            }
                            releaseResources();
                            throw th;
                        }
                    }
                } else {
                    prescan(str, false);
                    this.mClient.doScanFile(str, fileType.mimeType, lastModified, file.length(), i2 == 12289, true, isNoMediaPath(str));
                }
                this.mMtpObjectHandle = 0;
            } catch (RemoteException e3) {
                e = e3;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0049, code lost:
    
        if (r2 == null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x003e, code lost:
    
        if (r2 != null) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x004e, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x004b, code lost:
    
        r2.close();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    FileEntry makeEntryFor(String str) {
        Cursor cursor;
        Cursor cursor2 = null;
        try {
            cursor = this.mMediaProvider.query(this.mFilesUriNoNotify, FILES_PRESCAN_PROJECTION, "_data=?", new String[]{str}, null, null);
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst()) {
                        FileEntry fileEntry = new FileEntry(cursor.getLong(0), str, cursor.getLong(3), cursor.getInt(2));
                        if (cursor != null) {
                            cursor.close();
                        }
                        return fileEntry;
                    }
                } catch (RemoteException unused) {
                } catch (Throwable th) {
                    th = th;
                    cursor2 = cursor;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th;
                }
            }
        } catch (RemoteException unused2) {
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private int matchPaths(String str, String str2) {
        int length = str.length();
        int length2 = str2.length();
        int i = 0;
        while (length > 0 && length2 > 0) {
            int i2 = length - 1;
            int lastIndexOf = str.lastIndexOf(47, i2);
            int i3 = length2 - 1;
            int lastIndexOf2 = str2.lastIndexOf(47, i3);
            int lastIndexOf3 = str.lastIndexOf(92, i2);
            int lastIndexOf4 = str2.lastIndexOf(92, i3);
            if (lastIndexOf > lastIndexOf3) {
                lastIndexOf3 = lastIndexOf;
            }
            if (lastIndexOf2 <= lastIndexOf4) {
                lastIndexOf2 = lastIndexOf4;
            }
            int i4 = lastIndexOf3 < 0 ? 0 : lastIndexOf3 + 1;
            int i5 = lastIndexOf2 < 0 ? 0 : lastIndexOf2 + 1;
            int i6 = length - i4;
            if (length2 - i5 != i6 || !str.regionMatches(true, i4, str2, i5, i6)) {
                break;
            }
            i++;
            length = i4 - 1;
            length2 = i5 - 1;
        }
        return i;
    }

    private boolean matchEntries(long j, String str) {
        int size = this.mPlaylistEntries.size();
        boolean z = true;
        for (int i = 0; i < size; i++) {
            PlaylistEntry playlistEntry = this.mPlaylistEntries.get(i);
            if (playlistEntry.bestmatchlevel != Integer.MAX_VALUE) {
                if (str.equalsIgnoreCase(playlistEntry.path)) {
                    playlistEntry.bestmatchid = j;
                    playlistEntry.bestmatchlevel = Integer.MAX_VALUE;
                } else {
                    int matchPaths = matchPaths(str, playlistEntry.path);
                    if (matchPaths > playlistEntry.bestmatchlevel) {
                        playlistEntry.bestmatchid = j;
                        playlistEntry.bestmatchlevel = matchPaths;
                    }
                }
                z = false;
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cachePlaylistEntry(String str, String str2) {
        PlaylistEntry playlistEntry = new PlaylistEntry();
        int length = str.length();
        while (length > 0 && Character.isWhitespace(str.charAt(length - 1))) {
            length--;
        }
        if (length < 3) {
            return;
        }
        boolean z = false;
        if (length < str.length()) {
            str = str.substring(0, length);
        }
        char charAt = str.charAt(0);
        if (charAt == '/' || (Character.isLetter(charAt) && str.charAt(1) == ':' && str.charAt(2) == '\\')) {
            z = true;
        }
        if (!z) {
            str = str2 + str;
        }
        playlistEntry.path = str;
        this.mPlaylistEntries.add(playlistEntry);
    }

    private void processCachedPlaylist(Cursor cursor, ContentValues contentValues, Uri uri) {
        int i;
        cursor.moveToPosition(-1);
        do {
            if (!cursor.moveToNext()) {
                break;
            }
        } while (!matchEntries(cursor.getLong(0), cursor.getString(1)));
        int size = this.mPlaylistEntries.size();
        int i2 = 0;
        for (i = 0; i < size; i++) {
            PlaylistEntry playlistEntry = this.mPlaylistEntries.get(i);
            if (playlistEntry.bestmatchlevel > 0) {
                try {
                    contentValues.clear();
                    contentValues.put("play_order", Integer.valueOf(i2));
                    contentValues.put("audio_id", Long.valueOf(playlistEntry.bestmatchid));
                    this.mMediaProvider.insert(uri, contentValues);
                    i2++;
                } catch (RemoteException e) {
                    Log.e(TAG, "RemoteException in MediaScanner.processCachedPlaylist()", e);
                    return;
                }
            }
        }
        this.mPlaylistEntries.clear();
    }

    private void processM3uPlayList(String str, String str2, Uri uri, ContentValues contentValues, Cursor cursor) {
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2 = null;
        try {
            try {
                try {
                    File file = new File(str);
                    if (file.exists()) {
                        bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file)), 8192);
                        try {
                            this.mPlaylistEntries.clear();
                            for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
                                if (readLine.length() > 0 && readLine.charAt(0) != '#') {
                                    cachePlaylistEntry(readLine, str2);
                                }
                            }
                            processCachedPlaylist(cursor, contentValues, uri);
                        } catch (IOException e) {
                            e = e;
                            bufferedReader2 = bufferedReader;
                            Log.e(TAG, "IOException in MediaScanner.processM3uPlayList()", e);
                            if (bufferedReader2 != null) {
                                bufferedReader2.close();
                            }
                            return;
                        } catch (Throwable th) {
                            th = th;
                            bufferedReader2 = bufferedReader;
                            if (bufferedReader2 != null) {
                                try {
                                    bufferedReader2.close();
                                } catch (IOException e2) {
                                    Log.e(TAG, "IOException in MediaScanner.processM3uPlayList()", e2);
                                }
                            }
                            throw th;
                        }
                    } else {
                        bufferedReader = null;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e3) {
                e = e3;
            }
            if (bufferedReader != null) {
                bufferedReader.close();
            }
        } catch (IOException e4) {
            Log.e(TAG, "IOException in MediaScanner.processM3uPlayList()", e4);
        }
    }

    private void processPlsPlayList(String str, String str2, Uri uri, ContentValues contentValues, Cursor cursor) {
        BufferedReader bufferedReader;
        int indexOf;
        BufferedReader bufferedReader2 = null;
        try {
            try {
                try {
                    File file = new File(str);
                    if (file.exists()) {
                        bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file)), 8192);
                        try {
                            this.mPlaylistEntries.clear();
                            for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
                                if (readLine.startsWith("File") && (indexOf = readLine.indexOf(61)) > 0) {
                                    cachePlaylistEntry(readLine.substring(indexOf + 1), str2);
                                }
                            }
                            processCachedPlaylist(cursor, contentValues, uri);
                        } catch (IOException e) {
                            e = e;
                            bufferedReader2 = bufferedReader;
                            Log.e(TAG, "IOException in MediaScanner.processPlsPlayList()", e);
                            if (bufferedReader2 != null) {
                                bufferedReader2.close();
                            }
                            return;
                        } catch (Throwable th) {
                            th = th;
                            bufferedReader2 = bufferedReader;
                            if (bufferedReader2 != null) {
                                try {
                                    bufferedReader2.close();
                                } catch (IOException e2) {
                                    Log.e(TAG, "IOException in MediaScanner.processPlsPlayList()", e2);
                                }
                            }
                            throw th;
                        }
                    } else {
                        bufferedReader = null;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e3) {
                e = e3;
            }
            if (bufferedReader != null) {
                bufferedReader.close();
            }
        } catch (IOException e4) {
            Log.e(TAG, "IOException in MediaScanner.processPlsPlayList()", e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class WplHandler implements ElementListener {
        final ContentHandler handler;
        String playListDirectory;

        @Override // android.sax.EndElementListener
        public void end() {
        }

        public WplHandler(String str, Uri uri, Cursor cursor) {
            this.playListDirectory = str;
            RootElement rootElement = new RootElement("smil");
            rootElement.getChild(TtmlUtils.TAG_BODY).getChild("seq").getChild("media").setElementListener(this);
            this.handler = rootElement.getContentHandler();
        }

        @Override // android.sax.StartElementListener
        public void start(Attributes attributes) {
            String value = attributes.getValue("", "src");
            if (value != null) {
                MediaScanner.this.cachePlaylistEntry(value, this.playListDirectory);
            }
        }

        ContentHandler getContentHandler() {
            return this.handler;
        }
    }

    private void processWplPlayList(String str, String str2, Uri uri, ContentValues contentValues, Cursor cursor) {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2 = null;
        try {
            try {
                try {
                    File file = new File(str);
                    if (file.exists()) {
                        fileInputStream = new FileInputStream(file);
                        try {
                            this.mPlaylistEntries.clear();
                            Xml.parse(fileInputStream, Xml.findEncodingByName("UTF-8"), new WplHandler(str2, uri, cursor).getContentHandler());
                            processCachedPlaylist(cursor, contentValues, uri);
                        } catch (IOException e) {
                            e = e;
                            fileInputStream2 = fileInputStream;
                            e.printStackTrace();
                            if (fileInputStream2 != null) {
                                fileInputStream2.close();
                            }
                            return;
                        } catch (SAXException e2) {
                            e = e2;
                            fileInputStream2 = fileInputStream;
                            e.printStackTrace();
                            if (fileInputStream2 != null) {
                                fileInputStream2.close();
                            }
                            return;
                        } catch (Throwable th) {
                            th = th;
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (IOException e3) {
                                    Log.e(TAG, "IOException in MediaScanner.processWplPlayList()", e3);
                                }
                            }
                            throw th;
                        }
                    } else {
                        fileInputStream = null;
                    }
                } catch (IOException e4) {
                    Log.e(TAG, "IOException in MediaScanner.processWplPlayList()", e4);
                    return;
                }
            } catch (IOException e5) {
                e = e5;
            } catch (SAXException e6) {
                e = e6;
            }
            if (fileInputStream != null) {
                fileInputStream.close();
            }
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
        }
    }

    private void processPlayList(FileEntry fileEntry, Cursor cursor) throws RemoteException {
        Uri withAppendedPath;
        String str = fileEntry.mPath;
        ContentValues contentValues = new ContentValues();
        int lastIndexOf = str.lastIndexOf(47);
        if (lastIndexOf < 0) {
            throw new IllegalArgumentException("bad path " + str);
        }
        long j = fileEntry.mRowId;
        String asString = contentValues.getAsString(MidiDeviceInfo.PROPERTY_NAME);
        if (asString == null && (asString = contentValues.getAsString("title")) == null) {
            int lastIndexOf2 = str.lastIndexOf(46);
            if (lastIndexOf2 < 0) {
                asString = str.substring(lastIndexOf + 1);
            } else {
                asString = str.substring(lastIndexOf + 1, lastIndexOf2);
            }
        }
        contentValues.put(MidiDeviceInfo.PROPERTY_NAME, asString);
        contentValues.put("date_modified", Long.valueOf(fileEntry.mLastModified));
        if (j == 0) {
            contentValues.put("_data", str);
            Uri insert = this.mMediaProvider.insert(this.mPlaylistsUri, contentValues);
            ContentUris.parseId(insert);
            withAppendedPath = Uri.withAppendedPath(insert, "members");
        } else {
            Uri withAppendedId = ContentUris.withAppendedId(this.mPlaylistsUri, j);
            this.mMediaProvider.update(withAppendedId, contentValues, null, null);
            withAppendedPath = Uri.withAppendedPath(withAppendedId, "members");
            this.mMediaProvider.delete(withAppendedPath, null, null);
        }
        Uri uri = withAppendedPath;
        String substring = str.substring(0, lastIndexOf + 1);
        MediaFile.MediaFileType fileType = MediaFile.getFileType(str);
        int i = fileType != null ? fileType.fileType : 0;
        if (i == 41) {
            processM3uPlayList(str, substring, uri, contentValues, cursor);
        } else if (i == 42) {
            processPlsPlayList(str, substring, uri, contentValues, cursor);
        } else if (i == 43) {
            processWplPlayList(str, substring, uri, contentValues, cursor);
        }
    }

    private void processPlayLists() throws RemoteException {
        Iterator<FileEntry> it = this.mPlayLists.iterator();
        Cursor cursor = null;
        try {
            Cursor query = this.mMediaProvider.query(this.mFilesUri, FILES_PRESCAN_PROJECTION, "media_type=2", null, null, null);
            while (it.hasNext()) {
                try {
                    FileEntry next = it.next();
                    if (next.mLastModifiedChanged) {
                        processPlayList(next, query);
                    }
                } catch (RemoteException unused) {
                    cursor = query;
                    if (cursor != null) {
                        cursor.close();
                        return;
                    }
                    return;
                } catch (Throwable th) {
                    th = th;
                    cursor = query;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (query != null) {
                query.close();
            }
        } catch (RemoteException unused2) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.mCloseGuard.close();
        if (this.mClosed.compareAndSet(false, true)) {
            this.mMediaProvider.close();
            native_finalize();
        }
    }

    protected void finalize() throws Throwable {
        Log.d(TAG, "MediaScanner finalized");
        try {
            if (this.mCloseGuard != null) {
                this.mCloseGuard.warnIfOpen();
            }
            close();
        } finally {
            super.finalize();
        }
    }
}
