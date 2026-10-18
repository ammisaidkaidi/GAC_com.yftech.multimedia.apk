package android.mtp;

import android.app.DownloadManager;
import android.app.slice.Slice;
import android.content.BroadcastReceiver;
import android.content.ContentProviderClient;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.media.MediaFormat;
import android.media.MediaScanner;
import android.media.midi.MidiDeviceInfo;
import android.mtp.MtpStorageManager;
import android.net.Uri;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.os.storage.StorageVolume;
import android.provider.MediaStore;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.collect.Sets;
import dalvik.system.CloseGuard;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.ToIntFunction;
import java.util.stream.IntStream;
import java.util.stream.Stream;

/* loaded from: /home/user/work/dex/classes.dex */
public class MtpDatabase implements AutoCloseable {
    private static final int[] AUDIO_PROPERTIES;
    private static final int[] DEVICE_PROPERTIES;
    private static final int[] FILE_PROPERTIES;
    private static final int[] IMAGE_PROPERTIES;
    private static final String NO_MEDIA = ".nomedia";
    private static final String PATH_WHERE = "_data=?";
    private static final int[] PLAYBACK_FORMATS;
    private static final String TAG = "MtpDatabase";
    private static final int[] VIDEO_PROPERTIES;
    private int mBatteryLevel;
    private int mBatteryScale;
    private final Context mContext;
    private SharedPreferences mDeviceProperties;
    private int mDeviceType;
    private MtpStorageManager mManager;
    private final ContentProviderClient mMediaProvider;
    private final MediaScanner mMediaScanner;
    private long mNativeContext;
    private final Uri mObjectsUri;
    private MtpServer mServer;
    private final String mVolumeName;
    private static final String[] ID_PROJECTION = {DownloadManager.COLUMN_ID};
    private static final String[] PATH_PROJECTION = {"_data"};
    private final AtomicBoolean mClosed = new AtomicBoolean();
    private final CloseGuard mCloseGuard = CloseGuard.get();
    private final HashMap<String, MtpStorage> mStorageMap = new HashMap<>();
    private final HashMap<Integer, MtpPropertyGroup> mPropertyGroupsByProperty = new HashMap<>();
    private final HashMap<Integer, MtpPropertyGroup> mPropertyGroupsByFormat = new HashMap<>();
    private BroadcastReceiver mBatteryReceiver = new BroadcastReceiver() { // from class: android.mtp.MtpDatabase.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals(Intent.ACTION_BATTERY_CHANGED)) {
                MtpDatabase.this.mBatteryScale = intent.getIntExtra("scale", 0);
                int intExtra = intent.getIntExtra(MediaFormat.KEY_LEVEL, 0);
                if (intExtra != MtpDatabase.this.mBatteryLevel) {
                    MtpDatabase.this.mBatteryLevel = intExtra;
                    if (MtpDatabase.this.mServer != null) {
                        MtpDatabase.this.mServer.sendDevicePropertyChanged(MtpConstants.DEVICE_PROPERTY_BATTERY_LEVEL);
                    }
                }
            }
        }
    };

    private int[] getSupportedCaptureFormats() {
        return null;
    }

    private final native void native_finalize();

    private final native void native_setup();

    static {
        System.loadLibrary("media_jni");
        PLAYBACK_FORMATS = new int[]{MtpConstants.FORMAT_UNDEFINED, MtpConstants.FORMAT_ASSOCIATION, MtpConstants.FORMAT_TEXT, MtpConstants.FORMAT_HTML, MtpConstants.FORMAT_WAV, MtpConstants.FORMAT_MP3, MtpConstants.FORMAT_MPEG, MtpConstants.FORMAT_EXIF_JPEG, MtpConstants.FORMAT_TIFF_EP, MtpConstants.FORMAT_BMP, MtpConstants.FORMAT_GIF, MtpConstants.FORMAT_JFIF, MtpConstants.FORMAT_PNG, MtpConstants.FORMAT_TIFF, MtpConstants.FORMAT_WMA, MtpConstants.FORMAT_OGG, MtpConstants.FORMAT_AAC, MtpConstants.FORMAT_MP4_CONTAINER, MtpConstants.FORMAT_MP2, MtpConstants.FORMAT_3GP_CONTAINER, MtpConstants.FORMAT_ABSTRACT_AV_PLAYLIST, MtpConstants.FORMAT_WPL_PLAYLIST, MtpConstants.FORMAT_M3U_PLAYLIST, MtpConstants.FORMAT_PLS_PLAYLIST, MtpConstants.FORMAT_XML_DOCUMENT, MtpConstants.FORMAT_FLAC, MtpConstants.FORMAT_DNG, MtpConstants.FORMAT_HEIF};
        FILE_PROPERTIES = new int[]{MtpConstants.PROPERTY_STORAGE_ID, MtpConstants.PROPERTY_OBJECT_FORMAT, MtpConstants.PROPERTY_PROTECTION_STATUS, MtpConstants.PROPERTY_OBJECT_SIZE, MtpConstants.PROPERTY_OBJECT_FILE_NAME, MtpConstants.PROPERTY_DATE_MODIFIED, MtpConstants.PROPERTY_PERSISTENT_UID, MtpConstants.PROPERTY_PARENT_OBJECT, MtpConstants.PROPERTY_NAME, MtpConstants.PROPERTY_DISPLAY_NAME, MtpConstants.PROPERTY_DATE_ADDED};
        AUDIO_PROPERTIES = new int[]{MtpConstants.PROPERTY_ARTIST, MtpConstants.PROPERTY_ALBUM_NAME, MtpConstants.PROPERTY_ALBUM_ARTIST, MtpConstants.PROPERTY_TRACK, MtpConstants.PROPERTY_ORIGINAL_RELEASE_DATE, MtpConstants.PROPERTY_DURATION, MtpConstants.PROPERTY_GENRE, MtpConstants.PROPERTY_COMPOSER, MtpConstants.PROPERTY_AUDIO_WAVE_CODEC, MtpConstants.PROPERTY_BITRATE_TYPE, MtpConstants.PROPERTY_AUDIO_BITRATE, MtpConstants.PROPERTY_NUMBER_OF_CHANNELS, MtpConstants.PROPERTY_SAMPLE_RATE};
        VIDEO_PROPERTIES = new int[]{MtpConstants.PROPERTY_ARTIST, MtpConstants.PROPERTY_ALBUM_NAME, MtpConstants.PROPERTY_DURATION, MtpConstants.PROPERTY_DESCRIPTION};
        IMAGE_PROPERTIES = new int[]{MtpConstants.PROPERTY_DESCRIPTION};
        DEVICE_PROPERTIES = new int[]{MtpConstants.DEVICE_PROPERTY_SYNCHRONIZATION_PARTNER, MtpConstants.DEVICE_PROPERTY_DEVICE_FRIENDLY_NAME, MtpConstants.DEVICE_PROPERTY_IMAGE_SIZE, MtpConstants.DEVICE_PROPERTY_BATTERY_LEVEL, MtpConstants.DEVICE_PROPERTY_PERCEIVED_DEVICE_TYPE};
    }

    private int[] getSupportedObjectProperties(int i) {
        switch (i) {
            case MtpConstants.FORMAT_WAV /* 12296 */:
            case MtpConstants.FORMAT_MP3 /* 12297 */:
            case MtpConstants.FORMAT_WMA /* 47361 */:
            case MtpConstants.FORMAT_OGG /* 47362 */:
            case MtpConstants.FORMAT_AAC /* 47363 */:
                return IntStream.concat(Arrays.stream(FILE_PROPERTIES), Arrays.stream(AUDIO_PROPERTIES)).toArray();
            case MtpConstants.FORMAT_MPEG /* 12299 */:
            case MtpConstants.FORMAT_WMV /* 47489 */:
            case MtpConstants.FORMAT_3GP_CONTAINER /* 47492 */:
                return IntStream.concat(Arrays.stream(FILE_PROPERTIES), Arrays.stream(VIDEO_PROPERTIES)).toArray();
            case MtpConstants.FORMAT_EXIF_JPEG /* 14337 */:
            case MtpConstants.FORMAT_BMP /* 14340 */:
            case MtpConstants.FORMAT_GIF /* 14343 */:
            case MtpConstants.FORMAT_PNG /* 14347 */:
            case MtpConstants.FORMAT_DNG /* 14353 */:
            case MtpConstants.FORMAT_HEIF /* 14354 */:
                return IntStream.concat(Arrays.stream(FILE_PROPERTIES), Arrays.stream(IMAGE_PROPERTIES)).toArray();
            default:
                return FILE_PROPERTIES;
        }
    }

    private int[] getSupportedDeviceProperties() {
        return DEVICE_PROPERTIES;
    }

    private int[] getSupportedPlaybackFormats() {
        return PLAYBACK_FORMATS;
    }

    public MtpDatabase(Context context, String str, String[] strArr) {
        native_setup();
        this.mContext = context;
        this.mMediaProvider = context.getContentResolver().acquireContentProviderClient("media");
        this.mVolumeName = str;
        this.mObjectsUri = MediaStore.Files.getMtpObjectsUri(str);
        this.mMediaScanner = new MediaScanner(context, this.mVolumeName);
        this.mManager = new MtpStorageManager(new MtpStorageManager.MtpNotifier() { // from class: android.mtp.MtpDatabase.2
            @Override // android.mtp.MtpStorageManager.MtpNotifier
            public void sendObjectAdded(int i) {
                if (MtpDatabase.this.mServer != null) {
                    MtpDatabase.this.mServer.sendObjectAdded(i);
                }
            }

            @Override // android.mtp.MtpStorageManager.MtpNotifier
            public void sendObjectRemoved(int i) {
                if (MtpDatabase.this.mServer != null) {
                    MtpDatabase.this.mServer.sendObjectRemoved(i);
                }
            }
        }, strArr == null ? null : Sets.newHashSet(strArr));
        initDeviceProperties(context);
        this.mDeviceType = SystemProperties.getInt("sys.usb.mtp.device_type", 0);
        this.mCloseGuard.open("close");
    }

    public void setServer(MtpServer mtpServer) {
        this.mServer = mtpServer;
        try {
            this.mContext.unregisterReceiver(this.mBatteryReceiver);
        } catch (IllegalArgumentException unused) {
        }
        if (mtpServer != null) {
            this.mContext.registerReceiver(this.mBatteryReceiver, new IntentFilter(Intent.ACTION_BATTERY_CHANGED));
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.mManager.close();
        this.mCloseGuard.close();
        if (this.mClosed.compareAndSet(false, true)) {
            this.mMediaScanner.close();
            if (this.mMediaProvider != null) {
                this.mMediaProvider.close();
            }
            native_finalize();
        }
    }

    protected void finalize() throws Throwable {
        try {
            if (this.mCloseGuard != null) {
                this.mCloseGuard.warnIfOpen();
            }
            close();
        } finally {
            super.finalize();
        }
    }

    public void addStorage(StorageVolume storageVolume) {
        MtpStorage addMtpStorage = this.mManager.addMtpStorage(storageVolume);
        this.mStorageMap.put(storageVolume.getPath(), addMtpStorage);
        if (this.mServer != null) {
            this.mServer.addStorage(addMtpStorage);
        }
    }

    public void removeStorage(StorageVolume storageVolume) {
        MtpStorage mtpStorage = this.mStorageMap.get(storageVolume.getPath());
        if (mtpStorage == null) {
            return;
        }
        if (this.mServer != null) {
            this.mServer.removeStorage(mtpStorage);
        }
        this.mManager.removeMtpStorage(mtpStorage);
        this.mStorageMap.remove(storageVolume.getPath());
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0067, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x007f, code lost:
    
        r12.deleteDatabase("device-properties");
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x007c, code lost:
    
        if (r1 != null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0065, code lost:
    
        if (r1 != null) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void initDeviceProperties(Context context) {
        SQLiteDatabase sQLiteDatabase;
        this.mDeviceProperties = context.getSharedPreferences("device-properties", 0);
        if (!context.getDatabasePath("device-properties").exists()) {
            return;
        }
        Cursor cursor = null;
        try {
            sQLiteDatabase = context.openOrCreateDatabase("device-properties", 0, null);
            if (sQLiteDatabase != null) {
                try {
                    try {
                        Cursor query = sQLiteDatabase.query("properties", new String[]{DownloadManager.COLUMN_ID, "code", Slice.SUBTYPE_VALUE}, null, null, null, null, null);
                        if (query != null) {
                            try {
                                SharedPreferences.Editor edit = this.mDeviceProperties.edit();
                                while (query.moveToNext()) {
                                    edit.putString(query.getString(1), query.getString(2));
                                }
                                edit.commit();
                            } catch (Exception e) {
                                e = e;
                                cursor = query;
                                Log.e(TAG, "failed to migrate device properties", e);
                                if (cursor != null) {
                                    cursor.close();
                                }
                            } catch (Throwable th) {
                                th = th;
                                cursor = query;
                                if (cursor != null) {
                                    cursor.close();
                                }
                                if (sQLiteDatabase != null) {
                                    sQLiteDatabase.close();
                                }
                                throw th;
                            }
                        }
                        cursor = query;
                    } catch (Exception e2) {
                        e = e2;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            if (cursor != null) {
                cursor.close();
            }
        } catch (Exception e3) {
            e = e3;
            sQLiteDatabase = null;
        } catch (Throwable th3) {
            th = th3;
            sQLiteDatabase = null;
        }
    }

    private int beginSendObject(String str, int i, int i2, int i3) {
        MtpStorageManager.MtpObject storageRoot = i2 == 0 ? this.mManager.getStorageRoot(i3) : this.mManager.getObject(i2);
        if (storageRoot == null) {
            return -1;
        }
        return this.mManager.beginSendObject(storageRoot, Paths.get(str, new String[0]).getFileName().toString(), i);
    }

    private void endSendObject(int i, boolean z) {
        MtpStorageManager.MtpObject object = this.mManager.getObject(i);
        if (object == null || !this.mManager.endSendObject(object, z)) {
            Log.e(TAG, "Failed to successfully end send object");
            return;
        }
        if (z) {
            String path = object.getPath().toString();
            int format = object.getFormat();
            ContentValues contentValues = new ContentValues();
            contentValues.put("_data", path);
            contentValues.put("format", Integer.valueOf(format));
            contentValues.put("_size", Long.valueOf(object.getSize()));
            contentValues.put("date_modified", Long.valueOf(object.getModifiedTime()));
            try {
                if (object.getParent().isRoot()) {
                    contentValues.put("parent", (Integer) 0);
                } else {
                    int findInMedia = findInMedia(object.getParent().getPath());
                    if (findInMedia == -1) {
                        return;
                    } else {
                        contentValues.put("parent", Integer.valueOf(findInMedia));
                    }
                }
                Uri insert = this.mMediaProvider.insert(this.mObjectsUri, contentValues);
                if (insert != null) {
                    rescanFile(path, Integer.parseInt(insert.getPathSegments().get(2)), format);
                }
            } catch (RemoteException e) {
                Log.e(TAG, "RemoteException in beginSendObject", e);
            }
        }
    }

    private void rescanFile(String str, int i, int i2) {
        if (i2 == 47621) {
            int lastIndexOf = str.lastIndexOf(47);
            String substring = lastIndexOf >= 0 ? str.substring(lastIndexOf + 1) : str;
            if (substring.endsWith(".pla")) {
                substring = substring.substring(0, substring.length() - 4);
            }
            ContentValues contentValues = new ContentValues(1);
            contentValues.put("_data", str);
            contentValues.put(MidiDeviceInfo.PROPERTY_NAME, substring);
            contentValues.put("format", Integer.valueOf(i2));
            contentValues.put("date_modified", Long.valueOf(System.currentTimeMillis() / 1000));
            contentValues.put("media_scanner_new_object_id", Integer.valueOf(i));
            try {
                this.mMediaProvider.insert(MediaStore.Audio.Playlists.EXTERNAL_CONTENT_URI, contentValues);
                return;
            } catch (RemoteException e) {
                Log.e(TAG, "RemoteException in endSendObject", e);
                return;
            }
        }
        this.mMediaScanner.scanMtpFile(str, i, i2);
    }

    private int[] getObjectList(int i, int i2, int i3) {
        Stream<MtpStorageManager.MtpObject> objects = this.mManager.getObjects(i3, i2, i);
        if (objects == null) {
            return null;
        }
        return objects.mapToInt(new ToIntFunction() { // from class: android.mtp.-$$Lambda$iwOv5HKUnGm7PVU3weoI9-JmsXc
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return ((MtpStorageManager.MtpObject) obj).getId();
            }
        }).toArray();
    }

    private int getNumObjects(int i, int i2, int i3) {
        Stream<MtpStorageManager.MtpObject> objects = this.mManager.getObjects(i3, i2, i);
        if (objects == null) {
            return -1;
        }
        return (int) objects.count();
    }

    private MtpPropertyList getObjectPropertyList(int i, int i2, int i3, int i4, int i5) {
        MtpPropertyGroup mtpPropertyGroup;
        if (i3 == 0) {
            if (i4 == 0) {
                return new MtpPropertyList(MtpConstants.RESPONSE_PARAMETER_NOT_SUPPORTED);
            }
            return new MtpPropertyList(MtpConstants.RESPONSE_SPECIFICATION_BY_GROUP_UNSUPPORTED);
        }
        if (i5 == -1 && (i == 0 || i == -1)) {
            i5 = 0;
            i = -1;
        }
        if (i5 != 0 && i5 != 1) {
            return new MtpPropertyList(MtpConstants.RESPONSE_SPECIFICATION_BY_DEPTH_UNSUPPORTED);
        }
        Stream<MtpStorageManager.MtpObject> of = Stream.of((Object[]) new MtpStorageManager.MtpObject[0]);
        if (i == -1) {
            of = this.mManager.getObjects(0, i2, -1);
            if (of == null) {
                return new MtpPropertyList(MtpConstants.RESPONSE_INVALID_OBJECT_HANDLE);
            }
        } else if (i != 0) {
            MtpStorageManager.MtpObject object = this.mManager.getObject(i);
            if (object == null) {
                return new MtpPropertyList(MtpConstants.RESPONSE_INVALID_OBJECT_HANDLE);
            }
            if (object.getFormat() == i2 || i2 == 0) {
                of = Stream.of(object);
            }
        }
        if (i == 0 || i5 == 1) {
            if (i == 0) {
                i = -1;
            }
            Stream<MtpStorageManager.MtpObject> objects = this.mManager.getObjects(i, i2, -1);
            if (objects == null) {
                return new MtpPropertyList(MtpConstants.RESPONSE_INVALID_OBJECT_HANDLE);
            }
            of = Stream.concat(of, objects);
        }
        MtpPropertyList mtpPropertyList = new MtpPropertyList(MtpConstants.RESPONSE_OK);
        for (MtpStorageManager.MtpObject mtpObject : of) {
            if (i3 == -1) {
                MtpPropertyGroup mtpPropertyGroup2 = this.mPropertyGroupsByFormat.get(Integer.valueOf(mtpObject.getFormat()));
                if (mtpPropertyGroup2 == null) {
                    mtpPropertyGroup = new MtpPropertyGroup(this.mMediaProvider, this.mVolumeName, getSupportedObjectProperties(i2));
                    this.mPropertyGroupsByFormat.put(Integer.valueOf(i2), mtpPropertyGroup);
                } else {
                    mtpPropertyGroup = mtpPropertyGroup2;
                }
            } else {
                int[] iArr = {i3};
                mtpPropertyGroup = this.mPropertyGroupsByProperty.get(Integer.valueOf(i3));
                if (mtpPropertyGroup == null) {
                    mtpPropertyGroup = new MtpPropertyGroup(this.mMediaProvider, this.mVolumeName, iArr);
                    this.mPropertyGroupsByProperty.put(Integer.valueOf(i3), mtpPropertyGroup);
                }
            }
            int propertyList = mtpPropertyGroup.getPropertyList(mtpObject, mtpPropertyList);
            if (propertyList != 8193) {
                return new MtpPropertyList(propertyList);
            }
        }
        return mtpPropertyList;
    }

    private int renameFile(int i, String str) {
        MtpStorageManager.MtpObject object = this.mManager.getObject(i);
        if (object == null) {
            return MtpConstants.RESPONSE_INVALID_OBJECT_HANDLE;
        }
        Path path = object.getPath();
        if (!this.mManager.beginRenameObject(object, str)) {
            return 8194;
        }
        Path path2 = object.getPath();
        boolean renameTo = path.toFile().renameTo(path2.toFile());
        try {
            Os.access(path.toString(), OsConstants.F_OK);
            Os.access(path2.toString(), OsConstants.F_OK);
        } catch (ErrnoException unused) {
        }
        if (!this.mManager.endRenameObject(object, path.getFileName().toString(), renameTo)) {
            Log.e(TAG, "Failed to end rename object");
        }
        if (!renameTo) {
            return 8194;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("_data", path2.toString());
        try {
            this.mMediaProvider.update(this.mObjectsUri, contentValues, PATH_WHERE, new String[]{path.toString()});
        } catch (RemoteException e) {
            Log.e(TAG, "RemoteException in mMediaProvider.update", e);
        }
        if (object.isDir()) {
            if (!path.getFileName().startsWith(".") || path2.startsWith(".")) {
                return MtpConstants.RESPONSE_OK;
            }
            try {
                this.mMediaProvider.call("unhide", path2.toString(), null);
                return MtpConstants.RESPONSE_OK;
            } catch (RemoteException unused2) {
                Log.e(TAG, "failed to unhide/rescan for " + path2);
                return MtpConstants.RESPONSE_OK;
            }
        }
        if (!path.getFileName().toString().toLowerCase(Locale.US).equals(NO_MEDIA) || path2.getFileName().toString().toLowerCase(Locale.US).equals(NO_MEDIA)) {
            return MtpConstants.RESPONSE_OK;
        }
        try {
            this.mMediaProvider.call("unhide", path.getParent().toString(), null);
            return MtpConstants.RESPONSE_OK;
        } catch (RemoteException unused3) {
            Log.e(TAG, "failed to unhide/rescan for " + path2);
            return MtpConstants.RESPONSE_OK;
        }
    }

    private int beginMoveObject(int i, int i2, int i3) {
        MtpStorageManager.MtpObject object = this.mManager.getObject(i);
        MtpStorageManager.MtpObject storageRoot = i2 == 0 ? this.mManager.getStorageRoot(i3) : this.mManager.getObject(i2);
        if (object == null || storageRoot == null) {
            return MtpConstants.RESPONSE_INVALID_OBJECT_HANDLE;
        }
        if (this.mManager.beginMoveObject(object, storageRoot)) {
            return MtpConstants.RESPONSE_OK;
        }
        return 8194;
    }

    private void endMoveObject(int i, int i2, int i3, int i4, int i5, boolean z) {
        MtpStorageManager.MtpObject storageRoot = i == 0 ? this.mManager.getStorageRoot(i3) : this.mManager.getObject(i);
        MtpStorageManager.MtpObject storageRoot2 = i2 == 0 ? this.mManager.getStorageRoot(i4) : this.mManager.getObject(i2);
        String name = this.mManager.getObject(i5).getName();
        if (storageRoot2 == null || storageRoot == null || !this.mManager.endMoveObject(storageRoot, storageRoot2, name, z)) {
            Log.e(TAG, "Failed to end move object");
            return;
        }
        MtpStorageManager.MtpObject object = this.mManager.getObject(i5);
        if (!z || object == null) {
            return;
        }
        ContentValues contentValues = new ContentValues();
        Path resolve = storageRoot2.getPath().resolve(name);
        Path resolve2 = storageRoot.getPath().resolve(name);
        contentValues.put("_data", resolve.toString());
        if (object.getParent().isRoot()) {
            contentValues.put("parent", (Integer) 0);
        } else {
            int findInMedia = findInMedia(resolve.getParent());
            if (findInMedia != -1) {
                contentValues.put("parent", Integer.valueOf(findInMedia));
            } else {
                deleteFromMedia(resolve2, object.isDir());
                return;
            }
        }
        String[] strArr = {resolve2.toString()};
        try {
            int findInMedia2 = !storageRoot.isRoot() ? findInMedia(resolve2.getParent()) : -1;
            if (!storageRoot.isRoot() && findInMedia2 == -1) {
                contentValues.put("format", Integer.valueOf(object.getFormat()));
                contentValues.put("_size", Long.valueOf(object.getSize()));
                contentValues.put("date_modified", Long.valueOf(object.getModifiedTime()));
                Uri insert = this.mMediaProvider.insert(this.mObjectsUri, contentValues);
                if (insert != null) {
                    rescanFile(resolve.toString(), Integer.parseInt(insert.getPathSegments().get(2)), object.getFormat());
                    return;
                }
                return;
            }
            this.mMediaProvider.update(this.mObjectsUri, contentValues, PATH_WHERE, strArr);
        } catch (RemoteException e) {
            Log.e(TAG, "RemoteException in mMediaProvider.update", e);
        }
    }

    private int beginCopyObject(int i, int i2, int i3) {
        MtpStorageManager.MtpObject object = this.mManager.getObject(i);
        MtpStorageManager.MtpObject storageRoot = i2 == 0 ? this.mManager.getStorageRoot(i3) : this.mManager.getObject(i2);
        return (object == null || storageRoot == null) ? MtpConstants.RESPONSE_INVALID_OBJECT_HANDLE : this.mManager.beginCopyObject(object, storageRoot);
    }

    private void endCopyObject(int i, boolean z) {
        MtpStorageManager.MtpObject object = this.mManager.getObject(i);
        if (object == null || !this.mManager.endCopyObject(object, z)) {
            Log.e(TAG, "Failed to end copy object");
            return;
        }
        if (z) {
            String path = object.getPath().toString();
            int format = object.getFormat();
            ContentValues contentValues = new ContentValues();
            contentValues.put("_data", path);
            contentValues.put("format", Integer.valueOf(format));
            contentValues.put("_size", Long.valueOf(object.getSize()));
            contentValues.put("date_modified", Long.valueOf(object.getModifiedTime()));
            try {
                if (object.getParent().isRoot()) {
                    contentValues.put("parent", (Integer) 0);
                } else {
                    int findInMedia = findInMedia(object.getParent().getPath());
                    if (findInMedia == -1) {
                        return;
                    } else {
                        contentValues.put("parent", Integer.valueOf(findInMedia));
                    }
                }
                if (object.isDir()) {
                    this.mMediaScanner.scanDirectories(new String[]{path});
                    return;
                }
                Uri insert = this.mMediaProvider.insert(this.mObjectsUri, contentValues);
                if (insert != null) {
                    rescanFile(path, Integer.parseInt(insert.getPathSegments().get(2)), format);
                }
            } catch (RemoteException e) {
                Log.e(TAG, "RemoteException in beginSendObject", e);
            }
        }
    }

    private int setObjectProperty(int i, int i2, long j, String str) {
        return i2 != 56327 ? MtpConstants.RESPONSE_OBJECT_PROP_NOT_SUPPORTED : renameFile(i, str);
    }

    private int getDeviceProperty(int i, long[] jArr, char[] cArr) {
        if (i == 20481) {
            jArr[0] = this.mBatteryLevel;
            jArr[1] = this.mBatteryScale;
            return MtpConstants.RESPONSE_OK;
        }
        if (i == 20483) {
            Display defaultDisplay = ((WindowManager) this.mContext.getSystemService(Context.WINDOW_SERVICE)).getDefaultDisplay();
            String str = Integer.toString(defaultDisplay.getMaximumSizeDimension()) + "x" + Integer.toString(defaultDisplay.getMaximumSizeDimension());
            str.getChars(0, str.length(), cArr, 0);
            cArr[str.length()] = 0;
            return MtpConstants.RESPONSE_OK;
        }
        if (i != 54279) {
            switch (i) {
                case MtpConstants.DEVICE_PROPERTY_SYNCHRONIZATION_PARTNER /* 54273 */:
                case MtpConstants.DEVICE_PROPERTY_DEVICE_FRIENDLY_NAME /* 54274 */:
                    String string = this.mDeviceProperties.getString(Integer.toString(i), "");
                    int length = string.length();
                    if (length > 255) {
                        length = 255;
                    }
                    string.getChars(0, length, cArr, 0);
                    cArr[length] = 0;
                    return MtpConstants.RESPONSE_OK;
                default:
                    return MtpConstants.RESPONSE_DEVICE_PROP_NOT_SUPPORTED;
            }
        }
        jArr[0] = this.mDeviceType;
        return MtpConstants.RESPONSE_OK;
    }

    private int setDeviceProperty(int i, long j, String str) {
        switch (i) {
            case MtpConstants.DEVICE_PROPERTY_SYNCHRONIZATION_PARTNER /* 54273 */:
            case MtpConstants.DEVICE_PROPERTY_DEVICE_FRIENDLY_NAME /* 54274 */:
                SharedPreferences.Editor edit = this.mDeviceProperties.edit();
                edit.putString(Integer.toString(i), str);
                if (edit.commit()) {
                    return MtpConstants.RESPONSE_OK;
                }
                return 8194;
            default:
                return MtpConstants.RESPONSE_DEVICE_PROP_NOT_SUPPORTED;
        }
    }

    private boolean getObjectInfo(int i, int[] iArr, char[] cArr, long[] jArr) {
        MtpStorageManager.MtpObject object = this.mManager.getObject(i);
        if (object == null) {
            return false;
        }
        iArr[0] = object.getStorageId();
        iArr[1] = object.getFormat();
        iArr[2] = object.getParent().isRoot() ? 0 : object.getParent().getId();
        int min = Integer.min(object.getName().length(), 255);
        object.getName().getChars(0, min, cArr, 0);
        cArr[min] = 0;
        jArr[0] = object.getModifiedTime();
        jArr[1] = object.getModifiedTime();
        return true;
    }

    private int getObjectFilePath(int i, char[] cArr, long[] jArr) {
        MtpStorageManager.MtpObject object = this.mManager.getObject(i);
        if (object == null) {
            return MtpConstants.RESPONSE_INVALID_OBJECT_HANDLE;
        }
        String path = object.getPath().toString();
        int min = Integer.min(path.length(), 4096);
        path.getChars(0, min, cArr, 0);
        cArr[min] = 0;
        jArr[0] = object.getSize();
        jArr[1] = object.getFormat();
        return MtpConstants.RESPONSE_OK;
    }

    private int getObjectFormat(int i) {
        MtpStorageManager.MtpObject object = this.mManager.getObject(i);
        if (object == null) {
            return -1;
        }
        return object.getFormat();
    }

    private int beginDeleteObject(int i) {
        MtpStorageManager.MtpObject object = this.mManager.getObject(i);
        if (object == null) {
            return MtpConstants.RESPONSE_INVALID_OBJECT_HANDLE;
        }
        if (this.mManager.beginRemoveObject(object)) {
            return MtpConstants.RESPONSE_OK;
        }
        return 8194;
    }

    private void endDeleteObject(int i, boolean z) {
        MtpStorageManager.MtpObject object = this.mManager.getObject(i);
        if (object == null) {
            return;
        }
        if (!this.mManager.endRemoveObject(object, z)) {
            Log.e(TAG, "Failed to end remove object");
        }
        if (z) {
            deleteFromMedia(object.getPath(), object.isDir());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v3, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v9 */
    private int findInMedia(Path path) {
        int i = -1;
        ?? r1 = 0;
        r1 = 0;
        r1 = 0;
        try {
            try {
                Cursor query = this.mMediaProvider.query(this.mObjectsUri, ID_PROJECTION, PATH_WHERE, new String[]{path.toString()}, null, null);
                if (query != null) {
                    try {
                        boolean moveToNext = query.moveToNext();
                        r1 = moveToNext;
                        if (moveToNext) {
                            int i2 = query.getInt(0);
                            i = i2;
                            r1 = i2;
                        }
                    } catch (RemoteException unused) {
                        r1 = query;
                        Log.e(TAG, "Error finding " + path + " in MediaProvider");
                        if (r1 != 0) {
                            r1.close();
                        }
                        return i;
                    } catch (Throwable th) {
                        th = th;
                        r1 = query;
                        if (r1 != 0) {
                            r1.close();
                        }
                        throw th;
                    }
                }
                if (query != null) {
                    query.close();
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (RemoteException unused2) {
        }
        return i;
    }

    private void deleteFromMedia(Path path, boolean z) {
        if (z) {
            try {
                this.mMediaProvider.delete(this.mObjectsUri, "_data LIKE ?1 AND lower(substr(_data,1,?2))=lower(?3)", new String[]{path + "/%", Integer.toString(path.toString().length() + 1), path.toString() + "/"});
            } catch (Exception unused) {
                Log.d(TAG, "Failed to delete " + path + " from MediaProvider");
                return;
            }
        }
        if (this.mMediaProvider.delete(this.mObjectsUri, PATH_WHERE, new String[]{path.toString()}) > 0) {
            if (z || !path.toString().toLowerCase(Locale.US).endsWith(NO_MEDIA)) {
                return;
            }
            try {
                this.mMediaProvider.call("unhide", path.getParent().toString(), null);
                return;
            } catch (RemoteException unused2) {
                Log.e(TAG, "failed to unhide/rescan for " + path);
                return;
            }
        }
        Log.i(TAG, "Mediaprovider didn't delete " + path);
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0080  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int[] getObjectReferences(int i) {
        int findInMedia;
        Cursor cursor;
        MtpStorageManager.MtpObject object = this.mManager.getObject(i);
        if (object == null || (findInMedia = findInMedia(object.getPath())) == -1) {
            return null;
        }
        try {
            cursor = this.mMediaProvider.query(MediaStore.Files.getMtpReferencesUri(this.mVolumeName, findInMedia), PATH_PROJECTION, null, null, null, null);
            if (cursor == null) {
                if (cursor != null) {
                    cursor.close();
                }
                return null;
            }
            try {
                try {
                    ArrayList arrayList = new ArrayList();
                    while (cursor.moveToNext()) {
                        MtpStorageManager.MtpObject byPath = this.mManager.getByPath(cursor.getString(0));
                        if (byPath != null) {
                            arrayList.add(Integer.valueOf(byPath.getId()));
                        }
                    }
                    int[] array = arrayList.stream().mapToInt($$Lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw.INSTANCE).toArray();
                    if (cursor != null) {
                        cursor.close();
                    }
                    return array;
                } catch (RemoteException e) {
                    e = e;
                    Log.e(TAG, "RemoteException in getObjectList", e);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (RemoteException e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
            if (cursor != null) {
            }
            throw th;
        }
    }

    private int setObjectReferences(int i, int[] iArr) {
        int findInMedia;
        MtpStorageManager.MtpObject object = this.mManager.getObject(i);
        if (object == null) {
            return MtpConstants.RESPONSE_INVALID_OBJECT_HANDLE;
        }
        int findInMedia2 = findInMedia(object.getPath());
        if (findInMedia2 == -1) {
            return 8194;
        }
        Uri mtpReferencesUri = MediaStore.Files.getMtpReferencesUri(this.mVolumeName, findInMedia2);
        ArrayList arrayList = new ArrayList();
        for (int i2 : iArr) {
            MtpStorageManager.MtpObject object2 = this.mManager.getObject(i2);
            if (object2 != null && (findInMedia = findInMedia(object2.getPath())) != -1) {
                ContentValues contentValues = new ContentValues();
                contentValues.put(DownloadManager.COLUMN_ID, Integer.valueOf(findInMedia));
                arrayList.add(contentValues);
            }
        }
        try {
        } catch (RemoteException e) {
            Log.e(TAG, "RemoteException in setObjectReferences", e);
        }
        if (this.mMediaProvider.bulkInsert(mtpReferencesUri, (ContentValues[]) arrayList.toArray(new ContentValues[0])) > 0) {
            return MtpConstants.RESPONSE_OK;
        }
        return 8194;
    }
}
