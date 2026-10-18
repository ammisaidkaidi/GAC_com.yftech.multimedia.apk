package android.widget;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.android.internal.widget.IRemoteViewsFactory;
import java.util.HashMap;

/* loaded from: /home/user/work/dex/classes2.dex */
public abstract class RemoteViewsService extends Service {
    private static final String LOG_TAG = "RemoteViewsService";
    private static final HashMap<Intent.FilterComparison, RemoteViewsFactory> sRemoteViewFactories = new HashMap<>();
    private static final Object sLock = new Object();

    /* loaded from: /home/user/work/dex/classes2.dex */
    public interface RemoteViewsFactory {
        int getCount();

        long getItemId(int i);

        RemoteViews getLoadingView();

        RemoteViews getViewAt(int i);

        int getViewTypeCount();

        boolean hasStableIds();

        void onCreate();

        void onDataSetChanged();

        void onDestroy();
    }

    public abstract RemoteViewsFactory onGetViewFactory(Intent intent);

    /* loaded from: /home/user/work/dex/classes2.dex */
    private static class RemoteViewsFactoryAdapter extends IRemoteViewsFactory.Stub {
        private RemoteViewsFactory mFactory;
        private boolean mIsCreated;

        public RemoteViewsFactoryAdapter(RemoteViewsFactory remoteViewsFactory, boolean z) {
            this.mFactory = remoteViewsFactory;
            this.mIsCreated = z;
        }

        public synchronized boolean isCreated() {
            return this.mIsCreated;
        }

        public synchronized void onDataSetChanged() {
            try {
                this.mFactory.onDataSetChanged();
            } catch (Exception e) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), e);
            }
        }

        public synchronized void onDataSetChangedAsync() {
            onDataSetChanged();
        }

        public synchronized int getCount() {
            int i;
            i = 0;
            try {
                i = this.mFactory.getCount();
            } catch (Exception e) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), e);
            }
            return i;
        }

        public synchronized RemoteViews getViewAt(int i) {
            RemoteViews remoteViews;
            RemoteViews remoteViews2 = null;
            try {
                remoteViews = this.mFactory.getViewAt(i);
                if (remoteViews != null) {
                    try {
                        remoteViews.setIsWidgetCollectionChild(true);
                    } catch (Exception e) {
                        remoteViews2 = remoteViews;
                        e = e;
                        Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), e);
                        remoteViews = remoteViews2;
                        return remoteViews;
                    }
                }
            } catch (Exception e2) {
                e = e2;
            }
            return remoteViews;
        }

        public synchronized RemoteViews getLoadingView() {
            RemoteViews remoteViews;
            remoteViews = null;
            try {
                remoteViews = this.mFactory.getLoadingView();
            } catch (Exception e) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), e);
            }
            return remoteViews;
        }

        public synchronized int getViewTypeCount() {
            int i;
            i = 0;
            try {
                i = this.mFactory.getViewTypeCount();
            } catch (Exception e) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), e);
            }
            return i;
        }

        public synchronized long getItemId(int i) {
            long j;
            j = 0;
            try {
                j = this.mFactory.getItemId(i);
            } catch (Exception e) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), e);
            }
            return j;
        }

        public synchronized boolean hasStableIds() {
            boolean z;
            z = false;
            try {
                z = this.mFactory.hasStableIds();
            } catch (Exception e) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), e);
            }
            return z;
        }

        public void onDestroy(Intent intent) {
            synchronized (RemoteViewsService.sLock) {
                Intent.FilterComparison filterComparison = new Intent.FilterComparison(intent);
                if (RemoteViewsService.sRemoteViewFactories.containsKey(filterComparison)) {
                    try {
                        ((RemoteViewsFactory) RemoteViewsService.sRemoteViewFactories.get(filterComparison)).onDestroy();
                    } catch (Exception e) {
                        Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), e);
                    }
                    RemoteViewsService.sRemoteViewFactories.remove(filterComparison);
                }
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        RemoteViewsFactory remoteViewsFactory;
        boolean z;
        IRemoteViewsFactory.Stub remoteViewsFactoryAdapter;
        synchronized (sLock) {
            Intent.FilterComparison filterComparison = new Intent.FilterComparison(intent);
            if (!sRemoteViewFactories.containsKey(filterComparison)) {
                remoteViewsFactory = onGetViewFactory(intent);
                sRemoteViewFactories.put(filterComparison, remoteViewsFactory);
                remoteViewsFactory.onCreate();
                z = false;
            } else {
                remoteViewsFactory = sRemoteViewFactories.get(filterComparison);
                z = true;
            }
            remoteViewsFactoryAdapter = new RemoteViewsFactoryAdapter(remoteViewsFactory, z);
        }
        return remoteViewsFactoryAdapter;
    }
}
