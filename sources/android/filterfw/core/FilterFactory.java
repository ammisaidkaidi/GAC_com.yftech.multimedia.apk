package android.filterfw.core;

import android.util.Log;
import dalvik.system.PathClassLoader;
import java.util.HashSet;

/* loaded from: /home/user/work/dex/classes.dex */
public class FilterFactory {
    private static FilterFactory mSharedFactory;
    private HashSet<String> mPackages = new HashSet<>();
    private static ClassLoader mCurrentClassLoader = Thread.currentThread().getContextClassLoader();
    private static HashSet<String> mLibraries = new HashSet<>();
    private static Object mClassLoaderGuard = new Object();
    private static final String TAG = "FilterFactory";
    private static boolean mLogVerbose = Log.isLoggable(TAG, 2);

    public static FilterFactory sharedFactory() {
        if (mSharedFactory == null) {
            mSharedFactory = new FilterFactory();
        }
        return mSharedFactory;
    }

    public static void addFilterLibrary(String str) {
        if (mLogVerbose) {
            Log.v(TAG, "Adding filter library " + str);
        }
        synchronized (mClassLoaderGuard) {
            if (mLibraries.contains(str)) {
                if (mLogVerbose) {
                    Log.v(TAG, "Library already added");
                }
            } else {
                mLibraries.add(str);
                mCurrentClassLoader = new PathClassLoader(str, mCurrentClassLoader);
            }
        }
    }

    public void addPackage(String str) {
        if (mLogVerbose) {
            Log.v(TAG, "Adding package " + str);
        }
        this.mPackages.add(str);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:37:0x0078
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1166)
        	at jadx.core.dex.visitors.regions.RegionMaker.processTryCatchBlocks(RegionMaker.java:1022)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:55)
        */
    public android.filterfw.core.Filter createFilterByClassName(java.lang.String r8, java.lang.String r9) {
        /*
            r7 = this;
            boolean r0 = android.filterfw.core.FilterFactory.mLogVerbose
            if (r0 == 0) goto L1a
            java.lang.String r0 = "FilterFactory"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Looking up class "
            r1.append(r2)
            r1.append(r8)
            java.lang.String r1 = r1.toString()
            android.util.Log.v(r0, r1)
        L1a:
            r0 = 0
            java.util.HashSet<java.lang.String> r1 = r7.mPackages
            java.util.Iterator r1 = r1.iterator()
        L21:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L7b
            java.lang.Object r2 = r1.next()
            java.lang.String r2 = (java.lang.String) r2
            boolean r3 = android.filterfw.core.FilterFactory.mLogVerbose     // Catch: java.lang.ClassNotFoundException -> L21
            if (r3 == 0) goto L4f
            java.lang.String r3 = "FilterFactory"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.ClassNotFoundException -> L21
            r4.<init>()     // Catch: java.lang.ClassNotFoundException -> L21
            java.lang.String r5 = "Trying "
            r4.append(r5)     // Catch: java.lang.ClassNotFoundException -> L21
            r4.append(r2)     // Catch: java.lang.ClassNotFoundException -> L21
            java.lang.String r5 = "."
            r4.append(r5)     // Catch: java.lang.ClassNotFoundException -> L21
            r4.append(r8)     // Catch: java.lang.ClassNotFoundException -> L21
            java.lang.String r4 = r4.toString()     // Catch: java.lang.ClassNotFoundException -> L21
            android.util.Log.v(r3, r4)     // Catch: java.lang.ClassNotFoundException -> L21
        L4f:
            java.lang.Object r3 = android.filterfw.core.FilterFactory.mClassLoaderGuard     // Catch: java.lang.ClassNotFoundException -> L21
            monitor-enter(r3)     // Catch: java.lang.ClassNotFoundException -> L21
            java.lang.ClassLoader r4 = android.filterfw.core.FilterFactory.mCurrentClassLoader     // Catch: java.lang.Throwable -> L78
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L78
            r5.<init>()     // Catch: java.lang.Throwable -> L78
            r5.append(r2)     // Catch: java.lang.Throwable -> L78
            java.lang.String r2 = "."
            r5.append(r2)     // Catch: java.lang.Throwable -> L78
            r5.append(r8)     // Catch: java.lang.Throwable -> L78
            java.lang.String r2 = r5.toString()     // Catch: java.lang.Throwable -> L78
            java.lang.Class r2 = r4.loadClass(r2)     // Catch: java.lang.Throwable -> L78
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L73
            if (r2 == 0) goto L71
            r0 = r2
            goto L7b
        L71:
            r0 = r2
            goto L21
        L73:
            r0 = move-exception
            r6 = r2
            r2 = r0
            r0 = r6
            goto L79
        L78:
            r2 = move-exception
        L79:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L78
            throw r2     // Catch: java.lang.ClassNotFoundException -> L21
        L7b:
            if (r0 == 0) goto L82
            android.filterfw.core.Filter r7 = r7.createFilterByClass(r0, r9)
            return r7
        L82:
            java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.lang.String r0 = "Unknown filter class '"
            r9.append(r0)
            r9.append(r8)
            java.lang.String r8 = "'!"
            r9.append(r8)
            java.lang.String r8 = r9.toString()
            r7.<init>(r8)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: android.filterfw.core.FilterFactory.createFilterByClassName(java.lang.String, java.lang.String):android.filterfw.core.Filter");
    }

    public Filter createFilterByClass(Class cls, String str) {
        Filter filter;
        try {
            cls.asSubclass(Filter.class);
            try {
                try {
                    filter = (Filter) cls.getConstructor(String.class).newInstance(str);
                } catch (Throwable unused) {
                    filter = null;
                }
                if (filter != null) {
                    return filter;
                }
                throw new IllegalArgumentException("Could not construct the filter '" + str + "'!");
            } catch (NoSuchMethodException unused2) {
                throw new IllegalArgumentException("The filter class '" + cls + "' does not have a constructor of the form <init>(String name)!");
            }
        } catch (ClassCastException unused3) {
            throw new IllegalArgumentException("Attempting to allocate class '" + cls + "' which is not a subclass of Filter!");
        }
    }
}
