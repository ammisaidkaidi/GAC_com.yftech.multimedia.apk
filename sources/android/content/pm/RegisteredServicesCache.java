package android.content.pm;

import android.Manifest;
import android.accounts.GrantCredentialsPermissionActivity;
import android.app.Notification;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.media.tv.TvContract;
import android.os.Environment;
import android.os.Handler;
import android.os.UserHandle;
import android.os.UserManager;
import android.util.AtomicFile;
import android.util.AttributeSet;
import android.util.IntArray;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.annotations.VisibleForTesting;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.FastXmlSerializer;
import com.google.android.collect.Lists;
import com.google.android.collect.Maps;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import libcore.io.IoUtils;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class RegisteredServicesCache<V> {
    private static final boolean DEBUG = false;
    protected static final String REGISTERED_SERVICES_DIR = "registered_services";
    private static final String TAG = "PackageManager";
    private final String mAttributesName;
    public final Context mContext;
    private Handler mHandler;
    private final String mInterfaceName;
    private RegisteredServicesCacheListener<V> mListener;
    private final String mMetaDataName;
    private final XmlSerializerAndParser<V> mSerializerAndParser;
    protected final Object mServicesLock = new Object();

    @GuardedBy("mServicesLock")
    private final SparseArray<UserServices<V>> mUserServices = new SparseArray<>(2);
    private final BroadcastReceiver mPackageReceiver = new BroadcastReceiver() { // from class: android.content.pm.RegisteredServicesCache.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int intExtra = intent.getIntExtra(Intent.EXTRA_UID, -1);
            if (intExtra != -1) {
                RegisteredServicesCache.this.handlePackageEvent(intent, UserHandle.getUserId(intExtra));
            }
        }
    };
    private final BroadcastReceiver mExternalReceiver = new BroadcastReceiver() { // from class: android.content.pm.RegisteredServicesCache.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            RegisteredServicesCache.this.handlePackageEvent(intent, 0);
        }
    };
    private final BroadcastReceiver mUserRemovedReceiver = new BroadcastReceiver() { // from class: android.content.pm.RegisteredServicesCache.3
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            RegisteredServicesCache.this.onUserRemoved(intent.getIntExtra(Intent.EXTRA_USER_HANDLE, -1));
        }
    };

    /* JADX INFO: Access modifiers changed from: protected */
    public void onServicesChangedLocked(int i) {
    }

    public abstract V parseServiceAttributes(Resources resources, String str, AttributeSet attributeSet);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class UserServices<V> {

        @GuardedBy("mServicesLock")
        boolean mBindInstantServiceAllowed;

        @GuardedBy("mServicesLock")
        boolean mPersistentServicesFileDidNotExist;

        @GuardedBy("mServicesLock")
        final Map<V, Integer> persistentServices;

        @GuardedBy("mServicesLock")
        Map<V, ServiceInfo<V>> services;

        private UserServices() {
            this.persistentServices = Maps.newHashMap();
            this.services = null;
            this.mPersistentServicesFileDidNotExist = true;
            this.mBindInstantServiceAllowed = false;
        }
    }

    @GuardedBy("mServicesLock")
    private UserServices<V> findOrCreateUserLocked(int i) {
        return findOrCreateUserLocked(i, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [android.content.pm.RegisteredServicesCache$1] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.AutoCloseable] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    @GuardedBy("mServicesLock")
    private UserServices<V> findOrCreateUserLocked(int i, boolean z) {
        UserInfo user;
        FileInputStream openRead;
        UserServices<V> userServices = this.mUserServices.get(i);
        if (userServices == null) {
            ?? r1 = 0;
            r1 = 0;
            FileInputStream fileInputStream = null;
            userServices = new UserServices<>();
            this.mUserServices.put(i, userServices);
            if (z && this.mSerializerAndParser != null && (user = getUser(i)) != null) {
                AtomicFile createFileForUser = createFileForUser(user.id);
                try {
                    if (createFileForUser.getBaseFile().exists()) {
                        try {
                            openRead = createFileForUser.openRead();
                        } catch (Exception e) {
                            e = e;
                        }
                        try {
                            readPersistentServicesLocked(openRead);
                            IoUtils.closeQuietly(openRead);
                        } catch (Exception e2) {
                            e = e2;
                            fileInputStream = openRead;
                            Log.w(TAG, "Error reading persistent services for user " + user.id, e);
                            IoUtils.closeQuietly(fileInputStream);
                            r1 = fileInputStream;
                            return userServices;
                        } catch (Throwable th) {
                            th = th;
                            r1 = openRead;
                            IoUtils.closeQuietly((AutoCloseable) r1);
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        }
        return userServices;
    }

    public RegisteredServicesCache(Context context, String str, String str2, String str3, XmlSerializerAndParser<V> xmlSerializerAndParser) {
        this.mContext = context;
        this.mInterfaceName = str;
        this.mMetaDataName = str2;
        this.mAttributesName = str3;
        this.mSerializerAndParser = xmlSerializerAndParser;
        migrateIfNecessaryLocked();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(Intent.ACTION_PACKAGE_ADDED);
        intentFilter.addAction(Intent.ACTION_PACKAGE_CHANGED);
        intentFilter.addAction(Intent.ACTION_PACKAGE_REMOVED);
        intentFilter.addDataScheme(TvContract.PARAM_PACKAGE);
        this.mContext.registerReceiverAsUser(this.mPackageReceiver, UserHandle.ALL, intentFilter, null, null);
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction(Intent.ACTION_EXTERNAL_APPLICATIONS_AVAILABLE);
        intentFilter2.addAction(Intent.ACTION_EXTERNAL_APPLICATIONS_UNAVAILABLE);
        this.mContext.registerReceiver(this.mExternalReceiver, intentFilter2);
        IntentFilter intentFilter3 = new IntentFilter();
        intentFilter2.addAction(Intent.ACTION_USER_REMOVED);
        this.mContext.registerReceiver(this.mUserRemovedReceiver, intentFilter3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handlePackageEvent(Intent intent, int i) {
        String action = intent.getAction();
        boolean z = Intent.ACTION_PACKAGE_REMOVED.equals(action) || Intent.ACTION_EXTERNAL_APPLICATIONS_UNAVAILABLE.equals(action);
        boolean booleanExtra = intent.getBooleanExtra(Intent.EXTRA_REPLACING, false);
        if (z && booleanExtra) {
            return;
        }
        int[] iArr = null;
        if (Intent.ACTION_EXTERNAL_APPLICATIONS_AVAILABLE.equals(action) || Intent.ACTION_EXTERNAL_APPLICATIONS_UNAVAILABLE.equals(action)) {
            iArr = intent.getIntArrayExtra(Intent.EXTRA_CHANGED_UID_LIST);
        } else {
            int intExtra = intent.getIntExtra(Intent.EXTRA_UID, -1);
            if (intExtra > 0) {
                iArr = new int[]{intExtra};
            }
        }
        generateServicesMap(iArr, i);
    }

    public void invalidateCache(int i) {
        synchronized (this.mServicesLock) {
            findOrCreateUserLocked(i).services = null;
            onServicesChangedLocked(i);
        }
    }

    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr, int i) {
        synchronized (this.mServicesLock) {
            UserServices<V> findOrCreateUserLocked = findOrCreateUserLocked(i);
            if (findOrCreateUserLocked.services != null) {
                printWriter.println("RegisteredServicesCache: " + findOrCreateUserLocked.services.size() + " services");
                Iterator<ServiceInfo<V>> it = findOrCreateUserLocked.services.values().iterator();
                while (it.hasNext()) {
                    printWriter.println("  " + it.next());
                }
            } else {
                printWriter.println("RegisteredServicesCache: services not loaded");
            }
        }
    }

    public RegisteredServicesCacheListener<V> getListener() {
        RegisteredServicesCacheListener<V> registeredServicesCacheListener;
        synchronized (this) {
            registeredServicesCacheListener = this.mListener;
        }
        return registeredServicesCacheListener;
    }

    public void setListener(RegisteredServicesCacheListener<V> registeredServicesCacheListener, Handler handler) {
        if (handler == null) {
            handler = new Handler(this.mContext.getMainLooper());
        }
        synchronized (this) {
            this.mHandler = handler;
            this.mListener = registeredServicesCacheListener;
        }
    }

    private void notifyListener(final V v, final int i, final boolean z) {
        final RegisteredServicesCacheListener<V> registeredServicesCacheListener;
        Handler handler;
        synchronized (this) {
            registeredServicesCacheListener = this.mListener;
            handler = this.mHandler;
        }
        if (registeredServicesCacheListener == null) {
            return;
        }
        handler.post(new Runnable() { // from class: android.content.pm.RegisteredServicesCache.4
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                registeredServicesCacheListener.onServiceChanged(v, i, z);
            }
        });
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class ServiceInfo<V> {
        public final ComponentInfo componentInfo;
        public final ComponentName componentName;
        public final V type;
        public final int uid;

        public ServiceInfo(V v, ComponentInfo componentInfo, ComponentName componentName) {
            this.type = v;
            this.componentInfo = componentInfo;
            this.componentName = componentName;
            this.uid = componentInfo != null ? componentInfo.applicationInfo.uid : -1;
        }

        public String toString() {
            return "ServiceInfo: " + this.type + ", " + this.componentName + ", uid " + this.uid;
        }
    }

    public ServiceInfo<V> getServiceInfo(V v, int i) {
        ServiceInfo<V> serviceInfo;
        synchronized (this.mServicesLock) {
            UserServices<V> findOrCreateUserLocked = findOrCreateUserLocked(i);
            if (findOrCreateUserLocked.services == null) {
                generateServicesMap(null, i);
            }
            serviceInfo = findOrCreateUserLocked.services.get(v);
        }
        return serviceInfo;
    }

    public Collection<ServiceInfo<V>> getAllServices(int i) {
        Collection<ServiceInfo<V>> unmodifiableCollection;
        synchronized (this.mServicesLock) {
            UserServices<V> findOrCreateUserLocked = findOrCreateUserLocked(i);
            if (findOrCreateUserLocked.services == null) {
                generateServicesMap(null, i);
            }
            unmodifiableCollection = Collections.unmodifiableCollection(new ArrayList(findOrCreateUserLocked.services.values()));
        }
        return unmodifiableCollection;
    }

    public void updateServices(int i) {
        ApplicationInfo applicationInfo;
        synchronized (this.mServicesLock) {
            UserServices<V> findOrCreateUserLocked = findOrCreateUserLocked(i);
            if (findOrCreateUserLocked.services == null) {
                return;
            }
            IntArray intArray = null;
            for (ServiceInfo serviceInfo : new ArrayList(findOrCreateUserLocked.services.values())) {
                long j = serviceInfo.componentInfo.applicationInfo.versionCode;
                try {
                    applicationInfo = this.mContext.getPackageManager().getApplicationInfoAsUser(serviceInfo.componentInfo.packageName, 0, i);
                } catch (PackageManager.NameNotFoundException unused) {
                    applicationInfo = null;
                }
                if (applicationInfo == null || applicationInfo.versionCode != j) {
                    if (intArray == null) {
                        intArray = new IntArray();
                    }
                    intArray.add(serviceInfo.uid);
                }
            }
            if (intArray == null || intArray.size() <= 0) {
                return;
            }
            generateServicesMap(intArray.toArray(), i);
        }
    }

    public boolean getBindInstantServiceAllowed(int i) {
        boolean z;
        this.mContext.enforceCallingOrSelfPermission(Manifest.permission.MANAGE_BIND_INSTANT_SERVICE, "getBindInstantServiceAllowed");
        synchronized (this.mServicesLock) {
            z = findOrCreateUserLocked(i).mBindInstantServiceAllowed;
        }
        return z;
    }

    public void setBindInstantServiceAllowed(int i, boolean z) {
        this.mContext.enforceCallingOrSelfPermission(Manifest.permission.MANAGE_BIND_INSTANT_SERVICE, "setBindInstantServiceAllowed");
        synchronized (this.mServicesLock) {
            findOrCreateUserLocked(i).mBindInstantServiceAllowed = z;
        }
    }

    @VisibleForTesting
    protected boolean inSystemImage(int i) {
        String[] packagesForUid = this.mContext.getPackageManager().getPackagesForUid(i);
        if (packagesForUid != null) {
            for (String str : packagesForUid) {
                try {
                    if ((this.mContext.getPackageManager().getPackageInfo(str, 0).applicationInfo.flags & 1) != 0) {
                        return true;
                    }
                } catch (PackageManager.NameNotFoundException unused) {
                    return false;
                }
            }
        }
        return false;
    }

    @VisibleForTesting
    protected List<ResolveInfo> queryIntentServices(int i) {
        int i2;
        PackageManager packageManager = this.mContext.getPackageManager();
        synchronized (this.mServicesLock) {
            i2 = findOrCreateUserLocked(i).mBindInstantServiceAllowed ? 9175168 : 786560;
        }
        return packageManager.queryIntentServicesAsUser(new Intent(this.mInterfaceName), i2, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void generateServicesMap(int[] iArr, int i) {
        ArrayList arrayList = new ArrayList();
        for (ResolveInfo resolveInfo : queryIntentServices(i)) {
            try {
                ServiceInfo parseServiceInfo = parseServiceInfo(resolveInfo);
                if (parseServiceInfo == null) {
                    Log.w(TAG, "Unable to load service info " + resolveInfo.toString());
                } else {
                    arrayList.add(parseServiceInfo);
                }
            } catch (IOException | XmlPullParserException e) {
                Log.w(TAG, "Unable to load service info " + resolveInfo.toString(), e);
            }
        }
        synchronized (this.mServicesLock) {
            UserServices findOrCreateUserLocked = findOrCreateUserLocked(i);
            boolean z = findOrCreateUserLocked.services == null;
            if (z) {
                findOrCreateUserLocked.services = Maps.newHashMap();
            }
            new StringBuilder();
            Iterator it = arrayList.iterator();
            boolean z2 = false;
            while (it.hasNext()) {
                ServiceInfo<V> serviceInfo = (ServiceInfo) it.next();
                Integer num = findOrCreateUserLocked.persistentServices.get(serviceInfo.type);
                if (num == null) {
                    findOrCreateUserLocked.services.put(serviceInfo.type, serviceInfo);
                    findOrCreateUserLocked.persistentServices.put(serviceInfo.type, Integer.valueOf(serviceInfo.uid));
                    if (!findOrCreateUserLocked.mPersistentServicesFileDidNotExist || !z) {
                        notifyListener(serviceInfo.type, i, false);
                    }
                } else if (num.intValue() == serviceInfo.uid) {
                    findOrCreateUserLocked.services.put(serviceInfo.type, serviceInfo);
                } else if (inSystemImage(serviceInfo.uid) || !containsTypeAndUid(arrayList, serviceInfo.type, num.intValue())) {
                    findOrCreateUserLocked.services.put(serviceInfo.type, serviceInfo);
                    findOrCreateUserLocked.persistentServices.put(serviceInfo.type, Integer.valueOf(serviceInfo.uid));
                    notifyListener(serviceInfo.type, i, false);
                }
                z2 = true;
            }
            ArrayList newArrayList = Lists.newArrayList();
            for (V v : findOrCreateUserLocked.persistentServices.keySet()) {
                if (!containsType(arrayList, v) && containsUid(iArr, findOrCreateUserLocked.persistentServices.get(v).intValue())) {
                    newArrayList.add(v);
                }
            }
            Iterator it2 = newArrayList.iterator();
            while (it2.hasNext()) {
                Object next = it2.next();
                findOrCreateUserLocked.persistentServices.remove(next);
                findOrCreateUserLocked.services.remove(next);
                notifyListener(next, i, true);
                z2 = true;
            }
            if (z2) {
                onServicesChangedLocked(i);
                writePersistentServicesLocked(findOrCreateUserLocked, i);
            }
        }
    }

    private boolean containsUid(int[] iArr, int i) {
        return iArr == null || ArrayUtils.contains(iArr, i);
    }

    private boolean containsType(ArrayList<ServiceInfo<V>> arrayList, V v) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (arrayList.get(i).type.equals(v)) {
                return true;
            }
        }
        return false;
    }

    private boolean containsTypeAndUid(ArrayList<ServiceInfo<V>> arrayList, V v, int i) {
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            ServiceInfo<V> serviceInfo = arrayList.get(i2);
            if (serviceInfo.type.equals(v) && serviceInfo.uid == i) {
                return true;
            }
        }
        return false;
    }

    @VisibleForTesting
    protected ServiceInfo<V> parseServiceInfo(ResolveInfo resolveInfo) throws XmlPullParserException, IOException {
        XmlResourceParser xmlResourceParser;
        int next;
        android.content.pm.ServiceInfo serviceInfo = resolveInfo.serviceInfo;
        ComponentName componentName = new ComponentName(serviceInfo.packageName, serviceInfo.name);
        PackageManager packageManager = this.mContext.getPackageManager();
        XmlResourceParser xmlResourceParser2 = null;
        try {
            try {
                xmlResourceParser = serviceInfo.loadXmlMetaData(packageManager, this.mMetaDataName);
            } catch (PackageManager.NameNotFoundException unused) {
            }
        } catch (Throwable th) {
            th = th;
            xmlResourceParser = xmlResourceParser2;
        }
        try {
            if (xmlResourceParser == null) {
                throw new XmlPullParserException("No " + this.mMetaDataName + " meta-data");
            }
            AttributeSet asAttributeSet = Xml.asAttributeSet(xmlResourceParser);
            do {
                next = xmlResourceParser.next();
                if (next == 1) {
                    break;
                }
            } while (next != 2);
            if (!this.mAttributesName.equals(xmlResourceParser.getName())) {
                throw new XmlPullParserException("Meta-data does not start with " + this.mAttributesName + " tag");
            }
            V parseServiceAttributes = parseServiceAttributes(packageManager.getResourcesForApplication(serviceInfo.applicationInfo), serviceInfo.packageName, asAttributeSet);
            if (parseServiceAttributes == null) {
                if (xmlResourceParser != null) {
                    xmlResourceParser.close();
                }
                return null;
            }
            ServiceInfo<V> serviceInfo2 = new ServiceInfo<>(parseServiceAttributes, resolveInfo.serviceInfo, componentName);
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
            return serviceInfo2;
        } catch (PackageManager.NameNotFoundException unused2) {
            xmlResourceParser2 = xmlResourceParser;
            throw new XmlPullParserException("Unable to load resources for pacakge " + serviceInfo.packageName);
        } catch (Throwable th2) {
            th = th2;
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
            throw th;
        }
    }

    private void readPersistentServicesLocked(InputStream inputStream) throws XmlPullParserException, IOException {
        XmlPullParser newPullParser = Xml.newPullParser();
        newPullParser.setInput(inputStream, StandardCharsets.UTF_8.name());
        for (int eventType = newPullParser.getEventType(); eventType != 2 && eventType != 1; eventType = newPullParser.next()) {
        }
        if ("services".equals(newPullParser.getName())) {
            int next = newPullParser.next();
            do {
                if (next == 2 && newPullParser.getDepth() == 2 && Notification.CATEGORY_SERVICE.equals(newPullParser.getName())) {
                    V createFromXml = this.mSerializerAndParser.createFromXml(newPullParser);
                    if (createFromXml == null) {
                        return;
                    }
                    int parseInt = Integer.parseInt(newPullParser.getAttributeValue(null, GrantCredentialsPermissionActivity.EXTRAS_REQUESTING_UID));
                    findOrCreateUserLocked(UserHandle.getUserId(parseInt), false).persistentServices.put(createFromXml, Integer.valueOf(parseInt));
                }
                next = newPullParser.next();
            } while (next != 1);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0090 A[Catch: Exception -> 0x00ac, TryCatch #1 {Exception -> 0x00ac, blocks: (B:16:0x0082, B:17:0x008a, B:19:0x0090, B:22:0x00a2, B:27:0x00a8), top: B:15:0x0082 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void migrateIfNecessaryLocked() {
        FileInputStream fileInputStream;
        Exception e;
        if (this.mSerializerAndParser == null) {
            return;
        }
        File file = new File(new File(getDataDirectory(), "system"), REGISTERED_SERVICES_DIR);
        AtomicFile atomicFile = new AtomicFile(new File(file, this.mInterfaceName + ".xml"));
        if (atomicFile.getBaseFile().exists()) {
            File file2 = new File(file, this.mInterfaceName + ".xml.migrated");
            if (file2.exists()) {
                return;
            }
            try {
                fileInputStream = atomicFile.openRead();
                try {
                    try {
                        this.mUserServices.clear();
                        readPersistentServicesLocked(fileInputStream);
                    } catch (Exception e2) {
                        e = e2;
                        Log.w(TAG, "Error reading persistent services, starting from scratch", e);
                        IoUtils.closeQuietly(fileInputStream);
                        while (r0.hasNext()) {
                        }
                        file2.createNewFile();
                        this.mUserServices.clear();
                    }
                } catch (Throwable th) {
                    th = th;
                    IoUtils.closeQuietly(fileInputStream);
                    throw th;
                }
            } catch (Exception e3) {
                e = e3;
                fileInputStream = null;
            } catch (Throwable th2) {
                th = th2;
                fileInputStream = null;
                IoUtils.closeQuietly(fileInputStream);
                throw th;
            }
            IoUtils.closeQuietly(fileInputStream);
            try {
                for (UserInfo userInfo : getUsers()) {
                    UserServices<V> userServices = this.mUserServices.get(userInfo.id);
                    if (userServices != null) {
                        writePersistentServicesLocked(userServices, userInfo.id);
                    }
                }
                file2.createNewFile();
            } catch (Exception e4) {
                Log.w(TAG, "Migration failed", e4);
            }
            this.mUserServices.clear();
        }
    }

    private void writePersistentServicesLocked(UserServices<V> userServices, int i) {
        FileOutputStream fileOutputStream;
        if (this.mSerializerAndParser == null) {
            return;
        }
        AtomicFile createFileForUser = createFileForUser(i);
        try {
            fileOutputStream = createFileForUser.startWrite();
        } catch (IOException e) {
            e = e;
            fileOutputStream = null;
        }
        try {
            FastXmlSerializer fastXmlSerializer = new FastXmlSerializer();
            fastXmlSerializer.setOutput(fileOutputStream, StandardCharsets.UTF_8.name());
            fastXmlSerializer.startDocument(null, true);
            fastXmlSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
            fastXmlSerializer.startTag(null, "services");
            for (Map.Entry<V, Integer> entry : userServices.persistentServices.entrySet()) {
                fastXmlSerializer.startTag(null, Notification.CATEGORY_SERVICE);
                fastXmlSerializer.attribute(null, GrantCredentialsPermissionActivity.EXTRAS_REQUESTING_UID, Integer.toString(entry.getValue().intValue()));
                this.mSerializerAndParser.writeAsXml(entry.getKey(), fastXmlSerializer);
                fastXmlSerializer.endTag(null, Notification.CATEGORY_SERVICE);
            }
            fastXmlSerializer.endTag(null, "services");
            fastXmlSerializer.endDocument();
            createFileForUser.finishWrite(fileOutputStream);
        } catch (IOException e2) {
            e = e2;
            Log.w(TAG, "Error writing accounts", e);
            if (fileOutputStream != null) {
                createFileForUser.failWrite(fileOutputStream);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @VisibleForTesting
    public void onUserRemoved(int i) {
        synchronized (this.mServicesLock) {
            this.mUserServices.remove(i);
        }
    }

    @VisibleForTesting
    protected List<UserInfo> getUsers() {
        return UserManager.get(this.mContext).getUsers(true);
    }

    @VisibleForTesting
    protected UserInfo getUser(int i) {
        return UserManager.get(this.mContext).getUserInfo(i);
    }

    private AtomicFile createFileForUser(int i) {
        return new AtomicFile(new File(getUserSystemDirectory(i), "registered_services/" + this.mInterfaceName + ".xml"));
    }

    @VisibleForTesting
    protected File getUserSystemDirectory(int i) {
        return Environment.getUserSystemDirectory(i);
    }

    @VisibleForTesting
    protected File getDataDirectory() {
        return Environment.getDataDirectory();
    }

    @VisibleForTesting
    protected Map<V, Integer> getPersistentServices(int i) {
        return findOrCreateUserLocked(i).persistentServices;
    }
}
