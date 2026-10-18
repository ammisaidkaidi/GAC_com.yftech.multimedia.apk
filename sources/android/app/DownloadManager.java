package android.app;

import android.annotation.SystemApi;
import android.app.backup.FullBackup;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.database.CursorWrapper;
import android.net.Uri;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Environment;
import android.os.FileUtils;
import android.os.ParcelFileDescriptor;
import android.provider.Downloads;
import android.provider.MediaStore;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Pair;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class DownloadManager {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final String ACTION_DOWNLOAD_COMPLETE = "android.intent.action.DOWNLOAD_COMPLETE";

    @SystemApi
    public static final String ACTION_DOWNLOAD_COMPLETED = "android.intent.action.DOWNLOAD_COMPLETED";
    public static final String ACTION_NOTIFICATION_CLICKED = "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED";
    public static final String ACTION_VIEW_DOWNLOADS = "android.intent.action.VIEW_DOWNLOADS";
    public static final String COLUMN_DESCRIPTION = "description";
    public static final String COLUMN_REASON = "reason";
    public static final String COLUMN_STATUS = "status";
    public static final String COLUMN_TITLE = "title";
    public static final int ERROR_BLOCKED = 1010;
    public static final int ERROR_CANNOT_RESUME = 1008;
    public static final int ERROR_DEVICE_NOT_FOUND = 1007;
    public static final int ERROR_FILE_ALREADY_EXISTS = 1009;
    public static final int ERROR_FILE_ERROR = 1001;
    public static final int ERROR_HTTP_DATA_ERROR = 1004;
    public static final int ERROR_INSUFFICIENT_SPACE = 1006;
    public static final int ERROR_TOO_MANY_REDIRECTS = 1005;
    public static final int ERROR_UNHANDLED_HTTP_CODE = 1002;
    public static final int ERROR_UNKNOWN = 1000;
    public static final String EXTRA_DOWNLOAD_ID = "extra_download_id";
    public static final String EXTRA_NOTIFICATION_CLICK_DOWNLOAD_IDS = "extra_click_download_ids";
    public static final String INTENT_EXTRAS_SORT_BY_SIZE = "android.app.DownloadManager.extra_sortBySize";
    private static final String NON_DOWNLOADMANAGER_DOWNLOAD = "non-dwnldmngr-download-dont-retry2download";
    public static final int PAUSED_QUEUED_FOR_WIFI = 3;
    public static final int PAUSED_UNKNOWN = 4;
    public static final int PAUSED_WAITING_FOR_NETWORK = 2;
    public static final int PAUSED_WAITING_TO_RETRY = 1;
    public static final int STATUS_FAILED = 16;
    public static final int STATUS_PAUSED = 4;
    public static final int STATUS_PENDING = 1;
    public static final int STATUS_RUNNING = 2;
    public static final int STATUS_SUCCESSFUL = 8;
    private boolean mAccessFilename;
    private Uri mBaseUri = Downloads.Impl.CONTENT_URI;
    private final String mPackageName;
    private final ContentResolver mResolver;
    public static final String COLUMN_ID = "_id";

    @Deprecated
    public static final String COLUMN_LOCAL_FILENAME = "local_filename";
    public static final String COLUMN_MEDIAPROVIDER_URI = "mediaprovider_uri";
    public static final String COLUMN_DESTINATION = "destination";
    public static final String COLUMN_URI = "uri";
    public static final String COLUMN_FILE_NAME_HINT = "hint";
    public static final String COLUMN_MEDIA_TYPE = "media_type";
    public static final String COLUMN_TOTAL_SIZE_BYTES = "total_size";
    public static final String COLUMN_LAST_MODIFIED_TIMESTAMP = "last_modified_timestamp";
    public static final String COLUMN_BYTES_DOWNLOADED_SO_FAR = "bytes_so_far";
    public static final String COLUMN_ALLOW_WRITE = "allow_write";
    public static final String COLUMN_LOCAL_URI = "local_uri";
    public static final String[] UNDERLYING_COLUMNS = {COLUMN_ID, COLUMN_LOCAL_FILENAME, COLUMN_MEDIAPROVIDER_URI, COLUMN_DESTINATION, "title", "description", COLUMN_URI, "status", COLUMN_FILE_NAME_HINT, COLUMN_MEDIA_TYPE, COLUMN_TOTAL_SIZE_BYTES, COLUMN_LAST_MODIFIED_TIMESTAMP, COLUMN_BYTES_DOWNLOADED_SO_FAR, COLUMN_ALLOW_WRITE, COLUMN_LOCAL_URI, "reason"};

    public static long getActiveNetworkWarningBytes(Context context) {
        return -1L;
    }

    public static boolean isActiveNetworkExpensive(Context context) {
        return false;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class Request {
        static final /* synthetic */ boolean $assertionsDisabled = false;

        @Deprecated
        public static final int NETWORK_BLUETOOTH = 4;
        public static final int NETWORK_MOBILE = 1;
        public static final int NETWORK_WIFI = 2;
        private static final int SCANNABLE_VALUE_NO = 2;
        private static final int SCANNABLE_VALUE_YES = 0;
        public static final int VISIBILITY_HIDDEN = 2;
        public static final int VISIBILITY_VISIBLE = 0;
        public static final int VISIBILITY_VISIBLE_NOTIFY_COMPLETED = 1;
        public static final int VISIBILITY_VISIBLE_NOTIFY_ONLY_COMPLETION = 3;
        private CharSequence mDescription;
        private Uri mDestinationUri;
        private String mMimeType;
        private CharSequence mTitle;
        private Uri mUri;
        private List<Pair<String, String>> mRequestHeaders = new ArrayList();
        private int mAllowedNetworkTypes = -1;
        private boolean mRoamingAllowed = true;
        private boolean mMeteredAllowed = true;
        private int mFlags = 0;
        private boolean mIsVisibleInDownloadsUi = true;
        private boolean mScannable = false;
        private int mNotificationVisibility = 0;

        public Request(Uri uri) {
            if (uri == null) {
                throw new NullPointerException();
            }
            String scheme = uri.getScheme();
            if (scheme == null || (!scheme.equals(IntentFilter.SCHEME_HTTP) && !scheme.equals(IntentFilter.SCHEME_HTTPS))) {
                throw new IllegalArgumentException("Can only download HTTP/HTTPS URIs: " + uri);
            }
            this.mUri = uri;
        }

        Request(String str) {
            this.mUri = Uri.parse(str);
        }

        public Request setDestinationUri(Uri uri) {
            this.mDestinationUri = uri;
            return this;
        }

        public Request setDestinationInExternalFilesDir(Context context, String str, String str2) {
            File externalFilesDir = context.getExternalFilesDir(str);
            if (externalFilesDir == null) {
                throw new IllegalStateException("Failed to get external storage files directory");
            }
            if (externalFilesDir.exists()) {
                if (!externalFilesDir.isDirectory()) {
                    throw new IllegalStateException(externalFilesDir.getAbsolutePath() + " already exists and is not a directory");
                }
            } else if (!externalFilesDir.mkdirs()) {
                throw new IllegalStateException("Unable to create directory: " + externalFilesDir.getAbsolutePath());
            }
            setDestinationFromBase(externalFilesDir, str2);
            return this;
        }

        public Request setDestinationInExternalPublicDir(String str, String str2) {
            File externalStoragePublicDirectory = Environment.getExternalStoragePublicDirectory(str);
            if (externalStoragePublicDirectory == null) {
                throw new IllegalStateException("Failed to get external storage public directory");
            }
            if (externalStoragePublicDirectory.exists()) {
                if (!externalStoragePublicDirectory.isDirectory()) {
                    throw new IllegalStateException(externalStoragePublicDirectory.getAbsolutePath() + " already exists and is not a directory");
                }
            } else if (!externalStoragePublicDirectory.mkdirs()) {
                throw new IllegalStateException("Unable to create directory: " + externalStoragePublicDirectory.getAbsolutePath());
            }
            setDestinationFromBase(externalStoragePublicDirectory, str2);
            return this;
        }

        private void setDestinationFromBase(File file, String str) {
            if (str == null) {
                throw new NullPointerException("subPath cannot be null");
            }
            this.mDestinationUri = Uri.withAppendedPath(Uri.fromFile(file), str);
        }

        public void allowScanningByMediaScanner() {
            this.mScannable = true;
        }

        public Request addRequestHeader(String str, String str2) {
            if (str == null) {
                throw new NullPointerException("header cannot be null");
            }
            if (str.contains(":")) {
                throw new IllegalArgumentException("header may not contain ':'");
            }
            if (str2 == null) {
                str2 = "";
            }
            this.mRequestHeaders.add(Pair.create(str, str2));
            return this;
        }

        public Request setTitle(CharSequence charSequence) {
            this.mTitle = charSequence;
            return this;
        }

        public Request setDescription(CharSequence charSequence) {
            this.mDescription = charSequence;
            return this;
        }

        public Request setMimeType(String str) {
            this.mMimeType = str;
            return this;
        }

        @Deprecated
        public Request setShowRunningNotification(boolean z) {
            if (z) {
                return setNotificationVisibility(0);
            }
            return setNotificationVisibility(2);
        }

        public Request setNotificationVisibility(int i) {
            this.mNotificationVisibility = i;
            return this;
        }

        public Request setAllowedNetworkTypes(int i) {
            this.mAllowedNetworkTypes = i;
            return this;
        }

        public Request setAllowedOverRoaming(boolean z) {
            this.mRoamingAllowed = z;
            return this;
        }

        public Request setAllowedOverMetered(boolean z) {
            this.mMeteredAllowed = z;
            return this;
        }

        public Request setRequiresCharging(boolean z) {
            if (z) {
                this.mFlags |= 1;
            } else {
                this.mFlags &= -2;
            }
            return this;
        }

        public Request setRequiresDeviceIdle(boolean z) {
            if (z) {
                this.mFlags |= 2;
            } else {
                this.mFlags &= -3;
            }
            return this;
        }

        public Request setVisibleInDownloadsUi(boolean z) {
            this.mIsVisibleInDownloadsUi = z;
            return this;
        }

        ContentValues toContentValues(String str) {
            ContentValues contentValues = new ContentValues();
            contentValues.put(DownloadManager.COLUMN_URI, this.mUri.toString());
            contentValues.put("is_public_api", (Boolean) true);
            contentValues.put("notificationpackage", str);
            if (this.mDestinationUri != null) {
                contentValues.put(DownloadManager.COLUMN_DESTINATION, (Integer) 4);
                contentValues.put(DownloadManager.COLUMN_FILE_NAME_HINT, this.mDestinationUri.toString());
            } else {
                contentValues.put(DownloadManager.COLUMN_DESTINATION, (Integer) 2);
            }
            contentValues.put("scanned", Integer.valueOf(this.mScannable ? 0 : 2));
            if (!this.mRequestHeaders.isEmpty()) {
                encodeHttpHeaders(contentValues);
            }
            putIfNonNull(contentValues, "title", this.mTitle);
            putIfNonNull(contentValues, "description", this.mDescription);
            putIfNonNull(contentValues, "mimetype", this.mMimeType);
            contentValues.put("visibility", Integer.valueOf(this.mNotificationVisibility));
            contentValues.put("allowed_network_types", Integer.valueOf(this.mAllowedNetworkTypes));
            contentValues.put("allow_roaming", Boolean.valueOf(this.mRoamingAllowed));
            contentValues.put(ContentResolver.SYNC_EXTRAS_DISALLOW_METERED, Boolean.valueOf(this.mMeteredAllowed));
            contentValues.put("flags", Integer.valueOf(this.mFlags));
            contentValues.put("is_visible_in_downloads_ui", Boolean.valueOf(this.mIsVisibleInDownloadsUi));
            return contentValues;
        }

        private void encodeHttpHeaders(ContentValues contentValues) {
            int i = 0;
            for (Pair<String, String> pair : this.mRequestHeaders) {
                contentValues.put("http_header_" + i, ((String) pair.first) + ": " + ((String) pair.second));
                i++;
            }
        }

        private void putIfNonNull(ContentValues contentValues, String str, Object obj) {
            if (obj != null) {
                contentValues.put(str, obj.toString());
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class Query {
        public static final int ORDER_ASCENDING = 1;
        public static final int ORDER_DESCENDING = 2;
        private long[] mIds = null;
        private Integer mStatusFlags = null;
        private String mFilterString = null;
        private String mOrderByColumn = "lastmod";
        private int mOrderDirection = 2;
        private boolean mOnlyIncludeVisibleInDownloadsUi = false;

        public Query setFilterById(long... jArr) {
            this.mIds = jArr;
            return this;
        }

        public Query setFilterByString(String str) {
            this.mFilterString = str;
            return this;
        }

        public Query setFilterByStatus(int i) {
            this.mStatusFlags = Integer.valueOf(i);
            return this;
        }

        public Query setOnlyIncludeVisibleInDownloadsUi(boolean z) {
            this.mOnlyIncludeVisibleInDownloadsUi = z;
            return this;
        }

        public Query orderBy(String str, int i) {
            if (i != 1 && i != 2) {
                throw new IllegalArgumentException("Invalid direction: " + i);
            }
            if (str.equals(DownloadManager.COLUMN_LAST_MODIFIED_TIMESTAMP)) {
                this.mOrderByColumn = "lastmod";
            } else if (str.equals(DownloadManager.COLUMN_TOTAL_SIZE_BYTES)) {
                this.mOrderByColumn = "total_bytes";
            } else {
                throw new IllegalArgumentException("Cannot order by " + str);
            }
            this.mOrderDirection = i;
            return this;
        }

        Cursor runQuery(ContentResolver contentResolver, String[] strArr, Uri uri) {
            ArrayList arrayList = new ArrayList();
            int length = this.mIds == null ? 0 : this.mIds.length;
            if (this.mFilterString != null) {
                length++;
            }
            String[] strArr2 = new String[length];
            if (length > 0) {
                if (this.mIds != null) {
                    arrayList.add(DownloadManager.getWhereClauseForIds(this.mIds));
                    DownloadManager.getWhereArgsForIds(this.mIds, strArr2);
                }
                if (this.mFilterString != null) {
                    arrayList.add("title LIKE ?");
                    strArr2[strArr2.length - 1] = "%" + this.mFilterString + "%";
                }
            }
            if (this.mStatusFlags != null) {
                ArrayList arrayList2 = new ArrayList();
                if ((this.mStatusFlags.intValue() & 1) != 0) {
                    arrayList2.add(statusClause("=", 190));
                }
                if ((this.mStatusFlags.intValue() & 2) != 0) {
                    arrayList2.add(statusClause("=", 192));
                }
                if ((this.mStatusFlags.intValue() & 4) != 0) {
                    arrayList2.add(statusClause("=", 193));
                    arrayList2.add(statusClause("=", 194));
                    arrayList2.add(statusClause("=", 195));
                    arrayList2.add(statusClause("=", 196));
                }
                if ((this.mStatusFlags.intValue() & 8) != 0) {
                    arrayList2.add(statusClause("=", 200));
                }
                if ((this.mStatusFlags.intValue() & 16) != 0) {
                    arrayList2.add("(" + statusClause(">=", 400) + " AND " + statusClause("<", 600) + ")");
                }
                arrayList.add(joinStrings(" OR ", arrayList2));
            }
            if (this.mOnlyIncludeVisibleInDownloadsUi) {
                arrayList.add("is_visible_in_downloads_ui != '0'");
            }
            arrayList.add("deleted != '1'");
            return contentResolver.query(uri, strArr, joinStrings(" AND ", arrayList), strArr2, this.mOrderByColumn + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + (this.mOrderDirection == 1 ? "ASC" : "DESC"));
        }

        private String joinStrings(String str, Iterable<String> iterable) {
            StringBuilder sb = new StringBuilder();
            boolean z = true;
            for (String str2 : iterable) {
                if (!z) {
                    sb.append(str);
                }
                sb.append(str2);
                z = false;
            }
            return sb.toString();
        }

        private String statusClause(String str, int i) {
            return "status" + str + "'" + i + "'";
        }
    }

    public DownloadManager(Context context) {
        this.mResolver = context.getContentResolver();
        this.mPackageName = context.getPackageName();
        this.mAccessFilename = context.getApplicationInfo().targetSdkVersion < 24;
    }

    public void setAccessAllDownloads(boolean z) {
        if (z) {
            this.mBaseUri = Downloads.Impl.ALL_DOWNLOADS_CONTENT_URI;
        } else {
            this.mBaseUri = Downloads.Impl.CONTENT_URI;
        }
    }

    public void setAccessFilename(boolean z) {
        this.mAccessFilename = z;
    }

    public long enqueue(Request request) {
        return Long.parseLong(this.mResolver.insert(Downloads.Impl.CONTENT_URI, request.toContentValues(this.mPackageName)).getLastPathSegment());
    }

    public int markRowDeleted(long... jArr) {
        if (jArr == null || jArr.length == 0) {
            throw new IllegalArgumentException("input param 'ids' can't be null");
        }
        return this.mResolver.delete(this.mBaseUri, getWhereClauseForIds(jArr), getWhereArgsForIds(jArr));
    }

    public int remove(long... jArr) {
        return markRowDeleted(jArr);
    }

    public Cursor query(Query query) {
        Cursor runQuery = query.runQuery(this.mResolver, UNDERLYING_COLUMNS, this.mBaseUri);
        if (runQuery == null) {
            return null;
        }
        return new CursorTranslator(runQuery, this.mBaseUri, this.mAccessFilename);
    }

    public ParcelFileDescriptor openDownloadedFile(long j) throws FileNotFoundException {
        return this.mResolver.openFileDescriptor(getDownloadUri(j), FullBackup.ROOT_TREE_TOKEN);
    }

    public Uri getUriForDownloadedFile(long j) {
        Cursor cursor;
        try {
            cursor = query(new Query().setFilterById(j));
            if (cursor == null) {
                if (cursor != null) {
                    cursor.close();
                }
                return null;
            }
            try {
                if (!cursor.moveToFirst() || 8 != cursor.getInt(cursor.getColumnIndexOrThrow("status"))) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                }
                Uri withAppendedId = ContentUris.withAppendedId(Downloads.Impl.ALL_DOWNLOADS_CONTENT_URI, j);
                if (cursor != null) {
                    cursor.close();
                }
                return withAppendedId;
            } catch (Throwable th) {
                th = th;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
    }

    public String getMimeTypeForDownloadedFile(long j) {
        Cursor cursor;
        try {
            cursor = query(new Query().setFilterById(j));
            if (cursor == null) {
                if (cursor != null) {
                    cursor.close();
                }
                return null;
            }
            try {
                if (!cursor.moveToFirst()) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                }
                String string = cursor.getString(cursor.getColumnIndexOrThrow(COLUMN_MEDIA_TYPE));
                if (cursor != null) {
                    cursor.close();
                }
                return string;
            } catch (Throwable th) {
                th = th;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
    }

    public void restartDownload(long... jArr) {
        Cursor query = query(new Query().setFilterById(jArr));
        try {
            query.moveToFirst();
            while (!query.isAfterLast()) {
                int i = query.getInt(query.getColumnIndex("status"));
                if (i != 8 && i != 16) {
                    throw new IllegalArgumentException("Cannot restart incomplete download: " + query.getLong(query.getColumnIndex(COLUMN_ID)));
                }
                query.moveToNext();
            }
            query.close();
            ContentValues contentValues = new ContentValues();
            contentValues.put("current_bytes", (Integer) 0);
            contentValues.put("total_bytes", (Integer) (-1));
            contentValues.putNull("_data");
            contentValues.put("status", (Integer) 190);
            contentValues.put("numfailed", (Integer) 0);
            this.mResolver.update(this.mBaseUri, contentValues, getWhereClauseForIds(jArr), getWhereArgsForIds(jArr));
        } catch (Throwable th) {
            query.close();
            throw th;
        }
    }

    public void forceDownload(long... jArr) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Integer) 190);
        contentValues.put("control", (Integer) 0);
        contentValues.put("bypass_recommended_size_limit", (Integer) 1);
        this.mResolver.update(this.mBaseUri, contentValues, getWhereClauseForIds(jArr), getWhereArgsForIds(jArr));
    }

    public static Long getMaxBytesOverMobile(Context context) {
        try {
            return Long.valueOf(Settings.Global.getLong(context.getContentResolver(), "download_manager_max_bytes_over_mobile"));
        } catch (Settings.SettingNotFoundException unused) {
            return null;
        }
    }

    public boolean rename(Context context, long j, String str) {
        Cursor cursor;
        String str2;
        if (!FileUtils.isValidFatFilename(str)) {
            throw new SecurityException(str + " is not a valid filename");
        }
        String str3 = null;
        try {
            cursor = query(new Query().setFilterById(j));
            if (cursor == null) {
                if (cursor != null) {
                    cursor.close();
                }
                return false;
            }
            try {
                if (!cursor.moveToFirst()) {
                    str2 = null;
                } else {
                    if (8 != cursor.getInt(cursor.getColumnIndexOrThrow("status"))) {
                        if (cursor != null) {
                            cursor.close();
                        }
                        return false;
                    }
                    str3 = cursor.getString(cursor.getColumnIndexOrThrow("title"));
                    str2 = cursor.getString(cursor.getColumnIndexOrThrow(COLUMN_MEDIA_TYPE));
                }
                if (cursor != null) {
                    cursor.close();
                }
                if (str3 == null || str2 == null) {
                    throw new IllegalStateException("Document with id " + j + " does not exist");
                }
                File externalStoragePublicDirectory = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
                File file = new File(externalStoragePublicDirectory, str3);
                File file2 = new File(externalStoragePublicDirectory, str);
                if (file2.exists()) {
                    throw new IllegalStateException("Already exists " + file2);
                }
                if (!file.renameTo(file2)) {
                    throw new IllegalStateException("Failed to rename to " + file2);
                }
                if (str2.startsWith("image/")) {
                    context.getContentResolver().delete(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, "_data=?", new String[]{file.getAbsolutePath()});
                    Intent intent = new Intent(Intent.ACTION_MEDIA_SCANNER_SCAN_FILE);
                    intent.setData(Uri.fromFile(file2));
                    context.sendBroadcast(intent);
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("title", str);
                contentValues.put("_data", file2.toString());
                contentValues.putNull(COLUMN_MEDIAPROVIDER_URI);
                long[] jArr = {j};
                return this.mResolver.update(this.mBaseUri, contentValues, getWhereClauseForIds(jArr), getWhereArgsForIds(jArr)) == 1;
            } catch (Throwable th) {
                th = th;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
    }

    public static Long getRecommendedMaxBytesOverMobile(Context context) {
        try {
            return Long.valueOf(Settings.Global.getLong(context.getContentResolver(), "download_manager_recommended_max_bytes_over_mobile"));
        } catch (Settings.SettingNotFoundException unused) {
            return null;
        }
    }

    public long addCompletedDownload(String str, String str2, boolean z, String str3, String str4, long j, boolean z2) {
        return addCompletedDownload(str, str2, z, str3, str4, j, z2, false, null, null);
    }

    public long addCompletedDownload(String str, String str2, boolean z, String str3, String str4, long j, boolean z2, Uri uri, Uri uri2) {
        return addCompletedDownload(str, str2, z, str3, str4, j, z2, false, uri, uri2);
    }

    public long addCompletedDownload(String str, String str2, boolean z, String str3, String str4, long j, boolean z2, boolean z3) {
        return addCompletedDownload(str, str2, z, str3, str4, j, z2, z3, null, null);
    }

    public long addCompletedDownload(String str, String str2, boolean z, String str3, String str4, long j, boolean z2, boolean z3, Uri uri, Uri uri2) {
        Request request;
        validateArgumentIsNonEmpty("title", str);
        validateArgumentIsNonEmpty("description", str2);
        validateArgumentIsNonEmpty("path", str4);
        validateArgumentIsNonEmpty("mimeType", str3);
        if (j < 0) {
            throw new IllegalArgumentException(" invalid value for param: totalBytes");
        }
        if (uri != null) {
            request = new Request(uri);
        } else {
            request = new Request(NON_DOWNLOADMANAGER_DOWNLOAD);
        }
        request.setTitle(str).setDescription(str2).setMimeType(str3);
        if (uri2 != null) {
            request.addRequestHeader("Referer", uri2.toString());
        }
        ContentValues contentValues = request.toContentValues(null);
        contentValues.put(COLUMN_DESTINATION, (Integer) 6);
        contentValues.put("_data", str4);
        contentValues.put("status", (Integer) 200);
        contentValues.put("total_bytes", Long.valueOf(j));
        contentValues.put("scanned", Integer.valueOf(z ? 0 : 2));
        contentValues.put("visibility", Integer.valueOf(z2 ? 3 : 2));
        contentValues.put(COLUMN_ALLOW_WRITE, Integer.valueOf(z3 ? 1 : 0));
        Uri insert = this.mResolver.insert(Downloads.Impl.CONTENT_URI, contentValues);
        if (insert == null) {
            return -1L;
        }
        return Long.parseLong(insert.getLastPathSegment());
    }

    private static void validateArgumentIsNonEmpty(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            throw new IllegalArgumentException(str + " can't be null");
        }
    }

    public Uri getDownloadUri(long j) {
        return ContentUris.withAppendedId(Downloads.Impl.ALL_DOWNLOADS_CONTENT_URI, j);
    }

    static String getWhereClauseForIds(long[] jArr) {
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        for (int i = 0; i < jArr.length; i++) {
            if (i > 0) {
                sb.append("OR ");
            }
            sb.append(COLUMN_ID);
            sb.append(" = ? ");
        }
        sb.append(")");
        return sb.toString();
    }

    static String[] getWhereArgsForIds(long[] jArr) {
        return getWhereArgsForIds(jArr, new String[jArr.length]);
    }

    static String[] getWhereArgsForIds(long[] jArr, String[] strArr) {
        for (int i = 0; i < jArr.length; i++) {
            strArr[i] = Long.toString(jArr[i]);
        }
        return strArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class CursorTranslator extends CursorWrapper {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private final boolean mAccessFilename;
        private final Uri mBaseUri;

        private long getErrorCode(int i) {
            if ((400 <= i && i < 488) || (500 <= i && i < 600)) {
                return i;
            }
            switch (i) {
                case 198:
                    return 1006L;
                case 199:
                    return 1007L;
                case 488:
                    return 1009L;
                case 489:
                    return 1008L;
                case 492:
                    return 1001L;
                case 493:
                case 494:
                    return 1002L;
                case 495:
                    return 1004L;
                case 497:
                    return 1005L;
                default:
                    return 1000L;
            }
        }

        private long getPausedReason(int i) {
            switch (i) {
                case 194:
                    return 1L;
                case 195:
                    return 2L;
                case 196:
                    return 3L;
                default:
                    return 4L;
            }
        }

        private int translateStatus(int i) {
            if (i == 190) {
                return 1;
            }
            if (i == 200) {
                return 8;
            }
            switch (i) {
                case 192:
                    return 2;
                case 193:
                case 194:
                case 195:
                case 196:
                    return 4;
                default:
                    return 16;
            }
        }

        public CursorTranslator(Cursor cursor, Uri uri, boolean z) {
            super(cursor);
            this.mBaseUri = uri;
            this.mAccessFilename = z;
        }

        @Override // android.database.CursorWrapper, android.database.Cursor
        public int getInt(int i) {
            return (int) getLong(i);
        }

        @Override // android.database.CursorWrapper, android.database.Cursor
        public long getLong(int i) {
            if (getColumnName(i).equals("reason")) {
                return getReason(super.getInt(getColumnIndex("status")));
            }
            if (getColumnName(i).equals("status")) {
                return translateStatus(super.getInt(getColumnIndex("status")));
            }
            return super.getLong(i);
        }

        @Override // android.database.CursorWrapper, android.database.Cursor
        public String getString(int i) {
            char c;
            String columnName = getColumnName(i);
            int hashCode = columnName.hashCode();
            if (hashCode != -1204869480) {
                if (hashCode == 22072411 && columnName.equals(DownloadManager.COLUMN_LOCAL_FILENAME)) {
                    c = 1;
                }
                c = 65535;
            } else {
                if (columnName.equals(DownloadManager.COLUMN_LOCAL_URI)) {
                    c = 0;
                }
                c = 65535;
            }
            switch (c) {
                case 0:
                    return getLocalUri();
                case 1:
                    if (!this.mAccessFilename) {
                        throw new SecurityException("COLUMN_LOCAL_FILENAME is deprecated; use ContentResolver.openFileDescriptor() instead");
                    }
                    break;
            }
            return super.getString(i);
        }

        private String getLocalUri() {
            long j = getLong(getColumnIndex(DownloadManager.COLUMN_DESTINATION));
            if (j == 4 || j == 0 || j == 6) {
                String string = super.getString(getColumnIndex(DownloadManager.COLUMN_LOCAL_FILENAME));
                if (string == null) {
                    return null;
                }
                return Uri.fromFile(new File(string)).toString();
            }
            return ContentUris.withAppendedId(Downloads.Impl.ALL_DOWNLOADS_CONTENT_URI, getLong(getColumnIndex(DownloadManager.COLUMN_ID))).toString();
        }

        private long getReason(int i) {
            int translateStatus = translateStatus(i);
            if (translateStatus == 4) {
                return getPausedReason(i);
            }
            if (translateStatus != 16) {
                return 0L;
            }
            return getErrorCode(i);
        }
    }
}
