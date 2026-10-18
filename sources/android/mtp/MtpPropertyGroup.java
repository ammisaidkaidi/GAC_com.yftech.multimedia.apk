package android.mtp;

import android.app.DownloadManager;
import android.content.ContentProviderClient;
import android.database.Cursor;
import android.media.midi.MidiDeviceInfo;
import android.mtp.MtpStorageManager;
import android.net.Uri;
import android.os.RemoteException;
import android.provider.MediaStore;
import android.util.Log;
import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
class MtpPropertyGroup {
    private static final String PATH_WHERE = "_data=?";
    private static final String TAG = "MtpPropertyGroup";
    private String[] mColumns;
    private final Property[] mProperties;
    private final ContentProviderClient mProvider;
    private final Uri mUri;
    private final String mVolumeName;

    private native String format_date_time(long j);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class Property {
        int code;
        int column;
        int type;

        Property(int i, int i2, int i3) {
            this.code = i;
            this.type = i2;
            this.column = i3;
        }
    }

    public MtpPropertyGroup(ContentProviderClient contentProviderClient, String str, int[] iArr) {
        this.mProvider = contentProviderClient;
        this.mVolumeName = str;
        this.mUri = MediaStore.Files.getMtpObjectsUri(str);
        int length = iArr.length;
        ArrayList<String> arrayList = new ArrayList<>(length);
        arrayList.add(DownloadManager.COLUMN_ID);
        this.mProperties = new Property[length];
        for (int i = 0; i < length; i++) {
            this.mProperties[i] = createProperty(iArr[i], arrayList);
        }
        int size = arrayList.size();
        this.mColumns = new String[size];
        for (int i2 = 0; i2 < size; i2++) {
            this.mColumns[i2] = arrayList.get(i2);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private Property createProperty(int i, ArrayList<String> arrayList) {
        int i2 = 4;
        int i3 = 65535;
        String str = null;
        switch (i) {
            case MtpConstants.PROPERTY_STORAGE_ID /* 56321 */:
            case MtpConstants.PROPERTY_PARENT_OBJECT /* 56331 */:
            case MtpConstants.PROPERTY_SAMPLE_RATE /* 56979 */:
            case MtpConstants.PROPERTY_AUDIO_WAVE_CODEC /* 56985 */:
            case MtpConstants.PROPERTY_AUDIO_BITRATE /* 56986 */:
                i3 = 6;
                break;
            case MtpConstants.PROPERTY_OBJECT_FORMAT /* 56322 */:
            case MtpConstants.PROPERTY_PROTECTION_STATUS /* 56323 */:
            case MtpConstants.PROPERTY_BITRATE_TYPE /* 56978 */:
            case MtpConstants.PROPERTY_NUMBER_OF_CHANNELS /* 56980 */:
                i3 = i2;
                break;
            case MtpConstants.PROPERTY_OBJECT_SIZE /* 56324 */:
                i2 = 8;
                i3 = i2;
                break;
            case MtpConstants.PROPERTY_OBJECT_FILE_NAME /* 56327 */:
            case MtpConstants.PROPERTY_DATE_MODIFIED /* 56329 */:
            case MtpConstants.PROPERTY_NAME /* 56388 */:
            case MtpConstants.PROPERTY_ARTIST /* 56390 */:
            case MtpConstants.PROPERTY_DATE_ADDED /* 56398 */:
            case MtpConstants.PROPERTY_GENRE /* 56460 */:
            case MtpConstants.PROPERTY_ALBUM_NAME /* 56474 */:
            case MtpConstants.PROPERTY_DISPLAY_NAME /* 56544 */:
                break;
            case MtpConstants.PROPERTY_PERSISTENT_UID /* 56385 */:
                i2 = 10;
                i3 = i2;
                break;
            case MtpConstants.PROPERTY_DESCRIPTION /* 56392 */:
                str = "description";
                break;
            case MtpConstants.PROPERTY_DURATION /* 56457 */:
                str = "duration";
                i3 = 6;
                break;
            case MtpConstants.PROPERTY_TRACK /* 56459 */:
                str = "track";
                i3 = i2;
                break;
            case MtpConstants.PROPERTY_COMPOSER /* 56470 */:
                str = "composer";
                break;
            case MtpConstants.PROPERTY_ORIGINAL_RELEASE_DATE /* 56473 */:
                str = "year";
                break;
            case MtpConstants.PROPERTY_ALBUM_ARTIST /* 56475 */:
                str = "album_artist";
                break;
            default:
                i2 = 0;
                Log.e(TAG, "unsupported property " + i);
                i3 = i2;
                break;
        }
        if (str != null) {
            arrayList.add(str);
            return new Property(i, i3, arrayList.size() - 1);
        }
        return new Property(i, i3, -1);
    }

    private String queryAudio(String str, String str2) {
        Cursor cursor = null;
        try {
            Cursor query = this.mProvider.query(MediaStore.Audio.Media.getContentUri(this.mVolumeName), new String[]{str2}, PATH_WHERE, new String[]{str}, null, null);
            if (query != null) {
                try {
                    if (query.moveToNext()) {
                        String string = query.getString(0);
                        if (query != null) {
                            query.close();
                        }
                        return string;
                    }
                } catch (Exception unused) {
                    cursor = query;
                    if (cursor != null) {
                        cursor.close();
                    }
                    return "";
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
            return "";
        } catch (Exception unused2) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private String queryGenre(String str) {
        Cursor cursor = null;
        try {
            Cursor query = this.mProvider.query(MediaStore.Audio.Genres.getContentUri(this.mVolumeName), new String[]{MidiDeviceInfo.PROPERTY_NAME}, PATH_WHERE, new String[]{str}, null, null);
            if (query != null) {
                try {
                    if (query.moveToNext()) {
                        String string = query.getString(0);
                        if (query != null) {
                            query.close();
                        }
                        return string;
                    }
                } catch (Exception unused) {
                    cursor = query;
                    if (cursor != null) {
                        cursor.close();
                    }
                    return "";
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
            return "";
        } catch (Exception unused2) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x016f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int getPropertyList(MtpStorageManager.MtpObject mtpObject, MtpPropertyList mtpPropertyList) {
        Cursor cursor;
        int id = mtpObject.getId();
        String path = mtpObject.getPath().toString();
        Property[] propertyArr = this.mProperties;
        int length = propertyArr.length;
        Cursor cursor2 = null;
        int i = 0;
        while (i < length) {
            Property property = propertyArr[i];
            if (property.column != -1 && cursor2 == null) {
                try {
                    Cursor query = this.mProvider.query(this.mUri, this.mColumns, PATH_WHERE, new String[]{path}, null, null);
                    if (query != null) {
                        try {
                            if (!query.moveToNext()) {
                                query.close();
                                query = null;
                            }
                        } catch (RemoteException unused) {
                            cursor2 = query;
                            Log.e(TAG, "Mediaprovider lookup failed");
                            cursor = cursor2;
                            switch (property.code) {
                                case MtpConstants.PROPERTY_STORAGE_ID /* 56321 */:
                                    break;
                                case MtpConstants.PROPERTY_OBJECT_FORMAT /* 56322 */:
                                    break;
                                case MtpConstants.PROPERTY_PROTECTION_STATUS /* 56323 */:
                                    break;
                                case MtpConstants.PROPERTY_OBJECT_SIZE /* 56324 */:
                                    break;
                                case MtpConstants.PROPERTY_OBJECT_FILE_NAME /* 56327 */:
                                case MtpConstants.PROPERTY_NAME /* 56388 */:
                                case MtpConstants.PROPERTY_DISPLAY_NAME /* 56544 */:
                                    break;
                                case MtpConstants.PROPERTY_DATE_MODIFIED /* 56329 */:
                                case MtpConstants.PROPERTY_DATE_ADDED /* 56398 */:
                                    break;
                                case MtpConstants.PROPERTY_PARENT_OBJECT /* 56331 */:
                                    break;
                                case MtpConstants.PROPERTY_PERSISTENT_UID /* 56385 */:
                                    break;
                                case MtpConstants.PROPERTY_ARTIST /* 56390 */:
                                    break;
                                case MtpConstants.PROPERTY_TRACK /* 56459 */:
                                    break;
                                case MtpConstants.PROPERTY_GENRE /* 56460 */:
                                    break;
                                case MtpConstants.PROPERTY_ORIGINAL_RELEASE_DATE /* 56473 */:
                                    break;
                                case MtpConstants.PROPERTY_ALBUM_NAME /* 56474 */:
                                    break;
                                case MtpConstants.PROPERTY_BITRATE_TYPE /* 56978 */:
                                case MtpConstants.PROPERTY_NUMBER_OF_CHANNELS /* 56980 */:
                                    break;
                                case MtpConstants.PROPERTY_SAMPLE_RATE /* 56979 */:
                                case MtpConstants.PROPERTY_AUDIO_WAVE_CODEC /* 56985 */:
                                case MtpConstants.PROPERTY_AUDIO_BITRATE /* 56986 */:
                                    break;
                            }
                            i++;
                            cursor2 = cursor;
                        }
                    }
                    cursor = query;
                } catch (RemoteException unused2) {
                }
                switch (property.code) {
                    case MtpConstants.PROPERTY_STORAGE_ID /* 56321 */:
                        mtpPropertyList.append(id, property.code, property.type, mtpObject.getStorageId());
                        break;
                    case MtpConstants.PROPERTY_OBJECT_FORMAT /* 56322 */:
                        mtpPropertyList.append(id, property.code, property.type, mtpObject.getFormat());
                        break;
                    case MtpConstants.PROPERTY_PROTECTION_STATUS /* 56323 */:
                        mtpPropertyList.append(id, property.code, property.type, 0L);
                        break;
                    case MtpConstants.PROPERTY_OBJECT_SIZE /* 56324 */:
                        mtpPropertyList.append(id, property.code, property.type, mtpObject.getSize());
                        break;
                    case MtpConstants.PROPERTY_OBJECT_FILE_NAME /* 56327 */:
                    case MtpConstants.PROPERTY_NAME /* 56388 */:
                    case MtpConstants.PROPERTY_DISPLAY_NAME /* 56544 */:
                        mtpPropertyList.append(id, property.code, mtpObject.getName());
                        break;
                    case MtpConstants.PROPERTY_DATE_MODIFIED /* 56329 */:
                    case MtpConstants.PROPERTY_DATE_ADDED /* 56398 */:
                        mtpPropertyList.append(id, property.code, format_date_time(mtpObject.getModifiedTime()));
                        break;
                    case MtpConstants.PROPERTY_PARENT_OBJECT /* 56331 */:
                        mtpPropertyList.append(id, property.code, property.type, mtpObject.getParent().isRoot() ? 0L : mtpObject.getParent().getId());
                        break;
                    case MtpConstants.PROPERTY_PERSISTENT_UID /* 56385 */:
                        mtpPropertyList.append(id, property.code, property.type, mtpObject.getModifiedTime() + (mtpObject.getPath().toString().hashCode() << 32));
                        break;
                    case MtpConstants.PROPERTY_ARTIST /* 56390 */:
                        mtpPropertyList.append(id, property.code, queryAudio(path, "artist"));
                        break;
                    case MtpConstants.PROPERTY_TRACK /* 56459 */:
                        mtpPropertyList.append(id, property.code, 4, (cursor != null ? cursor.getInt(property.column) : 0) % 1000);
                        break;
                    case MtpConstants.PROPERTY_GENRE /* 56460 */:
                        String queryGenre = queryGenre(path);
                        if (queryGenre == null) {
                            break;
                        } else {
                            mtpPropertyList.append(id, property.code, queryGenre);
                            break;
                        }
                    case MtpConstants.PROPERTY_ORIGINAL_RELEASE_DATE /* 56473 */:
                        mtpPropertyList.append(id, property.code, Integer.toString(cursor != null ? cursor.getInt(property.column) : 0) + "0101T000000");
                        break;
                    case MtpConstants.PROPERTY_ALBUM_NAME /* 56474 */:
                        mtpPropertyList.append(id, property.code, queryAudio(path, "album"));
                        break;
                    case MtpConstants.PROPERTY_BITRATE_TYPE /* 56978 */:
                    case MtpConstants.PROPERTY_NUMBER_OF_CHANNELS /* 56980 */:
                        mtpPropertyList.append(id, property.code, 4, 0L);
                        break;
                    case MtpConstants.PROPERTY_SAMPLE_RATE /* 56979 */:
                    case MtpConstants.PROPERTY_AUDIO_WAVE_CODEC /* 56985 */:
                    case MtpConstants.PROPERTY_AUDIO_BITRATE /* 56986 */:
                        mtpPropertyList.append(id, property.code, 6, 0L);
                        break;
                    default:
                        int i2 = property.type;
                        if (i2 == 0) {
                            mtpPropertyList.append(id, property.code, property.type, 0L);
                            break;
                        } else if (i2 == 65535) {
                            mtpPropertyList.append(id, property.code, cursor != null ? cursor.getString(property.column) : "");
                            break;
                        } else {
                            mtpPropertyList.append(id, property.code, property.type, cursor != null ? cursor.getLong(property.column) : 0L);
                            break;
                        }
                }
                i++;
                cursor2 = cursor;
            }
            cursor = cursor2;
            switch (property.code) {
                case MtpConstants.PROPERTY_STORAGE_ID /* 56321 */:
                    break;
                case MtpConstants.PROPERTY_OBJECT_FORMAT /* 56322 */:
                    break;
                case MtpConstants.PROPERTY_PROTECTION_STATUS /* 56323 */:
                    break;
                case MtpConstants.PROPERTY_OBJECT_SIZE /* 56324 */:
                    break;
                case MtpConstants.PROPERTY_OBJECT_FILE_NAME /* 56327 */:
                case MtpConstants.PROPERTY_NAME /* 56388 */:
                case MtpConstants.PROPERTY_DISPLAY_NAME /* 56544 */:
                    break;
                case MtpConstants.PROPERTY_DATE_MODIFIED /* 56329 */:
                case MtpConstants.PROPERTY_DATE_ADDED /* 56398 */:
                    break;
                case MtpConstants.PROPERTY_PARENT_OBJECT /* 56331 */:
                    break;
                case MtpConstants.PROPERTY_PERSISTENT_UID /* 56385 */:
                    break;
                case MtpConstants.PROPERTY_ARTIST /* 56390 */:
                    break;
                case MtpConstants.PROPERTY_TRACK /* 56459 */:
                    break;
                case MtpConstants.PROPERTY_GENRE /* 56460 */:
                    break;
                case MtpConstants.PROPERTY_ORIGINAL_RELEASE_DATE /* 56473 */:
                    break;
                case MtpConstants.PROPERTY_ALBUM_NAME /* 56474 */:
                    break;
                case MtpConstants.PROPERTY_BITRATE_TYPE /* 56978 */:
                case MtpConstants.PROPERTY_NUMBER_OF_CHANNELS /* 56980 */:
                    break;
                case MtpConstants.PROPERTY_SAMPLE_RATE /* 56979 */:
                case MtpConstants.PROPERTY_AUDIO_WAVE_CODEC /* 56985 */:
                case MtpConstants.PROPERTY_AUDIO_BITRATE /* 56986 */:
                    break;
            }
            i++;
            cursor2 = cursor;
        }
        if (cursor2 == null) {
            return MtpConstants.RESPONSE_OK;
        }
        cursor2.close();
        return MtpConstants.RESPONSE_OK;
    }
}
