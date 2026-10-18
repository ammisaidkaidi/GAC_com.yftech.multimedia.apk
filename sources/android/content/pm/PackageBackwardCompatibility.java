package android.content.pm;

import android.content.pm.PackageBackwardCompatibility;
import android.content.pm.PackageParser;
import android.util.Log;
import com.android.internal.annotations.VisibleForTesting;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Supplier;

@VisibleForTesting
/* loaded from: /home/user/work/dex/classes.dex */
public class PackageBackwardCompatibility extends PackageSharedLibraryUpdater {
    private static final PackageBackwardCompatibility INSTANCE;
    private static final String TAG = "PackageBackwardCompatibility";
    private final boolean mBootClassPathContainsATB;
    private final boolean mBootClassPathContainsOAHL;
    private final PackageSharedLibraryUpdater[] mPackageUpdaters;

    static {
        ArrayList arrayList = new ArrayList();
        boolean z = !addOptionalUpdater(arrayList, "android.content.pm.OrgApacheHttpLegacyUpdater", new Supplier() { // from class: android.content.pm.-$$Lambda$FMztmpMwSp3D3ge8Zxr31di8ZBg
            @Override // java.util.function.Supplier
            public final Object get() {
                return new PackageBackwardCompatibility.RemoveUnnecessaryOrgApacheHttpLegacyLibrary();
            }
        });
        arrayList.add(new AndroidTestRunnerSplitUpdater());
        INSTANCE = new PackageBackwardCompatibility(z, !addOptionalUpdater(arrayList, "android.content.pm.AndroidTestBaseUpdater", new Supplier() { // from class: android.content.pm.-$$Lambda$jpya2qgMDDEok2GAoKRDqPM5lIE
            @Override // java.util.function.Supplier
            public final Object get() {
                return new PackageBackwardCompatibility.RemoveUnnecessaryAndroidTestBaseLibrary();
            }
        }), (PackageSharedLibraryUpdater[]) arrayList.toArray(new PackageSharedLibraryUpdater[0]));
    }

    private static boolean addOptionalUpdater(List<PackageSharedLibraryUpdater> list, String str, Supplier<PackageSharedLibraryUpdater> supplier) {
        Class cls;
        PackageSharedLibraryUpdater packageSharedLibraryUpdater;
        try {
            cls = PackageBackwardCompatibility.class.getClassLoader().loadClass(str).asSubclass(PackageSharedLibraryUpdater.class);
            Log.i(TAG, "Loaded " + str);
        } catch (ClassNotFoundException unused) {
            Log.i(TAG, "Could not find " + str + ", ignoring");
            cls = null;
        }
        boolean z = false;
        if (cls == null) {
            packageSharedLibraryUpdater = supplier.get();
        } else {
            try {
                z = true;
                packageSharedLibraryUpdater = (PackageSharedLibraryUpdater) cls.getConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (ReflectiveOperationException e) {
                throw new IllegalStateException("Could not create instance of " + str, e);
            }
        }
        list.add(packageSharedLibraryUpdater);
        return z;
    }

    @VisibleForTesting
    public static PackageSharedLibraryUpdater getInstance() {
        return INSTANCE;
    }

    public PackageBackwardCompatibility(boolean z, boolean z2, PackageSharedLibraryUpdater[] packageSharedLibraryUpdaterArr) {
        this.mBootClassPathContainsOAHL = z;
        this.mBootClassPathContainsATB = z2;
        this.mPackageUpdaters = packageSharedLibraryUpdaterArr;
    }

    @VisibleForTesting
    public static void modifySharedLibraries(PackageParser.Package r1) {
        INSTANCE.updatePackage(r1);
    }

    @Override // android.content.pm.PackageSharedLibraryUpdater
    public void updatePackage(PackageParser.Package r4) {
        for (PackageSharedLibraryUpdater packageSharedLibraryUpdater : this.mPackageUpdaters) {
            packageSharedLibraryUpdater.updatePackage(r4);
        }
    }

    @VisibleForTesting
    public static boolean bootClassPathContainsOAHL() {
        return INSTANCE.mBootClassPathContainsOAHL;
    }

    @VisibleForTesting
    public static boolean bootClassPathContainsATB() {
        return INSTANCE.mBootClassPathContainsATB;
    }

    @VisibleForTesting
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class AndroidTestRunnerSplitUpdater extends PackageSharedLibraryUpdater {
        @Override // android.content.pm.PackageSharedLibraryUpdater
        public void updatePackage(PackageParser.Package r3) {
            prefixImplicitDependency(r3, "android.test.runner", "android.test.mock");
        }
    }

    @VisibleForTesting
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class RemoveUnnecessaryOrgApacheHttpLegacyLibrary extends PackageSharedLibraryUpdater {
        @Override // android.content.pm.PackageSharedLibraryUpdater
        public void updatePackage(PackageParser.Package r1) {
            removeLibrary(r1, "org.apache.http.legacy");
        }
    }

    @VisibleForTesting
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class RemoveUnnecessaryAndroidTestBaseLibrary extends PackageSharedLibraryUpdater {
        @Override // android.content.pm.PackageSharedLibraryUpdater
        public void updatePackage(PackageParser.Package r1) {
            removeLibrary(r1, "android.test.base");
        }
    }
}
