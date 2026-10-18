package android.media;

import android.content.ContentProviderClient;
import android.content.ContentValues;
import android.net.Uri;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class MediaInserter {
    private static final boolean ATC_AOSP_ENHANCEMENT = SystemProperties.getBoolean("ro.atc.aosp_enhancement", false);
    private static final String TAG = "MediaInserter";
    private final int mBufferSizePerUri;
    private final ContentProviderClient mProvider;
    private boolean mDebug = SystemProperties.getBoolean("persist.mediascanner.log.on", false);
    private final HashMap<Uri, List<ContentValues>> mRowMap = new HashMap<>();
    private final HashMap<Uri, List<ContentValues>> mPriorityRowMap = new HashMap<>();
    private final Object mInsertLock = new Object();

    public MediaInserter(ContentProviderClient contentProviderClient, int i) {
        this.mProvider = contentProviderClient;
        this.mBufferSizePerUri = i;
    }

    public void insert(Uri uri, ContentValues contentValues) throws RemoteException {
        insert(uri, contentValues, false);
    }

    public void insertwithPriority(Uri uri, ContentValues contentValues) throws RemoteException {
        insert(uri, contentValues, true);
    }

    private void insert(Uri uri, ContentValues contentValues, boolean z) throws RemoteException {
        HashMap<Uri, List<ContentValues>> hashMap = z ? this.mPriorityRowMap : this.mRowMap;
        List<ContentValues> list = hashMap.get(uri);
        if (list == null) {
            list = new ArrayList<>();
            hashMap.put(uri, list);
        }
        list.add(new ContentValues(contentValues));
        if (list.size() >= this.mBufferSizePerUri) {
            flushAllPriority();
            flush(uri, list);
        }
    }

    public void flushAll() throws RemoteException {
        List<ContentValues> list;
        long currentTimeMillis = System.currentTimeMillis();
        flushAllPriority();
        int i = 0;
        for (Uri uri : this.mRowMap.keySet()) {
            if (ATC_AOSP_ENHANCEMENT) {
                synchronized (this.mInsertLock) {
                    list = this.mRowMap.get(uri);
                }
            } else {
                list = this.mRowMap.get(uri);
            }
            if (ATC_AOSP_ENHANCEMENT && this.mDebug) {
                i += list.size();
            }
            flush(uri, list);
        }
        this.mRowMap.clear();
        if (ATC_AOSP_ENHANCEMENT && this.mDebug) {
            Log.d(TAG, "flushAll finished, size:" + i + ", cost:" + (System.currentTimeMillis() - currentTimeMillis) + " ms \n");
        }
    }

    private void flushAllPriority() throws RemoteException {
        int i = 0;
        for (Uri uri : this.mPriorityRowMap.keySet()) {
            List<ContentValues> list = this.mPriorityRowMap.get(uri);
            if (ATC_AOSP_ENHANCEMENT && this.mDebug) {
                i += list.size();
            }
            flush(uri, list);
        }
        this.mPriorityRowMap.clear();
        if (ATC_AOSP_ENHANCEMENT && this.mDebug) {
            System.currentTimeMillis();
            Log.d(TAG, "flushAllPriority, size:" + i);
        }
    }

    private void flush(Uri uri, List<ContentValues> list) throws RemoteException {
        if (list.isEmpty()) {
            return;
        }
        if (ATC_AOSP_ENHANCEMENT) {
            synchronized (this.mInsertLock) {
                this.mProvider.bulkInsert(uri, (ContentValues[]) list.toArray(new ContentValues[list.size()]));
                list.clear();
            }
            return;
        }
        this.mProvider.bulkInsert(uri, (ContentValues[]) list.toArray(new ContentValues[list.size()]));
        list.clear();
    }
}
