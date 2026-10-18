package android.content.pm;

import android.content.pm.PackageParser;
import com.android.internal.annotations.VisibleForTesting;
import com.android.internal.util.ArrayUtils;
import java.util.ArrayList;

@VisibleForTesting
/* loaded from: /home/user/work/dex/classes.dex */
public abstract class PackageSharedLibraryUpdater {
    public abstract void updatePackage(PackageParser.Package r1);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void removeLibrary(PackageParser.Package r1, String str) {
        r1.usesLibraries = ArrayUtils.remove(r1.usesLibraries, str);
        r1.usesOptionalLibraries = ArrayUtils.remove(r1.usesOptionalLibraries, str);
    }

    static <T> ArrayList<T> prefix(ArrayList<T> arrayList, T t) {
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        arrayList.add(0, t);
        return arrayList;
    }

    private static boolean isLibraryPresent(ArrayList<String> arrayList, ArrayList<String> arrayList2, String str) {
        return ArrayUtils.contains(arrayList, str) || ArrayUtils.contains(arrayList2, str);
    }

    static boolean apkTargetsApiLevelLessThanOrEqualToOMR1(PackageParser.Package r1) {
        return r1.applicationInfo.targetSdkVersion < 28;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void prefixImplicitDependency(PackageParser.Package r3, String str, String str2) {
        ArrayList<String> arrayList = r3.usesLibraries;
        ArrayList<String> arrayList2 = r3.usesOptionalLibraries;
        if (isLibraryPresent(arrayList, arrayList2, str2)) {
            return;
        }
        if (ArrayUtils.contains(arrayList, str)) {
            prefix(arrayList, str2);
        } else if (ArrayUtils.contains(arrayList2, str)) {
            prefix(arrayList2, str2);
        }
        r3.usesLibraries = arrayList;
        r3.usesOptionalLibraries = arrayList2;
    }

    void prefixRequiredLibrary(PackageParser.Package r2, String str) {
        ArrayList<String> arrayList = r2.usesLibraries;
        if (isLibraryPresent(arrayList, r2.usesOptionalLibraries, str)) {
            return;
        }
        r2.usesLibraries = prefix(arrayList, str);
    }
}
