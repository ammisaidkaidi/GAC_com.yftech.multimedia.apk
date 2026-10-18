package android.content.pm;

import android.Manifest;
import android.app.ActivityManager;
import android.app.Notification;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageParserCacheHelper;
import android.content.pm.split.DefaultSplitAssetLoader;
import android.content.pm.split.SplitAssetDependencyLoader;
import android.content.pm.split.SplitAssetLoader;
import android.content.pm.split.SplitDependencyLoader;
import android.content.res.ApkAssets;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.media.MiniThumbFile;
import android.media.TtmlUtils;
import android.media.midi.MidiDeviceInfo;
import android.net.wifi.WifiEnterpriseConfig;
import android.nfc.cardemulation.CardEmulation;
import android.os.Build;
import android.os.Bundle;
import android.os.FileUtils;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PatternMatcher;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.Trace;
import android.os.UserHandle;
import android.os.storage.StorageManager;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.AttributeSet;
import android.util.Base64;
import android.util.ByteStringUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.PackageUtils;
import android.util.Pair;
import android.util.Slog;
import android.util.SparseArray;
import android.util.TypedValue;
import android.util.apk.ApkSignatureVerifier;
import com.android.internal.R;
import com.android.internal.annotations.VisibleForTesting;
import com.android.internal.os.ClassLoaderFactory;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.XmlUtils;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.cert.CertificateException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import libcore.io.IoUtils;
import libcore.util.EmptyArray;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: /home/user/work/dex/classes.dex */
public class PackageParser {
    public static final String ANDROID_MANIFEST_FILENAME = "AndroidManifest.xml";
    private static final String ANDROID_RESOURCES = "http://schemas.android.com/apk/res/android";
    public static final String APK_FILE_EXTENSION = ".apk";
    private static boolean ATC_BOOT_POSTPONE = false;
    private static final Set<String> CHILD_PACKAGE_TAGS;
    private static final boolean DEBUG_BACKUP = false;
    private static final boolean DEBUG_JAR = false;
    private static final boolean DEBUG_PARSER = false;
    private static final float DEFAULT_PRE_O_MAX_ASPECT_RATIO = 1.86f;
    private static final boolean LOG_PARSE_TIMINGS = Build.IS_DEBUGGABLE;
    private static final int LOG_PARSE_TIMINGS_THRESHOLD_MS = 100;
    private static final boolean LOG_UNSAFE_BROADCASTS = false;
    private static final String METADATA_MAX_ASPECT_RATIO = "android.max_aspect";
    private static final String MNT_EXPAND = "/mnt/expand/";
    private static final boolean MULTI_PACKAGE_APK_ENABLED;
    public static final NewPermissionInfo[] NEW_PERMISSIONS;
    public static final int PARSE_CHATTY = Integer.MIN_VALUE;
    public static final int PARSE_COLLECT_CERTIFICATES = 32;
    private static final int PARSE_DEFAULT_INSTALL_LOCATION = -1;
    private static final int PARSE_DEFAULT_TARGET_SANDBOX = 1;
    public static final int PARSE_ENFORCE_CODE = 64;
    public static final int PARSE_EXTERNAL_STORAGE = 8;
    public static final int PARSE_FORCE_SDK = 128;

    @Deprecated
    public static final int PARSE_FORWARD_LOCK = 4;
    public static final int PARSE_IGNORE_PROCESSES = 2;
    public static final int PARSE_IS_SYSTEM_DIR = 16;
    public static final int PARSE_MUST_BE_APK = 1;
    private static final String PROPERTY_CHILD_PACKAGES_ENABLED = "persist.sys.child_packages_enabled";
    private static final int RECREATE_ON_CONFIG_CHANGES_MASK = 3;
    private static final boolean RIGID_PARSER = false;
    private static final Set<String> SAFE_BROADCASTS;
    private static final String[] SDK_CODENAMES;
    private static final int SDK_VERSION;
    public static final SplitPermissionInfo[] SPLIT_PERMISSIONS;
    private static final String TAG = "PackageParser";
    private static final String TAG_ADOPT_PERMISSIONS = "adopt-permissions";
    private static final String TAG_APPLICATION = "application";
    private static final String TAG_COMPATIBLE_SCREENS = "compatible-screens";
    private static final String TAG_EAT_COMMENT = "eat-comment";
    private static final String TAG_FEATURE_GROUP = "feature-group";
    private static final String TAG_INSTRUMENTATION = "instrumentation";
    private static final String TAG_KEY_SETS = "key-sets";
    private static final String TAG_MANIFEST = "manifest";
    private static final String TAG_ORIGINAL_PACKAGE = "original-package";
    private static final String TAG_OVERLAY = "overlay";
    private static final String TAG_PACKAGE = "package";
    private static final String TAG_PACKAGE_VERIFIER = "package-verifier";
    private static final String TAG_PERMISSION = "permission";
    private static final String TAG_PERMISSION_GROUP = "permission-group";
    private static final String TAG_PERMISSION_TREE = "permission-tree";
    private static final String TAG_PROTECTED_BROADCAST = "protected-broadcast";
    private static final String TAG_RESTRICT_UPDATE = "restrict-update";
    private static final String TAG_SUPPORTS_INPUT = "supports-input";
    private static final String TAG_SUPPORT_SCREENS = "supports-screens";
    private static final String TAG_USES_CONFIGURATION = "uses-configuration";
    private static final String TAG_USES_FEATURE = "uses-feature";
    private static final String TAG_USES_GL_TEXTURE = "uses-gl-texture";
    private static final String TAG_USES_PERMISSION = "uses-permission";
    private static final String TAG_USES_PERMISSION_SDK_23 = "uses-permission-sdk-23";
    private static final String TAG_USES_PERMISSION_SDK_M = "uses-permission-sdk-m";
    private static final String TAG_USES_SDK = "uses-sdk";
    private static final String TAG_USES_SPLIT = "uses-split";
    public static final AtomicInteger sCachedPackageReadCount;
    private static boolean sCompatibilityModeEnabled;
    private static final Comparator<String> sSplitNameComparator;

    @Deprecated
    private String mArchiveSourcePath;
    private File mCacheDir;
    private Callback mCallback;
    private boolean mOnlyCoreApps;
    private ParsePackageItemArgs mParseInstrumentationArgs;
    private String[] mSeparateProcesses;
    private int mParseError = 1;
    private DisplayMetrics mMetrics = new DisplayMetrics();

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface Callback {
        String[] getOverlayApks(String str);

        String[] getOverlayPaths(String str, String str2);

        boolean hasFeature(String str);
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface ParseFlags {
    }

    public static int getActivityConfigChanges(int i, int i2) {
        return i | ((~i2) & 3);
    }

    static {
        MULTI_PACKAGE_APK_ENABLED = Build.IS_DEBUGGABLE && SystemProperties.getBoolean(PROPERTY_CHILD_PACKAGES_ENABLED, false);
        ATC_BOOT_POSTPONE = SystemProperties.getBoolean("ro.atc.boot.postpone", false);
        CHILD_PACKAGE_TAGS = new ArraySet();
        CHILD_PACKAGE_TAGS.add(TAG_APPLICATION);
        CHILD_PACKAGE_TAGS.add(TAG_USES_PERMISSION);
        CHILD_PACKAGE_TAGS.add(TAG_USES_PERMISSION_SDK_M);
        CHILD_PACKAGE_TAGS.add(TAG_USES_PERMISSION_SDK_23);
        CHILD_PACKAGE_TAGS.add(TAG_USES_CONFIGURATION);
        CHILD_PACKAGE_TAGS.add(TAG_USES_FEATURE);
        CHILD_PACKAGE_TAGS.add(TAG_FEATURE_GROUP);
        CHILD_PACKAGE_TAGS.add(TAG_USES_SDK);
        CHILD_PACKAGE_TAGS.add(TAG_SUPPORT_SCREENS);
        CHILD_PACKAGE_TAGS.add(TAG_INSTRUMENTATION);
        CHILD_PACKAGE_TAGS.add(TAG_USES_GL_TEXTURE);
        CHILD_PACKAGE_TAGS.add(TAG_COMPATIBLE_SCREENS);
        CHILD_PACKAGE_TAGS.add(TAG_SUPPORTS_INPUT);
        CHILD_PACKAGE_TAGS.add(TAG_EAT_COMMENT);
        sCachedPackageReadCount = new AtomicInteger();
        SAFE_BROADCASTS = new ArraySet();
        SAFE_BROADCASTS.add(Intent.ACTION_BOOT_COMPLETED);
        if (ATC_BOOT_POSTPONE) {
            SAFE_BROADCASTS.add(Intent.ACTION_HOME_READY);
        }
        NEW_PERMISSIONS = new NewPermissionInfo[]{new NewPermissionInfo(Manifest.permission.WRITE_EXTERNAL_STORAGE, 4, 0), new NewPermissionInfo(Manifest.permission.READ_PHONE_STATE, 4, 0)};
        SPLIT_PERMISSIONS = new SplitPermissionInfo[]{new SplitPermissionInfo(Manifest.permission.WRITE_EXTERNAL_STORAGE, new String[]{Manifest.permission.READ_EXTERNAL_STORAGE}, 10001), new SplitPermissionInfo(Manifest.permission.READ_CONTACTS, new String[]{Manifest.permission.READ_CALL_LOG}, 16), new SplitPermissionInfo(Manifest.permission.WRITE_CONTACTS, new String[]{Manifest.permission.WRITE_CALL_LOG}, 16)};
        SDK_VERSION = Build.VERSION.SDK_INT;
        SDK_CODENAMES = Build.VERSION.ACTIVE_CODENAMES;
        sCompatibilityModeEnabled = true;
        sSplitNameComparator = new SplitNameComparator();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class NewPermissionInfo {
        public final int fileVersion;
        public final String name;
        public final int sdkVersion;

        public NewPermissionInfo(String str, int i, int i2) {
            this.name = str;
            this.sdkVersion = i;
            this.fileVersion = i2;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class SplitPermissionInfo {
        public final String[] newPerms;
        public final String rootPerm;
        public final int targetSdk;

        public SplitPermissionInfo(String str, String[] strArr, int i) {
            this.rootPerm = str;
            this.newPerms = strArr;
            this.targetSdk = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class ParsePackageItemArgs {
        final int bannerRes;
        final int iconRes;
        final int labelRes;
        final int logoRes;
        final int nameRes;
        final String[] outError;
        final Package owner;
        final int roundIconRes;
        TypedArray sa;
        String tag;

        ParsePackageItemArgs(Package r1, String[] strArr, int i, int i2, int i3, int i4, int i5, int i6) {
            this.owner = r1;
            this.outError = strArr;
            this.nameRes = i;
            this.labelRes = i2;
            this.iconRes = i3;
            this.logoRes = i5;
            this.bannerRes = i6;
            this.roundIconRes = i4;
        }
    }

    @VisibleForTesting
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class ParseComponentArgs extends ParsePackageItemArgs {
        final int descriptionRes;
        final int enabledRes;
        int flags;
        final int processRes;
        final String[] sepProcesses;

        public ParseComponentArgs(Package r1, String[] strArr, int i, int i2, int i3, int i4, int i5, int i6, String[] strArr2, int i7, int i8, int i9) {
            super(r1, strArr, i, i2, i3, i4, i5, i6);
            this.sepProcesses = strArr2;
            this.processRes = i7;
            this.descriptionRes = i8;
            this.enabledRes = i9;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class PackageLite {
        public final String baseCodePath;
        public final int baseRevisionCode;
        public final String codePath;
        public final String[] configForSplit;
        public final boolean coreApp;
        public final boolean debuggable;
        public final boolean extractNativeLibs;
        public final int installLocation;
        public final boolean[] isFeatureSplits;
        public final boolean isolatedSplits;
        public final boolean multiArch;
        public final String packageName;
        public final String[] splitCodePaths;
        public final String[] splitNames;
        public final int[] splitRevisionCodes;
        public final boolean use32bitAbi;
        public final String[] usesSplitNames;
        public final VerifierInfo[] verifiers;
        public final int versionCode;
        public final int versionCodeMajor;

        public PackageLite(String str, ApkLite apkLite, String[] strArr, boolean[] zArr, String[] strArr2, String[] strArr3, String[] strArr4, int[] iArr) {
            this.packageName = apkLite.packageName;
            this.versionCode = apkLite.versionCode;
            this.versionCodeMajor = apkLite.versionCodeMajor;
            this.installLocation = apkLite.installLocation;
            this.verifiers = apkLite.verifiers;
            this.splitNames = strArr;
            this.isFeatureSplits = zArr;
            this.usesSplitNames = strArr2;
            this.configForSplit = strArr3;
            this.codePath = str;
            this.baseCodePath = apkLite.codePath;
            this.splitCodePaths = strArr4;
            this.baseRevisionCode = apkLite.revisionCode;
            this.splitRevisionCodes = iArr;
            this.coreApp = apkLite.coreApp;
            this.debuggable = apkLite.debuggable;
            this.multiArch = apkLite.multiArch;
            this.use32bitAbi = apkLite.use32bitAbi;
            this.extractNativeLibs = apkLite.extractNativeLibs;
            this.isolatedSplits = apkLite.isolatedSplits;
        }

        public List<String> getAllCodePaths() {
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.baseCodePath);
            if (!ArrayUtils.isEmpty(this.splitCodePaths)) {
                Collections.addAll(arrayList, this.splitCodePaths);
            }
            return arrayList;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class ApkLite {
        public final String codePath;
        public final String configForSplit;
        public final boolean coreApp;
        public final boolean debuggable;
        public final boolean extractNativeLibs;
        public final int installLocation;
        public boolean isFeatureSplit;
        public final boolean isolatedSplits;
        public final boolean multiArch;
        public final String packageName;
        public final int revisionCode;
        public final SigningDetails signingDetails;
        public final String splitName;
        public final boolean use32bitAbi;
        public final String usesSplitName;
        public final VerifierInfo[] verifiers;
        public final int versionCode;
        public final int versionCodeMajor;

        public ApkLite(String str, String str2, String str3, boolean z, String str4, String str5, int i, int i2, int i3, int i4, List<VerifierInfo> list, SigningDetails signingDetails, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
            this.codePath = str;
            this.packageName = str2;
            this.splitName = str3;
            this.isFeatureSplit = z;
            this.configForSplit = str4;
            this.usesSplitName = str5;
            this.versionCode = i;
            this.versionCodeMajor = i2;
            this.revisionCode = i3;
            this.installLocation = i4;
            this.signingDetails = signingDetails;
            this.verifiers = (VerifierInfo[]) list.toArray(new VerifierInfo[list.size()]);
            this.coreApp = z2;
            this.debuggable = z3;
            this.multiArch = z4;
            this.use32bitAbi = z5;
            this.extractNativeLibs = z6;
            this.isolatedSplits = z7;
        }

        public long getLongVersionCode() {
            return PackageInfo.composeLongVersionCode(this.versionCodeMajor, this.versionCode);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class CachedComponentArgs {
        ParseComponentArgs mActivityAliasArgs;
        ParseComponentArgs mActivityArgs;
        ParseComponentArgs mProviderArgs;
        ParseComponentArgs mServiceArgs;

        private CachedComponentArgs() {
        }
    }

    public PackageParser() {
        this.mMetrics.setToDefaults();
    }

    public void setSeparateProcesses(String[] strArr) {
        this.mSeparateProcesses = strArr;
    }

    public void setOnlyCoreApps(boolean z) {
        this.mOnlyCoreApps = z;
    }

    public void setDisplayMetrics(DisplayMetrics displayMetrics) {
        this.mMetrics = displayMetrics;
    }

    public void setCacheDir(File file) {
        this.mCacheDir = file;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class CallbackImpl implements Callback {
        private final PackageManager mPm;

        @Override // android.content.pm.PackageParser.Callback
        public String[] getOverlayApks(String str) {
            return null;
        }

        @Override // android.content.pm.PackageParser.Callback
        public String[] getOverlayPaths(String str, String str2) {
            return null;
        }

        public CallbackImpl(PackageManager packageManager) {
            this.mPm = packageManager;
        }

        @Override // android.content.pm.PackageParser.Callback
        public boolean hasFeature(String str) {
            return this.mPm.hasSystemFeature(str);
        }
    }

    public void setCallback(Callback callback) {
        this.mCallback = callback;
    }

    public static final boolean isApkFile(File file) {
        return isApkPath(file.getName());
    }

    public static boolean isApkPath(String str) {
        return str.endsWith(APK_FILE_EXTENSION);
    }

    public static PackageInfo generatePackageInfo(Package r10, int[] iArr, int i, long j, long j2, Set<String> set, PackageUserState packageUserState) {
        return generatePackageInfo(r10, iArr, i, j, j2, set, packageUserState, UserHandle.getCallingUserId());
    }

    private static boolean checkUseInstalledOrHidden(int i, PackageUserState packageUserState, ApplicationInfo applicationInfo) {
        return packageUserState.isAvailable(i) || !(applicationInfo == null || !applicationInfo.isSystemApp() || (i & PackageManager.MATCH_KNOWN_PACKAGES) == 0);
    }

    public static boolean isAvailable(PackageUserState packageUserState) {
        return checkUseInstalledOrHidden(0, packageUserState, null);
    }

    public static PackageInfo generatePackageInfo(Package r5, int[] iArr, int i, long j, long j2, Set<String> set, PackageUserState packageUserState, int i2) {
        int size;
        int size2;
        int size3;
        int size4;
        int size5;
        if (!checkUseInstalledOrHidden(i, packageUserState, r5.applicationInfo) || !r5.isMatch(i)) {
            return null;
        }
        PackageInfo packageInfo = new PackageInfo();
        packageInfo.packageName = r5.packageName;
        packageInfo.splitNames = r5.splitNames;
        packageInfo.versionCode = r5.mVersionCode;
        packageInfo.versionCodeMajor = r5.mVersionCodeMajor;
        packageInfo.baseRevisionCode = r5.baseRevisionCode;
        packageInfo.splitRevisionCodes = r5.splitRevisionCodes;
        packageInfo.versionName = r5.mVersionName;
        packageInfo.sharedUserId = r5.mSharedUserId;
        packageInfo.sharedUserLabel = r5.mSharedUserLabel;
        packageInfo.applicationInfo = generateApplicationInfo(r5, i, packageUserState, i2);
        packageInfo.installLocation = r5.installLocation;
        packageInfo.isStub = r5.isStub;
        packageInfo.coreApp = r5.coreApp;
        if ((packageInfo.applicationInfo.flags & 1) != 0 || (packageInfo.applicationInfo.flags & 128) != 0) {
            packageInfo.requiredForAllUsers = r5.mRequiredForAllUsers;
        }
        packageInfo.restrictedAccountType = r5.mRestrictedAccountType;
        packageInfo.requiredAccountType = r5.mRequiredAccountType;
        packageInfo.overlayTarget = r5.mOverlayTarget;
        packageInfo.overlayCategory = r5.mOverlayCategory;
        packageInfo.overlayPriority = r5.mOverlayPriority;
        packageInfo.mOverlayIsStatic = r5.mOverlayIsStatic;
        packageInfo.compileSdkVersion = r5.mCompileSdkVersion;
        packageInfo.compileSdkVersionCodename = r5.mCompileSdkVersionCodename;
        packageInfo.firstInstallTime = j;
        packageInfo.lastUpdateTime = j2;
        if ((i & 256) != 0) {
            packageInfo.gids = iArr;
        }
        if ((i & 16384) != 0) {
            int size6 = r5.configPreferences != null ? r5.configPreferences.size() : 0;
            if (size6 > 0) {
                packageInfo.configPreferences = new ConfigurationInfo[size6];
                r5.configPreferences.toArray(packageInfo.configPreferences);
            }
            int size7 = r5.reqFeatures != null ? r5.reqFeatures.size() : 0;
            if (size7 > 0) {
                packageInfo.reqFeatures = new FeatureInfo[size7];
                r5.reqFeatures.toArray(packageInfo.reqFeatures);
            }
            int size8 = r5.featureGroups != null ? r5.featureGroups.size() : 0;
            if (size8 > 0) {
                packageInfo.featureGroups = new FeatureGroupInfo[size8];
                r5.featureGroups.toArray(packageInfo.featureGroups);
            }
        }
        if ((i & 1) != 0 && (size5 = r5.activities.size()) > 0) {
            ActivityInfo[] activityInfoArr = new ActivityInfo[size5];
            int i3 = 0;
            for (int i4 = 0; i4 < size5; i4++) {
                Activity activity = r5.activities.get(i4);
                if (packageUserState.isMatch(activity.info, i)) {
                    activityInfoArr[i3] = generateActivityInfo(activity, i, packageUserState, i2);
                    i3++;
                }
            }
            packageInfo.activities = (ActivityInfo[]) ArrayUtils.trimToSize(activityInfoArr, i3);
        }
        if ((i & 2) != 0 && (size4 = r5.receivers.size()) > 0) {
            ActivityInfo[] activityInfoArr2 = new ActivityInfo[size4];
            int i5 = 0;
            for (int i6 = 0; i6 < size4; i6++) {
                Activity activity2 = r5.receivers.get(i6);
                if (packageUserState.isMatch(activity2.info, i)) {
                    activityInfoArr2[i5] = generateActivityInfo(activity2, i, packageUserState, i2);
                    i5++;
                }
            }
            packageInfo.receivers = (ActivityInfo[]) ArrayUtils.trimToSize(activityInfoArr2, i5);
        }
        if ((i & 4) != 0 && (size3 = r5.services.size()) > 0) {
            ServiceInfo[] serviceInfoArr = new ServiceInfo[size3];
            int i7 = 0;
            for (int i8 = 0; i8 < size3; i8++) {
                Service service = r5.services.get(i8);
                if (packageUserState.isMatch(service.info, i)) {
                    serviceInfoArr[i7] = generateServiceInfo(service, i, packageUserState, i2);
                    i7++;
                }
            }
            packageInfo.services = (ServiceInfo[]) ArrayUtils.trimToSize(serviceInfoArr, i7);
        }
        if ((i & 8) != 0 && (size2 = r5.providers.size()) > 0) {
            ProviderInfo[] providerInfoArr = new ProviderInfo[size2];
            int i9 = 0;
            for (int i10 = 0; i10 < size2; i10++) {
                Provider provider = r5.providers.get(i10);
                if (packageUserState.isMatch(provider.info, i)) {
                    providerInfoArr[i9] = generateProviderInfo(provider, i, packageUserState, i2);
                    i9++;
                }
            }
            packageInfo.providers = (ProviderInfo[]) ArrayUtils.trimToSize(providerInfoArr, i9);
        }
        if ((i & 16) != 0 && (size = r5.instrumentation.size()) > 0) {
            packageInfo.instrumentation = new InstrumentationInfo[size];
            for (int i11 = 0; i11 < size; i11++) {
                packageInfo.instrumentation[i11] = generateInstrumentationInfo(r5.instrumentation.get(i11), i);
            }
        }
        if ((i & 4096) != 0) {
            int size9 = r5.permissions.size();
            if (size9 > 0) {
                packageInfo.permissions = new PermissionInfo[size9];
                for (int i12 = 0; i12 < size9; i12++) {
                    packageInfo.permissions[i12] = generatePermissionInfo(r5.permissions.get(i12), i);
                }
            }
            int size10 = r5.requestedPermissions.size();
            if (size10 > 0) {
                packageInfo.requestedPermissions = new String[size10];
                packageInfo.requestedPermissionsFlags = new int[size10];
                for (int i13 = 0; i13 < size10; i13++) {
                    String str = r5.requestedPermissions.get(i13);
                    packageInfo.requestedPermissions[i13] = str;
                    int[] iArr2 = packageInfo.requestedPermissionsFlags;
                    iArr2[i13] = iArr2[i13] | 1;
                    if (set != null && set.contains(str)) {
                        int[] iArr3 = packageInfo.requestedPermissionsFlags;
                        iArr3[i13] = iArr3[i13] | 2;
                    }
                }
            }
        }
        if ((i & 64) != 0) {
            if (r5.mSigningDetails.hasPastSigningCertificates()) {
                packageInfo.signatures = new Signature[1];
                packageInfo.signatures[0] = r5.mSigningDetails.pastSigningCertificates[0];
            } else if (r5.mSigningDetails.hasSignatures()) {
                int length = r5.mSigningDetails.signatures.length;
                packageInfo.signatures = new Signature[length];
                System.arraycopy(r5.mSigningDetails.signatures, 0, packageInfo.signatures, 0, length);
            }
        }
        if ((134217728 & i) != 0) {
            if (r5.mSigningDetails != SigningDetails.UNKNOWN) {
                packageInfo.signingInfo = new SigningInfo(r5.mSigningDetails);
            } else {
                packageInfo.signingInfo = null;
            }
        }
        return packageInfo;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class SplitNameComparator implements Comparator<String> {
        private SplitNameComparator() {
        }

        @Override // java.util.Comparator
        public int compare(String str, String str2) {
            if (str == null) {
                return -1;
            }
            if (str2 == null) {
                return 1;
            }
            return str.compareTo(str2);
        }
    }

    public static PackageLite parsePackageLite(File file, int i) throws PackageParserException {
        if (file.isDirectory()) {
            return parseClusterPackageLite(file, i);
        }
        return parseMonolithicPackageLite(file, i);
    }

    private static PackageLite parseMonolithicPackageLite(File file, int i) throws PackageParserException {
        Trace.traceBegin(262144L, "parseApkLite");
        ApkLite parseApkLite = parseApkLite(file, i);
        String absolutePath = file.getAbsolutePath();
        Trace.traceEnd(262144L);
        return new PackageLite(absolutePath, parseApkLite, null, null, null, null, null, null);
    }

    static PackageLite parseClusterPackageLite(File file, int i) throws PackageParserException {
        String[] strArr;
        boolean[] zArr;
        String[] strArr2;
        String[] strArr3;
        String[] strArr4;
        int[] iArr;
        File[] listFiles = file.listFiles();
        if (ArrayUtils.isEmpty(listFiles)) {
            throw new PackageParserException(-100, "No packages found in split");
        }
        Trace.traceBegin(262144L, "parseApkLite");
        ArrayMap arrayMap = new ArrayMap();
        int i2 = 0;
        String str = null;
        for (File file2 : listFiles) {
            if (isApkFile(file2)) {
                ApkLite parseApkLite = parseApkLite(file2, i);
                if (str == null) {
                    str = parseApkLite.packageName;
                    i2 = parseApkLite.versionCode;
                } else {
                    if (!str.equals(parseApkLite.packageName)) {
                        throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_BAD_MANIFEST, "Inconsistent package " + parseApkLite.packageName + " in " + file2 + "; expected " + str);
                    }
                    if (i2 != parseApkLite.versionCode) {
                        throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_BAD_MANIFEST, "Inconsistent version " + parseApkLite.versionCode + " in " + file2 + "; expected " + i2);
                    }
                }
                if (arrayMap.put(parseApkLite.splitName, parseApkLite) != null) {
                    throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_BAD_MANIFEST, "Split name " + parseApkLite.splitName + " defined more than once; most recent was " + file2);
                }
            }
        }
        Trace.traceEnd(262144L);
        ApkLite apkLite = (ApkLite) arrayMap.remove(null);
        if (apkLite == null) {
            throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_BAD_MANIFEST, "Missing base APK in " + file);
        }
        int size = arrayMap.size();
        if (size > 0) {
            boolean[] zArr2 = new boolean[size];
            String[] strArr5 = new String[size];
            String[] strArr6 = new String[size];
            String[] strArr7 = new String[size];
            int[] iArr2 = new int[size];
            String[] strArr8 = (String[]) arrayMap.keySet().toArray(new String[size]);
            Arrays.sort(strArr8, sSplitNameComparator);
            for (int i3 = 0; i3 < size; i3++) {
                ApkLite apkLite2 = (ApkLite) arrayMap.get(strArr8[i3]);
                strArr5[i3] = apkLite2.usesSplitName;
                zArr2[i3] = apkLite2.isFeatureSplit;
                strArr6[i3] = apkLite2.configForSplit;
                strArr7[i3] = apkLite2.codePath;
                iArr2[i3] = apkLite2.revisionCode;
            }
            strArr = strArr8;
            strArr2 = strArr5;
            strArr3 = strArr6;
            zArr = zArr2;
            strArr4 = strArr7;
            iArr = iArr2;
        } else {
            strArr = null;
            zArr = null;
            strArr2 = null;
            strArr3 = null;
            strArr4 = null;
            iArr = null;
        }
        return new PackageLite(file.getAbsolutePath(), apkLite, strArr, zArr, strArr2, strArr3, strArr4, iArr);
    }

    public Package parsePackage(File file, int i, boolean z) throws PackageParserException {
        Package parseMonolithicPackage;
        Package cachedResult = z ? getCachedResult(file, i) : null;
        if (cachedResult != null) {
            return cachedResult;
        }
        long uptimeMillis = LOG_PARSE_TIMINGS ? SystemClock.uptimeMillis() : 0L;
        if (file.isDirectory()) {
            parseMonolithicPackage = parseClusterPackage(file, i);
        } else {
            parseMonolithicPackage = parseMonolithicPackage(file, i);
        }
        long uptimeMillis2 = LOG_PARSE_TIMINGS ? SystemClock.uptimeMillis() : 0L;
        cacheResult(file, i, parseMonolithicPackage);
        if (LOG_PARSE_TIMINGS) {
            long j = uptimeMillis2 - uptimeMillis;
            long uptimeMillis3 = SystemClock.uptimeMillis() - uptimeMillis2;
            if (j + uptimeMillis3 > 100) {
                Slog.i(TAG, "Parse times for '" + file + "': parse=" + j + "ms, update_cache=" + uptimeMillis3 + " ms");
            }
        }
        return parseMonolithicPackage;
    }

    public Package parsePackage(File file, int i) throws PackageParserException {
        return parsePackage(file, i, false);
    }

    private String getCacheKey(File file, int i) {
        return file.getName() + '-' + i;
    }

    @VisibleForTesting
    protected Package fromCacheEntry(byte[] bArr) {
        return fromCacheEntryStatic(bArr);
    }

    @VisibleForTesting
    public static Package fromCacheEntryStatic(byte[] bArr) {
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(bArr, 0, bArr.length);
        obtain.setDataPosition(0);
        new PackageParserCacheHelper.ReadHelper(obtain).startAndInstall();
        Package r3 = new Package(obtain);
        obtain.recycle();
        sCachedPackageReadCount.incrementAndGet();
        return r3;
    }

    @VisibleForTesting
    protected byte[] toCacheEntry(Package r1) {
        return toCacheEntryStatic(r1);
    }

    @VisibleForTesting
    public static byte[] toCacheEntryStatic(Package r3) {
        Parcel obtain = Parcel.obtain();
        PackageParserCacheHelper.WriteHelper writeHelper = new PackageParserCacheHelper.WriteHelper(obtain);
        r3.writeToParcel(obtain, 0);
        writeHelper.finishAndUninstall();
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        return marshall;
    }

    private static boolean isCacheUpToDate(File file, File file2) {
        try {
            return Os.stat(file.getAbsolutePath()).st_mtime < Os.stat(file2.getAbsolutePath()).st_mtime;
        } catch (ErrnoException e) {
            if (e.errno != OsConstants.ENOENT) {
                Slog.w("Error while stating package cache : ", e);
            }
            return false;
        }
    }

    private Package getCachedResult(File file, int i) {
        String[] overlayApks;
        if (this.mCacheDir == null) {
            return null;
        }
        File file2 = new File(this.mCacheDir, getCacheKey(file, i));
        try {
            if (!isCacheUpToDate(file, file2)) {
                return null;
            }
            Package fromCacheEntry = fromCacheEntry(IoUtils.readFileAsByteArray(file2.getAbsolutePath()));
            if (this.mCallback != null && (overlayApks = this.mCallback.getOverlayApks(fromCacheEntry.packageName)) != null && overlayApks.length > 0) {
                for (String str : overlayApks) {
                    if (!isCacheUpToDate(new File(str), file2)) {
                        return null;
                    }
                }
            }
            return fromCacheEntry;
        } catch (Throwable th) {
            Slog.w(TAG, "Error reading package cache: ", th);
            file2.delete();
            return null;
        }
    }

    private void cacheResult(File file, int i, Package r5) {
        if (this.mCacheDir == null) {
            return;
        }
        try {
            File file2 = new File(this.mCacheDir, getCacheKey(file, i));
            if (file2.exists() && !file2.delete()) {
                Slog.e(TAG, "Unable to delete cache file: " + file2);
            }
            byte[] cacheEntry = toCacheEntry(r5);
            if (cacheEntry == null) {
                return;
            }
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                Throwable th = null;
                try {
                    fileOutputStream.write(cacheEntry);
                    fileOutputStream.close();
                } catch (Throwable th2) {
                    if (0 != 0) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    } else {
                        fileOutputStream.close();
                    }
                    throw th2;
                }
            } catch (IOException e) {
                Slog.w(TAG, "Error writing cache entry.", e);
                file2.delete();
            }
        } catch (Throwable th4) {
            Slog.w(TAG, "Error saving package cache.", th4);
        }
    }

    private Package parseClusterPackage(File file, int i) throws PackageParserException {
        SplitAssetLoader defaultSplitAssetLoader;
        PackageLite parseClusterPackageLite = parseClusterPackageLite(file, 0);
        if (this.mOnlyCoreApps && !parseClusterPackageLite.coreApp) {
            throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED, "Not a coreApp: " + file);
        }
        SparseArray<int[]> sparseArray = null;
        if (parseClusterPackageLite.isolatedSplits && !ArrayUtils.isEmpty(parseClusterPackageLite.splitNames)) {
            try {
                sparseArray = SplitAssetDependencyLoader.createDependenciesFromPackage(parseClusterPackageLite);
                defaultSplitAssetLoader = new SplitAssetDependencyLoader(parseClusterPackageLite, sparseArray, i);
            } catch (SplitDependencyLoader.IllegalDependencyException e) {
                throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_BAD_MANIFEST, e.getMessage());
            }
        } else {
            defaultSplitAssetLoader = new DefaultSplitAssetLoader(parseClusterPackageLite, i);
        }
        try {
            try {
                AssetManager baseAssetManager = defaultSplitAssetLoader.getBaseAssetManager();
                File file2 = new File(parseClusterPackageLite.baseCodePath);
                Package parseBaseApk = parseBaseApk(file2, baseAssetManager, i);
                if (parseBaseApk == null) {
                    throw new PackageParserException(-100, "Failed to parse base APK: " + file2);
                }
                if (!ArrayUtils.isEmpty(parseClusterPackageLite.splitNames)) {
                    int length = parseClusterPackageLite.splitNames.length;
                    parseBaseApk.splitNames = parseClusterPackageLite.splitNames;
                    parseBaseApk.splitCodePaths = parseClusterPackageLite.splitCodePaths;
                    parseBaseApk.splitRevisionCodes = parseClusterPackageLite.splitRevisionCodes;
                    parseBaseApk.splitFlags = new int[length];
                    parseBaseApk.splitPrivateFlags = new int[length];
                    parseBaseApk.applicationInfo.splitNames = parseBaseApk.splitNames;
                    parseBaseApk.applicationInfo.splitDependencies = sparseArray;
                    parseBaseApk.applicationInfo.splitClassLoaderNames = new String[length];
                    for (int i2 = 0; i2 < length; i2++) {
                        parseSplitApk(parseBaseApk, i2, defaultSplitAssetLoader.getSplitAssetManager(i2), i);
                    }
                }
                parseBaseApk.setCodePath(file.getCanonicalPath());
                parseBaseApk.setUse32bitAbi(parseClusterPackageLite.use32bitAbi);
                return parseBaseApk;
            } catch (IOException e2) {
                throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION, "Failed to get path: " + parseClusterPackageLite.baseCodePath, e2);
            }
        } finally {
            IoUtils.closeQuietly(defaultSplitAssetLoader);
        }
    }

    @Deprecated
    public Package parseMonolithicPackage(File file, int i) throws PackageParserException {
        PackageLite parseMonolithicPackageLite = parseMonolithicPackageLite(file, i);
        if (this.mOnlyCoreApps && !parseMonolithicPackageLite.coreApp) {
            throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED, "Not a coreApp: " + file);
        }
        DefaultSplitAssetLoader defaultSplitAssetLoader = new DefaultSplitAssetLoader(parseMonolithicPackageLite, i);
        try {
            try {
                Package parseBaseApk = parseBaseApk(file, defaultSplitAssetLoader.getBaseAssetManager(), i);
                parseBaseApk.setCodePath(file.getCanonicalPath());
                parseBaseApk.setUse32bitAbi(parseMonolithicPackageLite.use32bitAbi);
                return parseBaseApk;
            } catch (IOException e) {
                throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION, "Failed to get path: " + file, e);
            }
        } finally {
            IoUtils.closeQuietly(defaultSplitAssetLoader);
        }
    }

    private Package parseBaseApk(File file, AssetManager assetManager, int i) throws PackageParserException {
        String str;
        XmlResourceParser xmlResourceParser;
        String absolutePath = file.getAbsolutePath();
        if (absolutePath.startsWith(MNT_EXPAND)) {
            str = absolutePath.substring(MNT_EXPAND.length(), absolutePath.indexOf(47, MNT_EXPAND.length()));
        } else {
            str = null;
        }
        this.mParseError = 1;
        this.mArchiveSourcePath = file.getAbsolutePath();
        try {
            try {
                int findCookieForPath = assetManager.findCookieForPath(absolutePath);
                if (findCookieForPath == 0) {
                    throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_BAD_MANIFEST, "Failed adding asset path: " + absolutePath);
                }
                xmlResourceParser = assetManager.openXmlResourceParser(findCookieForPath, ANDROID_MANIFEST_FILENAME);
                try {
                    Resources resources = new Resources(assetManager, this.mMetrics, null);
                    String[] strArr = new String[1];
                    Package parseBaseApk = parseBaseApk(absolutePath, resources, xmlResourceParser, i, strArr);
                    if (parseBaseApk == null) {
                        throw new PackageParserException(this.mParseError, absolutePath + " (at " + xmlResourceParser.getPositionDescription() + "): " + strArr[0]);
                    }
                    parseBaseApk.setVolumeUuid(str);
                    parseBaseApk.setApplicationVolumeUuid(str);
                    parseBaseApk.setBaseCodePath(absolutePath);
                    parseBaseApk.setSigningDetails(SigningDetails.UNKNOWN);
                    IoUtils.closeQuietly(xmlResourceParser);
                    return parseBaseApk;
                } catch (PackageParserException e) {
                    throw e;
                } catch (Exception e2) {
                    e = e2;
                    throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION, "Failed to read manifest from " + absolutePath, e);
                } catch (Throwable th) {
                    th = th;
                    IoUtils.closeQuietly(xmlResourceParser);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                xmlResourceParser = null;
            }
        } catch (PackageParserException e3) {
            throw e3;
        } catch (Exception e4) {
            e = e4;
        }
    }

    private void parseSplitApk(Package r12, int i, AssetManager assetManager, int i2) throws PackageParserException {
        String str = r12.splitCodePaths[i];
        this.mParseError = 1;
        this.mArchiveSourcePath = str;
        XmlResourceParser xmlResourceParser = null;
        try {
            try {
                int findCookieForPath = assetManager.findCookieForPath(str);
                if (findCookieForPath == 0) {
                    throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_BAD_MANIFEST, "Failed adding asset path: " + str);
                }
                XmlResourceParser openXmlResourceParser = assetManager.openXmlResourceParser(findCookieForPath, ANDROID_MANIFEST_FILENAME);
                try {
                    String[] strArr = new String[1];
                    if (parseSplitApk(r12, new Resources(assetManager, this.mMetrics, null), openXmlResourceParser, i2, i, strArr) == null) {
                        throw new PackageParserException(this.mParseError, str + " (at " + openXmlResourceParser.getPositionDescription() + "): " + strArr[0]);
                    }
                    IoUtils.closeQuietly(openXmlResourceParser);
                } catch (PackageParserException e) {
                } catch (Exception e2) {
                    e = e2;
                    throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION, "Failed to read manifest from " + str, e);
                } catch (Throwable th) {
                    th = th;
                    xmlResourceParser = openXmlResourceParser;
                    IoUtils.closeQuietly(xmlResourceParser);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (PackageParserException e3) {
            throw e3;
        } catch (Exception e4) {
            e = e4;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x007a, code lost:
    
        r14[0] = "<manifest> does not contain an <application>";
        r8.mParseError = android.content.pm.PackageManager.INSTALL_PARSE_FAILED_MANIFEST_EMPTY;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0082, code lost:
    
        return r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0078, code lost:
    
        if (r4 != false) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Package parseSplitApk(Package r9, Resources resources, XmlResourceParser xmlResourceParser, int i, int i2, String[] strArr) throws XmlPullParserException, IOException, PackageParserException {
        parsePackageSplitNames(xmlResourceParser, xmlResourceParser);
        this.mParseInstrumentationArgs = null;
        int depth = xmlResourceParser.getDepth();
        boolean z = false;
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 1 || (next == 3 && xmlResourceParser.getDepth() <= depth)) {
                break;
            }
            if (next != 3 && next != 4) {
                if (!xmlResourceParser.getName().equals(TAG_APPLICATION)) {
                    Slog.w(TAG, "Unknown element under <manifest>: " + xmlResourceParser.getName() + " at " + this.mArchiveSourcePath + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + xmlResourceParser.getPositionDescription());
                    XmlUtils.skipCurrentTag(xmlResourceParser);
                } else if (z) {
                    Slog.w(TAG, "<manifest> has more than one <application>");
                    XmlUtils.skipCurrentTag(xmlResourceParser);
                } else {
                    if (!parseSplitApplication(r9, resources, xmlResourceParser, i, i2, strArr)) {
                        return null;
                    }
                    z = true;
                }
            }
        }
    }

    public static ArraySet<PublicKey> toSigningKeys(Signature[] signatureArr) throws CertificateException {
        ArraySet<PublicKey> arraySet = new ArraySet<>(signatureArr.length);
        for (Signature signature : signatureArr) {
            arraySet.add(signature.getPublicKey());
        }
        return arraySet;
    }

    public static void collectCertificates(Package r3, boolean z) throws PackageParserException {
        collectCertificatesInternal(r3, z);
        int size = r3.childPackages != null ? r3.childPackages.size() : 0;
        for (int i = 0; i < size; i++) {
            r3.childPackages.get(i).mSigningDetails = r3.mSigningDetails;
        }
    }

    private static void collectCertificatesInternal(Package r5, boolean z) throws PackageParserException {
        r5.mSigningDetails = SigningDetails.UNKNOWN;
        Trace.traceBegin(262144L, "collectCertificates");
        try {
            collectCertificates(r5, new File(r5.baseCodePath), z);
            if (!ArrayUtils.isEmpty(r5.splitCodePaths)) {
                for (int i = 0; i < r5.splitCodePaths.length; i++) {
                    collectCertificates(r5, new File(r5.splitCodePaths[i]), z);
                }
            }
        } finally {
            Trace.traceEnd(262144L);
        }
    }

    private static void collectCertificates(Package r2, File file, boolean z) throws PackageParserException {
        SigningDetails verify;
        String absolutePath = file.getAbsolutePath();
        int i = r2.applicationInfo.isStaticSharedLibrary() ? 2 : 1;
        if (z) {
            verify = ApkSignatureVerifier.plsCertsNoVerifyOnlyCerts(absolutePath, i);
        } else {
            verify = ApkSignatureVerifier.verify(absolutePath, i);
        }
        if (r2.mSigningDetails == SigningDetails.UNKNOWN) {
            r2.mSigningDetails = verify;
        } else {
            if (Signature.areExactMatch(r2.mSigningDetails.signatures, verify.signatures)) {
                return;
            }
            throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES, absolutePath + " has mismatched certificates");
        }
    }

    private static AssetManager newConfiguredAssetManager() {
        AssetManager assetManager = new AssetManager();
        assetManager.setConfiguration(0, 0, null, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, Build.VERSION.RESOURCES_SDK_INT);
        return assetManager;
    }

    public static ApkLite parseApkLite(File file, int i) throws PackageParserException {
        return parseApkLiteInner(file, null, null, i);
    }

    public static ApkLite parseApkLite(FileDescriptor fileDescriptor, String str, int i) throws PackageParserException {
        return parseApkLiteInner(null, fileDescriptor, str, i);
    }

    private static ApkLite parseApkLiteInner(File file, FileDescriptor fileDescriptor, String str, int i) throws PackageParserException {
        ApkAssets loadFromPath;
        XmlResourceParser openXml;
        SigningDetails signingDetails;
        String absolutePath = fileDescriptor != null ? str : file.getAbsolutePath();
        XmlResourceParser xmlResourceParser = null;
        try {
            try {
                try {
                    if (fileDescriptor != null) {
                        loadFromPath = ApkAssets.loadFromFd(fileDescriptor, str, false, false);
                    } else {
                        loadFromPath = ApkAssets.loadFromPath(absolutePath);
                    }
                    openXml = loadFromPath.openXml(ANDROID_MANIFEST_FILENAME);
                } catch (Throwable th) {
                    th = th;
                }
            } catch (IOException unused) {
                throw new PackageParserException(-100, "Failed to parse " + absolutePath);
            }
        } catch (IOException | RuntimeException | XmlPullParserException e) {
            e = e;
        }
        try {
            try {
                if ((i & 32) != 0) {
                    Package r7 = new Package((String) null);
                    boolean z = (i & 16) != 0;
                    Trace.traceBegin(262144L, "collectCertificates");
                    try {
                        collectCertificates(r7, file, z);
                        Trace.traceEnd(262144L);
                        signingDetails = r7.mSigningDetails;
                    } catch (Throwable th2) {
                        Trace.traceEnd(262144L);
                        throw th2;
                    }
                } else {
                    signingDetails = SigningDetails.UNKNOWN;
                }
                ApkLite parseApkLite = parseApkLite(absolutePath, openXml, openXml, signingDetails);
                IoUtils.closeQuietly(openXml);
                return parseApkLite;
            } catch (Throwable th3) {
                th = th3;
                xmlResourceParser = openXml;
                IoUtils.closeQuietly(xmlResourceParser);
                throw th;
            }
        } catch (IOException | RuntimeException | XmlPullParserException e2) {
            e = e2;
            Slog.w(TAG, "Failed to parse " + absolutePath, e);
            throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION, "Failed to parse " + absolutePath, e);
        }
    }

    private static String validateName(String str, boolean z, boolean z2) {
        int length = str.length();
        boolean z3 = false;
        boolean z4 = true;
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if ((charAt >= 'a' && charAt <= 'z') || (charAt >= 'A' && charAt <= 'Z')) {
                z4 = false;
            } else if (z4 || ((charAt < '0' || charAt > '9') && charAt != '_')) {
                if (charAt != '.') {
                    return "bad character '" + charAt + "'";
                }
                z3 = true;
                z4 = true;
            }
        }
        if (z2 && !FileUtils.isValidExtFilename(str)) {
            return "Invalid filename";
        }
        if (z3 || !z) {
            return null;
        }
        return "must have at least one '.' separator";
    }

    private static Pair<String, String> parsePackageSplitNames(XmlPullParser xmlPullParser, AttributeSet attributeSet) throws IOException, XmlPullParserException, PackageParserException {
        int next;
        String validateName;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED, "No start tag found");
        }
        if (!xmlPullParser.getName().equals(TAG_MANIFEST)) {
            throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED, "No <manifest> tag");
        }
        String attributeValue = attributeSet.getAttributeValue(null, "package");
        if (!"android".equals(attributeValue) && (validateName = validateName(attributeValue, true, true)) != null) {
            throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME, "Invalid manifest package: " + validateName);
        }
        String attributeValue2 = attributeSet.getAttributeValue(null, "split");
        if (attributeValue2 != null) {
            if (attributeValue2.length() == 0) {
                attributeValue2 = null;
            } else {
                String validateName2 = validateName(attributeValue2, false, false);
                if (validateName2 != null) {
                    throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME, "Invalid manifest split: " + validateName2);
                }
            }
        }
        String intern = attributeValue.intern();
        if (attributeValue2 != null) {
            attributeValue2 = attributeValue2.intern();
        }
        return Pair.create(intern, attributeValue2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x0174, code lost:
    
        return new android.content.pm.PackageParser.ApkLite(r25, (java.lang.String) r1.first, (java.lang.String) r1.second, r10, r11, r2, r13, r14, r15, r16, r12, r28, r19, r20, r21, r22, r23, r24);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static ApkLite parseApkLite(String str, XmlPullParser xmlPullParser, AttributeSet attributeSet, SigningDetails signingDetails) throws IOException, XmlPullParserException, PackageParserException {
        Pair<String, String> parsePackageSplitNames = parsePackageSplitNames(xmlPullParser, attributeSet);
        String str2 = null;
        String str3 = null;
        int i = -1;
        boolean z = false;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        boolean z2 = false;
        boolean z3 = false;
        for (int i5 = 0; i5 < attributeSet.getAttributeCount(); i5++) {
            String attributeName = attributeSet.getAttributeName(i5);
            if (attributeName.equals("installLocation")) {
                i = attributeSet.getAttributeIntValue(i5, -1);
            } else if (attributeName.equals("versionCode")) {
                i2 = attributeSet.getAttributeIntValue(i5, 0);
            } else if (attributeName.equals("versionCodeMajor")) {
                i3 = attributeSet.getAttributeIntValue(i5, 0);
            } else if (attributeName.equals("revisionCode")) {
                i4 = attributeSet.getAttributeIntValue(i5, 0);
            } else if (attributeName.equals("coreApp")) {
                z2 = attributeSet.getAttributeBooleanValue(i5, false);
            } else if (attributeName.equals("isolatedSplits")) {
                z3 = attributeSet.getAttributeBooleanValue(i5, false);
            } else if (attributeName.equals("configForSplit")) {
                str3 = attributeSet.getAttributeValue(i5);
            } else if (attributeName.equals("isFeatureSplit")) {
                z = attributeSet.getAttributeBooleanValue(i5, false);
            }
        }
        int depth = xmlPullParser.getDepth() + 1;
        ArrayList arrayList = new ArrayList();
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = true;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || (next == 3 && xmlPullParser.getDepth() < depth)) {
                break;
            }
            if (next != 3 && next != 4 && xmlPullParser.getDepth() == depth) {
                if (TAG_PACKAGE_VERIFIER.equals(xmlPullParser.getName())) {
                    VerifierInfo parseVerifier = parseVerifier(attributeSet);
                    if (parseVerifier != null) {
                        arrayList.add(parseVerifier);
                    }
                } else if (TAG_APPLICATION.equals(xmlPullParser.getName())) {
                    for (int i6 = 0; i6 < attributeSet.getAttributeCount(); i6++) {
                        String attributeName2 = attributeSet.getAttributeName(i6);
                        if ("debuggable".equals(attributeName2)) {
                            z4 = attributeSet.getAttributeBooleanValue(i6, false);
                        }
                        if ("multiArch".equals(attributeName2)) {
                            z5 = attributeSet.getAttributeBooleanValue(i6, false);
                        }
                        if ("use32bitAbi".equals(attributeName2)) {
                            z6 = attributeSet.getAttributeBooleanValue(i6, false);
                        }
                        if ("extractNativeLibs".equals(attributeName2)) {
                            z7 = attributeSet.getAttributeBooleanValue(i6, true);
                        }
                    }
                } else if (!TAG_USES_SPLIT.equals(xmlPullParser.getName())) {
                    continue;
                } else if (str2 != null) {
                    Slog.w(TAG, "Only one <uses-split> permitted. Ignoring others.");
                } else {
                    str2 = attributeSet.getAttributeValue(ANDROID_RESOURCES, MidiDeviceInfo.PROPERTY_NAME);
                    if (str2 == null) {
                        throw new PackageParserException(PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED, "<uses-split> tag requires 'android:name' attribute");
                    }
                }
            }
        }
    }

    private boolean parseBaseApkChild(Package r10, Resources resources, XmlResourceParser xmlResourceParser, int i, String[] strArr) throws XmlPullParserException, IOException {
        String attributeValue = xmlResourceParser.getAttributeValue(null, "package");
        if (validateName(attributeValue, true, false) != null) {
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME;
            return false;
        }
        if (attributeValue.equals(r10.packageName)) {
            String str = "Child package name cannot be equal to parent package name: " + r10.packageName;
            Slog.w(TAG, str);
            strArr[0] = str;
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            return false;
        }
        if (r10.hasChildPackage(attributeValue)) {
            String str2 = "Duplicate child package:" + attributeValue;
            Slog.w(TAG, str2);
            strArr[0] = str2;
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            return false;
        }
        Package r2 = new Package(attributeValue);
        r2.mVersionCode = r10.mVersionCode;
        r2.baseRevisionCode = r10.baseRevisionCode;
        r2.mVersionName = r10.mVersionName;
        r2.applicationInfo.targetSdkVersion = r10.applicationInfo.targetSdkVersion;
        r2.applicationInfo.minSdkVersion = r10.applicationInfo.minSdkVersion;
        Package parseBaseApkCommon = parseBaseApkCommon(r2, CHILD_PACKAGE_TAGS, resources, xmlResourceParser, i, strArr);
        if (parseBaseApkCommon == null) {
            return false;
        }
        if (r10.childPackages == null) {
            r10.childPackages = new ArrayList<>();
        }
        r10.childPackages.add(parseBaseApkCommon);
        parseBaseApkCommon.parentPackage = r10;
        return true;
    }

    private Package parseBaseApk(String str, Resources resources, XmlResourceParser xmlResourceParser, int i, String[] strArr) throws XmlPullParserException, IOException {
        String[] overlayPaths;
        try {
            Pair<String, String> parsePackageSplitNames = parsePackageSplitNames(xmlResourceParser, xmlResourceParser);
            String str2 = (String) parsePackageSplitNames.first;
            String str3 = (String) parsePackageSplitNames.second;
            if (!TextUtils.isEmpty(str3)) {
                strArr[0] = "Expected base APK, but found split " + str3;
                this.mParseError = PackageManager.INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME;
                return null;
            }
            if (this.mCallback != null && (overlayPaths = this.mCallback.getOverlayPaths(str2, str)) != null && overlayPaths.length > 0) {
                for (String str4 : overlayPaths) {
                    resources.getAssets().addOverlayPath(str4);
                }
            }
            Package r1 = new Package(str2);
            TypedArray obtainAttributes = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifest);
            r1.mVersionCode = obtainAttributes.getInteger(1, 0);
            r1.mVersionCodeMajor = obtainAttributes.getInteger(11, 0);
            r1.applicationInfo.setVersionCode(r1.getLongVersionCode());
            r1.baseRevisionCode = obtainAttributes.getInteger(5, 0);
            r1.mVersionName = obtainAttributes.getNonConfigurationString(2, 0);
            if (r1.mVersionName != null) {
                r1.mVersionName = r1.mVersionName.intern();
            }
            r1.coreApp = xmlResourceParser.getAttributeBooleanValue(null, "coreApp", false);
            r1.mCompileSdkVersion = obtainAttributes.getInteger(9, 0);
            r1.applicationInfo.compileSdkVersion = r1.mCompileSdkVersion;
            r1.mCompileSdkVersionCodename = obtainAttributes.getNonConfigurationString(10, 0);
            if (r1.mCompileSdkVersionCodename != null) {
                r1.mCompileSdkVersionCodename = r1.mCompileSdkVersionCodename.intern();
            }
            r1.applicationInfo.compileSdkVersionCodename = r1.mCompileSdkVersionCodename;
            obtainAttributes.recycle();
            return parseBaseApkCommon(r1, null, resources, xmlResourceParser, i, strArr);
        } catch (PackageParserException unused) {
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME;
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0709, code lost:
    
        r27.applicationInfo.flags |= 512;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0673, code lost:
    
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x01dd, code lost:
    
        r32[r14] = "<overlay> priority must be between 0 and 9999";
        r26.mParseError = android.content.pm.PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x01e3, code lost:
    
        return r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0656, code lost:
    
        r4 = r13;
        r13 = r19;
        r19 = r20;
        r15 = r21;
        r21 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x065f, code lost:
    
        if (r16 != false) goto L258;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0667, code lost:
    
        if (r27.instrumentation.size() != 0) goto L258;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0669, code lost:
    
        r1 = 0;
        r32[0] = "<manifest> does not contain an <application> or <instrumentation>";
        r26.mParseError = android.content.pm.PackageManager.INSTALL_PARSE_FAILED_MANIFEST_EMPTY;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0674, code lost:
    
        r0 = android.content.pm.PackageParser.NEW_PERMISSIONS.length;
        r2 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0678, code lost:
    
        if (r2 >= r0) goto L339;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x067a, code lost:
    
        r3 = android.content.pm.PackageParser.NEW_PERMISSIONS[r2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0684, code lost:
    
        if (r27.applicationInfo.targetSdkVersion < r3.sdkVersion) goto L264;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x068f, code lost:
    
        if (r27.requestedPermissions.contains(r3.name) != false) goto L341;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0691, code lost:
    
        if (r4 != 0) goto L268;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0693, code lost:
    
        r4 = new java.lang.StringBuilder(128);
        r4.append(r27.packageName);
        r4.append(": compat added ");
        r4 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x06aa, code lost:
    
        r4.append(r3.name);
        r27.requestedPermissions.add(r3.name);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x06b6, code lost:
    
        r2 = r2 + 1;
        r4 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x06a5, code lost:
    
        r4.append(' ');
        r4 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x06b9, code lost:
    
        if (r4 == 0) goto L273;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x06bb, code lost:
    
        android.util.Slog.i(android.content.pm.PackageParser.TAG, r4.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x06c4, code lost:
    
        r0 = android.content.pm.PackageParser.SPLIT_PERMISSIONS.length;
        r2 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x06c8, code lost:
    
        if (r2 >= r0) goto L342;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x06ca, code lost:
    
        r3 = android.content.pm.PackageParser.SPLIT_PERMISSIONS[r2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x06d4, code lost:
    
        if (r27.applicationInfo.targetSdkVersion >= r3.targetSdk) goto L343;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x06de, code lost:
    
        if (r27.requestedPermissions.contains(r3.rootPerm) != false) goto L280;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x06e1, code lost:
    
        r4 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x06e5, code lost:
    
        if (r4 >= r3.newPerms.length) goto L344;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x06e7, code lost:
    
        r5 = r3.newPerms[r4];
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x06f1, code lost:
    
        if (r27.requestedPermissions.contains(r5) != false) goto L347;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x06f3, code lost:
    
        r27.requestedPermissions.add(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x06f8, code lost:
    
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x06fb, code lost:
    
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x06fe, code lost:
    
        if (r21 < 0) goto L292;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0700, code lost:
    
        if (r21 <= 0) goto L293;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0707, code lost:
    
        if (r27.applicationInfo.targetSdkVersion < 4) goto L293;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0711, code lost:
    
        if (r17 == 0) goto L295;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0713, code lost:
    
        r27.applicationInfo.flags |= 1024;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x071b, code lost:
    
        if (r18 < 0) goto L299;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x071d, code lost:
    
        if (r18 <= 0) goto L300;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0724, code lost:
    
        if (r27.applicationInfo.targetSdkVersion < 4) goto L300;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x072e, code lost:
    
        if (r13 < 0) goto L304;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0730, code lost:
    
        if (r13 <= 0) goto L305;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0738, code lost:
    
        if (r27.applicationInfo.targetSdkVersion < 9) goto L305;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0743, code lost:
    
        if (r19 < 0) goto L309;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0745, code lost:
    
        if (r19 <= 0) goto L310;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x074c, code lost:
    
        if (r27.applicationInfo.targetSdkVersion < 4) goto L310;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0756, code lost:
    
        if (r15 < 0) goto L314;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0758, code lost:
    
        if (r15 <= 0) goto L315;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x075f, code lost:
    
        if (r27.applicationInfo.targetSdkVersion < 4) goto L315;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x076f, code lost:
    
        if (r27.applicationInfo.usesCompatibilityMode() == false) goto L318;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0771, code lost:
    
        adjustPackageToBeUnresizeableAndUnpipable(r27);
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0774, code lost:
    
        return r27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0761, code lost:
    
        r27.applicationInfo.flags |= 8192;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x074e, code lost:
    
        r27.applicationInfo.flags |= 4096;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x073a, code lost:
    
        r27.applicationInfo.flags |= 524288;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0726, code lost:
    
        r27.applicationInfo.flags |= 2048;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:236:0x03af  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x03d7  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x03d3 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r14v10 */
    /* JADX WARN: Type inference failed for: r2v44 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Package parseBaseApkCommon(Package r27, Set<String> set, Resources resources, XmlResourceParser xmlResourceParser, int i, String[] strArr) throws XmlPullParserException, IOException {
        int i2;
        Package r4;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        boolean z;
        int integer;
        int i8;
        int i9;
        String str;
        String str2;
        TypedValue peekValue;
        int computeMinSdkVersion;
        Package r13 = null;
        this.mParseInstrumentationArgs = null;
        TypedArray obtainAttributes = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifest);
        ?? r14 = 0;
        String nonConfigurationString = obtainAttributes.getNonConfigurationString(0, 0);
        int i10 = 3;
        int i11 = 1;
        if (nonConfigurationString != null && nonConfigurationString.length() > 0) {
            String validateName = validateName(nonConfigurationString, true, false);
            if (validateName != null && !"android".equals(r27.packageName)) {
                strArr[0] = "<manifest> specifies bad sharedUserId name \"" + nonConfigurationString + "\": " + validateName;
                this.mParseError = PackageManager.INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID;
                return null;
            }
            r27.mSharedUserId = nonConfigurationString.intern();
            r27.mSharedUserLabel = obtainAttributes.getResourceId(3, 0);
        }
        int i12 = 4;
        r27.installLocation = obtainAttributes.getInteger(4, -1);
        r27.applicationInfo.installLocation = r27.installLocation;
        r27.applicationInfo.targetSandboxVersion = obtainAttributes.getInteger(7, 1);
        if ((i & 4) != 0) {
            r27.applicationInfo.privateFlags |= 4;
        }
        if ((i & 8) != 0) {
            r27.applicationInfo.flags |= 262144;
        }
        if (obtainAttributes.getBoolean(6, false)) {
            r27.applicationInfo.privateFlags |= 32768;
        }
        int depth = xmlResourceParser.getDepth();
        int i13 = 1;
        int i14 = 1;
        int i15 = 1;
        int i16 = 1;
        int i17 = 1;
        int i18 = 1;
        boolean z2 = false;
        while (true) {
            int next = xmlResourceParser.next();
            if (next == i11 || (next == i10 && xmlResourceParser.getDepth() <= depth)) {
                break;
            }
            if (next == i10 || next == i12) {
                i2 = depth;
                r4 = r13;
                i3 = i16;
                i4 = i17;
                i5 = i18;
                i6 = i13;
                i7 = i11;
            } else {
                String name = xmlResourceParser.getName();
                if (set != null && !set.contains(name)) {
                    Slog.w(TAG, "Skipping unsupported element under <manifest>: " + name + " at " + this.mArchiveSourcePath + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + xmlResourceParser.getPositionDescription());
                    XmlUtils.skipCurrentTag(xmlResourceParser);
                } else {
                    if (!name.equals(TAG_APPLICATION)) {
                        int i19 = i13;
                        i2 = depth;
                        if (name.equals("overlay")) {
                            TypedArray obtainAttributes2 = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestResourceOverlay);
                            r27.mOverlayTarget = obtainAttributes2.getString(1);
                            r27.mOverlayCategory = obtainAttributes2.getString(2);
                            r27.mOverlayPriority = obtainAttributes2.getInt(r14, r14);
                            r27.mOverlayIsStatic = obtainAttributes2.getBoolean(3, r14);
                            String string = obtainAttributes2.getString(4);
                            String string2 = obtainAttributes2.getString(5);
                            obtainAttributes2.recycle();
                            if (r27.mOverlayTarget == null) {
                                strArr[r14] = "<overlay> does not specify a target package";
                                this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
                                return r13;
                            }
                            if (r27.mOverlayPriority < 0 || r27.mOverlayPriority > 9999) {
                                break;
                            }
                            if (!checkOverlayRequiredSystemProperty(string, string2)) {
                                Slog.i(TAG, "Skipping target and overlay pair " + r27.mOverlayTarget + " and " + r27.baseCodePath + ": overlay ignored due to required system property: " + string + " with value: " + string2);
                                return r13;
                            }
                            XmlUtils.skipCurrentTag(xmlResourceParser);
                        } else if (name.equals(TAG_KEY_SETS)) {
                            if (!parseKeySets(r27, resources, xmlResourceParser, strArr)) {
                                return r13;
                            }
                        } else if (name.equals(TAG_PERMISSION_GROUP)) {
                            if (!parsePermissionGroup(r27, i, resources, xmlResourceParser, strArr)) {
                                return r13;
                            }
                        } else if (name.equals("permission")) {
                            if (!parsePermission(r27, resources, xmlResourceParser, strArr)) {
                                return r13;
                            }
                        } else if (name.equals(TAG_PERMISSION_TREE)) {
                            if (!parsePermissionTree(r27, resources, xmlResourceParser, strArr)) {
                                return r13;
                            }
                        } else if (name.equals(TAG_USES_PERMISSION)) {
                            if (!parseUsesPermission(r27, resources, xmlResourceParser)) {
                                return r13;
                            }
                        } else {
                            if (name.equals(TAG_USES_PERMISSION_SDK_M) || name.equals(TAG_USES_PERMISSION_SDK_23)) {
                                i3 = i16;
                                i4 = i17;
                                i7 = 1;
                                i5 = i18;
                                i6 = i19;
                                if (!parseUsesPermission(r27, resources, xmlResourceParser)) {
                                    return null;
                                }
                            } else if (name.equals(TAG_USES_CONFIGURATION)) {
                                ConfigurationInfo configurationInfo = new ConfigurationInfo();
                                TypedArray obtainAttributes3 = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestUsesConfiguration);
                                configurationInfo.reqTouchScreen = obtainAttributes3.getInt(r14, r14);
                                configurationInfo.reqKeyboardType = obtainAttributes3.getInt(1, r14);
                                if (obtainAttributes3.getBoolean(2, r14)) {
                                    configurationInfo.reqInputFeatures |= 1;
                                }
                                configurationInfo.reqNavigation = obtainAttributes3.getInt(3, r14);
                                if (obtainAttributes3.getBoolean(4, r14)) {
                                    configurationInfo.reqInputFeatures |= 2;
                                }
                                obtainAttributes3.recycle();
                                r27.configPreferences = ArrayUtils.add(r27.configPreferences, configurationInfo);
                                XmlUtils.skipCurrentTag(xmlResourceParser);
                            } else {
                                int i20 = 4;
                                if (name.equals(TAG_USES_FEATURE)) {
                                    FeatureInfo parseUsesFeature = parseUsesFeature(resources, xmlResourceParser);
                                    r27.reqFeatures = ArrayUtils.add(r27.reqFeatures, parseUsesFeature);
                                    if (parseUsesFeature.name == null) {
                                        ConfigurationInfo configurationInfo2 = new ConfigurationInfo();
                                        configurationInfo2.reqGlEsVersion = parseUsesFeature.reqGlEsVersion;
                                        r27.configPreferences = ArrayUtils.add(r27.configPreferences, configurationInfo2);
                                    }
                                    XmlUtils.skipCurrentTag(xmlResourceParser);
                                } else if (name.equals(TAG_FEATURE_GROUP)) {
                                    FeatureGroupInfo featureGroupInfo = new FeatureGroupInfo();
                                    int depth2 = xmlResourceParser.getDepth();
                                    ArrayList arrayList = r13;
                                    while (true) {
                                        int next2 = xmlResourceParser.next();
                                        if (next2 == 1 || (next2 == 3 && xmlResourceParser.getDepth() <= depth2)) {
                                            break;
                                        }
                                        if (next2 != 3 && next2 != i20) {
                                            String name2 = xmlResourceParser.getName();
                                            if (name2.equals(TAG_USES_FEATURE)) {
                                                FeatureInfo parseUsesFeature2 = parseUsesFeature(resources, xmlResourceParser);
                                                parseUsesFeature2.flags |= 1;
                                                arrayList = ArrayUtils.add(arrayList, parseUsesFeature2);
                                            } else {
                                                Slog.w(TAG, "Unknown element under <feature-group>: " + name2 + " at " + this.mArchiveSourcePath + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + xmlResourceParser.getPositionDescription());
                                                arrayList = arrayList;
                                            }
                                            XmlUtils.skipCurrentTag(xmlResourceParser);
                                        }
                                        i20 = 4;
                                        arrayList = arrayList;
                                    }
                                    if (arrayList != 0) {
                                        featureGroupInfo.features = new FeatureInfo[arrayList.size()];
                                        featureGroupInfo.features = (FeatureInfo[]) arrayList.toArray(featureGroupInfo.features);
                                    }
                                    r27.featureGroups = ArrayUtils.add(r27.featureGroups, featureGroupInfo);
                                    i3 = i16;
                                    i4 = i17;
                                    r4 = null;
                                    i7 = 1;
                                    i5 = i18;
                                    i6 = i19;
                                    i13 = i6;
                                    i18 = i5;
                                    int i21 = i4;
                                    i16 = i3;
                                    integer = i21;
                                } else if (name.equals(TAG_USES_SDK)) {
                                    if (SDK_VERSION > 0) {
                                        TypedArray obtainAttributes4 = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestUsesSdk);
                                        TypedValue peekValue2 = obtainAttributes4.peekValue(r14);
                                        if (peekValue2 == null) {
                                            i8 = r14;
                                            i9 = 1;
                                        } else if (peekValue2.type == 3 && peekValue2.string != null) {
                                            str2 = peekValue2.string.toString();
                                            str = str2;
                                            i8 = r14;
                                            i9 = 1;
                                            peekValue = obtainAttributes4.peekValue(1);
                                            if (peekValue != null) {
                                                if (peekValue.type == 3 && peekValue.string != null) {
                                                    str = peekValue.string.toString();
                                                    if (str2 == null) {
                                                        str2 = str;
                                                    }
                                                } else {
                                                    i8 = peekValue.data;
                                                }
                                            }
                                            obtainAttributes4.recycle();
                                            computeMinSdkVersion = computeMinSdkVersion(i9, str2, SDK_VERSION, SDK_CODENAMES, strArr);
                                            if (computeMinSdkVersion >= 0) {
                                                this.mParseError = -12;
                                                return null;
                                            }
                                            int computeTargetSdkVersion = computeTargetSdkVersion(i8, str, SDK_CODENAMES, strArr, (i & 128) != 0 ? true : r14);
                                            if (computeTargetSdkVersion < 0) {
                                                this.mParseError = -12;
                                                return null;
                                            }
                                            r27.applicationInfo.minSdkVersion = computeMinSdkVersion;
                                            r27.applicationInfo.targetSdkVersion = computeTargetSdkVersion;
                                        } else {
                                            i9 = peekValue2.data;
                                            i8 = i9;
                                        }
                                        str = null;
                                        str2 = null;
                                        peekValue = obtainAttributes4.peekValue(1);
                                        if (peekValue != null) {
                                        }
                                        obtainAttributes4.recycle();
                                        computeMinSdkVersion = computeMinSdkVersion(i9, str2, SDK_VERSION, SDK_CODENAMES, strArr);
                                        if (computeMinSdkVersion >= 0) {
                                        }
                                    }
                                    XmlUtils.skipCurrentTag(xmlResourceParser);
                                    i3 = i16;
                                    i4 = i17;
                                    i5 = i18;
                                    i6 = i19;
                                    r4 = null;
                                    i7 = 1;
                                    i13 = i6;
                                    i18 = i5;
                                    int i212 = i4;
                                    i16 = i3;
                                    integer = i212;
                                } else if (name.equals(TAG_SUPPORT_SCREENS)) {
                                    TypedArray obtainAttributes5 = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestSupportsScreens);
                                    r27.applicationInfo.requiresSmallestWidthDp = obtainAttributes5.getInteger(6, r14);
                                    r27.applicationInfo.compatibleWidthLimitDp = obtainAttributes5.getInteger(7, r14);
                                    r27.applicationInfo.largestWidthLimitDp = obtainAttributes5.getInteger(8, r14);
                                    int integer2 = obtainAttributes5.getInteger(1, i19);
                                    int integer3 = obtainAttributes5.getInteger(2, i14);
                                    int integer4 = obtainAttributes5.getInteger(3, i15);
                                    int integer5 = obtainAttributes5.getInteger(5, i16);
                                    integer = obtainAttributes5.getInteger(4, i17);
                                    int integer6 = obtainAttributes5.getInteger(r14, i18);
                                    obtainAttributes5.recycle();
                                    XmlUtils.skipCurrentTag(xmlResourceParser);
                                    i16 = integer5;
                                    i13 = integer2;
                                    i14 = integer3;
                                    i7 = 1;
                                    i15 = integer4;
                                    i18 = integer6;
                                    r4 = null;
                                } else {
                                    i3 = i16;
                                    i4 = i17;
                                    i5 = i18;
                                    if (name.equals(TAG_PROTECTED_BROADCAST)) {
                                        TypedArray obtainAttributes6 = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestProtectedBroadcast);
                                        String nonResourceString = obtainAttributes6.getNonResourceString(r14);
                                        obtainAttributes6.recycle();
                                        if (nonResourceString != null) {
                                            if (r27.protectedBroadcasts == null) {
                                                r27.protectedBroadcasts = new ArrayList<>();
                                            }
                                            if (!r27.protectedBroadcasts.contains(nonResourceString)) {
                                                r27.protectedBroadcasts.add(nonResourceString.intern());
                                            }
                                        }
                                        XmlUtils.skipCurrentTag(xmlResourceParser);
                                    } else if (name.equals(TAG_INSTRUMENTATION)) {
                                        if (parseInstrumentation(r27, resources, xmlResourceParser, strArr) == null) {
                                            return null;
                                        }
                                    } else if (name.equals(TAG_ORIGINAL_PACKAGE)) {
                                        TypedArray obtainAttributes7 = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestOriginalPackage);
                                        String nonConfigurationString2 = obtainAttributes7.getNonConfigurationString(r14, r14);
                                        if (!r27.packageName.equals(nonConfigurationString2)) {
                                            if (r27.mOriginalPackages == null) {
                                                r27.mOriginalPackages = new ArrayList<>();
                                                r27.mRealPackage = r27.packageName;
                                            }
                                            r27.mOriginalPackages.add(nonConfigurationString2);
                                        }
                                        obtainAttributes7.recycle();
                                        XmlUtils.skipCurrentTag(xmlResourceParser);
                                    } else if (name.equals(TAG_ADOPT_PERMISSIONS)) {
                                        TypedArray obtainAttributes8 = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestOriginalPackage);
                                        String nonConfigurationString3 = obtainAttributes8.getNonConfigurationString(r14, r14);
                                        obtainAttributes8.recycle();
                                        if (nonConfigurationString3 != null) {
                                            if (r27.mAdoptPermissions == null) {
                                                r27.mAdoptPermissions = new ArrayList<>();
                                            }
                                            r27.mAdoptPermissions.add(nonConfigurationString3);
                                        }
                                        XmlUtils.skipCurrentTag(xmlResourceParser);
                                    } else {
                                        if (name.equals(TAG_USES_GL_TEXTURE)) {
                                            XmlUtils.skipCurrentTag(xmlResourceParser);
                                        } else if (name.equals(TAG_COMPATIBLE_SCREENS)) {
                                            XmlUtils.skipCurrentTag(xmlResourceParser);
                                        } else if (name.equals(TAG_SUPPORTS_INPUT)) {
                                            XmlUtils.skipCurrentTag(xmlResourceParser);
                                        } else if (name.equals(TAG_EAT_COMMENT)) {
                                            XmlUtils.skipCurrentTag(xmlResourceParser);
                                        } else if (name.equals("package")) {
                                            if (!MULTI_PACKAGE_APK_ENABLED) {
                                                XmlUtils.skipCurrentTag(xmlResourceParser);
                                            } else {
                                                i7 = 1;
                                                i6 = i19;
                                                if (!parseBaseApkChild(r27, resources, xmlResourceParser, i, strArr)) {
                                                    return null;
                                                }
                                            }
                                        } else {
                                            i7 = 1;
                                            i6 = i19;
                                            if (name.equals(TAG_RESTRICT_UPDATE)) {
                                                if ((i & 16) != 0) {
                                                    TypedArray obtainAttributes9 = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestRestrictUpdate);
                                                    String nonConfigurationString4 = obtainAttributes9.getNonConfigurationString(r14, r14);
                                                    obtainAttributes9.recycle();
                                                    r27.restrictUpdateHash = null;
                                                    if (nonConfigurationString4 != null) {
                                                        int length = nonConfigurationString4.length();
                                                        byte[] bArr = new byte[length / 2];
                                                        int i22 = r14;
                                                        while (i22 < length) {
                                                            bArr[i22 / 2] = (byte) ((Character.digit(nonConfigurationString4.charAt(i22), 16) << 4) + Character.digit(nonConfigurationString4.charAt(i22 + 1), 16));
                                                            i22 += 2;
                                                            length = length;
                                                        }
                                                        r27.restrictUpdateHash = bArr;
                                                    }
                                                }
                                                XmlUtils.skipCurrentTag(xmlResourceParser);
                                            } else {
                                                Slog.w(TAG, "Unknown element under <manifest>: " + xmlResourceParser.getName() + " at " + this.mArchiveSourcePath + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + xmlResourceParser.getPositionDescription());
                                                XmlUtils.skipCurrentTag(xmlResourceParser);
                                                r4 = null;
                                            }
                                        }
                                        i7 = 1;
                                        i6 = i19;
                                        r4 = null;
                                    }
                                    i7 = 1;
                                    i6 = i19;
                                }
                            }
                            r4 = null;
                            i13 = i6;
                            i18 = i5;
                            int i2122 = i4;
                            i16 = i3;
                            integer = i2122;
                        }
                        r4 = r13;
                        i3 = i16;
                        i4 = i17;
                        i7 = 1;
                        i5 = i18;
                        i6 = i19;
                        i13 = i6;
                        i18 = i5;
                        int i21222 = i4;
                        i16 = i3;
                        integer = i21222;
                    } else if (z2) {
                        Slog.w(TAG, "<manifest> has more than one <application>");
                        XmlUtils.skipCurrentTag(xmlResourceParser);
                    } else {
                        int i23 = i13;
                        i2 = depth;
                        if (!parseBaseApplication(r27, resources, xmlResourceParser, i, strArr)) {
                            return r13;
                        }
                        r4 = r13;
                        z2 = true;
                        integer = i17;
                        i13 = i23;
                        i7 = 1;
                    }
                    i11 = i7;
                    depth = i2;
                    z = false;
                    i10 = 3;
                    i17 = integer;
                    r13 = r4;
                    i12 = 4;
                    r14 = z;
                }
                i2 = depth;
                r4 = r13;
                i3 = i16;
                i4 = i17;
                i5 = i18;
                i7 = 1;
                i6 = i13;
            }
            i11 = i7;
            i13 = i6;
            depth = i2;
            z = false;
            i18 = i5;
            i17 = i4;
            i10 = 3;
            i16 = i3;
            r13 = r4;
            i12 = 4;
            r14 = z;
        }
    }

    private boolean checkOverlayRequiredSystemProperty(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
                return true;
            }
            Slog.w(TAG, "Disabling overlay - incomplete property :'" + str + "=" + str2 + "' - require both requiredSystemPropertyName AND requiredSystemPropertyValue to be specified.");
            return false;
        }
        String str3 = SystemProperties.get(str);
        return str3 != null && str3.equals(str2);
    }

    private void adjustPackageToBeUnresizeableAndUnpipable(Package r3) {
        Iterator<Activity> it = r3.activities.iterator();
        while (it.hasNext()) {
            Activity next = it.next();
            next.info.resizeMode = 0;
            next.info.flags &= -4194305;
        }
    }

    public static int computeTargetSdkVersion(int i, String str, String[] strArr, String[] strArr2, boolean z) {
        if (str == null) {
            return i;
        }
        if (ArrayUtils.contains(strArr, str) || z) {
            return MiniThumbFile.BYTES_PER_MINTHUMB;
        }
        if (strArr.length > 0) {
            strArr2[0] = "Requires development platform " + str + " (current platform is any of " + Arrays.toString(strArr) + ")";
            return -1;
        }
        strArr2[0] = "Requires development platform " + str + " but this is a release platform.";
        return -1;
    }

    public static int computeMinSdkVersion(int i, String str, int i2, String[] strArr, String[] strArr2) {
        if (str == null) {
            if (i <= i2) {
                return i;
            }
            strArr2[0] = "Requires newer sdk version #" + i + " (current version is #" + i2 + ")";
            return -1;
        }
        if (ArrayUtils.contains(strArr, str)) {
            return MiniThumbFile.BYTES_PER_MINTHUMB;
        }
        if (strArr.length > 0) {
            strArr2[0] = "Requires development platform " + str + " (current platform is any of " + Arrays.toString(strArr) + ")";
        } else {
            strArr2[0] = "Requires development platform " + str + " but this is a release platform.";
        }
        return -1;
    }

    private FeatureInfo parseUsesFeature(Resources resources, AttributeSet attributeSet) {
        FeatureInfo featureInfo = new FeatureInfo();
        TypedArray obtainAttributes = resources.obtainAttributes(attributeSet, R.styleable.AndroidManifestUsesFeature);
        featureInfo.name = obtainAttributes.getNonResourceString(0);
        featureInfo.version = obtainAttributes.getInt(3, 0);
        if (featureInfo.name == null) {
            featureInfo.reqGlEsVersion = obtainAttributes.getInt(1, 0);
        }
        if (obtainAttributes.getBoolean(2, true)) {
            featureInfo.flags |= 1;
        }
        obtainAttributes.recycle();
        return featureInfo;
    }

    private boolean parseUsesStaticLibrary(Package r9, Resources resources, XmlResourceParser xmlResourceParser, String[] strArr) throws XmlPullParserException, IOException {
        TypedArray obtainAttributes = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestUsesStaticLibrary);
        String nonResourceString = obtainAttributes.getNonResourceString(0);
        int i = obtainAttributes.getInt(1, -1);
        String nonResourceString2 = obtainAttributes.getNonResourceString(2);
        obtainAttributes.recycle();
        if (nonResourceString == null || i < 0 || nonResourceString2 == null) {
            strArr[0] = "Bad uses-static-library declaration name: " + nonResourceString + " version: " + i + " certDigest" + nonResourceString2;
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            XmlUtils.skipCurrentTag(xmlResourceParser);
            return false;
        }
        if (r9.usesStaticLibraries != null && r9.usesStaticLibraries.contains(nonResourceString)) {
            strArr[0] = "Depending on multiple versions of static library " + nonResourceString;
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            XmlUtils.skipCurrentTag(xmlResourceParser);
            return false;
        }
        String intern = nonResourceString.intern();
        String lowerCase = nonResourceString2.replace(":", "").toLowerCase();
        String[] strArr2 = EmptyArray.STRING;
        if (r9.applicationInfo.targetSdkVersion >= 27) {
            strArr2 = parseAdditionalCertificates(resources, xmlResourceParser, strArr);
            if (strArr2 == null) {
                return false;
            }
        } else {
            XmlUtils.skipCurrentTag(xmlResourceParser);
        }
        String[] strArr3 = new String[strArr2.length + 1];
        strArr3[0] = lowerCase;
        System.arraycopy(strArr2, 0, strArr3, 1, strArr2.length);
        r9.usesStaticLibraries = ArrayUtils.add(r9.usesStaticLibraries, intern);
        r9.usesStaticLibrariesVersions = ArrayUtils.appendLong(r9.usesStaticLibrariesVersions, i, true);
        r9.usesStaticLibrariesCertDigests = (String[][]) ArrayUtils.appendElement(String[].class, r9.usesStaticLibrariesCertDigests, strArr3, true);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0074, code lost:
    
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String[] parseAdditionalCertificates(Resources resources, XmlResourceParser xmlResourceParser, String[] strArr) throws XmlPullParserException, IOException {
        String[] strArr2 = EmptyArray.STRING;
        int depth = xmlResourceParser.getDepth();
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 1 || (next == 3 && xmlResourceParser.getDepth() <= depth)) {
                break;
            }
            if (next != 3 && next != 4) {
                if (xmlResourceParser.getName().equals("additional-certificate")) {
                    TypedArray obtainAttributes = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestAdditionalCertificate);
                    String nonResourceString = obtainAttributes.getNonResourceString(0);
                    obtainAttributes.recycle();
                    if (TextUtils.isEmpty(nonResourceString)) {
                        strArr[0] = "Bad additional-certificate declaration with empty certDigest:" + nonResourceString;
                        this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
                        XmlUtils.skipCurrentTag(xmlResourceParser);
                        obtainAttributes.recycle();
                        return null;
                    }
                    strArr2 = (String[]) ArrayUtils.appendElement(String.class, strArr2, nonResourceString.replace(":", "").toLowerCase());
                } else {
                    XmlUtils.skipCurrentTag(xmlResourceParser);
                }
            }
        }
    }

    private boolean parseUsesPermission(Package r7, Resources resources, XmlResourceParser xmlResourceParser) throws XmlPullParserException, IOException {
        TypedArray obtainAttributes = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestUsesPermission);
        String nonResourceString = obtainAttributes.getNonResourceString(0);
        TypedValue peekValue = obtainAttributes.peekValue(1);
        int i = (peekValue == null || peekValue.type < 16 || peekValue.type > 31) ? 0 : peekValue.data;
        String nonConfigurationString = obtainAttributes.getNonConfigurationString(2, 0);
        String nonConfigurationString2 = obtainAttributes.getNonConfigurationString(3, 0);
        obtainAttributes.recycle();
        XmlUtils.skipCurrentTag(xmlResourceParser);
        if (nonResourceString == null) {
            return true;
        }
        if (i != 0 && i < Build.VERSION.RESOURCES_SDK_INT) {
            return true;
        }
        if (nonConfigurationString != null && this.mCallback != null && !this.mCallback.hasFeature(nonConfigurationString)) {
            return true;
        }
        if (nonConfigurationString2 != null && this.mCallback != null && this.mCallback.hasFeature(nonConfigurationString2)) {
            return true;
        }
        if (r7.requestedPermissions.indexOf(nonResourceString) == -1) {
            r7.requestedPermissions.add(nonResourceString.intern());
        } else {
            Slog.w(TAG, "Ignoring duplicate uses-permissions/uses-permissions-sdk-m: " + nonResourceString + " in package: " + r7.packageName + " at: " + xmlResourceParser.getPositionDescription());
        }
        return true;
    }

    private static String buildClassName(String str, CharSequence charSequence, String[] strArr) {
        if (charSequence == null || charSequence.length() <= 0) {
            strArr[0] = "Empty class name in package " + str;
            return null;
        }
        String charSequence2 = charSequence.toString();
        if (charSequence2.charAt(0) == '.') {
            return str + charSequence2;
        }
        if (charSequence2.indexOf(46) >= 0) {
            return charSequence2;
        }
        return str + '.' + charSequence2;
    }

    private static String buildCompoundName(String str, CharSequence charSequence, String str2, String[] strArr) {
        String charSequence2 = charSequence.toString();
        char charAt = charSequence2.charAt(0);
        if (str != null && charAt == ':') {
            if (charSequence2.length() < 2) {
                strArr[0] = "Bad " + str2 + " name " + charSequence2 + " in package " + str + ": must be at least two characters";
                return null;
            }
            String validateName = validateName(charSequence2.substring(1), false, false);
            if (validateName != null) {
                strArr[0] = "Invalid " + str2 + " name " + charSequence2 + " in package " + str + ": " + validateName;
                return null;
            }
            return str + charSequence2;
        }
        String validateName2 = validateName(charSequence2, true, false);
        if (validateName2 == null || "system".equals(charSequence2)) {
            return charSequence2;
        }
        strArr[0] = "Invalid " + str2 + " name " + charSequence2 + " in package " + str + ": " + validateName2;
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String buildProcessName(String str, String str2, CharSequence charSequence, int i, String[] strArr, String[] strArr2) {
        if ((i & 2) != 0 && !"system".equals(charSequence)) {
            return str2 != null ? str2 : str;
        }
        if (strArr != null) {
            for (int length = strArr.length - 1; length >= 0; length--) {
                String str3 = strArr[length];
                if (str3.equals(str) || str3.equals(str2) || str3.equals(charSequence)) {
                    return str;
                }
            }
        }
        return (charSequence == null || charSequence.length() <= 0) ? str2 : TextUtils.safeIntern(buildCompoundName(str, charSequence, "process", strArr2));
    }

    private static String buildTaskAffinityName(String str, String str2, CharSequence charSequence, String[] strArr) {
        if (charSequence == null) {
            return str2;
        }
        if (charSequence.length() <= 0) {
            return null;
        }
        return buildCompoundName(str, charSequence, "taskAffinity", strArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x01d0, code lost:
    
        if (r5.keySet().removeAll(r7.keySet()) == false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x01d2, code lost:
    
        r20[0] = "Package" + r17.packageName + " AndroidManifext.xml 'key-set' and 'public-key' names must be distinct.";
        r16.mParseError = android.content.pm.PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x01f1, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x01f2, code lost:
    
        r17.mKeySetMapping = new android.util.ArrayMap<>();
        r2 = r7.entrySet().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0205, code lost:
    
        if (r2.hasNext() == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0207, code lost:
    
        r3 = (java.util.Map.Entry) r2.next();
        r4 = (java.lang.String) r3.getKey();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x021d, code lost:
    
        if (((android.util.ArraySet) r3.getValue()).size() != 0) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0249, code lost:
    
        if (r8.contains(r4) == false) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0271, code lost:
    
        r17.mKeySetMapping.put(r4, new android.util.ArraySet<>());
        r3 = ((android.util.ArraySet) r3.getValue()).iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0289, code lost:
    
        if (r3.hasNext() == false) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x028b, code lost:
    
        r17.mKeySetMapping.get(r4).add((java.security.PublicKey) r5.get((java.lang.String) r3.next()));
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x024b, code lost:
    
        android.util.Slog.w(android.content.pm.PackageParser.TAG, "Package" + r17.packageName + " AndroidManifext.xml 'key-set' " + r4 + " contained improper 'public-key' tags. Not including in package's defined key-sets.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x021f, code lost:
    
        android.util.Slog.w(android.content.pm.PackageParser.TAG, "Package" + r17.packageName + " AndroidManifext.xml 'key-set' " + r4 + " has no valid associated 'public-key'. Not including in package's defined key-sets.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x02ad, code lost:
    
        if (r17.mKeySetMapping.keySet().containsAll(r6) == false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x02af, code lost:
    
        r17.mUpgradeKeySets = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x02b2, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x02b3, code lost:
    
        r20[0] = "Package" + r17.packageName + " AndroidManifext.xml does not define all 'upgrade-key-set's .";
        r16.mParseError = android.content.pm.PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x02d2, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean parseKeySets(Package r17, Resources resources, XmlResourceParser xmlResourceParser, String[] strArr) throws XmlPullParserException, IOException {
        int depth = xmlResourceParser.getDepth();
        ArrayMap arrayMap = new ArrayMap();
        ArraySet<String> arraySet = new ArraySet<>();
        ArrayMap arrayMap2 = new ArrayMap();
        ArraySet arraySet2 = new ArraySet();
        loop0: while (true) {
            int i = -1;
            String str = null;
            while (true) {
                int next = xmlResourceParser.next();
                if (next == 1 || (next == 3 && xmlResourceParser.getDepth() <= depth)) {
                    break loop0;
                }
                if (next == 3) {
                    if (xmlResourceParser.getDepth() == i) {
                        break;
                    }
                } else {
                    String name = xmlResourceParser.getName();
                    if (name.equals("key-set")) {
                        if (str != null) {
                            strArr[0] = "Improperly nested 'key-set' tag at " + xmlResourceParser.getPositionDescription();
                            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
                            return false;
                        }
                        TypedArray obtainAttributes = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestKeySet);
                        String nonResourceString = obtainAttributes.getNonResourceString(0);
                        arrayMap2.put(nonResourceString, new ArraySet());
                        i = xmlResourceParser.getDepth();
                        obtainAttributes.recycle();
                        str = nonResourceString;
                    } else if (name.equals("public-key")) {
                        if (str == null) {
                            strArr[0] = "Improperly nested 'key-set' tag at " + xmlResourceParser.getPositionDescription();
                            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
                            return false;
                        }
                        TypedArray obtainAttributes2 = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestPublicKey);
                        String nonResourceString2 = obtainAttributes2.getNonResourceString(0);
                        String nonResourceString3 = obtainAttributes2.getNonResourceString(1);
                        if (nonResourceString3 == null && arrayMap.get(nonResourceString2) == null) {
                            strArr[0] = "'public-key' " + nonResourceString2 + " must define a public-key value on first use at " + xmlResourceParser.getPositionDescription();
                            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
                            obtainAttributes2.recycle();
                            return false;
                        }
                        if (nonResourceString3 != null) {
                            PublicKey parsePublicKey = parsePublicKey(nonResourceString3);
                            if (parsePublicKey == null) {
                                Slog.w(TAG, "No recognized valid key in 'public-key' tag at " + xmlResourceParser.getPositionDescription() + " key-set " + str + " will not be added to the package's defined key-sets.");
                                obtainAttributes2.recycle();
                                arraySet2.add(str);
                                XmlUtils.skipCurrentTag(xmlResourceParser);
                            } else if (arrayMap.get(nonResourceString2) == null || ((PublicKey) arrayMap.get(nonResourceString2)).equals(parsePublicKey)) {
                                arrayMap.put(nonResourceString2, parsePublicKey);
                            } else {
                                strArr[0] = "Value of 'public-key' " + nonResourceString2 + " conflicts with previously defined value at " + xmlResourceParser.getPositionDescription();
                                this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
                                obtainAttributes2.recycle();
                                return false;
                            }
                        }
                        ((ArraySet) arrayMap2.get(str)).add(nonResourceString2);
                        obtainAttributes2.recycle();
                        XmlUtils.skipCurrentTag(xmlResourceParser);
                    } else if (name.equals("upgrade-key-set")) {
                        TypedArray obtainAttributes3 = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestUpgradeKeySet);
                        arraySet.add(obtainAttributes3.getNonResourceString(0));
                        obtainAttributes3.recycle();
                        XmlUtils.skipCurrentTag(xmlResourceParser);
                    } else {
                        Slog.w(TAG, "Unknown element under <key-sets>: " + xmlResourceParser.getName() + " at " + this.mArchiveSourcePath + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + xmlResourceParser.getPositionDescription());
                        XmlUtils.skipCurrentTag(xmlResourceParser);
                    }
                }
            }
        }
    }

    private boolean parsePermissionGroup(Package r20, int i, Resources resources, XmlResourceParser xmlResourceParser, String[] strArr) throws XmlPullParserException, IOException {
        PermissionGroup permissionGroup = new PermissionGroup(r20);
        TypedArray obtainAttributes = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestPermissionGroup);
        if (!parsePackageItemInfo(r20, permissionGroup.info, strArr, "<permission-group>", obtainAttributes, true, 2, 0, 1, 8, 5, 7)) {
            obtainAttributes.recycle();
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            return false;
        }
        permissionGroup.info.descriptionRes = obtainAttributes.getResourceId(4, 0);
        permissionGroup.info.requestRes = obtainAttributes.getResourceId(9, 0);
        permissionGroup.info.flags = obtainAttributes.getInt(6, 0);
        permissionGroup.info.priority = obtainAttributes.getInt(3, 0);
        obtainAttributes.recycle();
        if (!parseAllMetaData(resources, xmlResourceParser, "<permission-group>", permissionGroup, strArr)) {
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            return false;
        }
        r20.permissionGroups.add(permissionGroup);
        return true;
    }

    private boolean parsePermission(Package r20, Resources resources, XmlResourceParser xmlResourceParser, String[] strArr) throws XmlPullParserException, IOException {
        TypedArray obtainAttributes = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestPermission);
        Permission permission = new Permission(r20);
        if (!parsePackageItemInfo(r20, permission.info, strArr, "<permission>", obtainAttributes, true, 2, 0, 1, 9, 6, 8)) {
            obtainAttributes.recycle();
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            return false;
        }
        permission.info.group = obtainAttributes.getNonResourceString(4);
        if (permission.info.group != null) {
            permission.info.group = permission.info.group.intern();
        }
        permission.info.descriptionRes = obtainAttributes.getResourceId(5, 0);
        permission.info.requestRes = obtainAttributes.getResourceId(10, 0);
        permission.info.protectionLevel = obtainAttributes.getInt(3, 0);
        permission.info.flags = obtainAttributes.getInt(7, 0);
        obtainAttributes.recycle();
        if (permission.info.protectionLevel == -1) {
            strArr[0] = "<permission> does not specify protectionLevel";
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            return false;
        }
        permission.info.protectionLevel = PermissionInfo.fixProtectionLevel(permission.info.protectionLevel);
        if (permission.info.getProtectionFlags() != 0 && (permission.info.protectionLevel & 4096) == 0 && (permission.info.protectionLevel & 8192) == 0 && (permission.info.protectionLevel & 15) != 2) {
            strArr[0] = "<permission>  protectionLevel specifies a non-instant flag but is not based on signature type";
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            return false;
        }
        if (!parseAllMetaData(resources, xmlResourceParser, "<permission>", permission, strArr)) {
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            return false;
        }
        r20.permissions.add(permission);
        return true;
    }

    private boolean parsePermissionTree(Package r20, Resources resources, XmlResourceParser xmlResourceParser, String[] strArr) throws XmlPullParserException, IOException {
        Permission permission = new Permission(r20);
        TypedArray obtainAttributes = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestPermissionTree);
        if (!parsePackageItemInfo(r20, permission.info, strArr, "<permission-tree>", obtainAttributes, true, 2, 0, 1, 5, 3, 4)) {
            obtainAttributes.recycle();
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            return false;
        }
        obtainAttributes.recycle();
        int indexOf = permission.info.name.indexOf(46);
        if (indexOf > 0) {
            indexOf = permission.info.name.indexOf(46, indexOf + 1);
        }
        if (indexOf < 0) {
            strArr[0] = "<permission-tree> name has less than three segments: " + permission.info.name;
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            return false;
        }
        permission.info.descriptionRes = 0;
        permission.info.requestRes = 0;
        permission.info.protectionLevel = 0;
        permission.tree = true;
        if (!parseAllMetaData(resources, xmlResourceParser, "<permission-tree>", permission, strArr)) {
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            return false;
        }
        r20.permissions.add(permission);
        return true;
    }

    private Instrumentation parseInstrumentation(Package r12, Resources resources, XmlResourceParser xmlResourceParser, String[] strArr) throws XmlPullParserException, IOException {
        TypedArray obtainAttributes = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestInstrumentation);
        if (this.mParseInstrumentationArgs == null) {
            this.mParseInstrumentationArgs = new ParsePackageItemArgs(r12, strArr, 2, 0, 1, 8, 6, 7);
            this.mParseInstrumentationArgs.tag = "<instrumentation>";
        }
        this.mParseInstrumentationArgs.sa = obtainAttributes;
        Instrumentation instrumentation = new Instrumentation(this.mParseInstrumentationArgs, new InstrumentationInfo());
        if (strArr[0] != null) {
            obtainAttributes.recycle();
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            return null;
        }
        String nonResourceString = obtainAttributes.getNonResourceString(3);
        instrumentation.info.targetPackage = nonResourceString != null ? nonResourceString.intern() : null;
        String nonResourceString2 = obtainAttributes.getNonResourceString(9);
        instrumentation.info.targetProcesses = nonResourceString2 != null ? nonResourceString2.intern() : null;
        instrumentation.info.handleProfiling = obtainAttributes.getBoolean(4, false);
        instrumentation.info.functionalTest = obtainAttributes.getBoolean(5, false);
        obtainAttributes.recycle();
        if (instrumentation.info.targetPackage == null) {
            strArr[0] = "<instrumentation> does not specify targetPackage";
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            return null;
        }
        if (!parseAllMetaData(resources, xmlResourceParser, "<instrumentation>", instrumentation, strArr)) {
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            return null;
        }
        r12.instrumentation.add(instrumentation);
        return instrumentation;
    }

    /* JADX WARN: Code restructure failed: missing block: B:156:0x05ff, code lost:
    
        r7 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0600, code lost:
    
        if (r17 == false) goto L281;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x0602, code lost:
    
        java.util.Collections.sort(r7.activities, android.content.pm.$$Lambda$PackageParser$0aobsT7Zf7WVZCqMZ5z2clAuQf4.INSTANCE);
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x0609, code lost:
    
        if (r18 == false) goto L283;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x060b, code lost:
    
        java.util.Collections.sort(r7.receivers, android.content.pm.$$Lambda$PackageParser$0DZRgzfgaIMpCOhJqjw6PUiU5vw.INSTANCE);
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x0612, code lost:
    
        if (r19 == false) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x0614, code lost:
    
        java.util.Collections.sort(r7.services, android.content.pm.$$Lambda$PackageParser$M9fHqS_eEp1oYkuKJhRHOGUxf8.INSTANCE);
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x061b, code lost:
    
        setMaxAspectRatio(r25);
        android.content.pm.PackageBackwardCompatibility.modifySharedLibraries(r25);
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x0625, code lost:
    
        if (hasDomainURLs(r25) == false) goto L289;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x0627, code lost:
    
        r7.applicationInfo.privateFlags |= 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x0630, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x0632, code lost:
    
        r7.applicationInfo.privateFlags &= -17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:?, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:261:0x050a, code lost:
    
        r10[0] = "Bad static-library declaration name: " + r1 + " version: " + r4;
        r24.mParseError = android.content.pm.PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
        com.android.internal.util.XmlUtils.skipCurrentTag(r27);
     */
    /* JADX WARN: Code restructure failed: missing block: B:262:0x052c, code lost:
    
        return false;
     */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0329  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x032e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean parseBaseApplication(Package r25, Resources resources, XmlResourceParser xmlResourceParser, int i, String[] strArr) throws XmlPullParserException, IOException {
        String nonResourceString;
        TypedArray typedArray;
        String str;
        ApplicationInfo applicationInfo;
        String[] strArr2;
        char c;
        CachedComponentArgs cachedComponentArgs;
        XmlResourceParser xmlResourceParser2;
        ApplicationInfo applicationInfo2;
        Package r7;
        char c2;
        ApplicationInfo applicationInfo3;
        String nonResourceString2;
        String nonResourceString3;
        Package r8 = r25;
        XmlResourceParser xmlResourceParser3 = xmlResourceParser;
        ApplicationInfo applicationInfo4 = r8.applicationInfo;
        String str2 = r8.applicationInfo.packageName;
        TypedArray obtainAttributes = resources.obtainAttributes(xmlResourceParser3, R.styleable.AndroidManifestApplication);
        if (!parsePackageItemInfo(r25, applicationInfo4, strArr, "<application>", obtainAttributes, false, 3, 1, 2, 42, 22, 30)) {
            obtainAttributes.recycle();
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            return false;
        }
        if (applicationInfo4.name != null) {
            applicationInfo4.className = applicationInfo4.name;
        }
        int i2 = 4;
        String nonConfigurationString = obtainAttributes.getNonConfigurationString(4, 1024);
        if (nonConfigurationString != null) {
            applicationInfo4.manageSpaceActivityName = buildClassName(str2, nonConfigurationString, strArr);
        }
        int i3 = 1;
        if (obtainAttributes.getBoolean(17, true)) {
            applicationInfo4.flags |= 32768;
            String nonConfigurationString2 = obtainAttributes.getNonConfigurationString(16, 1024);
            if (nonConfigurationString2 != null) {
                applicationInfo4.backupAgentName = buildClassName(str2, nonConfigurationString2, strArr);
                if (obtainAttributes.getBoolean(18, true)) {
                    applicationInfo4.flags |= 65536;
                }
                if (obtainAttributes.getBoolean(21, false)) {
                    applicationInfo4.flags |= 131072;
                }
                if (obtainAttributes.getBoolean(32, false)) {
                    applicationInfo4.flags |= 67108864;
                }
                if (obtainAttributes.getBoolean(40, false)) {
                    applicationInfo4.privateFlags |= 8192;
                }
            }
            TypedValue peekValue = obtainAttributes.peekValue(35);
            if (peekValue != null) {
                int i4 = peekValue.resourceId;
                applicationInfo4.fullBackupContent = i4;
                if (i4 == 0) {
                    applicationInfo4.fullBackupContent = peekValue.data == 0 ? -1 : 0;
                }
            }
        }
        applicationInfo4.theme = obtainAttributes.getResourceId(0, 0);
        applicationInfo4.descriptionRes = obtainAttributes.getResourceId(13, 0);
        if (obtainAttributes.getBoolean(8, false) && ((nonResourceString3 = obtainAttributes.getNonResourceString(45)) == null || this.mCallback.hasFeature(nonResourceString3))) {
            applicationInfo4.flags |= 8;
        }
        if (obtainAttributes.getBoolean(27, false)) {
            r8.mRequiredForAllUsers = true;
        }
        String string = obtainAttributes.getString(28);
        if (string != null && string.length() > 0) {
            r8.mRestrictedAccountType = string;
        }
        String string2 = obtainAttributes.getString(29);
        if (string2 != null && string2.length() > 0) {
            r8.mRequiredAccountType = string2;
        }
        if (obtainAttributes.getBoolean(10, false)) {
            applicationInfo4.flags |= 2;
        }
        if (obtainAttributes.getBoolean(20, false)) {
            applicationInfo4.flags |= 16384;
        }
        r8.baseHardwareAccelerated = obtainAttributes.getBoolean(23, r8.applicationInfo.targetSdkVersion >= 14);
        if (r8.baseHardwareAccelerated) {
            applicationInfo4.flags |= 536870912;
        }
        if (obtainAttributes.getBoolean(7, true)) {
            applicationInfo4.flags |= 4;
        }
        if (obtainAttributes.getBoolean(14, false)) {
            applicationInfo4.flags |= 32;
        }
        if (obtainAttributes.getBoolean(5, true)) {
            applicationInfo4.flags |= 64;
        }
        if (r8.parentPackage == null && obtainAttributes.getBoolean(15, false)) {
            applicationInfo4.flags |= 256;
        }
        if (obtainAttributes.getBoolean(24, false)) {
            applicationInfo4.flags |= 1048576;
        }
        if (obtainAttributes.getBoolean(36, r8.applicationInfo.targetSdkVersion < 28)) {
            applicationInfo4.flags |= 134217728;
        }
        if (obtainAttributes.getBoolean(26, false)) {
            applicationInfo4.flags |= 4194304;
        }
        if (obtainAttributes.getBoolean(33, false)) {
            applicationInfo4.flags |= Integer.MIN_VALUE;
        }
        if (obtainAttributes.getBoolean(34, true)) {
            applicationInfo4.flags |= 268435456;
        }
        if (obtainAttributes.getBoolean(38, false)) {
            applicationInfo4.privateFlags |= 32;
        }
        if (obtainAttributes.getBoolean(39, false)) {
            applicationInfo4.privateFlags |= 64;
        }
        if (obtainAttributes.hasValueOrEmpty(37)) {
            if (obtainAttributes.getBoolean(37, true)) {
                applicationInfo4.privateFlags |= 1024;
            } else {
                applicationInfo4.privateFlags |= 2048;
            }
        } else if (r8.applicationInfo.targetSdkVersion >= 24) {
            applicationInfo4.privateFlags |= 4096;
        }
        applicationInfo4.maxAspectRatio = obtainAttributes.getFloat(44, 0.0f);
        applicationInfo4.networkSecurityConfigRes = obtainAttributes.getResourceId(41, 0);
        applicationInfo4.category = obtainAttributes.getInt(43, -1);
        String nonConfigurationString3 = obtainAttributes.getNonConfigurationString(6, 0);
        applicationInfo4.permission = (nonConfigurationString3 == null || nonConfigurationString3.length() <= 0) ? null : nonConfigurationString3.intern();
        if (r8.applicationInfo.targetSdkVersion >= 8) {
            nonResourceString = obtainAttributes.getNonConfigurationString(12, 1024);
        } else {
            nonResourceString = obtainAttributes.getNonResourceString(12);
        }
        applicationInfo4.taskAffinity = buildTaskAffinityName(applicationInfo4.packageName, applicationInfo4.packageName, nonResourceString, strArr);
        String nonResourceString4 = obtainAttributes.getNonResourceString(48);
        if (nonResourceString4 != null) {
            applicationInfo4.appComponentFactory = buildClassName(applicationInfo4.packageName, nonResourceString4, strArr);
        }
        if (strArr[0] == null) {
            if (r8.applicationInfo.targetSdkVersion >= 8) {
                nonResourceString2 = obtainAttributes.getNonConfigurationString(11, 1024);
            } else {
                nonResourceString2 = obtainAttributes.getNonResourceString(11);
            }
            typedArray = obtainAttributes;
            str = str2;
            applicationInfo = applicationInfo4;
            strArr2 = strArr;
            applicationInfo.processName = buildProcessName(applicationInfo4.packageName, null, nonResourceString2, i, this.mSeparateProcesses, strArr);
            applicationInfo.enabled = typedArray.getBoolean(9, true);
            if (typedArray.getBoolean(31, false)) {
                applicationInfo.flags |= 33554432;
            }
            if (typedArray.getBoolean(47, false)) {
                c = 2;
                applicationInfo.privateFlags |= 2;
                if (applicationInfo.processName != null && !applicationInfo.processName.equals(applicationInfo.packageName)) {
                    strArr2[0] = "cantSaveState applications can not use custom processes";
                }
                applicationInfo.uiOptions = typedArray.getInt(25, 0);
                applicationInfo.classLoaderName = typedArray.getString(46);
                if (applicationInfo.classLoaderName != null && !ClassLoaderFactory.isValidClassLoaderName(applicationInfo.classLoaderName)) {
                    strArr2[0] = "Invalid class loader name: " + applicationInfo.classLoaderName;
                }
                typedArray.recycle();
                if (strArr2[0] == null) {
                    this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
                    return false;
                }
                int depth = xmlResourceParser.getDepth();
                CachedComponentArgs cachedComponentArgs2 = new CachedComponentArgs();
                boolean z = false;
                boolean z2 = false;
                boolean z3 = false;
                while (true) {
                    int next = xmlResourceParser.next();
                    if (next == i3 || (next == 3 && xmlResourceParser.getDepth() <= depth)) {
                        break;
                    }
                    if (next == 3 || next == i2) {
                        cachedComponentArgs = cachedComponentArgs2;
                        xmlResourceParser2 = xmlResourceParser3;
                        applicationInfo2 = applicationInfo;
                        r7 = r8;
                        c2 = c;
                    } else {
                        String name = xmlResourceParser.getName();
                        if (name.equals(Context.ACTIVITY_SERVICE)) {
                            cachedComponentArgs = cachedComponentArgs2;
                            xmlResourceParser2 = xmlResourceParser3;
                            applicationInfo3 = applicationInfo;
                            Activity parseActivity = parseActivity(r25, resources, xmlResourceParser, i, strArr, cachedComponentArgs, false, r8.baseHardwareAccelerated);
                            if (parseActivity == null) {
                                this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
                                return false;
                            }
                            boolean z4 = parseActivity.order != 0;
                            r25.activities.add(parseActivity);
                            z |= z4;
                            r7 = r25;
                        } else {
                            cachedComponentArgs = cachedComponentArgs2;
                            xmlResourceParser2 = xmlResourceParser3;
                            applicationInfo3 = applicationInfo;
                            if (name.equals("receiver")) {
                                Activity parseActivity2 = parseActivity(r25, resources, xmlResourceParser, i, strArr, cachedComponentArgs, true, false);
                                if (parseActivity2 == null) {
                                    this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
                                    return false;
                                }
                                boolean z5 = parseActivity2.order != 0;
                                r7 = r25;
                                r7.receivers.add(parseActivity2);
                                z2 |= z5;
                            } else {
                                r7 = r8;
                                if (name.equals(Notification.CATEGORY_SERVICE)) {
                                    Service parseService = parseService(r25, resources, xmlResourceParser, i, strArr, cachedComponentArgs);
                                    if (parseService == null) {
                                        this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
                                        return false;
                                    }
                                    boolean z6 = parseService.order != 0;
                                    r7.services.add(parseService);
                                    z3 |= z6;
                                } else if (name.equals("provider")) {
                                    Provider parseProvider = parseProvider(r25, resources, xmlResourceParser, i, strArr, cachedComponentArgs);
                                    if (parseProvider == null) {
                                        this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
                                        return false;
                                    }
                                    r7.providers.add(parseProvider);
                                } else if (name.equals("activity-alias")) {
                                    Activity parseActivityAlias = parseActivityAlias(r25, resources, xmlResourceParser, i, strArr, cachedComponentArgs);
                                    if (parseActivityAlias == null) {
                                        this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
                                        return false;
                                    }
                                    boolean z7 = parseActivityAlias.order != 0;
                                    r7.activities.add(parseActivityAlias);
                                    z |= z7;
                                } else if (xmlResourceParser.getName().equals("meta-data")) {
                                    Bundle parseMetaData = parseMetaData(resources, xmlResourceParser2, r7.mAppMetaData, strArr2);
                                    r7.mAppMetaData = parseMetaData;
                                    if (parseMetaData == null) {
                                        this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
                                        return false;
                                    }
                                } else if (name.equals("static-library")) {
                                    TypedArray obtainAttributes2 = resources.obtainAttributes(xmlResourceParser2, R.styleable.AndroidManifestStaticLibrary);
                                    String nonResourceString5 = obtainAttributes2.getNonResourceString(0);
                                    int i5 = obtainAttributes2.getInt(1, -1);
                                    c2 = 2;
                                    int i6 = obtainAttributes2.getInt(2, 0);
                                    obtainAttributes2.recycle();
                                    if (nonResourceString5 == null || i5 < 0) {
                                        break;
                                    }
                                    if (r7.mSharedUserId != null) {
                                        strArr2[0] = "sharedUserId not allowed in static shared library";
                                        this.mParseError = PackageManager.INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID;
                                        XmlUtils.skipCurrentTag(xmlResourceParser);
                                        return false;
                                    }
                                    if (r7.staticSharedLibName != null) {
                                        strArr2[0] = "Multiple static-shared libs for package " + str;
                                        this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
                                        XmlUtils.skipCurrentTag(xmlResourceParser);
                                        return false;
                                    }
                                    r7.staticSharedLibName = nonResourceString5.intern();
                                    if (i5 >= 0) {
                                        r7.staticSharedLibVersion = PackageInfo.composeLongVersionCode(i6, i5);
                                    } else {
                                        r7.staticSharedLibVersion = i5;
                                    }
                                    applicationInfo2 = applicationInfo3;
                                    applicationInfo2.privateFlags |= 16384;
                                    XmlUtils.skipCurrentTag(xmlResourceParser);
                                } else {
                                    applicationInfo2 = applicationInfo3;
                                    c2 = 2;
                                    if (name.equals("library")) {
                                        TypedArray obtainAttributes3 = resources.obtainAttributes(xmlResourceParser2, R.styleable.AndroidManifestLibrary);
                                        String nonResourceString6 = obtainAttributes3.getNonResourceString(0);
                                        obtainAttributes3.recycle();
                                        if (nonResourceString6 != null) {
                                            String intern = nonResourceString6.intern();
                                            if (!ArrayUtils.contains(r7.libraryNames, intern)) {
                                                r7.libraryNames = ArrayUtils.add(r7.libraryNames, intern);
                                            }
                                        }
                                        XmlUtils.skipCurrentTag(xmlResourceParser);
                                    } else if (name.equals("uses-static-library")) {
                                        if (!parseUsesStaticLibrary(r7, resources, xmlResourceParser2, strArr2)) {
                                            return false;
                                        }
                                    } else if (name.equals("uses-library")) {
                                        TypedArray obtainAttributes4 = resources.obtainAttributes(xmlResourceParser2, R.styleable.AndroidManifestUsesLibrary);
                                        String nonResourceString7 = obtainAttributes4.getNonResourceString(0);
                                        boolean z8 = obtainAttributes4.getBoolean(1, true);
                                        obtainAttributes4.recycle();
                                        if (nonResourceString7 != null) {
                                            String intern2 = nonResourceString7.intern();
                                            if (z8) {
                                                r7.usesLibraries = ArrayUtils.add(r7.usesLibraries, intern2);
                                            } else {
                                                r7.usesOptionalLibraries = ArrayUtils.add(r7.usesOptionalLibraries, intern2);
                                            }
                                        }
                                        XmlUtils.skipCurrentTag(xmlResourceParser);
                                    } else if (name.equals("uses-package")) {
                                        XmlUtils.skipCurrentTag(xmlResourceParser);
                                    } else {
                                        Slog.w(TAG, "Unknown element under <application>: " + name + " at " + this.mArchiveSourcePath + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + xmlResourceParser.getPositionDescription());
                                        XmlUtils.skipCurrentTag(xmlResourceParser);
                                    }
                                }
                            }
                        }
                        applicationInfo2 = applicationInfo3;
                        c2 = 2;
                    }
                    c = c2;
                    r8 = r7;
                    xmlResourceParser3 = xmlResourceParser2;
                    i2 = 4;
                    i3 = 1;
                    applicationInfo = applicationInfo2;
                    cachedComponentArgs2 = cachedComponentArgs;
                }
            }
        } else {
            typedArray = obtainAttributes;
            str = str2;
            applicationInfo = applicationInfo4;
            strArr2 = strArr;
        }
        c = 2;
        applicationInfo.uiOptions = typedArray.getInt(25, 0);
        applicationInfo.classLoaderName = typedArray.getString(46);
        if (applicationInfo.classLoaderName != null) {
            strArr2[0] = "Invalid class loader name: " + applicationInfo.classLoaderName;
        }
        typedArray.recycle();
        if (strArr2[0] == null) {
        }
    }

    private static boolean hasDomainURLs(Package r8) {
        if (r8 == null || r8.activities == null) {
            return false;
        }
        ArrayList<Activity> arrayList = r8.activities;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ArrayList<II> arrayList2 = arrayList.get(i).intents;
            if (arrayList2 != 0) {
                int size2 = arrayList2.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    ActivityIntentInfo activityIntentInfo = (ActivityIntentInfo) arrayList2.get(i2);
                    if (activityIntentInfo.hasAction("android.intent.action.VIEW") && activityIntentInfo.hasAction("android.intent.action.VIEW") && (activityIntentInfo.hasDataScheme(IntentFilter.SCHEME_HTTP) || activityIntentInfo.hasDataScheme(IntentFilter.SCHEME_HTTPS))) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x021b, code lost:
    
        return r14;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [android.content.pm.ComponentInfo] */
    /* JADX WARN: Type inference failed for: r0v30 */
    /* JADX WARN: Type inference failed for: r0v31 */
    /* JADX WARN: Type inference failed for: r0v38 */
    /* JADX WARN: Type inference failed for: r0v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v5, types: [android.content.pm.PackageParser$1] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean parseSplitApplication(Package r20, Resources resources, XmlResourceParser xmlResourceParser, int i, int i2, String[] strArr) throws XmlPullParserException, IOException {
        int i3;
        int i4;
        int i5;
        boolean z;
        TypedArray obtainAttributes = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestApplication);
        int i6 = 1;
        int i7 = 4;
        if (obtainAttributes.getBoolean(7, true)) {
            int[] iArr = r20.splitFlags;
            iArr[i2] = iArr[i2] | 4;
        }
        String string = obtainAttributes.getString(46);
        int i8 = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
        boolean z2 = false;
        if (string == null || ClassLoaderFactory.isValidClassLoaderName(string)) {
            r20.applicationInfo.splitClassLoaderNames[i2] = string;
            int depth = xmlResourceParser.getDepth();
            while (true) {
                int next = xmlResourceParser.next();
                if (next == i6 || (next == 3 && xmlResourceParser.getDepth() <= depth)) {
                    break;
                }
                if (next != 3 && next != i7) {
                    ?? r0 = 0;
                    Parcelable parcelable = null;
                    r0 = 0;
                    r0 = 0;
                    CachedComponentArgs cachedComponentArgs = new CachedComponentArgs();
                    String name = xmlResourceParser.getName();
                    if (name.equals(Context.ACTIVITY_SERVICE)) {
                        i3 = depth;
                        i4 = i8;
                        i5 = i7;
                        Activity parseActivity = parseActivity(r20, resources, xmlResourceParser, i, strArr, cachedComponentArgs, false, r20.baseHardwareAccelerated);
                        if (parseActivity == null) {
                            this.mParseError = i4;
                            return false;
                        }
                        r20.activities.add(parseActivity);
                        parcelable = parseActivity.info;
                    } else {
                        i3 = depth;
                        i4 = i8;
                        i5 = i7;
                        if (name.equals("receiver")) {
                            Activity parseActivity2 = parseActivity(r20, resources, xmlResourceParser, i, strArr, cachedComponentArgs, true, false);
                            if (parseActivity2 == null) {
                                this.mParseError = i4;
                                return false;
                            }
                            r20.receivers.add(parseActivity2);
                            parcelable = parseActivity2.info;
                        } else if (name.equals(Notification.CATEGORY_SERVICE)) {
                            Service parseService = parseService(r20, resources, xmlResourceParser, i, strArr, cachedComponentArgs);
                            if (parseService == null) {
                                this.mParseError = i4;
                                return false;
                            }
                            r20.services.add(parseService);
                            parcelable = parseService.info;
                        } else if (name.equals("provider")) {
                            Provider parseProvider = parseProvider(r20, resources, xmlResourceParser, i, strArr, cachedComponentArgs);
                            if (parseProvider == null) {
                                this.mParseError = i4;
                                return false;
                            }
                            r20.providers.add(parseProvider);
                            parcelable = parseProvider.info;
                        } else if (name.equals("activity-alias")) {
                            Activity parseActivityAlias = parseActivityAlias(r20, resources, xmlResourceParser, i, strArr, cachedComponentArgs);
                            if (parseActivityAlias == null) {
                                this.mParseError = i4;
                                return false;
                            }
                            r20.activities.add(parseActivityAlias);
                            parcelable = parseActivityAlias.info;
                        } else if (xmlResourceParser.getName().equals("meta-data")) {
                            Bundle parseMetaData = parseMetaData(resources, xmlResourceParser, r20.mAppMetaData, strArr);
                            r20.mAppMetaData = parseMetaData;
                            if (parseMetaData == null) {
                                this.mParseError = i4;
                                return false;
                            }
                        } else {
                            z = false;
                            if (name.equals("uses-static-library")) {
                                if (!parseUsesStaticLibrary(r20, resources, xmlResourceParser, strArr)) {
                                    return false;
                                }
                            } else if (name.equals("uses-library")) {
                                TypedArray obtainAttributes2 = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestUsesLibrary);
                                String nonResourceString = obtainAttributes2.getNonResourceString(0);
                                boolean z3 = obtainAttributes2.getBoolean(1, true);
                                obtainAttributes2.recycle();
                                if (nonResourceString != null) {
                                    String intern = nonResourceString.intern();
                                    if (z3) {
                                        r20.usesLibraries = ArrayUtils.add(r20.usesLibraries, intern);
                                        r20.usesOptionalLibraries = ArrayUtils.remove(r20.usesOptionalLibraries, intern);
                                    } else if (!ArrayUtils.contains(r20.usesLibraries, intern)) {
                                        r20.usesOptionalLibraries = ArrayUtils.add(r20.usesOptionalLibraries, intern);
                                    }
                                }
                                XmlUtils.skipCurrentTag(xmlResourceParser);
                            } else if (name.equals("uses-package")) {
                                XmlUtils.skipCurrentTag(xmlResourceParser);
                            } else {
                                Slog.w(TAG, "Unknown element under <application>: " + name + " at " + this.mArchiveSourcePath + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + xmlResourceParser.getPositionDescription());
                                XmlUtils.skipCurrentTag(xmlResourceParser);
                                z2 = z;
                                i8 = i4;
                                i7 = i5;
                                depth = i3;
                                i6 = 1;
                            }
                            if (r0 != 0 && r0.splitName == null) {
                                r0.splitName = r20.splitNames[i2];
                            }
                            z2 = z;
                            i8 = i4;
                            i7 = i5;
                            depth = i3;
                            i6 = 1;
                        }
                    }
                    z = false;
                    r0 = parcelable;
                    if (r0 != 0) {
                        r0.splitName = r20.splitNames[i2];
                    }
                    z2 = z;
                    i8 = i4;
                    i7 = i5;
                    depth = i3;
                    i6 = 1;
                }
            }
        } else {
            strArr[0] = "Invalid class loader name: " + string;
            this.mParseError = PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED;
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean parsePackageItemInfo(Package r1, PackageItemInfo packageItemInfo, String[] strArr, String str, TypedArray typedArray, boolean z, int i, int i2, int i3, int i4, int i5, int i6) {
        if (typedArray == null) {
            strArr[0] = str + " does not contain any attributes";
            return false;
        }
        String nonConfigurationString = typedArray.getNonConfigurationString(i, 0);
        if (nonConfigurationString != null) {
            packageItemInfo.name = buildClassName(r1.applicationInfo.packageName, nonConfigurationString, strArr);
            if (packageItemInfo.name == null) {
                return false;
            }
        } else if (z) {
            strArr[0] = str + " does not specify android:name";
            return false;
        }
        int resourceId = Resources.getSystem().getBoolean(17957060) ? typedArray.getResourceId(i4, 0) : 0;
        if (resourceId != 0) {
            packageItemInfo.icon = resourceId;
            packageItemInfo.nonLocalizedLabel = null;
        } else {
            int resourceId2 = typedArray.getResourceId(i3, 0);
            if (resourceId2 != 0) {
                packageItemInfo.icon = resourceId2;
                packageItemInfo.nonLocalizedLabel = null;
            }
        }
        int resourceId3 = typedArray.getResourceId(i5, 0);
        if (resourceId3 != 0) {
            packageItemInfo.logo = resourceId3;
        }
        int resourceId4 = typedArray.getResourceId(i6, 0);
        if (resourceId4 != 0) {
            packageItemInfo.banner = resourceId4;
        }
        TypedValue peekValue = typedArray.peekValue(i2);
        if (peekValue != null) {
            int i7 = peekValue.resourceId;
            packageItemInfo.labelRes = i7;
            if (i7 == 0) {
                packageItemInfo.nonLocalizedLabel = peekValue.coerceToString();
            }
        }
        packageItemInfo.packageName = r1.packageName;
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:123:0x05a5, code lost:
    
        if (r11 != false) goto L216;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x05a7, code lost:
    
        r0 = r8.info;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x05af, code lost:
    
        if (r8.intents.size() <= 0) goto L214;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x05b1, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x05b5, code lost:
    
        r0.exported = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x05b4, code lost:
    
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x05b7, code lost:
    
        return r8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Activity parseActivity(Package r24, Resources resources, XmlResourceParser xmlResourceParser, int i, String[] strArr, CachedComponentArgs cachedComponentArgs, boolean z, boolean z2) throws XmlPullParserException, IOException {
        Package r0;
        ActivityIntentInfo activityIntentInfo;
        int i2;
        ActivityIntentInfo activityIntentInfo2;
        int i3;
        Resources resources2 = resources;
        XmlResourceParser xmlResourceParser2 = xmlResourceParser;
        String[] strArr2 = strArr;
        TypedArray obtainAttributes = resources2.obtainAttributes(xmlResourceParser2, R.styleable.AndroidManifestActivity);
        if (cachedComponentArgs.mActivityArgs == null) {
            cachedComponentArgs.mActivityArgs = new ParseComponentArgs(r24, strArr, 3, 1, 2, 44, 23, 30, this.mSeparateProcesses, 7, 17, 5);
        }
        cachedComponentArgs.mActivityArgs.tag = z ? "<receiver>" : "<activity>";
        cachedComponentArgs.mActivityArgs.sa = obtainAttributes;
        cachedComponentArgs.mActivityArgs.flags = i;
        Activity activity = new Activity(cachedComponentArgs.mActivityArgs, new ActivityInfo());
        if (strArr2[0] != null) {
            obtainAttributes.recycle();
            return null;
        }
        boolean hasValue = obtainAttributes.hasValue(6);
        if (hasValue) {
            activity.info.exported = obtainAttributes.getBoolean(6, false);
        }
        activity.info.theme = obtainAttributes.getResourceId(0, 0);
        activity.info.uiOptions = obtainAttributes.getInt(26, activity.info.applicationInfo.uiOptions);
        String nonConfigurationString = obtainAttributes.getNonConfigurationString(27, 1024);
        if (nonConfigurationString != null) {
            String buildClassName = buildClassName(activity.info.packageName, nonConfigurationString, strArr2);
            if (strArr2[0] == null) {
                activity.info.parentActivityName = buildClassName;
            } else {
                Log.e(TAG, "Activity " + activity.info.name + " specified invalid parentActivityName " + nonConfigurationString);
                strArr2[0] = null;
            }
        }
        int i4 = 4;
        String nonConfigurationString2 = obtainAttributes.getNonConfigurationString(4, 0);
        if (nonConfigurationString2 == null) {
            activity.info.permission = r24.applicationInfo.permission;
        } else {
            activity.info.permission = nonConfigurationString2.length() > 0 ? nonConfigurationString2.toString().intern() : null;
        }
        activity.info.taskAffinity = buildTaskAffinityName(r24.applicationInfo.packageName, r24.applicationInfo.taskAffinity, obtainAttributes.getNonConfigurationString(8, 1024), strArr2);
        activity.info.splitName = obtainAttributes.getNonConfigurationString(48, 0);
        activity.info.flags = 0;
        if (obtainAttributes.getBoolean(9, false)) {
            activity.info.flags |= 1;
        }
        if (obtainAttributes.getBoolean(10, false)) {
            activity.info.flags |= 2;
        }
        if (obtainAttributes.getBoolean(11, false)) {
            activity.info.flags |= 4;
        }
        if (obtainAttributes.getBoolean(21, false)) {
            activity.info.flags |= 128;
        }
        if (obtainAttributes.getBoolean(18, false)) {
            ActivityInfo activityInfo = activity.info;
            activityInfo.flags = 8 | activityInfo.flags;
        }
        if (obtainAttributes.getBoolean(12, false)) {
            activity.info.flags |= 16;
        }
        if (obtainAttributes.getBoolean(13, false)) {
            activity.info.flags |= 32;
        }
        if (obtainAttributes.getBoolean(19, (r24.applicationInfo.flags & 32) != 0)) {
            activity.info.flags |= 64;
        }
        if (obtainAttributes.getBoolean(22, false)) {
            activity.info.flags |= 256;
        }
        if (obtainAttributes.getBoolean(29, false) || obtainAttributes.getBoolean(39, false)) {
            ActivityInfo activityInfo2 = activity.info;
            activityInfo2.flags = 1024 | activityInfo2.flags;
        }
        if (obtainAttributes.getBoolean(24, false)) {
            activity.info.flags |= 2048;
        }
        if (obtainAttributes.getBoolean(54, false)) {
            activity.info.flags |= 536870912;
        }
        if (!z) {
            if (obtainAttributes.getBoolean(25, z2)) {
                activity.info.flags |= 512;
            }
            activity.info.launchMode = obtainAttributes.getInt(14, 0);
            activity.info.documentLaunchMode = obtainAttributes.getInt(33, 0);
            activity.info.maxRecents = obtainAttributes.getInt(34, ActivityManager.getDefaultAppRecentsLimitStatic());
            activity.info.configChanges = getActivityConfigChanges(obtainAttributes.getInt(16, 0), obtainAttributes.getInt(47, 0));
            activity.info.softInputMode = obtainAttributes.getInt(20, 0);
            activity.info.persistableMode = obtainAttributes.getInteger(32, 0);
            if (obtainAttributes.getBoolean(31, false)) {
                activity.info.flags |= Integer.MIN_VALUE;
            }
            if (obtainAttributes.getBoolean(35, false)) {
                activity.info.flags |= 8192;
            }
            if (obtainAttributes.getBoolean(36, false)) {
                activity.info.flags |= 4096;
            }
            if (obtainAttributes.getBoolean(37, false)) {
                activity.info.flags |= 16384;
            }
            activity.info.screenOrientation = obtainAttributes.getInt(15, -1);
            setActivityResizeMode(activity.info, obtainAttributes, r24);
            if (obtainAttributes.getBoolean(41, false)) {
                activity.info.flags |= 4194304;
            }
            if (obtainAttributes.getBoolean(53, false)) {
                activity.info.flags |= 262144;
            }
            if (obtainAttributes.hasValue(50) && obtainAttributes.getType(50) == 4) {
                activity.setMaxAspectRatio(obtainAttributes.getFloat(50, 0.0f));
            }
            activity.info.lockTaskLaunchMode = obtainAttributes.getInt(38, 0);
            ActivityInfo activityInfo3 = activity.info;
            ActivityInfo activityInfo4 = activity.info;
            boolean z3 = obtainAttributes.getBoolean(42, false);
            activityInfo4.directBootAware = z3;
            activityInfo3.encryptionAware = z3;
            activity.info.requestedVrComponent = obtainAttributes.getString(43);
            activity.info.rotationAnimation = obtainAttributes.getInt(46, -1);
            activity.info.colorMode = obtainAttributes.getInt(49, 0);
            if (obtainAttributes.getBoolean(51, false)) {
                activity.info.flags |= 8388608;
            }
            if (obtainAttributes.getBoolean(52, false)) {
                activity.info.flags |= 16777216;
            }
        } else {
            activity.info.launchMode = 0;
            activity.info.configChanges = 0;
            if (obtainAttributes.getBoolean(28, false)) {
                activity.info.flags |= 1073741824;
            }
            ActivityInfo activityInfo5 = activity.info;
            ActivityInfo activityInfo6 = activity.info;
            boolean z4 = obtainAttributes.getBoolean(42, false);
            activityInfo6.directBootAware = z4;
            activityInfo5.encryptionAware = z4;
        }
        if (activity.info.directBootAware) {
            r24.applicationInfo.privateFlags |= 256;
        }
        boolean z5 = obtainAttributes.getBoolean(45, false);
        if (z5) {
            activity.info.flags |= 1048576;
            r24.visibleToInstantApps = true;
        }
        obtainAttributes.recycle();
        if (z && (r24.applicationInfo.privateFlags & 2) != 0 && activity.info.processName == r24.packageName) {
            strArr2[0] = "Heavy-weight applications can not have receivers in main process";
        }
        if (strArr2[0] != null) {
            return null;
        }
        int depth = xmlResourceParser.getDepth();
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 1 || (next == 3 && xmlResourceParser.getDepth() <= depth)) {
                break;
            }
            if (next != 3 && next != i4) {
                if (xmlResourceParser.getName().equals("intent-filter")) {
                    ActivityIntentInfo activityIntentInfo3 = new ActivityIntentInfo(activity);
                    String[] strArr3 = strArr2;
                    XmlResourceParser xmlResourceParser3 = xmlResourceParser2;
                    Resources resources3 = resources2;
                    if (!parseIntent(resources, xmlResourceParser, true, true, activityIntentInfo3, strArr)) {
                        return null;
                    }
                    if (activityIntentInfo3.countActions() == 0) {
                        Slog.w(TAG, "No actions in intent filter at " + this.mArchiveSourcePath + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + xmlResourceParser.getPositionDescription());
                        activityIntentInfo2 = activityIntentInfo3;
                    } else {
                        activity.order = Math.max(activityIntentInfo3.getOrder(), activity.order);
                        activityIntentInfo2 = activityIntentInfo3;
                        activity.intents.add(activityIntentInfo2);
                    }
                    if (z5) {
                        i3 = 1;
                    } else {
                        i3 = (z || !isImplicitlyExposedIntent(activityIntentInfo2)) ? 0 : 2;
                    }
                    activityIntentInfo2.setVisibilityToInstantApp(i3);
                    if (activityIntentInfo2.isVisibleToInstantApp()) {
                        activity.info.flags |= 1048576;
                    }
                    if (activityIntentInfo2.isImplicitlyVisibleToInstantApp()) {
                        activity.info.flags |= 2097152;
                    }
                    strArr2 = strArr3;
                    xmlResourceParser2 = xmlResourceParser3;
                    resources2 = resources3;
                } else {
                    String[] strArr4 = strArr2;
                    XmlResourceParser xmlResourceParser4 = xmlResourceParser2;
                    Resources resources4 = resources2;
                    if (!z && xmlResourceParser.getName().equals("preferred")) {
                        ActivityIntentInfo activityIntentInfo4 = new ActivityIntentInfo(activity);
                        if (!parseIntent(resources, xmlResourceParser, false, false, activityIntentInfo4, strArr)) {
                            return null;
                        }
                        if (activityIntentInfo4.countActions() == 0) {
                            Slog.w(TAG, "No actions in preferred at " + this.mArchiveSourcePath + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + xmlResourceParser.getPositionDescription());
                            activityIntentInfo = activityIntentInfo4;
                            r0 = r24;
                        } else {
                            r0 = r24;
                            if (r0.preferredActivityFilters == null) {
                                r0.preferredActivityFilters = new ArrayList<>();
                            }
                            activityIntentInfo = activityIntentInfo4;
                            r0.preferredActivityFilters.add(activityIntentInfo);
                        }
                        if (z5) {
                            i2 = 1;
                        } else {
                            i2 = (z || !isImplicitlyExposedIntent(activityIntentInfo)) ? 0 : 2;
                        }
                        activityIntentInfo.setVisibilityToInstantApp(i2);
                        if (activityIntentInfo.isVisibleToInstantApp()) {
                            activity.info.flags |= 1048576;
                        }
                        if (activityIntentInfo.isImplicitlyVisibleToInstantApp()) {
                            activity.info.flags |= 2097152;
                        }
                    } else {
                        r0 = r24;
                        if (xmlResourceParser.getName().equals("meta-data")) {
                            Bundle parseMetaData = parseMetaData(resources4, xmlResourceParser4, activity.metaData, strArr4);
                            activity.metaData = parseMetaData;
                            if (parseMetaData == null) {
                                return null;
                            }
                        } else if (!z && xmlResourceParser.getName().equals(TtmlUtils.TAG_LAYOUT)) {
                            parseLayout(resources4, xmlResourceParser4, activity);
                        } else {
                            Slog.w(TAG, "Problem in package " + this.mArchiveSourcePath + ":");
                            if (z) {
                                Slog.w(TAG, "Unknown element under <receiver>: " + xmlResourceParser.getName() + " at " + this.mArchiveSourcePath + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + xmlResourceParser.getPositionDescription());
                            } else {
                                Slog.w(TAG, "Unknown element under <activity>: " + xmlResourceParser.getName() + " at " + this.mArchiveSourcePath + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + xmlResourceParser.getPositionDescription());
                            }
                            XmlUtils.skipCurrentTag(xmlResourceParser);
                        }
                    }
                    strArr2 = strArr4;
                    xmlResourceParser2 = xmlResourceParser4;
                    resources2 = resources4;
                }
                i4 = 4;
            }
        }
    }

    private void setActivityResizeMode(ActivityInfo activityInfo, TypedArray typedArray, Package r7) {
        boolean z = (r7.applicationInfo.privateFlags & 3072) != 0;
        if (typedArray.hasValue(40) || z) {
            if (typedArray.getBoolean(40, (r7.applicationInfo.privateFlags & 1024) != 0)) {
                activityInfo.resizeMode = 2;
                return;
            } else {
                activityInfo.resizeMode = 0;
                return;
            }
        }
        if ((r7.applicationInfo.privateFlags & 4096) != 0) {
            activityInfo.resizeMode = 1;
            return;
        }
        if (activityInfo.isFixedOrientationPortrait()) {
            activityInfo.resizeMode = 6;
            return;
        }
        if (activityInfo.isFixedOrientationLandscape()) {
            activityInfo.resizeMode = 5;
        } else if (activityInfo.isFixedOrientation()) {
            activityInfo.resizeMode = 7;
        } else {
            activityInfo.resizeMode = 4;
        }
    }

    private void setMaxAspectRatio(Package r4) {
        float f = r4.applicationInfo.targetSdkVersion < 26 ? DEFAULT_PRE_O_MAX_ASPECT_RATIO : 0.0f;
        if (SystemProperties.getBoolean("ro.atc.aosp_enhancement", false)) {
            f = 0.0f;
        }
        if (r4.applicationInfo.maxAspectRatio != 0.0f) {
            f = r4.applicationInfo.maxAspectRatio;
        } else if (r4.mAppMetaData != null && r4.mAppMetaData.containsKey(METADATA_MAX_ASPECT_RATIO)) {
            f = r4.mAppMetaData.getFloat(METADATA_MAX_ASPECT_RATIO, f);
        }
        Iterator<Activity> it = r4.activities.iterator();
        while (it.hasNext()) {
            Activity next = it.next();
            if (!next.hasMaxAspectRatio()) {
                next.setMaxAspectRatio(next.metaData != null ? next.metaData.getFloat(METADATA_MAX_ASPECT_RATIO, f) : f);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void parseLayout(Resources resources, AttributeSet attributeSet, Activity activity) {
        float f;
        int dimensionPixelSize;
        int type;
        int dimensionPixelSize2;
        float f2;
        TypedArray obtainAttributes = resources.obtainAttributes(attributeSet, R.styleable.AndroidManifestLayout);
        int type2 = obtainAttributes.getType(3);
        float f3 = -1.0f;
        if (type2 == 6) {
            f = obtainAttributes.getFraction(3, 1, 1, -1.0f);
        } else {
            if (type2 == 5) {
                dimensionPixelSize = obtainAttributes.getDimensionPixelSize(3, -1);
                f = -1.0f;
                type = obtainAttributes.getType(4);
                if (type != 6) {
                    f3 = obtainAttributes.getFraction(4, 1, 1, -1.0f);
                } else if (type == 5) {
                    dimensionPixelSize2 = obtainAttributes.getDimensionPixelSize(4, -1);
                    f2 = -1.0f;
                    int i = obtainAttributes.getInt(0, 17);
                    int dimensionPixelSize3 = obtainAttributes.getDimensionPixelSize(1, -1);
                    int dimensionPixelSize4 = obtainAttributes.getDimensionPixelSize(2, -1);
                    obtainAttributes.recycle();
                    activity.info.windowLayout = new ActivityInfo.WindowLayout(dimensionPixelSize, f, dimensionPixelSize2, f2, i, dimensionPixelSize3, dimensionPixelSize4);
                }
                f2 = f3;
                dimensionPixelSize2 = -1;
                int i2 = obtainAttributes.getInt(0, 17);
                int dimensionPixelSize32 = obtainAttributes.getDimensionPixelSize(1, -1);
                int dimensionPixelSize42 = obtainAttributes.getDimensionPixelSize(2, -1);
                obtainAttributes.recycle();
                activity.info.windowLayout = new ActivityInfo.WindowLayout(dimensionPixelSize, f, dimensionPixelSize2, f2, i2, dimensionPixelSize32, dimensionPixelSize42);
            }
            f = -1.0f;
        }
        dimensionPixelSize = -1;
        type = obtainAttributes.getType(4);
        if (type != 6) {
        }
        f2 = f3;
        dimensionPixelSize2 = -1;
        int i22 = obtainAttributes.getInt(0, 17);
        int dimensionPixelSize322 = obtainAttributes.getDimensionPixelSize(1, -1);
        int dimensionPixelSize422 = obtainAttributes.getDimensionPixelSize(2, -1);
        obtainAttributes.recycle();
        activity.info.windowLayout = new ActivityInfo.WindowLayout(dimensionPixelSize, f, dimensionPixelSize2, f2, i22, dimensionPixelSize322, dimensionPixelSize422);
    }

    private Activity parseActivityAlias(Package r28, Resources resources, XmlResourceParser xmlResourceParser, int i, String[] strArr, CachedComponentArgs cachedComponentArgs) throws XmlPullParserException, IOException {
        String str;
        String str2;
        Activity activity;
        String[] strArr2;
        XmlResourceParser xmlResourceParser2;
        Resources resources2;
        ActivityIntentInfo activityIntentInfo;
        int i2;
        Resources resources3 = resources;
        XmlResourceParser xmlResourceParser3 = xmlResourceParser;
        String[] strArr3 = strArr;
        TypedArray obtainAttributes = resources3.obtainAttributes(xmlResourceParser3, R.styleable.AndroidManifestActivityAlias);
        String nonConfigurationString = obtainAttributes.getNonConfigurationString(7, 1024);
        if (nonConfigurationString == null) {
            strArr3[0] = "<activity-alias> does not specify android:targetActivity";
            obtainAttributes.recycle();
            return null;
        }
        String buildClassName = buildClassName(r28.applicationInfo.packageName, nonConfigurationString, strArr3);
        if (buildClassName == null) {
            obtainAttributes.recycle();
            return null;
        }
        if (cachedComponentArgs.mActivityAliasArgs == null) {
            str = buildClassName;
            cachedComponentArgs.mActivityAliasArgs = new ParseComponentArgs(r28, strArr, 2, 0, 1, 11, 8, 10, this.mSeparateProcesses, 0, 6, 4);
            cachedComponentArgs.mActivityAliasArgs.tag = "<activity-alias>";
        } else {
            str = buildClassName;
        }
        cachedComponentArgs.mActivityAliasArgs.sa = obtainAttributes;
        cachedComponentArgs.mActivityAliasArgs.flags = i;
        int size = r28.activities.size();
        int i3 = 0;
        while (true) {
            if (i3 >= size) {
                str2 = str;
                activity = null;
                break;
            }
            activity = r28.activities.get(i3);
            str2 = str;
            if (str2.equals(activity.info.name)) {
                break;
            }
            i3++;
            str = str2;
        }
        if (activity == null) {
            strArr3[0] = "<activity-alias> target activity " + str2 + " not found in manifest";
            obtainAttributes.recycle();
            return null;
        }
        ActivityInfo activityInfo = new ActivityInfo();
        activityInfo.targetActivity = str2;
        activityInfo.configChanges = activity.info.configChanges;
        activityInfo.flags = activity.info.flags;
        activityInfo.icon = activity.info.icon;
        activityInfo.logo = activity.info.logo;
        activityInfo.banner = activity.info.banner;
        activityInfo.labelRes = activity.info.labelRes;
        activityInfo.nonLocalizedLabel = activity.info.nonLocalizedLabel;
        activityInfo.launchMode = activity.info.launchMode;
        activityInfo.lockTaskLaunchMode = activity.info.lockTaskLaunchMode;
        activityInfo.processName = activity.info.processName;
        if (activityInfo.descriptionRes == 0) {
            activityInfo.descriptionRes = activity.info.descriptionRes;
        }
        activityInfo.screenOrientation = activity.info.screenOrientation;
        activityInfo.taskAffinity = activity.info.taskAffinity;
        activityInfo.theme = activity.info.theme;
        activityInfo.softInputMode = activity.info.softInputMode;
        activityInfo.uiOptions = activity.info.uiOptions;
        activityInfo.parentActivityName = activity.info.parentActivityName;
        activityInfo.maxRecents = activity.info.maxRecents;
        activityInfo.windowLayout = activity.info.windowLayout;
        activityInfo.resizeMode = activity.info.resizeMode;
        activityInfo.maxAspectRatio = activity.info.maxAspectRatio;
        activityInfo.requestedVrComponent = activity.info.requestedVrComponent;
        boolean z = activity.info.directBootAware;
        activityInfo.directBootAware = z;
        activityInfo.encryptionAware = z;
        Activity activity2 = new Activity(cachedComponentArgs.mActivityAliasArgs, activityInfo);
        if (strArr3[0] != null) {
            obtainAttributes.recycle();
            return null;
        }
        boolean hasValue = obtainAttributes.hasValue(5);
        if (hasValue) {
            activity2.info.exported = obtainAttributes.getBoolean(5, false);
        }
        int i4 = 3;
        String nonConfigurationString2 = obtainAttributes.getNonConfigurationString(3, 0);
        if (nonConfigurationString2 != null) {
            activity2.info.permission = nonConfigurationString2.length() > 0 ? nonConfigurationString2.toString().intern() : null;
        }
        String nonConfigurationString3 = obtainAttributes.getNonConfigurationString(9, 1024);
        if (nonConfigurationString3 != null) {
            String buildClassName2 = buildClassName(activity2.info.packageName, nonConfigurationString3, strArr3);
            if (strArr3[0] == null) {
                activity2.info.parentActivityName = buildClassName2;
            } else {
                Log.e(TAG, "Activity alias " + activity2.info.name + " specified invalid parentActivityName " + nonConfigurationString3);
                strArr3[0] = null;
            }
        }
        int i5 = 1;
        boolean z2 = (activity2.info.flags & 1048576) != 0;
        obtainAttributes.recycle();
        if (strArr3[0] != null) {
            return null;
        }
        int depth = xmlResourceParser.getDepth();
        while (true) {
            int next = xmlResourceParser.next();
            if (next == i5 || (next == i4 && xmlResourceParser.getDepth() <= depth)) {
                break;
            }
            if (next != i4 && next != 4) {
                if (xmlResourceParser.getName().equals("intent-filter")) {
                    ActivityIntentInfo activityIntentInfo2 = new ActivityIntentInfo(activity2);
                    strArr2 = strArr3;
                    xmlResourceParser2 = xmlResourceParser3;
                    resources2 = resources3;
                    if (!parseIntent(resources, xmlResourceParser, true, true, activityIntentInfo2, strArr)) {
                        return null;
                    }
                    if (activityIntentInfo2.countActions() == 0) {
                        Slog.w(TAG, "No actions in intent filter at " + this.mArchiveSourcePath + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + xmlResourceParser.getPositionDescription());
                        activityIntentInfo = activityIntentInfo2;
                    } else {
                        activity2.order = Math.max(activityIntentInfo2.getOrder(), activity2.order);
                        activityIntentInfo = activityIntentInfo2;
                        activity2.intents.add(activityIntentInfo);
                    }
                    if (z2) {
                        i2 = 1;
                    } else {
                        i2 = isImplicitlyExposedIntent(activityIntentInfo) ? 2 : 0;
                    }
                    activityIntentInfo.setVisibilityToInstantApp(i2);
                    if (activityIntentInfo.isVisibleToInstantApp()) {
                        activity2.info.flags |= 1048576;
                    }
                    if (activityIntentInfo.isImplicitlyVisibleToInstantApp()) {
                        activity2.info.flags |= 2097152;
                    }
                } else {
                    strArr2 = strArr3;
                    xmlResourceParser2 = xmlResourceParser3;
                    resources2 = resources3;
                    if (xmlResourceParser.getName().equals("meta-data")) {
                        Bundle parseMetaData = parseMetaData(resources2, xmlResourceParser2, activity2.metaData, strArr2);
                        activity2.metaData = parseMetaData;
                        if (parseMetaData == null) {
                            return null;
                        }
                    } else {
                        Slog.w(TAG, "Unknown element under <activity-alias>: " + xmlResourceParser.getName() + " at " + this.mArchiveSourcePath + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + xmlResourceParser.getPositionDescription());
                        XmlUtils.skipCurrentTag(xmlResourceParser);
                    }
                }
                strArr3 = strArr2;
                xmlResourceParser3 = xmlResourceParser2;
                resources3 = resources2;
                i4 = 3;
                i5 = 1;
            }
        }
        if (!hasValue) {
            activity2.info.exported = activity2.intents.size() > 0;
        }
        return activity2;
    }

    private Provider parseProvider(Package r22, Resources resources, XmlResourceParser xmlResourceParser, int i, String[] strArr, CachedComponentArgs cachedComponentArgs) throws XmlPullParserException, IOException {
        TypedArray typedArray;
        TypedArray obtainAttributes = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestProvider);
        if (cachedComponentArgs.mProviderArgs == null) {
            typedArray = obtainAttributes;
            cachedComponentArgs.mProviderArgs = new ParseComponentArgs(r22, strArr, 2, 0, 1, 19, 15, 17, this.mSeparateProcesses, 8, 14, 6);
            cachedComponentArgs.mProviderArgs.tag = "<provider>";
        } else {
            typedArray = obtainAttributes;
        }
        TypedArray typedArray2 = typedArray;
        cachedComponentArgs.mProviderArgs.sa = typedArray2;
        cachedComponentArgs.mProviderArgs.flags = i;
        Provider provider = new Provider(cachedComponentArgs.mProviderArgs, new ProviderInfo());
        if (strArr[0] != null) {
            typedArray2.recycle();
            return null;
        }
        provider.info.exported = typedArray2.getBoolean(7, r22.applicationInfo.targetSdkVersion < 17);
        String nonConfigurationString = typedArray2.getNonConfigurationString(10, 0);
        provider.info.isSyncable = typedArray2.getBoolean(11, false);
        String nonConfigurationString2 = typedArray2.getNonConfigurationString(3, 0);
        String nonConfigurationString3 = typedArray2.getNonConfigurationString(4, 0);
        if (nonConfigurationString3 == null) {
            nonConfigurationString3 = nonConfigurationString2;
        }
        if (nonConfigurationString3 == null) {
            provider.info.readPermission = r22.applicationInfo.permission;
        } else {
            provider.info.readPermission = nonConfigurationString3.length() > 0 ? nonConfigurationString3.toString().intern() : null;
        }
        String nonConfigurationString4 = typedArray2.getNonConfigurationString(5, 0);
        if (nonConfigurationString4 != null) {
            nonConfigurationString2 = nonConfigurationString4;
        }
        if (nonConfigurationString2 == null) {
            provider.info.writePermission = r22.applicationInfo.permission;
        } else {
            provider.info.writePermission = nonConfigurationString2.length() > 0 ? nonConfigurationString2.toString().intern() : null;
        }
        provider.info.grantUriPermissions = typedArray2.getBoolean(13, false);
        provider.info.multiprocess = typedArray2.getBoolean(9, false);
        provider.info.initOrder = typedArray2.getInt(12, 0);
        provider.info.splitName = typedArray2.getNonConfigurationString(21, 0);
        provider.info.flags = 0;
        if (typedArray2.getBoolean(16, false)) {
            provider.info.flags |= 1073741824;
        }
        ProviderInfo providerInfo = provider.info;
        ProviderInfo providerInfo2 = provider.info;
        boolean z = typedArray2.getBoolean(18, false);
        providerInfo2.directBootAware = z;
        providerInfo.encryptionAware = z;
        if (provider.info.directBootAware) {
            r22.applicationInfo.privateFlags |= 256;
        }
        boolean z2 = typedArray2.getBoolean(20, false);
        if (z2) {
            provider.info.flags |= 1048576;
            r22.visibleToInstantApps = true;
        }
        typedArray2.recycle();
        if ((r22.applicationInfo.privateFlags & 2) != 0 && provider.info.processName == r22.packageName) {
            strArr[0] = "Heavy-weight applications can not have providers in main process";
            return null;
        }
        if (nonConfigurationString == null) {
            strArr[0] = "<provider> does not include authorities attribute";
            return null;
        }
        if (nonConfigurationString.length() <= 0) {
            strArr[0] = "<provider> has empty authorities attribute";
            return null;
        }
        provider.info.authority = nonConfigurationString.intern();
        if (parseProviderTags(resources, xmlResourceParser, z2, provider, strArr)) {
            return provider;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x026f, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean parseProviderTags(Resources resources, XmlResourceParser xmlResourceParser, boolean z, Provider provider, String[] strArr) throws XmlPullParserException, IOException {
        String str;
        boolean z2;
        int depth = xmlResourceParser.getDepth();
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 1 || (next == 3 && xmlResourceParser.getDepth() <= depth)) {
                break;
            }
            if (next != 3 && next != 4) {
                if (xmlResourceParser.getName().equals("intent-filter")) {
                    ProviderIntentInfo providerIntentInfo = new ProviderIntentInfo(provider);
                    if (!parseIntent(resources, xmlResourceParser, true, false, providerIntentInfo, strArr)) {
                        return false;
                    }
                    if (z) {
                        providerIntentInfo.setVisibilityToInstantApp(1);
                        provider.info.flags |= 1048576;
                    }
                    provider.order = Math.max(providerIntentInfo.getOrder(), provider.order);
                    provider.intents.add(providerIntentInfo);
                } else if (xmlResourceParser.getName().equals("meta-data")) {
                    Bundle parseMetaData = parseMetaData(resources, xmlResourceParser, provider.metaData, strArr);
                    provider.metaData = parseMetaData;
                    if (parseMetaData == null) {
                        return false;
                    }
                } else if (xmlResourceParser.getName().equals("grant-uri-permission")) {
                    TypedArray obtainAttributes = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestGrantUriPermission);
                    String nonConfigurationString = obtainAttributes.getNonConfigurationString(0, 0);
                    PatternMatcher patternMatcher = nonConfigurationString != null ? new PatternMatcher(nonConfigurationString, 0) : null;
                    String nonConfigurationString2 = obtainAttributes.getNonConfigurationString(1, 0);
                    if (nonConfigurationString2 != null) {
                        patternMatcher = new PatternMatcher(nonConfigurationString2, 1);
                    }
                    String nonConfigurationString3 = obtainAttributes.getNonConfigurationString(2, 0);
                    if (nonConfigurationString3 != null) {
                        patternMatcher = new PatternMatcher(nonConfigurationString3, 2);
                    }
                    obtainAttributes.recycle();
                    if (patternMatcher != null) {
                        if (provider.info.uriPermissionPatterns == null) {
                            provider.info.uriPermissionPatterns = new PatternMatcher[1];
                            provider.info.uriPermissionPatterns[0] = patternMatcher;
                        } else {
                            int length = provider.info.uriPermissionPatterns.length;
                            PatternMatcher[] patternMatcherArr = new PatternMatcher[length + 1];
                            System.arraycopy(provider.info.uriPermissionPatterns, 0, patternMatcherArr, 0, length);
                            patternMatcherArr[length] = patternMatcher;
                            provider.info.uriPermissionPatterns = patternMatcherArr;
                        }
                        provider.info.grantUriPermissions = true;
                        XmlUtils.skipCurrentTag(xmlResourceParser);
                    } else {
                        Slog.w(TAG, "Unknown element under <path-permission>: " + xmlResourceParser.getName() + " at " + this.mArchiveSourcePath + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + xmlResourceParser.getPositionDescription());
                        XmlUtils.skipCurrentTag(xmlResourceParser);
                    }
                } else if (xmlResourceParser.getName().equals("path-permission")) {
                    TypedArray obtainAttributes2 = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestPathPermission);
                    String nonConfigurationString4 = obtainAttributes2.getNonConfigurationString(0, 0);
                    String nonConfigurationString5 = obtainAttributes2.getNonConfigurationString(1, 0);
                    if (nonConfigurationString5 == null) {
                        nonConfigurationString5 = nonConfigurationString4;
                    }
                    String nonConfigurationString6 = obtainAttributes2.getNonConfigurationString(2, 0);
                    if (nonConfigurationString6 != null) {
                        nonConfigurationString4 = nonConfigurationString6;
                    }
                    if (nonConfigurationString5 != null) {
                        str = nonConfigurationString5.intern();
                        z2 = true;
                    } else {
                        str = nonConfigurationString5;
                        z2 = false;
                    }
                    if (nonConfigurationString4 != null) {
                        nonConfigurationString4 = nonConfigurationString4.intern();
                        z2 = true;
                    }
                    if (!z2) {
                        Slog.w(TAG, "No readPermission or writePermssion for <path-permission>: " + xmlResourceParser.getName() + " at " + this.mArchiveSourcePath + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + xmlResourceParser.getPositionDescription());
                        XmlUtils.skipCurrentTag(xmlResourceParser);
                    } else {
                        String nonConfigurationString7 = obtainAttributes2.getNonConfigurationString(3, 0);
                        PathPermission pathPermission = nonConfigurationString7 != null ? new PathPermission(nonConfigurationString7, 0, str, nonConfigurationString4) : null;
                        String nonConfigurationString8 = obtainAttributes2.getNonConfigurationString(4, 0);
                        if (nonConfigurationString8 != null) {
                            pathPermission = new PathPermission(nonConfigurationString8, 1, str, nonConfigurationString4);
                        }
                        String nonConfigurationString9 = obtainAttributes2.getNonConfigurationString(5, 0);
                        if (nonConfigurationString9 != null) {
                            pathPermission = new PathPermission(nonConfigurationString9, 2, str, nonConfigurationString4);
                        }
                        String nonConfigurationString10 = obtainAttributes2.getNonConfigurationString(6, 0);
                        if (nonConfigurationString10 != null) {
                            pathPermission = new PathPermission(nonConfigurationString10, 3, str, nonConfigurationString4);
                        }
                        obtainAttributes2.recycle();
                        if (pathPermission != null) {
                            if (provider.info.pathPermissions == null) {
                                provider.info.pathPermissions = new PathPermission[1];
                                provider.info.pathPermissions[0] = pathPermission;
                            } else {
                                int length2 = provider.info.pathPermissions.length;
                                PathPermission[] pathPermissionArr = new PathPermission[length2 + 1];
                                System.arraycopy(provider.info.pathPermissions, 0, pathPermissionArr, 0, length2);
                                pathPermissionArr[length2] = pathPermission;
                                provider.info.pathPermissions = pathPermissionArr;
                            }
                            XmlUtils.skipCurrentTag(xmlResourceParser);
                        } else {
                            Slog.w(TAG, "No path, pathPrefix, or pathPattern for <path-permission>: " + xmlResourceParser.getName() + " at " + this.mArchiveSourcePath + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + xmlResourceParser.getPositionDescription());
                            XmlUtils.skipCurrentTag(xmlResourceParser);
                        }
                    }
                } else {
                    Slog.w(TAG, "Unknown element under <provider>: " + xmlResourceParser.getName() + " at " + this.mArchiveSourcePath + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + xmlResourceParser.getPositionDescription());
                    XmlUtils.skipCurrentTag(xmlResourceParser);
                }
            }
        }
    }

    private Service parseService(Package r23, Resources resources, XmlResourceParser xmlResourceParser, int i, String[] strArr, CachedComponentArgs cachedComponentArgs) throws XmlPullParserException, IOException {
        int i2;
        String[] strArr2;
        XmlResourceParser xmlResourceParser2;
        Resources resources2;
        ServiceIntentInfo serviceIntentInfo;
        Resources resources3 = resources;
        XmlResourceParser xmlResourceParser3 = xmlResourceParser;
        String[] strArr3 = strArr;
        TypedArray obtainAttributes = resources3.obtainAttributes(xmlResourceParser3, R.styleable.AndroidManifestService);
        if (cachedComponentArgs.mServiceArgs == null) {
            cachedComponentArgs.mServiceArgs = new ParseComponentArgs(r23, strArr, 2, 0, 1, 15, 8, 12, this.mSeparateProcesses, 6, 7, 4);
            cachedComponentArgs.mServiceArgs.tag = "<service>";
        }
        cachedComponentArgs.mServiceArgs.sa = obtainAttributes;
        cachedComponentArgs.mServiceArgs.flags = i;
        Service service = new Service(cachedComponentArgs.mServiceArgs, new ServiceInfo());
        if (strArr3[0] != null) {
            obtainAttributes.recycle();
            return null;
        }
        boolean hasValue = obtainAttributes.hasValue(5);
        if (hasValue) {
            service.info.exported = obtainAttributes.getBoolean(5, false);
        }
        int i3 = 3;
        String nonConfigurationString = obtainAttributes.getNonConfigurationString(3, 0);
        if (nonConfigurationString == null) {
            service.info.permission = r23.applicationInfo.permission;
        } else {
            service.info.permission = nonConfigurationString.length() > 0 ? nonConfigurationString.toString().intern() : null;
        }
        service.info.splitName = obtainAttributes.getNonConfigurationString(17, 0);
        service.info.flags = 0;
        if (obtainAttributes.getBoolean(9, false)) {
            service.info.flags |= 1;
        }
        if (obtainAttributes.getBoolean(10, false)) {
            service.info.flags |= 2;
        }
        int i4 = 4;
        if (obtainAttributes.getBoolean(14, false)) {
            service.info.flags |= 4;
        }
        if (obtainAttributes.getBoolean(11, false)) {
            service.info.flags |= 1073741824;
        }
        ServiceInfo serviceInfo = service.info;
        ServiceInfo serviceInfo2 = service.info;
        boolean z = obtainAttributes.getBoolean(13, false);
        serviceInfo2.directBootAware = z;
        serviceInfo.encryptionAware = z;
        if (service.info.directBootAware) {
            r23.applicationInfo.privateFlags |= 256;
        }
        boolean z2 = obtainAttributes.getBoolean(16, false);
        if (z2) {
            service.info.flags |= 1048576;
            r23.visibleToInstantApps = true;
        }
        obtainAttributes.recycle();
        if ((r23.applicationInfo.privateFlags & 2) != 0 && service.info.processName == r23.packageName) {
            strArr3[0] = "Heavy-weight applications can not have services in main process";
            return null;
        }
        int depth = xmlResourceParser.getDepth();
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 1 || (next == i3 && xmlResourceParser.getDepth() <= depth)) {
                break;
            }
            if (next == i3) {
                i3 = 3;
            } else if (next != i4) {
                if (xmlResourceParser.getName().equals("intent-filter")) {
                    ServiceIntentInfo serviceIntentInfo2 = new ServiceIntentInfo(service);
                    i2 = depth;
                    strArr2 = strArr3;
                    xmlResourceParser2 = xmlResourceParser3;
                    resources2 = resources3;
                    if (!parseIntent(resources, xmlResourceParser, true, false, serviceIntentInfo2, strArr)) {
                        return null;
                    }
                    if (z2) {
                        serviceIntentInfo = serviceIntentInfo2;
                        serviceIntentInfo.setVisibilityToInstantApp(1);
                        service.info.flags |= 1048576;
                    } else {
                        serviceIntentInfo = serviceIntentInfo2;
                    }
                    service.order = Math.max(serviceIntentInfo.getOrder(), service.order);
                    service.intents.add(serviceIntentInfo);
                } else {
                    i2 = depth;
                    strArr2 = strArr3;
                    xmlResourceParser2 = xmlResourceParser3;
                    resources2 = resources3;
                    if (xmlResourceParser.getName().equals("meta-data")) {
                        Bundle parseMetaData = parseMetaData(resources2, xmlResourceParser2, service.metaData, strArr2);
                        service.metaData = parseMetaData;
                        if (parseMetaData == null) {
                            return null;
                        }
                    } else {
                        Slog.w(TAG, "Unknown element under <service>: " + xmlResourceParser.getName() + " at " + this.mArchiveSourcePath + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + xmlResourceParser.getPositionDescription());
                        XmlUtils.skipCurrentTag(xmlResourceParser);
                    }
                }
                strArr3 = strArr2;
                xmlResourceParser3 = xmlResourceParser2;
                resources3 = resources2;
                depth = i2;
                i3 = 3;
                i4 = 4;
            } else {
                continue;
            }
        }
        if (!hasValue) {
            service.info.exported = service.intents.size() > 0;
        }
        return service;
    }

    private boolean isImplicitlyExposedIntent(IntentInfo intentInfo) {
        return intentInfo.hasCategory(Intent.CATEGORY_BROWSABLE) || intentInfo.hasAction(Intent.ACTION_SEND) || intentInfo.hasAction(Intent.ACTION_SENDTO) || intentInfo.hasAction(Intent.ACTION_SEND_MULTIPLE);
    }

    private boolean parseAllMetaData(Resources resources, XmlResourceParser xmlResourceParser, String str, Component<?> component, String[] strArr) throws XmlPullParserException, IOException {
        int depth = xmlResourceParser.getDepth();
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 1 || (next == 3 && xmlResourceParser.getDepth() <= depth)) {
                break;
            }
            if (next != 3 && next != 4) {
                if (xmlResourceParser.getName().equals("meta-data")) {
                    Bundle parseMetaData = parseMetaData(resources, xmlResourceParser, component.metaData, strArr);
                    component.metaData = parseMetaData;
                    if (parseMetaData == null) {
                        return false;
                    }
                } else {
                    Slog.w(TAG, "Unknown element under " + str + ": " + xmlResourceParser.getName() + " at " + this.mArchiveSourcePath + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + xmlResourceParser.getPositionDescription());
                    XmlUtils.skipCurrentTag(xmlResourceParser);
                }
            }
        }
        return true;
    }

    private Bundle parseMetaData(Resources resources, XmlResourceParser xmlResourceParser, Bundle bundle, String[] strArr) throws XmlPullParserException, IOException {
        TypedArray obtainAttributes = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestMetaData);
        if (bundle == null) {
            bundle = new Bundle();
        }
        String nonConfigurationString = obtainAttributes.getNonConfigurationString(0, 0);
        if (nonConfigurationString == null) {
            strArr[0] = "<meta-data> requires an android:name attribute";
            obtainAttributes.recycle();
            return null;
        }
        String intern = nonConfigurationString.intern();
        TypedValue peekValue = obtainAttributes.peekValue(2);
        if (peekValue != null && peekValue.resourceId != 0) {
            bundle.putInt(intern, peekValue.resourceId);
        } else {
            TypedValue peekValue2 = obtainAttributes.peekValue(1);
            if (peekValue2 != null) {
                if (peekValue2.type == 3) {
                    CharSequence coerceToString = peekValue2.coerceToString();
                    bundle.putString(intern, coerceToString != null ? coerceToString.toString() : null);
                } else if (peekValue2.type == 18) {
                    bundle.putBoolean(intern, peekValue2.data != 0);
                } else if (peekValue2.type >= 16 && peekValue2.type <= 31) {
                    bundle.putInt(intern, peekValue2.data);
                } else if (peekValue2.type == 4) {
                    bundle.putFloat(intern, peekValue2.getFloat());
                } else {
                    Slog.w(TAG, "<meta-data> only supports string, integer, float, color, boolean, and resource reference types: " + xmlResourceParser.getName() + " at " + this.mArchiveSourcePath + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + xmlResourceParser.getPositionDescription());
                }
            } else {
                strArr[0] = "<meta-data> requires an android:value or android:resource attribute";
                bundle = null;
            }
        }
        obtainAttributes.recycle();
        XmlUtils.skipCurrentTag(xmlResourceParser);
        return bundle;
    }

    private static VerifierInfo parseVerifier(AttributeSet attributeSet) {
        int attributeCount = attributeSet.getAttributeCount();
        String str = null;
        String str2 = null;
        for (int i = 0; i < attributeCount; i++) {
            int attributeNameResource = attributeSet.getAttributeNameResource(i);
            if (attributeNameResource == 16842755) {
                str = attributeSet.getAttributeValue(i);
            } else if (attributeNameResource == 16843686) {
                str2 = attributeSet.getAttributeValue(i);
            }
        }
        if (str == null || str.length() == 0) {
            Slog.i(TAG, "verifier package name was null; skipping");
            return null;
        }
        PublicKey parsePublicKey = parsePublicKey(str2);
        if (parsePublicKey == null) {
            Slog.i(TAG, "Unable to parse verifier public key for " + str);
            return null;
        }
        return new VerifierInfo(str, parsePublicKey);
    }

    public static final PublicKey parsePublicKey(String str) {
        if (str == null) {
            Slog.w(TAG, "Could not parse null public key");
            return null;
        }
        try {
            X509EncodedKeySpec x509EncodedKeySpec = new X509EncodedKeySpec(Base64.decode(str, 0));
            try {
                return KeyFactory.getInstance("RSA").generatePublic(x509EncodedKeySpec);
            } catch (NoSuchAlgorithmException unused) {
                Slog.wtf(TAG, "Could not parse public key: RSA KeyFactory not included in build");
                try {
                    return KeyFactory.getInstance("EC").generatePublic(x509EncodedKeySpec);
                } catch (NoSuchAlgorithmException unused2) {
                    Slog.wtf(TAG, "Could not parse public key: EC KeyFactory not included in build");
                    try {
                        return KeyFactory.getInstance("DSA").generatePublic(x509EncodedKeySpec);
                    } catch (NoSuchAlgorithmException unused3) {
                        Slog.wtf(TAG, "Could not parse public key: DSA KeyFactory not included in build");
                        return null;
                    } catch (InvalidKeySpecException unused4) {
                        return null;
                    }
                } catch (InvalidKeySpecException unused5) {
                    return KeyFactory.getInstance("DSA").generatePublic(x509EncodedKeySpec);
                }
            } catch (InvalidKeySpecException unused6) {
                return KeyFactory.getInstance("EC").generatePublic(x509EncodedKeySpec);
            }
        } catch (IllegalArgumentException unused7) {
            Slog.w(TAG, "Could not parse verifier public key; invalid Base64");
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x00a5, code lost:
    
        r20[0] = "No value supplied for <android:name>";
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00a9, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00c9, code lost:
    
        r20[0] = "No value supplied for <android:name>";
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00cd, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean parseIntent(Resources resources, XmlResourceParser xmlResourceParser, boolean z, boolean z2, IntentInfo intentInfo, String[] strArr) throws XmlPullParserException, IOException {
        TypedArray obtainAttributes = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestIntentFilter);
        int i = 2;
        intentInfo.setPriority(obtainAttributes.getInt(2, 0));
        intentInfo.setOrder(obtainAttributes.getInt(3, 0));
        TypedValue peekValue = obtainAttributes.peekValue(0);
        if (peekValue != null) {
            int i2 = peekValue.resourceId;
            intentInfo.labelRes = i2;
            if (i2 == 0) {
                intentInfo.nonLocalizedLabel = peekValue.coerceToString();
            }
        }
        int i3 = 7;
        int resourceId = Resources.getSystem().getBoolean(17957060) ? obtainAttributes.getResourceId(7, 0) : 0;
        if (resourceId != 0) {
            intentInfo.icon = resourceId;
        } else {
            intentInfo.icon = obtainAttributes.getResourceId(1, 0);
        }
        intentInfo.logo = obtainAttributes.getResourceId(4, 0);
        intentInfo.banner = obtainAttributes.getResourceId(5, 0);
        if (z2) {
            intentInfo.setAutoVerify(obtainAttributes.getBoolean(6, false));
        }
        obtainAttributes.recycle();
        int depth = xmlResourceParser.getDepth();
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 1 || (next == 3 && xmlResourceParser.getDepth() <= depth)) {
                break;
            }
            if (next != 3 && next != 4) {
                String name = xmlResourceParser.getName();
                if (name.equals("action")) {
                    String attributeValue = xmlResourceParser.getAttributeValue(ANDROID_RESOURCES, MidiDeviceInfo.PROPERTY_NAME);
                    if (attributeValue == null || attributeValue == "") {
                        break;
                    }
                    XmlUtils.skipCurrentTag(xmlResourceParser);
                    intentInfo.addAction(attributeValue);
                } else if (name.equals(CardEmulation.EXTRA_CATEGORY)) {
                    String attributeValue2 = xmlResourceParser.getAttributeValue(ANDROID_RESOURCES, MidiDeviceInfo.PROPERTY_NAME);
                    if (attributeValue2 == null || attributeValue2 == "") {
                        break;
                    }
                    XmlUtils.skipCurrentTag(xmlResourceParser);
                    intentInfo.addCategory(attributeValue2);
                } else if (name.equals("data")) {
                    TypedArray obtainAttributes2 = resources.obtainAttributes(xmlResourceParser, R.styleable.AndroidManifestData);
                    String nonConfigurationString = obtainAttributes2.getNonConfigurationString(0, 0);
                    if (nonConfigurationString != null) {
                        try {
                            intentInfo.addDataType(nonConfigurationString);
                        } catch (IntentFilter.MalformedMimeTypeException e) {
                            strArr[0] = e.toString();
                            obtainAttributes2.recycle();
                            return false;
                        }
                    }
                    String nonConfigurationString2 = obtainAttributes2.getNonConfigurationString(1, 0);
                    if (nonConfigurationString2 != null) {
                        intentInfo.addDataScheme(nonConfigurationString2);
                    }
                    String nonConfigurationString3 = obtainAttributes2.getNonConfigurationString(i3, 0);
                    if (nonConfigurationString3 != null) {
                        intentInfo.addDataSchemeSpecificPart(nonConfigurationString3, 0);
                    }
                    String nonConfigurationString4 = obtainAttributes2.getNonConfigurationString(8, 0);
                    if (nonConfigurationString4 != null) {
                        intentInfo.addDataSchemeSpecificPart(nonConfigurationString4, 1);
                    }
                    String nonConfigurationString5 = obtainAttributes2.getNonConfigurationString(9, 0);
                    if (nonConfigurationString5 != null) {
                        if (!z) {
                            strArr[0] = "sspPattern not allowed here; ssp must be literal";
                            return false;
                        }
                        intentInfo.addDataSchemeSpecificPart(nonConfigurationString5, i);
                    }
                    String nonConfigurationString6 = obtainAttributes2.getNonConfigurationString(i, 0);
                    String nonConfigurationString7 = obtainAttributes2.getNonConfigurationString(3, 0);
                    if (nonConfigurationString6 != null) {
                        intentInfo.addDataAuthority(nonConfigurationString6, nonConfigurationString7);
                    }
                    String nonConfigurationString8 = obtainAttributes2.getNonConfigurationString(4, 0);
                    if (nonConfigurationString8 != null) {
                        intentInfo.addDataPath(nonConfigurationString8, 0);
                    }
                    String nonConfigurationString9 = obtainAttributes2.getNonConfigurationString(5, 0);
                    if (nonConfigurationString9 != null) {
                        intentInfo.addDataPath(nonConfigurationString9, 1);
                    }
                    String nonConfigurationString10 = obtainAttributes2.getNonConfigurationString(6, 0);
                    if (nonConfigurationString10 != null) {
                        if (!z) {
                            strArr[0] = "pathPattern not allowed here; path must be literal";
                            return false;
                        }
                        intentInfo.addDataPath(nonConfigurationString10, i);
                    }
                    String nonConfigurationString11 = obtainAttributes2.getNonConfigurationString(10, 0);
                    if (nonConfigurationString11 != null) {
                        if (!z) {
                            strArr[0] = "pathAdvancedPattern not allowed here; path must be literal";
                            return false;
                        }
                        intentInfo.addDataPath(nonConfigurationString11, 3);
                    }
                    obtainAttributes2.recycle();
                    XmlUtils.skipCurrentTag(xmlResourceParser);
                } else {
                    Slog.w(TAG, "Unknown element under <intent-filter>: " + xmlResourceParser.getName() + " at " + this.mArchiveSourcePath + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + xmlResourceParser.getPositionDescription());
                    XmlUtils.skipCurrentTag(xmlResourceParser);
                    i = 2;
                    i3 = 7;
                }
                i = 2;
                i3 = 7;
            }
        }
        intentInfo.hasDefault = intentInfo.hasCategory(Intent.CATEGORY_DEFAULT);
        return true;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class SigningDetails implements Parcelable {
        private static final int PAST_CERT_EXISTS = 0;
        public final Signature[] pastSigningCertificates;
        public final int[] pastSigningCertificatesFlags;
        public final ArraySet<PublicKey> publicKeys;

        @SignatureSchemeVersion
        public final int signatureSchemeVersion;
        public final Signature[] signatures;
        public static final SigningDetails UNKNOWN = new SigningDetails(null, 0, null, null, null);
        public static final Parcelable.Creator<SigningDetails> CREATOR = new Parcelable.Creator<SigningDetails>() { // from class: android.content.pm.PackageParser.SigningDetails.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SigningDetails createFromParcel(Parcel parcel) {
                if (parcel.readBoolean()) {
                    return SigningDetails.UNKNOWN;
                }
                return new SigningDetails(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SigningDetails[] newArray(int i) {
                return new SigningDetails[i];
            }
        };

        /* loaded from: /home/user/work/dex/classes.dex */
        public @interface CertCapabilities {
            public static final int AUTH = 16;
            public static final int INSTALLED_DATA = 1;
            public static final int PERMISSION = 4;
            public static final int ROLLBACK = 8;
            public static final int SHARED_USER_ID = 2;
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        public @interface SignatureSchemeVersion {
            public static final int JAR = 1;
            public static final int SIGNING_BLOCK_V2 = 2;
            public static final int SIGNING_BLOCK_V3 = 3;
            public static final int UNKNOWN = 0;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @VisibleForTesting
        public SigningDetails(Signature[] signatureArr, @SignatureSchemeVersion int i, ArraySet<PublicKey> arraySet, Signature[] signatureArr2, int[] iArr) {
            this.signatures = signatureArr;
            this.signatureSchemeVersion = i;
            this.publicKeys = arraySet;
            this.pastSigningCertificates = signatureArr2;
            this.pastSigningCertificatesFlags = iArr;
        }

        public SigningDetails(Signature[] signatureArr, @SignatureSchemeVersion int i, Signature[] signatureArr2, int[] iArr) throws CertificateException {
            this(signatureArr, i, PackageParser.toSigningKeys(signatureArr), signatureArr2, iArr);
        }

        public SigningDetails(Signature[] signatureArr, @SignatureSchemeVersion int i) throws CertificateException {
            this(signatureArr, i, null, null);
        }

        public SigningDetails(SigningDetails signingDetails) {
            if (signingDetails != null) {
                if (signingDetails.signatures != null) {
                    this.signatures = (Signature[]) signingDetails.signatures.clone();
                } else {
                    this.signatures = null;
                }
                this.signatureSchemeVersion = signingDetails.signatureSchemeVersion;
                this.publicKeys = new ArraySet<>((ArraySet) signingDetails.publicKeys);
                if (signingDetails.pastSigningCertificates != null) {
                    this.pastSigningCertificates = (Signature[]) signingDetails.pastSigningCertificates.clone();
                    this.pastSigningCertificatesFlags = (int[]) signingDetails.pastSigningCertificatesFlags.clone();
                    return;
                } else {
                    this.pastSigningCertificates = null;
                    this.pastSigningCertificatesFlags = null;
                    return;
                }
            }
            this.signatures = null;
            this.signatureSchemeVersion = 0;
            this.publicKeys = null;
            this.pastSigningCertificates = null;
            this.pastSigningCertificatesFlags = null;
        }

        public boolean hasSignatures() {
            return this.signatures != null && this.signatures.length > 0;
        }

        public boolean hasPastSigningCertificates() {
            return this.pastSigningCertificates != null && this.pastSigningCertificates.length > 0;
        }

        public boolean hasAncestorOrSelf(SigningDetails signingDetails) {
            if (this == UNKNOWN || signingDetails == UNKNOWN) {
                return false;
            }
            if (signingDetails.signatures.length > 1) {
                return signaturesMatchExactly(signingDetails);
            }
            return hasCertificate(signingDetails.signatures[0]);
        }

        public boolean hasAncestor(SigningDetails signingDetails) {
            if (this != UNKNOWN && signingDetails != UNKNOWN && hasPastSigningCertificates() && signingDetails.signatures.length == 1) {
                for (int i = 0; i < this.pastSigningCertificates.length - 1; i++) {
                    if (this.pastSigningCertificates[i].equals(signingDetails.signatures[i])) {
                        return true;
                    }
                }
            }
            return false;
        }

        public boolean checkCapability(SigningDetails signingDetails, @CertCapabilities int i) {
            if (this == UNKNOWN || signingDetails == UNKNOWN) {
                return false;
            }
            if (signingDetails.signatures.length > 1) {
                return signaturesMatchExactly(signingDetails);
            }
            return hasCertificate(signingDetails.signatures[0], i);
        }

        public boolean checkCapabilityRecover(SigningDetails signingDetails, @CertCapabilities int i) throws CertificateException {
            if (signingDetails == UNKNOWN || this == UNKNOWN) {
                return false;
            }
            if (hasPastSigningCertificates() && signingDetails.signatures.length == 1) {
                for (int i2 = 0; i2 < this.pastSigningCertificates.length; i2++) {
                    if (Signature.areEffectiveMatch(signingDetails.signatures[0], this.pastSigningCertificates[i2]) && this.pastSigningCertificatesFlags[i2] == i) {
                        return true;
                    }
                }
                return false;
            }
            return Signature.areEffectiveMatch(signingDetails.signatures, this.signatures);
        }

        public boolean hasCertificate(Signature signature) {
            return hasCertificateInternal(signature, 0);
        }

        public boolean hasCertificate(Signature signature, @CertCapabilities int i) {
            return hasCertificateInternal(signature, i);
        }

        public boolean hasCertificate(byte[] bArr) {
            return hasCertificate(new Signature(bArr));
        }

        private boolean hasCertificateInternal(Signature signature, int i) {
            if (this == UNKNOWN) {
                return false;
            }
            if (hasPastSigningCertificates()) {
                for (int i2 = 0; i2 < this.pastSigningCertificates.length - 1; i2++) {
                    if (this.pastSigningCertificates[i2].equals(signature) && (i == 0 || (this.pastSigningCertificatesFlags[i2] & i) == i)) {
                        return true;
                    }
                }
            }
            return this.signatures.length == 1 && this.signatures[0].equals(signature);
        }

        public boolean checkCapability(String str, @CertCapabilities int i) {
            if (this == UNKNOWN) {
                return false;
            }
            if (hasSha256Certificate(ByteStringUtils.fromHexToByteArray(str), i)) {
                return true;
            }
            return PackageUtils.computeSignaturesSha256Digest(PackageUtils.computeSignaturesSha256Digests(this.signatures)).equals(str);
        }

        public boolean hasSha256Certificate(byte[] bArr) {
            return hasSha256CertificateInternal(bArr, 0);
        }

        public boolean hasSha256Certificate(byte[] bArr, @CertCapabilities int i) {
            return hasSha256CertificateInternal(bArr, i);
        }

        private boolean hasSha256CertificateInternal(byte[] bArr, int i) {
            if (this == UNKNOWN) {
                return false;
            }
            if (hasPastSigningCertificates()) {
                for (int i2 = 0; i2 < this.pastSigningCertificates.length - 1; i2++) {
                    if (Arrays.equals(bArr, PackageUtils.computeSha256DigestBytes(this.pastSigningCertificates[i2].toByteArray())) && (i == 0 || (this.pastSigningCertificatesFlags[i2] & i) == i)) {
                        return true;
                    }
                }
            }
            if (this.signatures.length == 1) {
                return Arrays.equals(bArr, PackageUtils.computeSha256DigestBytes(this.signatures[0].toByteArray()));
            }
            return false;
        }

        public boolean signaturesMatchExactly(SigningDetails signingDetails) {
            return Signature.areExactMatch(this.signatures, signingDetails.signatures);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            boolean z = UNKNOWN == this;
            parcel.writeBoolean(z);
            if (z) {
                return;
            }
            parcel.writeTypedArray(this.signatures, i);
            parcel.writeInt(this.signatureSchemeVersion);
            parcel.writeArraySet(this.publicKeys);
            parcel.writeTypedArray(this.pastSigningCertificates, i);
            parcel.writeIntArray(this.pastSigningCertificatesFlags);
        }

        protected SigningDetails(Parcel parcel) {
            ClassLoader classLoader = Object.class.getClassLoader();
            this.signatures = (Signature[]) parcel.createTypedArray(Signature.CREATOR);
            this.signatureSchemeVersion = parcel.readInt();
            this.publicKeys = parcel.readArraySet(classLoader);
            this.pastSigningCertificates = (Signature[]) parcel.createTypedArray(Signature.CREATOR);
            this.pastSigningCertificatesFlags = parcel.createIntArray();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SigningDetails)) {
                return false;
            }
            SigningDetails signingDetails = (SigningDetails) obj;
            if (this.signatureSchemeVersion != signingDetails.signatureSchemeVersion || !Signature.areExactMatch(this.signatures, signingDetails.signatures)) {
                return false;
            }
            if (this.publicKeys != null) {
                if (!this.publicKeys.equals(signingDetails.publicKeys)) {
                    return false;
                }
            } else if (signingDetails.publicKeys != null) {
                return false;
            }
            return Arrays.equals(this.pastSigningCertificates, signingDetails.pastSigningCertificates) && Arrays.equals(this.pastSigningCertificatesFlags, signingDetails.pastSigningCertificatesFlags);
        }

        public int hashCode() {
            return (((((((Arrays.hashCode(this.signatures) * 31) + this.signatureSchemeVersion) * 31) + (this.publicKeys != null ? this.publicKeys.hashCode() : 0)) * 31) + Arrays.hashCode(this.pastSigningCertificates)) * 31) + Arrays.hashCode(this.pastSigningCertificatesFlags);
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        public static class Builder {
            private Signature[] mPastSigningCertificates;
            private int[] mPastSigningCertificatesFlags;
            private int mSignatureSchemeVersion = 0;
            private Signature[] mSignatures;

            public Builder setSignatures(Signature[] signatureArr) {
                this.mSignatures = signatureArr;
                return this;
            }

            public Builder setSignatureSchemeVersion(int i) {
                this.mSignatureSchemeVersion = i;
                return this;
            }

            public Builder setPastSigningCertificates(Signature[] signatureArr) {
                this.mPastSigningCertificates = signatureArr;
                return this;
            }

            public Builder setPastSigningCertificatesFlags(int[] iArr) {
                this.mPastSigningCertificatesFlags = iArr;
                return this;
            }

            private void checkInvariants() {
                if (this.mSignatures == null) {
                    throw new IllegalStateException("SigningDetails requires the current signing certificates.");
                }
                boolean z = true;
                if (this.mPastSigningCertificates == null || this.mPastSigningCertificatesFlags == null ? !(this.mPastSigningCertificates != null || this.mPastSigningCertificatesFlags != null) : this.mPastSigningCertificates.length == this.mPastSigningCertificatesFlags.length) {
                    z = false;
                }
                if (z) {
                    throw new IllegalStateException("SigningDetails must have a one to one mapping between pastSigningCertificates and pastSigningCertificatesFlags");
                }
            }

            public SigningDetails build() throws CertificateException {
                checkInvariants();
                return new SigningDetails(this.mSignatures, this.mSignatureSchemeVersion, this.mPastSigningCertificates, this.mPastSigningCertificatesFlags);
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class Package implements Parcelable {
        public static final Parcelable.Creator CREATOR = new Parcelable.Creator<Package>() { // from class: android.content.pm.PackageParser.Package.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Package createFromParcel(Parcel parcel) {
                return new Package(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Package[] newArray(int i) {
                return new Package[i];
            }
        };
        public final ArrayList<Activity> activities;
        public ApplicationInfo applicationInfo;
        public String baseCodePath;
        public boolean baseHardwareAccelerated;
        public int baseRevisionCode;
        public ArrayList<Package> childPackages;
        public String codePath;
        public ArrayList<ConfigurationInfo> configPreferences;
        public boolean coreApp;
        public String cpuAbiOverride;
        public ArrayList<FeatureGroupInfo> featureGroups;
        public int installLocation;
        public final ArrayList<Instrumentation> instrumentation;
        public boolean isStub;
        public ArrayList<String> libraryNames;
        public ArrayList<String> mAdoptPermissions;
        public Bundle mAppMetaData;
        public int mCompileSdkVersion;
        public String mCompileSdkVersionCodename;
        public Object mExtras;
        public ArrayMap<String, ArraySet<PublicKey>> mKeySetMapping;
        public long[] mLastPackageUsageTimeInMills;
        public ArrayList<String> mOriginalPackages;
        public String mOverlayCategory;
        public boolean mOverlayIsStatic;
        public int mOverlayPriority;
        public String mOverlayTarget;
        public int mPreferredOrder;
        public String mRealPackage;
        public String mRequiredAccountType;
        public boolean mRequiredForAllUsers;
        public String mRestrictedAccountType;
        public String mSharedUserId;
        public int mSharedUserLabel;
        public SigningDetails mSigningDetails;
        public ArraySet<String> mUpgradeKeySets;
        public int mVersionCode;
        public int mVersionCodeMajor;
        public String mVersionName;
        public String manifestPackageName;
        public String packageName;
        public Package parentPackage;
        public final ArrayList<PermissionGroup> permissionGroups;
        public final ArrayList<Permission> permissions;
        public ArrayList<ActivityIntentInfo> preferredActivityFilters;
        public ArrayList<String> protectedBroadcasts;
        public final ArrayList<Provider> providers;
        public final ArrayList<Activity> receivers;
        public ArrayList<FeatureInfo> reqFeatures;
        public final ArrayList<String> requestedPermissions;
        public byte[] restrictUpdateHash;
        public final ArrayList<Service> services;
        public String[] splitCodePaths;
        public int[] splitFlags;
        public String[] splitNames;
        public int[] splitPrivateFlags;
        public int[] splitRevisionCodes;
        public String staticSharedLibName;
        public long staticSharedLibVersion;
        public boolean use32bitAbi;
        public ArrayList<String> usesLibraries;
        public String[] usesLibraryFiles;
        public ArrayList<String> usesOptionalLibraries;
        public ArrayList<String> usesStaticLibraries;
        public String[][] usesStaticLibrariesCertDigests;
        public long[] usesStaticLibrariesVersions;
        public boolean visibleToInstantApps;
        public String volumeUuid;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public long getLongVersionCode() {
            return PackageInfo.composeLongVersionCode(this.mVersionCodeMajor, this.mVersionCode);
        }

        public Package(String str) {
            this.applicationInfo = new ApplicationInfo();
            this.permissions = new ArrayList<>(0);
            this.permissionGroups = new ArrayList<>(0);
            this.activities = new ArrayList<>(0);
            this.receivers = new ArrayList<>(0);
            this.providers = new ArrayList<>(0);
            this.services = new ArrayList<>(0);
            this.instrumentation = new ArrayList<>(0);
            this.requestedPermissions = new ArrayList<>();
            this.staticSharedLibName = null;
            this.staticSharedLibVersion = 0L;
            this.libraryNames = null;
            this.usesLibraries = null;
            this.usesStaticLibraries = null;
            this.usesStaticLibrariesVersions = null;
            this.usesStaticLibrariesCertDigests = null;
            this.usesOptionalLibraries = null;
            this.usesLibraryFiles = null;
            this.preferredActivityFilters = null;
            this.mOriginalPackages = null;
            this.mRealPackage = null;
            this.mAdoptPermissions = null;
            this.mAppMetaData = null;
            this.mSigningDetails = SigningDetails.UNKNOWN;
            this.mPreferredOrder = 0;
            this.mLastPackageUsageTimeInMills = new long[8];
            this.configPreferences = null;
            this.reqFeatures = null;
            this.featureGroups = null;
            this.packageName = str;
            this.manifestPackageName = str;
            this.applicationInfo.packageName = str;
            this.applicationInfo.uid = -1;
        }

        public void setApplicationVolumeUuid(String str) {
            UUID convert = StorageManager.convert(str);
            this.applicationInfo.volumeUuid = str;
            this.applicationInfo.storageUuid = convert;
            if (this.childPackages != null) {
                int size = this.childPackages.size();
                for (int i = 0; i < size; i++) {
                    this.childPackages.get(i).applicationInfo.volumeUuid = str;
                    this.childPackages.get(i).applicationInfo.storageUuid = convert;
                }
            }
        }

        public void setApplicationInfoCodePath(String str) {
            this.applicationInfo.setCodePath(str);
            if (this.childPackages != null) {
                int size = this.childPackages.size();
                for (int i = 0; i < size; i++) {
                    this.childPackages.get(i).applicationInfo.setCodePath(str);
                }
            }
        }

        @Deprecated
        public void setApplicationInfoResourcePath(String str) {
            this.applicationInfo.setResourcePath(str);
            if (this.childPackages != null) {
                int size = this.childPackages.size();
                for (int i = 0; i < size; i++) {
                    this.childPackages.get(i).applicationInfo.setResourcePath(str);
                }
            }
        }

        @Deprecated
        public void setApplicationInfoBaseResourcePath(String str) {
            this.applicationInfo.setBaseResourcePath(str);
            if (this.childPackages != null) {
                int size = this.childPackages.size();
                for (int i = 0; i < size; i++) {
                    this.childPackages.get(i).applicationInfo.setBaseResourcePath(str);
                }
            }
        }

        public void setApplicationInfoBaseCodePath(String str) {
            this.applicationInfo.setBaseCodePath(str);
            if (this.childPackages != null) {
                int size = this.childPackages.size();
                for (int i = 0; i < size; i++) {
                    this.childPackages.get(i).applicationInfo.setBaseCodePath(str);
                }
            }
        }

        public List<String> getChildPackageNames() {
            if (this.childPackages == null) {
                return null;
            }
            int size = this.childPackages.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i = 0; i < size; i++) {
                arrayList.add(this.childPackages.get(i).packageName);
            }
            return arrayList;
        }

        public boolean hasChildPackage(String str) {
            int size = this.childPackages != null ? this.childPackages.size() : 0;
            for (int i = 0; i < size; i++) {
                if (this.childPackages.get(i).packageName.equals(str)) {
                    return true;
                }
            }
            return false;
        }

        public void setApplicationInfoSplitCodePaths(String[] strArr) {
            this.applicationInfo.setSplitCodePaths(strArr);
        }

        @Deprecated
        public void setApplicationInfoSplitResourcePaths(String[] strArr) {
            this.applicationInfo.setSplitResourcePaths(strArr);
        }

        public void setSplitCodePaths(String[] strArr) {
            this.splitCodePaths = strArr;
        }

        public void setCodePath(String str) {
            this.codePath = str;
            if (this.childPackages != null) {
                int size = this.childPackages.size();
                for (int i = 0; i < size; i++) {
                    this.childPackages.get(i).codePath = str;
                }
            }
        }

        public void setBaseCodePath(String str) {
            this.baseCodePath = str;
            if (this.childPackages != null) {
                int size = this.childPackages.size();
                for (int i = 0; i < size; i++) {
                    this.childPackages.get(i).baseCodePath = str;
                }
            }
        }

        public void setSigningDetails(SigningDetails signingDetails) {
            this.mSigningDetails = signingDetails;
            if (this.childPackages != null) {
                int size = this.childPackages.size();
                for (int i = 0; i < size; i++) {
                    this.childPackages.get(i).mSigningDetails = signingDetails;
                }
            }
        }

        public void setVolumeUuid(String str) {
            this.volumeUuid = str;
            if (this.childPackages != null) {
                int size = this.childPackages.size();
                for (int i = 0; i < size; i++) {
                    this.childPackages.get(i).volumeUuid = str;
                }
            }
        }

        public void setApplicationInfoFlags(int i, int i2) {
            ApplicationInfo applicationInfo = this.applicationInfo;
            int i3 = this.applicationInfo.flags;
            int i4 = ~i;
            int i5 = i & i2;
            applicationInfo.flags = (i3 & i4) | i5;
            if (this.childPackages != null) {
                int size = this.childPackages.size();
                for (int i6 = 0; i6 < size; i6++) {
                    this.childPackages.get(i6).applicationInfo.flags = (this.applicationInfo.flags & i4) | i5;
                }
            }
        }

        public void setUse32bitAbi(boolean z) {
            this.use32bitAbi = z;
            if (this.childPackages != null) {
                int size = this.childPackages.size();
                for (int i = 0; i < size; i++) {
                    this.childPackages.get(i).use32bitAbi = z;
                }
            }
        }

        public boolean isLibrary() {
            return (this.staticSharedLibName == null && ArrayUtils.isEmpty(this.libraryNames)) ? false : true;
        }

        public List<String> getAllCodePaths() {
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.baseCodePath);
            if (!ArrayUtils.isEmpty(this.splitCodePaths)) {
                Collections.addAll(arrayList, this.splitCodePaths);
            }
            return arrayList;
        }

        public List<String> getAllCodePathsExcludingResourceOnly() {
            ArrayList arrayList = new ArrayList();
            if ((this.applicationInfo.flags & 4) != 0) {
                arrayList.add(this.baseCodePath);
            }
            if (!ArrayUtils.isEmpty(this.splitCodePaths)) {
                for (int i = 0; i < this.splitCodePaths.length; i++) {
                    if ((this.splitFlags[i] & 4) != 0) {
                        arrayList.add(this.splitCodePaths[i]);
                    }
                }
            }
            return arrayList;
        }

        public void setPackageName(String str) {
            this.packageName = str;
            this.applicationInfo.packageName = str;
            for (int size = this.permissions.size() - 1; size >= 0; size--) {
                this.permissions.get(size).setPackageName(str);
            }
            for (int size2 = this.permissionGroups.size() - 1; size2 >= 0; size2--) {
                this.permissionGroups.get(size2).setPackageName(str);
            }
            for (int size3 = this.activities.size() - 1; size3 >= 0; size3--) {
                this.activities.get(size3).setPackageName(str);
            }
            for (int size4 = this.receivers.size() - 1; size4 >= 0; size4--) {
                this.receivers.get(size4).setPackageName(str);
            }
            for (int size5 = this.providers.size() - 1; size5 >= 0; size5--) {
                this.providers.get(size5).setPackageName(str);
            }
            for (int size6 = this.services.size() - 1; size6 >= 0; size6--) {
                this.services.get(size6).setPackageName(str);
            }
            for (int size7 = this.instrumentation.size() - 1; size7 >= 0; size7--) {
                this.instrumentation.get(size7).setPackageName(str);
            }
        }

        public boolean hasComponentClassName(String str) {
            for (int size = this.activities.size() - 1; size >= 0; size--) {
                if (str.equals(this.activities.get(size).className)) {
                    return true;
                }
            }
            for (int size2 = this.receivers.size() - 1; size2 >= 0; size2--) {
                if (str.equals(this.receivers.get(size2).className)) {
                    return true;
                }
            }
            for (int size3 = this.providers.size() - 1; size3 >= 0; size3--) {
                if (str.equals(this.providers.get(size3).className)) {
                    return true;
                }
            }
            for (int size4 = this.services.size() - 1; size4 >= 0; size4--) {
                if (str.equals(this.services.get(size4).className)) {
                    return true;
                }
            }
            for (int size5 = this.instrumentation.size() - 1; size5 >= 0; size5--) {
                if (str.equals(this.instrumentation.get(size5).className)) {
                    return true;
                }
            }
            return false;
        }

        public boolean isExternal() {
            return this.applicationInfo.isExternal();
        }

        public boolean isForwardLocked() {
            return this.applicationInfo.isForwardLocked();
        }

        public boolean isOem() {
            return this.applicationInfo.isOem();
        }

        public boolean isVendor() {
            return this.applicationInfo.isVendor();
        }

        public boolean isProduct() {
            return this.applicationInfo.isProduct();
        }

        public boolean isPrivileged() {
            return this.applicationInfo.isPrivilegedApp();
        }

        public boolean isSystem() {
            return this.applicationInfo.isSystemApp();
        }

        public boolean isUpdatedSystemApp() {
            return this.applicationInfo.isUpdatedSystemApp();
        }

        public boolean canHaveOatDir() {
            return ((isSystem() && !isUpdatedSystemApp()) || isForwardLocked() || this.applicationInfo.isExternalAsec()) ? false : true;
        }

        public boolean isMatch(int i) {
            if ((i & 1048576) != 0) {
                return isSystem();
            }
            return true;
        }

        public long getLatestPackageUseTimeInMills() {
            long j = 0;
            for (long j2 : this.mLastPackageUsageTimeInMills) {
                j = Math.max(j, j2);
            }
            return j;
        }

        public long getLatestForegroundPackageUseTimeInMills() {
            long j = 0;
            for (int i : new int[]{0, 2}) {
                j = Math.max(j, this.mLastPackageUsageTimeInMills[i]);
            }
            return j;
        }

        public String toString() {
            return "Package{" + Integer.toHexString(System.identityHashCode(this)) + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + this.packageName + "}";
        }

        public Package(Parcel parcel) {
            this.applicationInfo = new ApplicationInfo();
            this.permissions = new ArrayList<>(0);
            this.permissionGroups = new ArrayList<>(0);
            this.activities = new ArrayList<>(0);
            this.receivers = new ArrayList<>(0);
            this.providers = new ArrayList<>(0);
            this.services = new ArrayList<>(0);
            this.instrumentation = new ArrayList<>(0);
            this.requestedPermissions = new ArrayList<>();
            this.staticSharedLibName = null;
            this.staticSharedLibVersion = 0L;
            this.libraryNames = null;
            this.usesLibraries = null;
            this.usesStaticLibraries = null;
            this.usesStaticLibrariesVersions = null;
            this.usesStaticLibrariesCertDigests = null;
            this.usesOptionalLibraries = null;
            this.usesLibraryFiles = null;
            this.preferredActivityFilters = null;
            this.mOriginalPackages = null;
            this.mRealPackage = null;
            this.mAdoptPermissions = null;
            this.mAppMetaData = null;
            this.mSigningDetails = SigningDetails.UNKNOWN;
            this.mPreferredOrder = 0;
            this.mLastPackageUsageTimeInMills = new long[8];
            this.configPreferences = null;
            this.reqFeatures = null;
            this.featureGroups = null;
            ClassLoader classLoader = Object.class.getClassLoader();
            this.packageName = parcel.readString().intern();
            this.manifestPackageName = parcel.readString();
            this.splitNames = parcel.readStringArray();
            this.volumeUuid = parcel.readString();
            this.codePath = parcel.readString();
            this.baseCodePath = parcel.readString();
            this.splitCodePaths = parcel.readStringArray();
            this.baseRevisionCode = parcel.readInt();
            this.splitRevisionCodes = parcel.createIntArray();
            this.splitFlags = parcel.createIntArray();
            this.splitPrivateFlags = parcel.createIntArray();
            this.baseHardwareAccelerated = parcel.readInt() == 1;
            this.applicationInfo = (ApplicationInfo) parcel.readParcelable(classLoader);
            if (this.applicationInfo.permission != null) {
                this.applicationInfo.permission = this.applicationInfo.permission.intern();
            }
            parcel.readParcelableList(this.permissions, classLoader);
            fixupOwner(this.permissions);
            parcel.readParcelableList(this.permissionGroups, classLoader);
            fixupOwner(this.permissionGroups);
            parcel.readParcelableList(this.activities, classLoader);
            fixupOwner(this.activities);
            parcel.readParcelableList(this.receivers, classLoader);
            fixupOwner(this.receivers);
            parcel.readParcelableList(this.providers, classLoader);
            fixupOwner(this.providers);
            parcel.readParcelableList(this.services, classLoader);
            fixupOwner(this.services);
            parcel.readParcelableList(this.instrumentation, classLoader);
            fixupOwner(this.instrumentation);
            parcel.readStringList(this.requestedPermissions);
            internStringArrayList(this.requestedPermissions);
            this.protectedBroadcasts = parcel.createStringArrayList();
            internStringArrayList(this.protectedBroadcasts);
            this.parentPackage = (Package) parcel.readParcelable(classLoader);
            this.childPackages = new ArrayList<>();
            parcel.readParcelableList(this.childPackages, classLoader);
            if (this.childPackages.size() == 0) {
                this.childPackages = null;
            }
            this.staticSharedLibName = parcel.readString();
            if (this.staticSharedLibName != null) {
                this.staticSharedLibName = this.staticSharedLibName.intern();
            }
            this.staticSharedLibVersion = parcel.readLong();
            this.libraryNames = parcel.createStringArrayList();
            internStringArrayList(this.libraryNames);
            this.usesLibraries = parcel.createStringArrayList();
            internStringArrayList(this.usesLibraries);
            this.usesOptionalLibraries = parcel.createStringArrayList();
            internStringArrayList(this.usesOptionalLibraries);
            this.usesLibraryFiles = parcel.readStringArray();
            int readInt = parcel.readInt();
            if (readInt > 0) {
                this.usesStaticLibraries = new ArrayList<>(readInt);
                parcel.readStringList(this.usesStaticLibraries);
                internStringArrayList(this.usesStaticLibraries);
                this.usesStaticLibrariesVersions = new long[readInt];
                parcel.readLongArray(this.usesStaticLibrariesVersions);
                this.usesStaticLibrariesCertDigests = new String[readInt];
                for (int i = 0; i < readInt; i++) {
                    this.usesStaticLibrariesCertDigests[i] = parcel.createStringArray();
                }
            }
            this.preferredActivityFilters = new ArrayList<>();
            parcel.readParcelableList(this.preferredActivityFilters, classLoader);
            if (this.preferredActivityFilters.size() == 0) {
                this.preferredActivityFilters = null;
            }
            this.mOriginalPackages = parcel.createStringArrayList();
            this.mRealPackage = parcel.readString();
            this.mAdoptPermissions = parcel.createStringArrayList();
            this.mAppMetaData = parcel.readBundle();
            this.mVersionCode = parcel.readInt();
            this.mVersionCodeMajor = parcel.readInt();
            this.mVersionName = parcel.readString();
            if (this.mVersionName != null) {
                this.mVersionName = this.mVersionName.intern();
            }
            this.mSharedUserId = parcel.readString();
            if (this.mSharedUserId != null) {
                this.mSharedUserId = this.mSharedUserId.intern();
            }
            this.mSharedUserLabel = parcel.readInt();
            this.mSigningDetails = (SigningDetails) parcel.readParcelable(classLoader);
            this.mPreferredOrder = parcel.readInt();
            this.configPreferences = new ArrayList<>();
            parcel.readParcelableList(this.configPreferences, classLoader);
            if (this.configPreferences.size() == 0) {
                this.configPreferences = null;
            }
            this.reqFeatures = new ArrayList<>();
            parcel.readParcelableList(this.reqFeatures, classLoader);
            if (this.reqFeatures.size() == 0) {
                this.reqFeatures = null;
            }
            this.featureGroups = new ArrayList<>();
            parcel.readParcelableList(this.featureGroups, classLoader);
            if (this.featureGroups.size() == 0) {
                this.featureGroups = null;
            }
            this.installLocation = parcel.readInt();
            this.coreApp = parcel.readInt() == 1;
            this.mRequiredForAllUsers = parcel.readInt() == 1;
            this.mRestrictedAccountType = parcel.readString();
            this.mRequiredAccountType = parcel.readString();
            this.mOverlayTarget = parcel.readString();
            this.mOverlayCategory = parcel.readString();
            this.mOverlayPriority = parcel.readInt();
            this.mOverlayIsStatic = parcel.readInt() == 1;
            this.mCompileSdkVersion = parcel.readInt();
            this.mCompileSdkVersionCodename = parcel.readString();
            this.mUpgradeKeySets = parcel.readArraySet(classLoader);
            this.mKeySetMapping = readKeySetMapping(parcel);
            this.cpuAbiOverride = parcel.readString();
            this.use32bitAbi = parcel.readInt() == 1;
            this.restrictUpdateHash = parcel.createByteArray();
            this.visibleToInstantApps = parcel.readInt() == 1;
        }

        private static void internStringArrayList(List<String> list) {
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    list.set(i, list.get(i).intern());
                }
            }
        }

        private void fixupOwner(List<? extends Component<?>> list) {
            if (list != null) {
                for (Component<?> component : list) {
                    component.owner = this;
                    if (component instanceof Activity) {
                        ((Activity) component).info.applicationInfo = this.applicationInfo;
                    } else if (component instanceof Service) {
                        ((Service) component).info.applicationInfo = this.applicationInfo;
                    } else if (component instanceof Provider) {
                        ((Provider) component).info.applicationInfo = this.applicationInfo;
                    }
                }
            }
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.packageName);
            parcel.writeString(this.manifestPackageName);
            parcel.writeStringArray(this.splitNames);
            parcel.writeString(this.volumeUuid);
            parcel.writeString(this.codePath);
            parcel.writeString(this.baseCodePath);
            parcel.writeStringArray(this.splitCodePaths);
            parcel.writeInt(this.baseRevisionCode);
            parcel.writeIntArray(this.splitRevisionCodes);
            parcel.writeIntArray(this.splitFlags);
            parcel.writeIntArray(this.splitPrivateFlags);
            parcel.writeInt(this.baseHardwareAccelerated ? 1 : 0);
            parcel.writeParcelable(this.applicationInfo, i);
            parcel.writeParcelableList(this.permissions, i);
            parcel.writeParcelableList(this.permissionGroups, i);
            parcel.writeParcelableList(this.activities, i);
            parcel.writeParcelableList(this.receivers, i);
            parcel.writeParcelableList(this.providers, i);
            parcel.writeParcelableList(this.services, i);
            parcel.writeParcelableList(this.instrumentation, i);
            parcel.writeStringList(this.requestedPermissions);
            parcel.writeStringList(this.protectedBroadcasts);
            parcel.writeParcelable(this.parentPackage, i);
            parcel.writeParcelableList(this.childPackages, i);
            parcel.writeString(this.staticSharedLibName);
            parcel.writeLong(this.staticSharedLibVersion);
            parcel.writeStringList(this.libraryNames);
            parcel.writeStringList(this.usesLibraries);
            parcel.writeStringList(this.usesOptionalLibraries);
            parcel.writeStringArray(this.usesLibraryFiles);
            if (ArrayUtils.isEmpty(this.usesStaticLibraries)) {
                parcel.writeInt(-1);
            } else {
                parcel.writeInt(this.usesStaticLibraries.size());
                parcel.writeStringList(this.usesStaticLibraries);
                parcel.writeLongArray(this.usesStaticLibrariesVersions);
                for (String[] strArr : this.usesStaticLibrariesCertDigests) {
                    parcel.writeStringArray(strArr);
                }
            }
            parcel.writeParcelableList(this.preferredActivityFilters, i);
            parcel.writeStringList(this.mOriginalPackages);
            parcel.writeString(this.mRealPackage);
            parcel.writeStringList(this.mAdoptPermissions);
            parcel.writeBundle(this.mAppMetaData);
            parcel.writeInt(this.mVersionCode);
            parcel.writeInt(this.mVersionCodeMajor);
            parcel.writeString(this.mVersionName);
            parcel.writeString(this.mSharedUserId);
            parcel.writeInt(this.mSharedUserLabel);
            parcel.writeParcelable(this.mSigningDetails, i);
            parcel.writeInt(this.mPreferredOrder);
            parcel.writeParcelableList(this.configPreferences, i);
            parcel.writeParcelableList(this.reqFeatures, i);
            parcel.writeParcelableList(this.featureGroups, i);
            parcel.writeInt(this.installLocation);
            parcel.writeInt(this.coreApp ? 1 : 0);
            parcel.writeInt(this.mRequiredForAllUsers ? 1 : 0);
            parcel.writeString(this.mRestrictedAccountType);
            parcel.writeString(this.mRequiredAccountType);
            parcel.writeString(this.mOverlayTarget);
            parcel.writeString(this.mOverlayCategory);
            parcel.writeInt(this.mOverlayPriority);
            parcel.writeInt(this.mOverlayIsStatic ? 1 : 0);
            parcel.writeInt(this.mCompileSdkVersion);
            parcel.writeString(this.mCompileSdkVersionCodename);
            parcel.writeArraySet(this.mUpgradeKeySets);
            writeKeySetMapping(parcel, this.mKeySetMapping);
            parcel.writeString(this.cpuAbiOverride);
            parcel.writeInt(this.use32bitAbi ? 1 : 0);
            parcel.writeByteArray(this.restrictUpdateHash);
            parcel.writeInt(this.visibleToInstantApps ? 1 : 0);
        }

        private static void writeKeySetMapping(Parcel parcel, ArrayMap<String, ArraySet<PublicKey>> arrayMap) {
            if (arrayMap == null) {
                parcel.writeInt(-1);
                return;
            }
            int size = arrayMap.size();
            parcel.writeInt(size);
            for (int i = 0; i < size; i++) {
                parcel.writeString(arrayMap.keyAt(i));
                ArraySet<PublicKey> valueAt = arrayMap.valueAt(i);
                if (valueAt == null) {
                    parcel.writeInt(-1);
                } else {
                    int size2 = valueAt.size();
                    parcel.writeInt(size2);
                    for (int i2 = 0; i2 < size2; i2++) {
                        parcel.writeSerializable(valueAt.valueAt(i2));
                    }
                }
            }
        }

        private static ArrayMap<String, ArraySet<PublicKey>> readKeySetMapping(Parcel parcel) {
            int readInt = parcel.readInt();
            if (readInt == -1) {
                return null;
            }
            ArrayMap<String, ArraySet<PublicKey>> arrayMap = new ArrayMap<>();
            for (int i = 0; i < readInt; i++) {
                String readString = parcel.readString();
                int readInt2 = parcel.readInt();
                if (readInt2 == -1) {
                    arrayMap.put(readString, null);
                } else {
                    ArraySet<PublicKey> arraySet = new ArraySet<>(readInt2);
                    for (int i2 = 0; i2 < readInt2; i2++) {
                        arraySet.add((PublicKey) parcel.readSerializable());
                    }
                    arrayMap.put(readString, arraySet);
                }
            }
            return arrayMap;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class Component<II extends IntentInfo> {
        public final String className;
        ComponentName componentName;
        String componentShortName;
        public final ArrayList<II> intents;
        public Bundle metaData;
        public int order;
        public Package owner;

        public Component(Package r1) {
            this.owner = r1;
            this.intents = null;
            this.className = null;
        }

        public Component(ParsePackageItemArgs parsePackageItemArgs, PackageItemInfo packageItemInfo) {
            this.owner = parsePackageItemArgs.owner;
            this.intents = new ArrayList<>(0);
            if (PackageParser.parsePackageItemInfo(parsePackageItemArgs.owner, packageItemInfo, parsePackageItemArgs.outError, parsePackageItemArgs.tag, parsePackageItemArgs.sa, true, parsePackageItemArgs.nameRes, parsePackageItemArgs.labelRes, parsePackageItemArgs.iconRes, parsePackageItemArgs.roundIconRes, parsePackageItemArgs.logoRes, parsePackageItemArgs.bannerRes)) {
                this.className = packageItemInfo.name;
            } else {
                this.className = null;
            }
        }

        public Component(ParseComponentArgs parseComponentArgs, ComponentInfo componentInfo) {
            this((ParsePackageItemArgs) parseComponentArgs, (PackageItemInfo) componentInfo);
            String nonResourceString;
            if (parseComponentArgs.outError[0] != null) {
                return;
            }
            if (parseComponentArgs.processRes != 0) {
                if (this.owner.applicationInfo.targetSdkVersion >= 8) {
                    nonResourceString = parseComponentArgs.sa.getNonConfigurationString(parseComponentArgs.processRes, 1024);
                } else {
                    nonResourceString = parseComponentArgs.sa.getNonResourceString(parseComponentArgs.processRes);
                }
                componentInfo.processName = PackageParser.buildProcessName(this.owner.applicationInfo.packageName, this.owner.applicationInfo.processName, nonResourceString, parseComponentArgs.flags, parseComponentArgs.sepProcesses, parseComponentArgs.outError);
            }
            if (parseComponentArgs.descriptionRes != 0) {
                componentInfo.descriptionRes = parseComponentArgs.sa.getResourceId(parseComponentArgs.descriptionRes, 0);
            }
            componentInfo.enabled = parseComponentArgs.sa.getBoolean(parseComponentArgs.enabledRes, true);
        }

        public Component(Component<II> component) {
            this.owner = component.owner;
            this.intents = component.intents;
            this.className = component.className;
            this.componentName = component.componentName;
            this.componentShortName = component.componentShortName;
        }

        public ComponentName getComponentName() {
            if (this.componentName != null) {
                return this.componentName;
            }
            if (this.className != null) {
                this.componentName = new ComponentName(this.owner.applicationInfo.packageName, this.className);
            }
            return this.componentName;
        }

        protected Component(Parcel parcel) {
            this.className = parcel.readString();
            this.metaData = parcel.readBundle();
            this.intents = createIntentsList(parcel);
            this.owner = null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.className);
            parcel.writeBundle(this.metaData);
            writeIntentsList(this.intents, parcel, i);
        }

        private static void writeIntentsList(ArrayList<? extends IntentInfo> arrayList, Parcel parcel, int i) {
            if (arrayList == null) {
                parcel.writeInt(-1);
                return;
            }
            int size = arrayList.size();
            parcel.writeInt(size);
            if (size > 0) {
                parcel.writeString(arrayList.get(0).getClass().getName());
                for (int i2 = 0; i2 < size; i2++) {
                    arrayList.get(i2).writeIntentInfoToParcel(parcel, i);
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        private static <T extends IntentInfo> ArrayList<T> createIntentsList(Parcel parcel) {
            int readInt = parcel.readInt();
            if (readInt == -1) {
                return null;
            }
            if (readInt == 0) {
                return new ArrayList<>(0);
            }
            String readString = parcel.readString();
            try {
                Constructor<?> constructor = Class.forName(readString).getConstructor(Parcel.class);
                ArrayList<T> arrayList = (ArrayList<T>) new ArrayList(readInt);
                for (int i = 0; i < readInt; i++) {
                    arrayList.add((IntentInfo) constructor.newInstance(parcel));
                }
                return arrayList;
            } catch (ReflectiveOperationException unused) {
                throw new AssertionError("Unable to construct intent list for: " + readString);
            }
        }

        public void appendComponentShortName(StringBuilder sb) {
            ComponentName.appendShortString(sb, this.owner.applicationInfo.packageName, this.className);
        }

        public void printComponentShortName(PrintWriter printWriter) {
            ComponentName.printShortString(printWriter, this.owner.applicationInfo.packageName, this.className);
        }

        public void setPackageName(String str) {
            this.componentName = null;
            this.componentShortName = null;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class Permission extends Component<IntentInfo> implements Parcelable {
        public static final Parcelable.Creator CREATOR = new Parcelable.Creator<Permission>() { // from class: android.content.pm.PackageParser.Permission.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Permission createFromParcel(Parcel parcel) {
                return new Permission(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Permission[] newArray(int i) {
                return new Permission[i];
            }
        };
        public PermissionGroup group;
        public final PermissionInfo info;
        public boolean tree;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public Permission(Package r1) {
            super(r1);
            this.info = new PermissionInfo();
        }

        public Permission(Package r1, PermissionInfo permissionInfo) {
            super(r1);
            this.info = permissionInfo;
        }

        @Override // android.content.pm.PackageParser.Component
        public void setPackageName(String str) {
            super.setPackageName(str);
            this.info.packageName = str;
        }

        public String toString() {
            return "Permission{" + Integer.toHexString(System.identityHashCode(this)) + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + this.info.name + "}";
        }

        @Override // android.content.pm.PackageParser.Component, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeParcelable(this.info, i);
            parcel.writeInt(this.tree ? 1 : 0);
            parcel.writeParcelable(this.group, i);
        }

        public boolean isAppOp() {
            return this.info.isAppOp();
        }

        private Permission(Parcel parcel) {
            super(parcel);
            ClassLoader classLoader = Object.class.getClassLoader();
            this.info = (PermissionInfo) parcel.readParcelable(classLoader);
            if (this.info.group != null) {
                this.info.group = this.info.group.intern();
            }
            this.tree = parcel.readInt() == 1;
            this.group = (PermissionGroup) parcel.readParcelable(classLoader);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class PermissionGroup extends Component<IntentInfo> implements Parcelable {
        public static final Parcelable.Creator CREATOR = new Parcelable.Creator<PermissionGroup>() { // from class: android.content.pm.PackageParser.PermissionGroup.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public PermissionGroup createFromParcel(Parcel parcel) {
                return new PermissionGroup(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public PermissionGroup[] newArray(int i) {
                return new PermissionGroup[i];
            }
        };
        public final PermissionGroupInfo info;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public PermissionGroup(Package r1) {
            super(r1);
            this.info = new PermissionGroupInfo();
        }

        public PermissionGroup(Package r1, PermissionGroupInfo permissionGroupInfo) {
            super(r1);
            this.info = permissionGroupInfo;
        }

        @Override // android.content.pm.PackageParser.Component
        public void setPackageName(String str) {
            super.setPackageName(str);
            this.info.packageName = str;
        }

        public String toString() {
            return "PermissionGroup{" + Integer.toHexString(System.identityHashCode(this)) + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + this.info.name + "}";
        }

        @Override // android.content.pm.PackageParser.Component, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeParcelable(this.info, i);
        }

        private PermissionGroup(Parcel parcel) {
            super(parcel);
            this.info = (PermissionGroupInfo) parcel.readParcelable(Object.class.getClassLoader());
        }
    }

    private static boolean copyNeeded(int i, Package r4, PackageUserState packageUserState, Bundle bundle, int i2) {
        if (i2 != 0) {
            return true;
        }
        if (packageUserState.enabled != 0) {
            if (r4.applicationInfo.enabled != (packageUserState.enabled == 1)) {
                return true;
            }
        }
        if (packageUserState.suspended != ((r4.applicationInfo.flags & 1073741824) != 0) || !packageUserState.installed || packageUserState.hidden || packageUserState.stopped || packageUserState.instantApp != r4.applicationInfo.isInstantApp()) {
            return true;
        }
        if ((i & 128) == 0 || (bundle == null && r4.mAppMetaData == null)) {
            return (((i & 1024) == 0 || r4.usesLibraryFiles == null) && r4.staticSharedLibName == null) ? false : true;
        }
        return true;
    }

    public static ApplicationInfo generateApplicationInfo(Package r1, int i, PackageUserState packageUserState) {
        return generateApplicationInfo(r1, i, packageUserState, UserHandle.getCallingUserId());
    }

    private static void updateApplicationInfo(ApplicationInfo applicationInfo, int i, PackageUserState packageUserState) {
        if (!sCompatibilityModeEnabled) {
            applicationInfo.disableCompatibilityMode();
        }
        if (packageUserState.installed) {
            applicationInfo.flags |= 8388608;
        } else {
            applicationInfo.flags &= -8388609;
        }
        if (packageUserState.suspended) {
            applicationInfo.flags |= 1073741824;
        } else {
            applicationInfo.flags &= -1073741825;
        }
        if (packageUserState.instantApp) {
            applicationInfo.privateFlags |= 128;
        } else {
            applicationInfo.privateFlags &= -129;
        }
        if (packageUserState.virtualPreload) {
            applicationInfo.privateFlags |= 65536;
        } else {
            applicationInfo.privateFlags &= -65537;
        }
        if (packageUserState.hidden) {
            applicationInfo.privateFlags |= 1;
        } else {
            applicationInfo.privateFlags &= -2;
        }
        if (packageUserState.enabled == 1) {
            applicationInfo.enabled = true;
        } else if (packageUserState.enabled == 4) {
            applicationInfo.enabled = (i & 32768) != 0;
        } else if (packageUserState.enabled == 2 || packageUserState.enabled == 3) {
            applicationInfo.enabled = false;
        }
        applicationInfo.enabledSetting = packageUserState.enabled;
        if (applicationInfo.category == -1) {
            applicationInfo.category = packageUserState.categoryHint;
        }
        if (applicationInfo.category == -1) {
            applicationInfo.category = FallbackCategoryProvider.getFallbackCategory(applicationInfo.packageName);
        }
        applicationInfo.seInfoUser = SELinuxUtil.assignSeinfoUser(packageUserState);
        applicationInfo.resourceDirs = packageUserState.overlayPaths;
    }

    public static ApplicationInfo generateApplicationInfo(Package r2, int i, PackageUserState packageUserState, int i2) {
        if (r2 == null || !checkUseInstalledOrHidden(i, packageUserState, r2.applicationInfo) || !r2.isMatch(i)) {
            return null;
        }
        if (!copyNeeded(i, r2, packageUserState, null, i2) && ((32768 & i) == 0 || packageUserState.enabled != 4)) {
            updateApplicationInfo(r2.applicationInfo, i, packageUserState);
            return r2.applicationInfo;
        }
        ApplicationInfo applicationInfo = new ApplicationInfo(r2.applicationInfo);
        applicationInfo.initForUser(i2);
        if ((i & 128) != 0) {
            applicationInfo.metaData = r2.mAppMetaData;
        }
        if ((i & 1024) != 0) {
            applicationInfo.sharedLibraryFiles = r2.usesLibraryFiles;
        }
        if (packageUserState.stopped) {
            applicationInfo.flags |= 2097152;
        } else {
            applicationInfo.flags &= -2097153;
        }
        updateApplicationInfo(applicationInfo, i, packageUserState);
        return applicationInfo;
    }

    public static ApplicationInfo generateApplicationInfo(ApplicationInfo applicationInfo, int i, PackageUserState packageUserState, int i2) {
        if (applicationInfo == null || !checkUseInstalledOrHidden(i, packageUserState, applicationInfo)) {
            return null;
        }
        ApplicationInfo applicationInfo2 = new ApplicationInfo(applicationInfo);
        applicationInfo2.initForUser(i2);
        if (packageUserState.stopped) {
            applicationInfo2.flags |= 2097152;
        } else {
            applicationInfo2.flags &= -2097153;
        }
        updateApplicationInfo(applicationInfo2, i, packageUserState);
        return applicationInfo2;
    }

    public static final PermissionInfo generatePermissionInfo(Permission permission, int i) {
        if (permission == null) {
            return null;
        }
        if ((i & 128) == 0) {
            return permission.info;
        }
        PermissionInfo permissionInfo = new PermissionInfo(permission.info);
        permissionInfo.metaData = permission.metaData;
        return permissionInfo;
    }

    public static final PermissionGroupInfo generatePermissionGroupInfo(PermissionGroup permissionGroup, int i) {
        if (permissionGroup == null) {
            return null;
        }
        if ((i & 128) == 0) {
            return permissionGroup.info;
        }
        PermissionGroupInfo permissionGroupInfo = new PermissionGroupInfo(permissionGroup.info);
        permissionGroupInfo.metaData = permissionGroup.metaData;
        return permissionGroupInfo;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class Activity extends Component<ActivityIntentInfo> implements Parcelable {
        public static final Parcelable.Creator CREATOR = new Parcelable.Creator<Activity>() { // from class: android.content.pm.PackageParser.Activity.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Activity createFromParcel(Parcel parcel) {
                return new Activity(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Activity[] newArray(int i) {
                return new Activity[i];
            }
        };
        public final ActivityInfo info;
        private boolean mHasMaxAspectRatio;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean hasMaxAspectRatio() {
            return this.mHasMaxAspectRatio;
        }

        public Activity(ParseComponentArgs parseComponentArgs, ActivityInfo activityInfo) {
            super(parseComponentArgs, (ComponentInfo) activityInfo);
            this.info = activityInfo;
            this.info.applicationInfo = parseComponentArgs.owner.applicationInfo;
        }

        @Override // android.content.pm.PackageParser.Component
        public void setPackageName(String str) {
            super.setPackageName(str);
            this.info.packageName = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMaxAspectRatio(float f) {
            if (this.info.resizeMode == 2 || this.info.resizeMode == 1) {
                return;
            }
            if (f >= 1.0f || f == 0.0f) {
                this.info.maxAspectRatio = f;
                this.mHasMaxAspectRatio = true;
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("Activity{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(' ');
            appendComponentShortName(sb);
            sb.append('}');
            return sb.toString();
        }

        @Override // android.content.pm.PackageParser.Component, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeParcelable(this.info, i | 2);
            parcel.writeBoolean(this.mHasMaxAspectRatio);
        }

        private Activity(Parcel parcel) {
            super(parcel);
            this.info = (ActivityInfo) parcel.readParcelable(Object.class.getClassLoader());
            this.mHasMaxAspectRatio = parcel.readBoolean();
            Iterator it = this.intents.iterator();
            while (it.hasNext()) {
                ActivityIntentInfo activityIntentInfo = (ActivityIntentInfo) it.next();
                activityIntentInfo.activity = this;
                this.order = Math.max(activityIntentInfo.getOrder(), this.order);
            }
            if (this.info.permission != null) {
                this.info.permission = this.info.permission.intern();
            }
        }
    }

    public static final ActivityInfo generateActivityInfo(Activity activity, int i, PackageUserState packageUserState, int i2) {
        if (activity == null || !checkUseInstalledOrHidden(i, packageUserState, activity.owner.applicationInfo)) {
            return null;
        }
        if (!copyNeeded(i, activity.owner, packageUserState, activity.metaData, i2)) {
            updateApplicationInfo(activity.info.applicationInfo, i, packageUserState);
            return activity.info;
        }
        ActivityInfo activityInfo = new ActivityInfo(activity.info);
        activityInfo.metaData = activity.metaData;
        activityInfo.applicationInfo = generateApplicationInfo(activity.owner, i, packageUserState, i2);
        return activityInfo;
    }

    public static final ActivityInfo generateActivityInfo(ActivityInfo activityInfo, int i, PackageUserState packageUserState, int i2) {
        if (activityInfo == null || !checkUseInstalledOrHidden(i, packageUserState, activityInfo.applicationInfo)) {
            return null;
        }
        ActivityInfo activityInfo2 = new ActivityInfo(activityInfo);
        activityInfo2.applicationInfo = generateApplicationInfo(activityInfo2.applicationInfo, i, packageUserState, i2);
        return activityInfo2;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class Service extends Component<ServiceIntentInfo> implements Parcelable {
        public static final Parcelable.Creator CREATOR = new Parcelable.Creator<Service>() { // from class: android.content.pm.PackageParser.Service.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Service createFromParcel(Parcel parcel) {
                return new Service(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Service[] newArray(int i) {
                return new Service[i];
            }
        };
        public final ServiceInfo info;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public Service(ParseComponentArgs parseComponentArgs, ServiceInfo serviceInfo) {
            super(parseComponentArgs, (ComponentInfo) serviceInfo);
            this.info = serviceInfo;
            this.info.applicationInfo = parseComponentArgs.owner.applicationInfo;
        }

        @Override // android.content.pm.PackageParser.Component
        public void setPackageName(String str) {
            super.setPackageName(str);
            this.info.packageName = str;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("Service{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(' ');
            appendComponentShortName(sb);
            sb.append('}');
            return sb.toString();
        }

        @Override // android.content.pm.PackageParser.Component, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeParcelable(this.info, i | 2);
        }

        private Service(Parcel parcel) {
            super(parcel);
            this.info = (ServiceInfo) parcel.readParcelable(Object.class.getClassLoader());
            Iterator it = this.intents.iterator();
            while (it.hasNext()) {
                ServiceIntentInfo serviceIntentInfo = (ServiceIntentInfo) it.next();
                serviceIntentInfo.service = this;
                this.order = Math.max(serviceIntentInfo.getOrder(), this.order);
            }
            if (this.info.permission != null) {
                this.info.permission = this.info.permission.intern();
            }
        }
    }

    public static final ServiceInfo generateServiceInfo(Service service, int i, PackageUserState packageUserState, int i2) {
        if (service == null || !checkUseInstalledOrHidden(i, packageUserState, service.owner.applicationInfo)) {
            return null;
        }
        if (!copyNeeded(i, service.owner, packageUserState, service.metaData, i2)) {
            updateApplicationInfo(service.info.applicationInfo, i, packageUserState);
            return service.info;
        }
        ServiceInfo serviceInfo = new ServiceInfo(service.info);
        serviceInfo.metaData = service.metaData;
        serviceInfo.applicationInfo = generateApplicationInfo(service.owner, i, packageUserState, i2);
        return serviceInfo;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class Provider extends Component<ProviderIntentInfo> implements Parcelable {
        public static final Parcelable.Creator CREATOR = new Parcelable.Creator<Provider>() { // from class: android.content.pm.PackageParser.Provider.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Provider createFromParcel(Parcel parcel) {
                return new Provider(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Provider[] newArray(int i) {
                return new Provider[i];
            }
        };
        public final ProviderInfo info;
        public boolean syncable;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public Provider(ParseComponentArgs parseComponentArgs, ProviderInfo providerInfo) {
            super(parseComponentArgs, (ComponentInfo) providerInfo);
            this.info = providerInfo;
            this.info.applicationInfo = parseComponentArgs.owner.applicationInfo;
            this.syncable = false;
        }

        public Provider(Provider provider) {
            super(provider);
            this.info = provider.info;
            this.syncable = provider.syncable;
        }

        @Override // android.content.pm.PackageParser.Component
        public void setPackageName(String str) {
            super.setPackageName(str);
            this.info.packageName = str;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("Provider{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(' ');
            appendComponentShortName(sb);
            sb.append('}');
            return sb.toString();
        }

        @Override // android.content.pm.PackageParser.Component, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeParcelable(this.info, i | 2);
            parcel.writeInt(this.syncable ? 1 : 0);
        }

        private Provider(Parcel parcel) {
            super(parcel);
            this.info = (ProviderInfo) parcel.readParcelable(Object.class.getClassLoader());
            this.syncable = parcel.readInt() == 1;
            Iterator it = this.intents.iterator();
            while (it.hasNext()) {
                ((ProviderIntentInfo) it.next()).provider = this;
            }
            if (this.info.readPermission != null) {
                this.info.readPermission = this.info.readPermission.intern();
            }
            if (this.info.writePermission != null) {
                this.info.writePermission = this.info.writePermission.intern();
            }
            if (this.info.authority != null) {
                this.info.authority = this.info.authority.intern();
            }
        }
    }

    public static final ProviderInfo generateProviderInfo(Provider provider, int i, PackageUserState packageUserState, int i2) {
        if (provider == null || !checkUseInstalledOrHidden(i, packageUserState, provider.owner.applicationInfo)) {
            return null;
        }
        if (!copyNeeded(i, provider.owner, packageUserState, provider.metaData, i2) && ((i & 2048) != 0 || provider.info.uriPermissionPatterns == null)) {
            updateApplicationInfo(provider.info.applicationInfo, i, packageUserState);
            return provider.info;
        }
        ProviderInfo providerInfo = new ProviderInfo(provider.info);
        providerInfo.metaData = provider.metaData;
        if ((i & 2048) == 0) {
            providerInfo.uriPermissionPatterns = null;
        }
        providerInfo.applicationInfo = generateApplicationInfo(provider.owner, i, packageUserState, i2);
        return providerInfo;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class Instrumentation extends Component<IntentInfo> implements Parcelable {
        public static final Parcelable.Creator CREATOR = new Parcelable.Creator<Instrumentation>() { // from class: android.content.pm.PackageParser.Instrumentation.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Instrumentation createFromParcel(Parcel parcel) {
                return new Instrumentation(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Instrumentation[] newArray(int i) {
                return new Instrumentation[i];
            }
        };
        public final InstrumentationInfo info;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public Instrumentation(ParsePackageItemArgs parsePackageItemArgs, InstrumentationInfo instrumentationInfo) {
            super(parsePackageItemArgs, instrumentationInfo);
            this.info = instrumentationInfo;
        }

        @Override // android.content.pm.PackageParser.Component
        public void setPackageName(String str) {
            super.setPackageName(str);
            this.info.packageName = str;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("Instrumentation{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(' ');
            appendComponentShortName(sb);
            sb.append('}');
            return sb.toString();
        }

        @Override // android.content.pm.PackageParser.Component, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeParcelable(this.info, i);
        }

        private Instrumentation(Parcel parcel) {
            super(parcel);
            this.info = (InstrumentationInfo) parcel.readParcelable(Object.class.getClassLoader());
            if (this.info.targetPackage != null) {
                this.info.targetPackage = this.info.targetPackage.intern();
            }
            if (this.info.targetProcesses != null) {
                this.info.targetProcesses = this.info.targetProcesses.intern();
            }
        }
    }

    public static final InstrumentationInfo generateInstrumentationInfo(Instrumentation instrumentation, int i) {
        if (instrumentation == null) {
            return null;
        }
        if ((i & 128) == 0) {
            return instrumentation.info;
        }
        InstrumentationInfo instrumentationInfo = new InstrumentationInfo(instrumentation.info);
        instrumentationInfo.metaData = instrumentation.metaData;
        return instrumentationInfo;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class IntentInfo extends IntentFilter {
        public int banner;
        public boolean hasDefault;
        public int icon;
        public int labelRes;
        public int logo;
        public CharSequence nonLocalizedLabel;
        public int preferred;

        protected IntentInfo() {
        }

        protected IntentInfo(Parcel parcel) {
            super(parcel);
            this.hasDefault = parcel.readInt() == 1;
            this.labelRes = parcel.readInt();
            this.nonLocalizedLabel = parcel.readCharSequence();
            this.icon = parcel.readInt();
            this.logo = parcel.readInt();
            this.banner = parcel.readInt();
            this.preferred = parcel.readInt();
        }

        public void writeIntentInfoToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.hasDefault ? 1 : 0);
            parcel.writeInt(this.labelRes);
            parcel.writeCharSequence(this.nonLocalizedLabel);
            parcel.writeInt(this.icon);
            parcel.writeInt(this.logo);
            parcel.writeInt(this.banner);
            parcel.writeInt(this.preferred);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class ActivityIntentInfo extends IntentInfo {
        public Activity activity;

        public ActivityIntentInfo(Activity activity) {
            this.activity = activity;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("ActivityIntentInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(' ');
            this.activity.appendComponentShortName(sb);
            sb.append('}');
            return sb.toString();
        }

        public ActivityIntentInfo(Parcel parcel) {
            super(parcel);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class ServiceIntentInfo extends IntentInfo {
        public Service service;

        public ServiceIntentInfo(Service service) {
            this.service = service;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("ServiceIntentInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(' ');
            this.service.appendComponentShortName(sb);
            sb.append('}');
            return sb.toString();
        }

        public ServiceIntentInfo(Parcel parcel) {
            super(parcel);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class ProviderIntentInfo extends IntentInfo {
        public Provider provider;

        public ProviderIntentInfo(Provider provider) {
            this.provider = provider;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("ProviderIntentInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(' ');
            this.provider.appendComponentShortName(sb);
            sb.append('}');
            return sb.toString();
        }

        public ProviderIntentInfo(Parcel parcel) {
            super(parcel);
        }
    }

    public static void setCompatibilityModeEnabled(boolean z) {
        sCompatibilityModeEnabled = z;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class PackageParserException extends Exception {
        public final int error;

        public PackageParserException(int i, String str) {
            super(str);
            this.error = i;
        }

        public PackageParserException(int i, String str, Throwable th) {
            super(str, th);
            this.error = i;
        }
    }
}
