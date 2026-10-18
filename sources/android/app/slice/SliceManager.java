package android.app.slice;

import android.accounts.AccountManager;
import android.app.DownloadManager;
import android.app.slice.ISliceManager;
import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.UserHandle;
import android.util.ArraySet;
import android.util.Log;
import com.android.internal.util.Preconditions;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;

/* loaded from: /home/user/work/dex/classes.dex */
public class SliceManager {
    public static final String ACTION_REQUEST_SLICE_PERMISSION = "com.android.intent.action.REQUEST_SLICE_PERMISSION";
    public static final String CATEGORY_SLICE = "android.app.slice.category.SLICE";
    public static final String SLICE_METADATA_KEY = "android.metadata.SLICE_URI";
    private static final String TAG = "SliceManager";
    private final Context mContext;
    private final IBinder mToken = new Binder();
    private final ISliceManager mService = ISliceManager.Stub.asInterface(ServiceManager.getServiceOrThrow("slice"));

    public SliceManager(Context context, Handler handler) throws ServiceManager.ServiceNotFoundException {
        this.mContext = context;
    }

    public void pinSlice(Uri uri, Set<SliceSpec> set) {
        try {
            this.mService.pinSlice(this.mContext.getPackageName(), uri, (SliceSpec[]) set.toArray(new SliceSpec[set.size()]), this.mToken);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @Deprecated
    public void pinSlice(Uri uri, List<SliceSpec> list) {
        pinSlice(uri, new ArraySet(list));
    }

    public void unpinSlice(Uri uri) {
        try {
            this.mService.unpinSlice(this.mContext.getPackageName(), uri, this.mToken);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public boolean hasSliceAccess() {
        try {
            return this.mService.hasSliceAccess(this.mContext.getPackageName());
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public Set<SliceSpec> getPinnedSpecs(Uri uri) {
        try {
            return new ArraySet(Arrays.asList(this.mService.getPinnedSpecs(uri, this.mContext.getPackageName())));
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public List<Uri> getPinnedSlices() {
        try {
            return Arrays.asList(this.mService.getPinnedSlices(this.mContext.getPackageName()));
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public Collection<Uri> getSliceDescendants(Uri uri) {
        try {
            ContentProviderClient acquireUnstableContentProviderClient = this.mContext.getContentResolver().acquireUnstableContentProviderClient(uri);
            Throwable th = null;
            try {
                try {
                    Bundle bundle = new Bundle();
                    bundle.putParcelable(SliceProvider.EXTRA_BIND_URI, uri);
                    return acquireUnstableContentProviderClient.call(SliceProvider.METHOD_GET_DESCENDANTS, null, bundle).getParcelableArrayList(SliceProvider.EXTRA_SLICE_DESCENDANTS);
                } finally {
                }
            } finally {
                if (acquireUnstableContentProviderClient != null) {
                    $closeResource(th, acquireUnstableContentProviderClient);
                }
            }
        } catch (RemoteException e) {
            Log.e(TAG, "Unable to get slice descendants", e);
            return Collections.emptyList();
        }
    }

    private static /* synthetic */ void $closeResource(Throwable th, AutoCloseable autoCloseable) {
        if (th == null) {
            autoCloseable.close();
            return;
        }
        try {
            autoCloseable.close();
        } catch (Throwable th2) {
            th.addSuppressed(th2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x006c A[Catch: RemoteException -> 0x0070, TRY_ENTER, TryCatch #0 {RemoteException -> 0x0070, blocks: (B:3:0x000d, B:9:0x0026, B:15:0x0052, B:19:0x0061, B:28:0x006c, B:29:0x006f), top: B:2:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:30:? A[Catch: RemoteException -> 0x0070, SYNTHETIC, TRY_LEAVE, TryCatch #0 {RemoteException -> 0x0070, blocks: (B:3:0x000d, B:9:0x0026, B:15:0x0052, B:19:0x0061, B:28:0x006c, B:29:0x006f), top: B:2:0x000d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Slice bindSlice(Uri uri, Set<SliceSpec> set) {
        Throwable th;
        Preconditions.checkNotNull(uri, DownloadManager.COLUMN_URI);
        try {
            ContentProviderClient acquireUnstableContentProviderClient = this.mContext.getContentResolver().acquireUnstableContentProviderClient(uri);
            try {
                if (acquireUnstableContentProviderClient == null) {
                    Log.w(TAG, String.format("Unknown URI: %s", uri));
                    if (acquireUnstableContentProviderClient != null) {
                        $closeResource(null, acquireUnstableContentProviderClient);
                    }
                    return null;
                }
                Bundle bundle = new Bundle();
                bundle.putParcelable(SliceProvider.EXTRA_BIND_URI, uri);
                bundle.putParcelableArrayList(SliceProvider.EXTRA_SUPPORTED_SPECS, new ArrayList<>(set));
                Bundle call = acquireUnstableContentProviderClient.call(SliceProvider.METHOD_SLICE, null, bundle);
                Bundle.setDefusable(call, true);
                if (call == null) {
                    if (acquireUnstableContentProviderClient != null) {
                        $closeResource(null, acquireUnstableContentProviderClient);
                    }
                    return null;
                }
                Slice slice = (Slice) call.getParcelable("slice");
                if (acquireUnstableContentProviderClient != null) {
                    $closeResource(null, acquireUnstableContentProviderClient);
                }
                return slice;
            } catch (Throwable th2) {
                th = th2;
                th = null;
                if (acquireUnstableContentProviderClient != null) {
                }
            }
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Deprecated
    public Slice bindSlice(Uri uri, List<SliceSpec> list) {
        return bindSlice(uri, new ArraySet(list));
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x007a A[Catch: RemoteException -> 0x007e, TRY_ENTER, TryCatch #2 {RemoteException -> 0x007e, blocks: (B:10:0x0028, B:15:0x0041, B:20:0x0060, B:24:0x006f, B:29:0x007a, B:30:0x007d), top: B:9:0x0028 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[Catch: RemoteException -> 0x007e, SYNTHETIC, TRY_LEAVE, TryCatch #2 {RemoteException -> 0x007e, blocks: (B:10:0x0028, B:15:0x0041, B:20:0x0060, B:24:0x006f, B:29:0x007a, B:30:0x007d), top: B:9:0x0028 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Uri mapIntentToUri(Intent intent) {
        Throwable th;
        Throwable th2;
        ContentResolver contentResolver = this.mContext.getContentResolver();
        Uri resolveStatic = resolveStatic(intent, contentResolver);
        if (resolveStatic != null) {
            return resolveStatic;
        }
        String authority = getAuthority(intent);
        if (authority == null) {
            return null;
        }
        Uri build = new Uri.Builder().scheme("content").authority(authority).build();
        try {
            ContentProviderClient acquireUnstableContentProviderClient = contentResolver.acquireUnstableContentProviderClient(build);
            try {
                if (acquireUnstableContentProviderClient == null) {
                    Log.w(TAG, String.format("Unknown URI: %s", build));
                    if (acquireUnstableContentProviderClient != null) {
                        $closeResource(null, acquireUnstableContentProviderClient);
                    }
                    return null;
                }
                Bundle bundle = new Bundle();
                bundle.putParcelable(SliceProvider.EXTRA_INTENT, intent);
                Bundle call = acquireUnstableContentProviderClient.call(SliceProvider.METHOD_MAP_ONLY_INTENT, null, bundle);
                if (call == null) {
                    if (acquireUnstableContentProviderClient != null) {
                        $closeResource(null, acquireUnstableContentProviderClient);
                    }
                    return null;
                }
                Uri uri = (Uri) call.getParcelable("slice");
                if (acquireUnstableContentProviderClient != null) {
                    $closeResource(null, acquireUnstableContentProviderClient);
                }
                return uri;
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    th = th3;
                    th2 = th4;
                    if (acquireUnstableContentProviderClient != null) {
                        throw th2;
                    }
                    $closeResource(th, acquireUnstableContentProviderClient);
                    throw th2;
                }
            }
        } catch (RemoteException unused) {
            return null;
        }
    }

    private String getAuthority(Intent intent) {
        Intent intent2 = new Intent(intent);
        if (!intent2.hasCategory(CATEGORY_SLICE)) {
            intent2.addCategory(CATEGORY_SLICE);
        }
        List<ResolveInfo> queryIntentContentProviders = this.mContext.getPackageManager().queryIntentContentProviders(intent2, 0);
        if (queryIntentContentProviders == null || queryIntentContentProviders.isEmpty()) {
            return null;
        }
        return queryIntentContentProviders.get(0).providerInfo.authority;
    }

    private Uri resolveStatic(Intent intent, ContentResolver contentResolver) {
        Preconditions.checkNotNull(intent, AccountManager.KEY_INTENT);
        Preconditions.checkArgument((intent.getComponent() == null && intent.getPackage() == null && intent.getData() == null) ? false : true, "Slice intent must be explicit %s", new Object[]{intent});
        Uri data = intent.getData();
        if (data != null && SliceProvider.SLICE_TYPE.equals(contentResolver.getType(data))) {
            return data;
        }
        ResolveInfo resolveActivity = this.mContext.getPackageManager().resolveActivity(intent, 128);
        if (resolveActivity == null || resolveActivity.activityInfo == null || resolveActivity.activityInfo.metaData == null || !resolveActivity.activityInfo.metaData.containsKey(SLICE_METADATA_KEY)) {
            return null;
        }
        return Uri.parse(resolveActivity.activityInfo.metaData.getString(SLICE_METADATA_KEY));
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00a2 A[Catch: RemoteException -> 0x00a6, TRY_ENTER, TryCatch #3 {RemoteException -> 0x00a6, blocks: (B:18:0x0052, B:23:0x0069, B:28:0x0088, B:32:0x0097, B:41:0x00a2, B:42:0x00a5), top: B:17:0x0052 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:? A[Catch: RemoteException -> 0x00a6, SYNTHETIC, TRY_LEAVE, TryCatch #3 {RemoteException -> 0x00a6, blocks: (B:18:0x0052, B:23:0x0069, B:28:0x0088, B:32:0x0097, B:41:0x00a2, B:42:0x00a5), top: B:17:0x0052 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Slice bindSlice(Intent intent, Set<SliceSpec> set) {
        Throwable th;
        Preconditions.checkNotNull(intent, AccountManager.KEY_INTENT);
        Preconditions.checkArgument((intent.getComponent() == null && intent.getPackage() == null && intent.getData() == null) ? false : true, "Slice intent must be explicit %s", new Object[]{intent});
        ContentResolver contentResolver = this.mContext.getContentResolver();
        Uri resolveStatic = resolveStatic(intent, contentResolver);
        if (resolveStatic != null) {
            return bindSlice(resolveStatic, set);
        }
        String authority = getAuthority(intent);
        if (authority == null) {
            return null;
        }
        Uri build = new Uri.Builder().scheme("content").authority(authority).build();
        try {
            ContentProviderClient acquireUnstableContentProviderClient = contentResolver.acquireUnstableContentProviderClient(build);
            try {
                if (acquireUnstableContentProviderClient == null) {
                    Log.w(TAG, String.format("Unknown URI: %s", build));
                    if (acquireUnstableContentProviderClient != null) {
                        $closeResource(null, acquireUnstableContentProviderClient);
                    }
                    return null;
                }
                Bundle bundle = new Bundle();
                bundle.putParcelable(SliceProvider.EXTRA_INTENT, intent);
                Bundle call = acquireUnstableContentProviderClient.call(SliceProvider.METHOD_MAP_INTENT, null, bundle);
                if (call == null) {
                    if (acquireUnstableContentProviderClient != null) {
                        $closeResource(null, acquireUnstableContentProviderClient);
                    }
                    return null;
                }
                Slice slice = (Slice) call.getParcelable("slice");
                if (acquireUnstableContentProviderClient != null) {
                    $closeResource(null, acquireUnstableContentProviderClient);
                }
                return slice;
            } catch (Throwable th2) {
                th = th2;
                th = null;
                if (acquireUnstableContentProviderClient != null) {
                }
            }
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Deprecated
    public Slice bindSlice(Intent intent, List<SliceSpec> list) {
        return bindSlice(intent, new ArraySet(list));
    }

    public int checkSlicePermission(Uri uri, int i, int i2) {
        try {
            return this.mService.checkSlicePermission(uri, null, i, i2, null);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void grantSlicePermission(String str, Uri uri) {
        try {
            this.mService.grantSlicePermission(this.mContext.getPackageName(), str, uri);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void revokeSlicePermission(String str, Uri uri) {
        try {
            this.mService.revokeSlicePermission(this.mContext.getPackageName(), str, uri);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void enforceSlicePermission(Uri uri, String str, int i, int i2, String[] strArr) {
        try {
            if (UserHandle.isSameApp(i2, Process.myUid())) {
                return;
            }
            if (str == null) {
                throw new SecurityException("No pkg specified");
            }
            if (this.mService.checkSlicePermission(uri, str, i, i2, strArr) != -1) {
                return;
            }
            throw new SecurityException("User " + i2 + " does not have slice permission for " + uri + ".");
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void grantPermissionFromUser(Uri uri, String str, boolean z) {
        try {
            this.mService.grantPermissionFromUser(uri, str, this.mContext.getPackageName(), z);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }
}
