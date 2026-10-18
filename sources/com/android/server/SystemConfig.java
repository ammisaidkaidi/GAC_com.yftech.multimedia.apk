package com.android.server;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.pm.FeatureInfo;
import android.os.Build;
import android.os.Environment;
import android.os.Process;
import android.os.storage.StorageManager;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Slog;
import android.util.SparseArray;
import android.util.Xml;
import androidx.core.app.NotificationCompat;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.XmlUtils;
import com.facebook.common.util.UriUtil;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import libcore.io.IoUtils;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: /home/user/work/dex/classes3.dex */
public class SystemConfig {
    private static final int ALLOW_ALL = -1;
    private static final int ALLOW_APP_CONFIGS = 8;
    private static final int ALLOW_FEATURES = 1;
    private static final int ALLOW_HIDDENAPI_WHITELISTING = 64;
    private static final int ALLOW_LIBS = 2;
    private static final int ALLOW_OEM_PERMISSIONS = 32;
    private static final int ALLOW_PERMISSIONS = 4;
    private static final int ALLOW_PRIVAPP_PERMISSIONS = 16;
    static final String TAG = "SystemConfig";
    static SystemConfig sInstance;
    int[] mGlobalGids;
    final SparseArray<ArraySet<String>> mSystemPermissions = new SparseArray<>();
    final ArrayMap<String, String> mSharedLibraries = new ArrayMap<>();
    final ArrayMap<String, FeatureInfo> mAvailableFeatures = new ArrayMap<>();
    final ArraySet<String> mUnavailableFeatures = new ArraySet<>();
    final ArrayMap<String, PermissionEntry> mPermissions = new ArrayMap<>();
    final ArraySet<String> mAllowInPowerSaveExceptIdle = new ArraySet<>();
    final ArraySet<String> mAllowInPowerSave = new ArraySet<>();
    final ArraySet<String> mAllowInDataUsageSave = new ArraySet<>();
    final ArraySet<String> mAllowUnthrottledLocation = new ArraySet<>();
    final ArraySet<String> mAllowImplicitBroadcasts = new ArraySet<>();
    final ArraySet<String> mLinkedApps = new ArraySet<>();
    final ArraySet<String> mSystemUserWhitelistedApps = new ArraySet<>();
    final ArraySet<String> mSystemUserBlacklistedApps = new ArraySet<>();
    final ArraySet<ComponentName> mDefaultVrComponents = new ArraySet<>();
    final ArraySet<ComponentName> mBackupTransportWhitelist = new ArraySet<>();
    final ArraySet<String> mHiddenApiPackageWhitelist = new ArraySet<>();
    final ArraySet<String> mDisabledUntilUsedPreinstalledCarrierApps = new ArraySet<>();
    final ArrayMap<String, List<String>> mDisabledUntilUsedPreinstalledCarrierAssociatedApps = new ArrayMap<>();
    final ArrayMap<String, ArraySet<String>> mPrivAppPermissions = new ArrayMap<>();
    final ArrayMap<String, ArraySet<String>> mPrivAppDenyPermissions = new ArrayMap<>();
    final ArrayMap<String, ArraySet<String>> mVendorPrivAppPermissions = new ArrayMap<>();
    final ArrayMap<String, ArraySet<String>> mVendorPrivAppDenyPermissions = new ArrayMap<>();
    final ArrayMap<String, ArraySet<String>> mProductPrivAppPermissions = new ArrayMap<>();
    final ArrayMap<String, ArraySet<String>> mProductPrivAppDenyPermissions = new ArrayMap<>();
    final ArrayMap<String, ArrayMap<String, Boolean>> mOemPermissions = new ArrayMap<>();

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class PermissionEntry {
        public int[] gids;
        public final String name;
        public boolean perUser;

        PermissionEntry(String str, boolean z) {
            this.name = str;
            this.perUser = z;
        }
    }

    public static SystemConfig getInstance() {
        SystemConfig systemConfig;
        synchronized (SystemConfig.class) {
            if (sInstance == null) {
                sInstance = new SystemConfig();
            }
            systemConfig = sInstance;
        }
        return systemConfig;
    }

    public int[] getGlobalGids() {
        return this.mGlobalGids;
    }

    public SparseArray<ArraySet<String>> getSystemPermissions() {
        return this.mSystemPermissions;
    }

    public ArrayMap<String, String> getSharedLibraries() {
        return this.mSharedLibraries;
    }

    public ArrayMap<String, FeatureInfo> getAvailableFeatures() {
        return this.mAvailableFeatures;
    }

    public ArrayMap<String, PermissionEntry> getPermissions() {
        return this.mPermissions;
    }

    public ArraySet<String> getAllowImplicitBroadcasts() {
        return this.mAllowImplicitBroadcasts;
    }

    public ArraySet<String> getAllowInPowerSaveExceptIdle() {
        return this.mAllowInPowerSaveExceptIdle;
    }

    public ArraySet<String> getAllowInPowerSave() {
        return this.mAllowInPowerSave;
    }

    public ArraySet<String> getAllowInDataUsageSave() {
        return this.mAllowInDataUsageSave;
    }

    public ArraySet<String> getAllowUnthrottledLocation() {
        return this.mAllowUnthrottledLocation;
    }

    public ArraySet<String> getLinkedApps() {
        return this.mLinkedApps;
    }

    public ArraySet<String> getSystemUserWhitelistedApps() {
        return this.mSystemUserWhitelistedApps;
    }

    public ArraySet<String> getSystemUserBlacklistedApps() {
        return this.mSystemUserBlacklistedApps;
    }

    public ArraySet<String> getHiddenApiWhitelistedApps() {
        return this.mHiddenApiPackageWhitelist;
    }

    public ArraySet<ComponentName> getDefaultVrComponents() {
        return this.mDefaultVrComponents;
    }

    public ArraySet<ComponentName> getBackupTransportWhitelist() {
        return this.mBackupTransportWhitelist;
    }

    public ArraySet<String> getDisabledUntilUsedPreinstalledCarrierApps() {
        return this.mDisabledUntilUsedPreinstalledCarrierApps;
    }

    public ArrayMap<String, List<String>> getDisabledUntilUsedPreinstalledCarrierAssociatedApps() {
        return this.mDisabledUntilUsedPreinstalledCarrierAssociatedApps;
    }

    public ArraySet<String> getPrivAppPermissions(String str) {
        return this.mPrivAppPermissions.get(str);
    }

    public ArraySet<String> getPrivAppDenyPermissions(String str) {
        return this.mPrivAppDenyPermissions.get(str);
    }

    public ArraySet<String> getVendorPrivAppPermissions(String str) {
        return this.mVendorPrivAppPermissions.get(str);
    }

    public ArraySet<String> getVendorPrivAppDenyPermissions(String str) {
        return this.mVendorPrivAppDenyPermissions.get(str);
    }

    public ArraySet<String> getProductPrivAppPermissions(String str) {
        return this.mProductPrivAppPermissions.get(str);
    }

    public ArraySet<String> getProductPrivAppDenyPermissions(String str) {
        return this.mProductPrivAppDenyPermissions.get(str);
    }

    public Map<String, Boolean> getOemPermissions(String str) {
        ArrayMap<String, Boolean> arrayMap = this.mOemPermissions.get(str);
        return arrayMap != null ? arrayMap : Collections.emptyMap();
    }

    SystemConfig() {
        readPermissions(Environment.buildPath(Environment.getRootDirectory(), new String[]{"etc", "sysconfig"}), -1);
        readPermissions(Environment.buildPath(Environment.getRootDirectory(), new String[]{"etc", "permissions"}), -1);
        int i = Build.VERSION.FIRST_SDK_INT <= 27 ? 31 : 19;
        readPermissions(Environment.buildPath(Environment.getVendorDirectory(), new String[]{"etc", "sysconfig"}), i);
        readPermissions(Environment.buildPath(Environment.getVendorDirectory(), new String[]{"etc", "permissions"}), i);
        readPermissions(Environment.buildPath(Environment.getOdmDirectory(), new String[]{"etc", "sysconfig"}), i);
        readPermissions(Environment.buildPath(Environment.getOdmDirectory(), new String[]{"etc", "permissions"}), i);
        readPermissions(Environment.buildPath(Environment.getOemDirectory(), new String[]{"etc", "sysconfig"}), 33);
        readPermissions(Environment.buildPath(Environment.getOemDirectory(), new String[]{"etc", "permissions"}), 33);
        readPermissions(Environment.buildPath(Environment.getProductDirectory(), new String[]{"etc", "sysconfig"}), 31);
        readPermissions(Environment.buildPath(Environment.getProductDirectory(), new String[]{"etc", "permissions"}), 31);
    }

    void readPermissions(File file, int i) {
        if (!file.exists() || !file.isDirectory()) {
            if (i == -1) {
                Slog.w(TAG, "No directory " + file + ", skipping");
                return;
            }
            return;
        }
        if (!file.canRead()) {
            Slog.w(TAG, "Directory " + file + " cannot be read");
            return;
        }
        File file2 = null;
        for (File file3 : file.listFiles()) {
            if (file3.getPath().endsWith("etc/permissions/platform.xml")) {
                file2 = file3;
            } else if (!file3.getPath().endsWith(".xml")) {
                Slog.i(TAG, "Non-xml file " + file3 + " in " + file + " directory, ignoring");
            } else if (file3.canRead()) {
                readPermissionsFromXml(file3, i);
            } else {
                Slog.w(TAG, "Permissions library file " + file3 + " cannot be read");
            }
        }
        if (file2 != null) {
            readPermissionsFromXml(file2, i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:240:0x06d4 A[Catch: IOException -> 0x076f, XmlPullParserException -> 0x0771, all -> 0x07d8, TryCatch #6 {all -> 0x07d8, blocks: (B:47:0x00cc, B:49:0x00d4, B:50:0x0103, B:55:0x00e1, B:297:0x077c, B:301:0x0788, B:56:0x010a, B:60:0x0114, B:62:0x011c, B:63:0x0142, B:65:0x014d, B:69:0x0157, B:71:0x015f, B:72:0x0185, B:74:0x018e, B:75:0x01b5, B:77:0x01bb, B:78:0x01ec, B:80:0x01fc, B:81:0x0206, B:82:0x020e, B:86:0x021a, B:88:0x0228, B:89:0x0275, B:91:0x024d, B:92:0x0270, B:93:0x027a, B:97:0x0284, B:101:0x02ab, B:102:0x02d3, B:106:0x02d0, B:107:0x0298, B:108:0x02dd, B:112:0x02e9, B:114:0x02f1, B:115:0x0319, B:116:0x0314, B:117:0x031d, B:121:0x0327, B:123:0x032f, B:124:0x0357, B:125:0x0352, B:126:0x035c, B:130:0x0366, B:132:0x036e, B:133:0x0396, B:134:0x0391, B:135:0x039b, B:139:0x03a5, B:141:0x03ad, B:142:0x03d5, B:143:0x03d0, B:144:0x03da, B:148:0x03e4, B:150:0x03ec, B:151:0x0414, B:152:0x040f, B:153:0x0419, B:157:0x0423, B:159:0x042b, B:160:0x0453, B:161:0x044e, B:163:0x0458, B:166:0x0462, B:168:0x046a, B:169:0x0492, B:170:0x048d, B:171:0x0497, B:174:0x04a2, B:176:0x04aa, B:177:0x04d2, B:178:0x04cd, B:179:0x04d7, B:182:0x04e2, B:184:0x04ea, B:185:0x0512, B:186:0x050d, B:187:0x0517, B:190:0x0521, B:192:0x052f, B:193:0x0581, B:195:0x0554, B:196:0x0577, B:197:0x0586, B:200:0x0590, B:202:0x0599, B:203:0x05f2, B:204:0x05bc, B:206:0x05c2, B:207:0x05ed, B:208:0x05f7, B:211:0x0601, B:215:0x0612, B:217:0x061c, B:218:0x0626, B:219:0x064c, B:220:0x062a, B:221:0x0651, B:224:0x065b, B:226:0x0663, B:227:0x068b, B:228:0x0686, B:229:0x0690, B:232:0x069a, B:234:0x06ac, B:238:0x06c2, B:240:0x06d4, B:242:0x06de, B:243:0x06e6, B:245:0x06ee, B:248:0x06f8, B:249:0x06fc, B:252:0x0706, B:254:0x070e, B:255:0x0736, B:256:0x0731, B:257:0x073f, B:306:0x0765, B:307:0x076e), top: B:5:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:241:0x06dc  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x0798  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x07ab  */
    /* JADX WARN: Removed duplicated region for block: B:269:0x07b6  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x07cd A[LOOP:2: B:271:0x07c7->B:273:0x07cd, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:277:0x07bc  */
    /* JADX WARN: Removed duplicated region for block: B:278:0x07a4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void readPermissionsFromXml(File file, int i) {
        FileReader fileReader;
        FileReader fileReader2;
        Throwable th;
        XmlPullParserException xmlPullParserException;
        IOException iOException;
        int i2;
        Iterator<String> it;
        XmlPullParser newPullParser;
        int next;
        int i3;
        boolean z;
        int i4;
        boolean z2;
        boolean z3;
        try {
            FileReader fileReader3 = new FileReader(file);
            boolean isLowRamDeviceStatic = ActivityManager.isLowRamDeviceStatic();
            try {
                try {
                    newPullParser = Xml.newPullParser();
                    newPullParser.setInput(fileReader3);
                    try {
                        do {
                            next = newPullParser.next();
                            i3 = 1;
                            if (next != 2) {
                            }
                            break;
                        } while (next != 1);
                        break;
                        break;
                    } catch (IOException e) {
                        e = e;
                        iOException = e;
                        Slog.w(TAG, "Got exception parsing permissions.", iOException);
                        IoUtils.closeQuietly(fileReader2);
                        if (StorageManager.isFileEncryptedNativeOnly()) {
                        }
                        if (StorageManager.hasAdoptable()) {
                        }
                        if (ActivityManager.isLowRamDeviceStatic()) {
                        }
                        it = this.mUnavailableFeatures.iterator();
                        while (it.hasNext()) {
                        }
                    } catch (XmlPullParserException e2) {
                        e = e2;
                        xmlPullParserException = e;
                        Slog.w(TAG, "Got exception parsing permissions.", xmlPullParserException);
                        IoUtils.closeQuietly(fileReader2);
                        if (StorageManager.isFileEncryptedNativeOnly()) {
                        }
                        if (StorageManager.hasAdoptable()) {
                        }
                        if (ActivityManager.isLowRamDeviceStatic()) {
                        }
                        it = this.mUnavailableFeatures.iterator();
                        while (it.hasNext()) {
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    th = th;
                    IoUtils.closeQuietly(fileReader);
                    throw th;
                }
            } catch (IOException e3) {
                e = e3;
                fileReader2 = fileReader3;
            } catch (XmlPullParserException e4) {
                e = e4;
                fileReader2 = fileReader3;
            } catch (Throwable th3) {
                th = th3;
                fileReader = fileReader3;
                th = th;
                IoUtils.closeQuietly(fileReader);
                throw th;
            }
            if (next != 2) {
                throw new XmlPullParserException("No start tag found");
            }
            if (!newPullParser.getName().equals("permissions")) {
                try {
                    if (!newPullParser.getName().equals("config")) {
                        throw new XmlPullParserException("Unexpected start tag in " + file + ": found " + newPullParser.getName() + ", expected 'permissions' or 'config'");
                    }
                } catch (IOException e5) {
                    iOException = e5;
                    fileReader2 = fileReader3;
                    Slog.w(TAG, "Got exception parsing permissions.", iOException);
                    IoUtils.closeQuietly(fileReader2);
                    if (StorageManager.isFileEncryptedNativeOnly()) {
                    }
                    if (StorageManager.hasAdoptable()) {
                    }
                    if (ActivityManager.isLowRamDeviceStatic()) {
                    }
                    it = this.mUnavailableFeatures.iterator();
                    while (it.hasNext()) {
                    }
                } catch (XmlPullParserException e6) {
                    xmlPullParserException = e6;
                    fileReader2 = fileReader3;
                    Slog.w(TAG, "Got exception parsing permissions.", xmlPullParserException);
                    IoUtils.closeQuietly(fileReader2);
                    if (StorageManager.isFileEncryptedNativeOnly()) {
                    }
                    if (StorageManager.hasAdoptable()) {
                    }
                    if (ActivityManager.isLowRamDeviceStatic()) {
                    }
                    it = this.mUnavailableFeatures.iterator();
                    while (it.hasNext()) {
                    }
                } catch (Throwable th4) {
                    th = th4;
                    fileReader = fileReader3;
                    IoUtils.closeQuietly(fileReader);
                    throw th;
                }
            }
            boolean z4 = i == -1;
            boolean z5 = (i & 2) != 0;
            boolean z6 = (i & 1) != 0;
            boolean z7 = (i & 4) != 0;
            boolean z8 = (i & 8) != 0;
            boolean z9 = (i & 16) != 0;
            boolean z10 = (i & 32) != 0;
            boolean z11 = (i & 64) != 0;
            while (true) {
                XmlUtils.nextElement(newPullParser);
                if (newPullParser.getEventType() == i3) {
                    break;
                }
                String name = newPullParser.getName();
                FileReader fileReader4 = fileReader3;
                if ("group".equals(name) && z4) {
                    String attributeValue = newPullParser.getAttributeValue(null, "gid");
                    if (attributeValue != null) {
                        this.mGlobalGids = ArrayUtils.appendInt(this.mGlobalGids, Process.getGidForName(attributeValue));
                    } else {
                        Slog.w(TAG, "<group> without gid in " + file + " at " + newPullParser.getPositionDescription());
                    }
                    XmlUtils.skipCurrentTag(newPullParser);
                } else {
                    if ("permission".equals(name) && z7) {
                        String attributeValue2 = newPullParser.getAttributeValue(null, "name");
                        if (attributeValue2 == null) {
                            Slog.w(TAG, "<permission> without name in " + file + " at " + newPullParser.getPositionDescription());
                            XmlUtils.skipCurrentTag(newPullParser);
                        } else {
                            readPermission(newPullParser, attributeValue2.intern());
                            z = z7;
                            fileReader3 = fileReader4;
                            z7 = z;
                        }
                    } else {
                        if ("assign-permission".equals(name) && z7) {
                            String attributeValue3 = newPullParser.getAttributeValue(null, "name");
                            if (attributeValue3 == null) {
                                Slog.w(TAG, "<assign-permission> without name in " + file + " at " + newPullParser.getPositionDescription());
                                XmlUtils.skipCurrentTag(newPullParser);
                            } else {
                                String attributeValue4 = newPullParser.getAttributeValue(null, "uid");
                                if (attributeValue4 == null) {
                                    Slog.w(TAG, "<assign-permission> without uid in " + file + " at " + newPullParser.getPositionDescription());
                                    XmlUtils.skipCurrentTag(newPullParser);
                                } else {
                                    int uidForName = Process.getUidForName(attributeValue4);
                                    if (uidForName < 0) {
                                        StringBuilder sb = new StringBuilder();
                                        z = z7;
                                        sb.append("<assign-permission> with unknown uid \"");
                                        sb.append(attributeValue4);
                                        sb.append("  in ");
                                        sb.append(file);
                                        sb.append(" at ");
                                        sb.append(newPullParser.getPositionDescription());
                                        Slog.w(TAG, sb.toString());
                                        XmlUtils.skipCurrentTag(newPullParser);
                                    } else {
                                        z = z7;
                                        String intern = attributeValue3.intern();
                                        ArraySet<String> arraySet = this.mSystemPermissions.get(uidForName);
                                        if (arraySet == null) {
                                            arraySet = new ArraySet<>();
                                            this.mSystemPermissions.put(uidForName, arraySet);
                                        }
                                        arraySet.add(intern);
                                        XmlUtils.skipCurrentTag(newPullParser);
                                    }
                                }
                            }
                        } else {
                            z = z7;
                            if ("library".equals(name) && z5) {
                                String attributeValue5 = newPullParser.getAttributeValue(null, "name");
                                String attributeValue6 = newPullParser.getAttributeValue(null, UriUtil.LOCAL_FILE_SCHEME);
                                if (attributeValue5 == null) {
                                    Slog.w(TAG, "<library> without name in " + file + " at " + newPullParser.getPositionDescription());
                                } else if (attributeValue6 == null) {
                                    Slog.w(TAG, "<library> without file in " + file + " at " + newPullParser.getPositionDescription());
                                } else {
                                    this.mSharedLibraries.put(attributeValue5, attributeValue6);
                                }
                                XmlUtils.skipCurrentTag(newPullParser);
                            } else {
                                if ("feature".equals(name) && z6) {
                                    String attributeValue7 = newPullParser.getAttributeValue(null, "name");
                                    int readIntAttribute = XmlUtils.readIntAttribute(newPullParser, "version", 0);
                                    if (isLowRamDeviceStatic) {
                                        i4 = 1;
                                        z3 = !"true".equals(newPullParser.getAttributeValue(null, "notLowRam"));
                                    } else {
                                        i4 = 1;
                                        z3 = true;
                                    }
                                    if (attributeValue7 == null) {
                                        Slog.w(TAG, "<feature> without name in " + file + " at " + newPullParser.getPositionDescription());
                                    } else if (z3) {
                                        addFeature(attributeValue7, readIntAttribute);
                                    }
                                    XmlUtils.skipCurrentTag(newPullParser);
                                } else {
                                    i4 = 1;
                                    if ("unavailable-feature".equals(name) && z6) {
                                        String attributeValue8 = newPullParser.getAttributeValue(null, "name");
                                        if (attributeValue8 == null) {
                                            Slog.w(TAG, "<unavailable-feature> without name in " + file + " at " + newPullParser.getPositionDescription());
                                        } else {
                                            this.mUnavailableFeatures.add(attributeValue8);
                                        }
                                        XmlUtils.skipCurrentTag(newPullParser);
                                    } else if ("allow-in-power-save-except-idle".equals(name) && z4) {
                                        String attributeValue9 = newPullParser.getAttributeValue(null, "package");
                                        if (attributeValue9 == null) {
                                            Slog.w(TAG, "<allow-in-power-save-except-idle> without package in " + file + " at " + newPullParser.getPositionDescription());
                                        } else {
                                            this.mAllowInPowerSaveExceptIdle.add(attributeValue9);
                                        }
                                        XmlUtils.skipCurrentTag(newPullParser);
                                    } else if ("allow-in-power-save".equals(name) && z4) {
                                        String attributeValue10 = newPullParser.getAttributeValue(null, "package");
                                        if (attributeValue10 == null) {
                                            Slog.w(TAG, "<allow-in-power-save> without package in " + file + " at " + newPullParser.getPositionDescription());
                                        } else {
                                            this.mAllowInPowerSave.add(attributeValue10);
                                        }
                                        XmlUtils.skipCurrentTag(newPullParser);
                                    } else if ("allow-in-data-usage-save".equals(name) && z4) {
                                        String attributeValue11 = newPullParser.getAttributeValue(null, "package");
                                        if (attributeValue11 == null) {
                                            Slog.w(TAG, "<allow-in-data-usage-save> without package in " + file + " at " + newPullParser.getPositionDescription());
                                        } else {
                                            this.mAllowInDataUsageSave.add(attributeValue11);
                                        }
                                        XmlUtils.skipCurrentTag(newPullParser);
                                    } else if ("allow-unthrottled-location".equals(name) && z4) {
                                        String attributeValue12 = newPullParser.getAttributeValue(null, "package");
                                        if (attributeValue12 == null) {
                                            Slog.w(TAG, "<allow-unthrottled-location> without package in " + file + " at " + newPullParser.getPositionDescription());
                                        } else {
                                            this.mAllowUnthrottledLocation.add(attributeValue12);
                                        }
                                        XmlUtils.skipCurrentTag(newPullParser);
                                    } else if ("allow-implicit-broadcast".equals(name) && z4) {
                                        String attributeValue13 = newPullParser.getAttributeValue(null, "action");
                                        if (attributeValue13 == null) {
                                            Slog.w(TAG, "<allow-implicit-broadcast> without action in " + file + " at " + newPullParser.getPositionDescription());
                                        } else {
                                            this.mAllowImplicitBroadcasts.add(attributeValue13);
                                        }
                                        XmlUtils.skipCurrentTag(newPullParser);
                                    } else if ("app-link".equals(name) && z8) {
                                        String attributeValue14 = newPullParser.getAttributeValue(null, "package");
                                        if (attributeValue14 == null) {
                                            Slog.w(TAG, "<app-link> without package in " + file + " at " + newPullParser.getPositionDescription());
                                        } else {
                                            this.mLinkedApps.add(attributeValue14);
                                        }
                                        XmlUtils.skipCurrentTag(newPullParser);
                                    } else if ("system-user-whitelisted-app".equals(name) && z8) {
                                        String attributeValue15 = newPullParser.getAttributeValue(null, "package");
                                        if (attributeValue15 == null) {
                                            Slog.w(TAG, "<system-user-whitelisted-app> without package in " + file + " at " + newPullParser.getPositionDescription());
                                        } else {
                                            this.mSystemUserWhitelistedApps.add(attributeValue15);
                                        }
                                        XmlUtils.skipCurrentTag(newPullParser);
                                    } else if ("system-user-blacklisted-app".equals(name) && z8) {
                                        String attributeValue16 = newPullParser.getAttributeValue(null, "package");
                                        if (attributeValue16 == null) {
                                            Slog.w(TAG, "<system-user-blacklisted-app without package in " + file + " at " + newPullParser.getPositionDescription());
                                        } else {
                                            this.mSystemUserBlacklistedApps.add(attributeValue16);
                                        }
                                        XmlUtils.skipCurrentTag(newPullParser);
                                    } else if ("default-enabled-vr-app".equals(name) && z8) {
                                        String attributeValue17 = newPullParser.getAttributeValue(null, "package");
                                        String attributeValue18 = newPullParser.getAttributeValue(null, "class");
                                        if (attributeValue17 == null) {
                                            Slog.w(TAG, "<default-enabled-vr-app without package in " + file + " at " + newPullParser.getPositionDescription());
                                        } else if (attributeValue18 == null) {
                                            Slog.w(TAG, "<default-enabled-vr-app without class in " + file + " at " + newPullParser.getPositionDescription());
                                        } else {
                                            this.mDefaultVrComponents.add(new ComponentName(attributeValue17, attributeValue18));
                                        }
                                        XmlUtils.skipCurrentTag(newPullParser);
                                    } else if ("backup-transport-whitelisted-service".equals(name) && z6) {
                                        String attributeValue19 = newPullParser.getAttributeValue(null, NotificationCompat.CATEGORY_SERVICE);
                                        if (attributeValue19 == null) {
                                            Slog.w(TAG, "<backup-transport-whitelisted-service> without service in " + file + " at " + newPullParser.getPositionDescription());
                                        } else {
                                            ComponentName unflattenFromString = ComponentName.unflattenFromString(attributeValue19);
                                            if (unflattenFromString == null) {
                                                Slog.w(TAG, "<backup-transport-whitelisted-service> with invalid service name " + attributeValue19 + " in " + file + " at " + newPullParser.getPositionDescription());
                                            } else {
                                                this.mBackupTransportWhitelist.add(unflattenFromString);
                                            }
                                        }
                                        XmlUtils.skipCurrentTag(newPullParser);
                                    } else if ("disabled-until-used-preinstalled-carrier-associated-app".equals(name) && z8) {
                                        String attributeValue20 = newPullParser.getAttributeValue(null, "package");
                                        String attributeValue21 = newPullParser.getAttributeValue(null, "carrierAppPackage");
                                        if (attributeValue20 != null && attributeValue21 != null) {
                                            List<String> list = this.mDisabledUntilUsedPreinstalledCarrierAssociatedApps.get(attributeValue21);
                                            if (list == null) {
                                                list = new ArrayList<>();
                                                this.mDisabledUntilUsedPreinstalledCarrierAssociatedApps.put(attributeValue21, list);
                                            }
                                            list.add(attributeValue20);
                                            XmlUtils.skipCurrentTag(newPullParser);
                                        }
                                        Slog.w(TAG, "<disabled-until-used-preinstalled-carrier-associated-app without package or carrierAppPackage in " + file + " at " + newPullParser.getPositionDescription());
                                        XmlUtils.skipCurrentTag(newPullParser);
                                    } else if ("disabled-until-used-preinstalled-carrier-app".equals(name) && z8) {
                                        String attributeValue22 = newPullParser.getAttributeValue(null, "package");
                                        if (attributeValue22 == null) {
                                            Slog.w(TAG, "<disabled-until-used-preinstalled-carrier-app> without package in " + file + " at " + newPullParser.getPositionDescription());
                                        } else {
                                            this.mDisabledUntilUsedPreinstalledCarrierApps.add(attributeValue22);
                                        }
                                        XmlUtils.skipCurrentTag(newPullParser);
                                    } else if ("privapp-permissions".equals(name) && z9) {
                                        if (!file.toPath().startsWith(Environment.getVendorDirectory().toPath()) && !file.toPath().startsWith(Environment.getOdmDirectory().toPath())) {
                                            z2 = false;
                                            boolean startsWith = file.toPath().startsWith(Environment.getProductDirectory().toPath());
                                            if (!z2) {
                                                readPrivAppPermissions(newPullParser, this.mVendorPrivAppPermissions, this.mVendorPrivAppDenyPermissions);
                                            } else if (startsWith) {
                                                readPrivAppPermissions(newPullParser, this.mProductPrivAppPermissions, this.mProductPrivAppDenyPermissions);
                                            } else {
                                                readPrivAppPermissions(newPullParser, this.mPrivAppPermissions, this.mPrivAppDenyPermissions);
                                            }
                                        }
                                        z2 = true;
                                        boolean startsWith2 = file.toPath().startsWith(Environment.getProductDirectory().toPath());
                                        if (!z2) {
                                        }
                                    } else if ("oem-permissions".equals(name) && z10) {
                                        readOemPermissions(newPullParser);
                                    } else if ("hidden-api-whitelisted-app".equals(name) && z11) {
                                        String attributeValue23 = newPullParser.getAttributeValue(null, "package");
                                        if (attributeValue23 == null) {
                                            Slog.w(TAG, "<hidden-api-whitelisted-app> without package in " + file + " at " + newPullParser.getPositionDescription());
                                        } else {
                                            this.mHiddenApiPackageWhitelist.add(attributeValue23);
                                        }
                                        XmlUtils.skipCurrentTag(newPullParser);
                                    } else {
                                        Slog.w(TAG, "Tag " + name + " is unknown or not allowed in " + file.getParent());
                                        XmlUtils.skipCurrentTag(newPullParser);
                                    }
                                }
                                i3 = i4;
                                fileReader3 = fileReader4;
                                z7 = z;
                            }
                        }
                        fileReader3 = fileReader4;
                        z7 = z;
                    }
                    i3 = 1;
                }
                fileReader3 = fileReader4;
                i3 = 1;
            }
            IoUtils.closeQuietly(fileReader3);
            if (StorageManager.isFileEncryptedNativeOnly()) {
                i2 = 0;
                addFeature("android.software.file_based_encryption", 0);
                addFeature("android.software.securely_removes_users", 0);
            } else {
                i2 = 0;
            }
            if (StorageManager.hasAdoptable()) {
                addFeature("android.software.adoptable_storage", i2);
            }
            if (ActivityManager.isLowRamDeviceStatic()) {
                addFeature("android.hardware.ram.low", i2);
            } else {
                addFeature("android.hardware.ram.normal", i2);
            }
            it = this.mUnavailableFeatures.iterator();
            while (it.hasNext()) {
                removeFeature(it.next());
            }
        } catch (FileNotFoundException unused) {
            Slog.w(TAG, "Couldn't find or open permissions file " + file);
        }
    }

    private void addFeature(String str, int i) {
        FeatureInfo featureInfo = this.mAvailableFeatures.get(str);
        if (featureInfo == null) {
            FeatureInfo featureInfo2 = new FeatureInfo();
            featureInfo2.name = str;
            featureInfo2.version = i;
            this.mAvailableFeatures.put(str, featureInfo2);
            return;
        }
        featureInfo.version = Math.max(featureInfo.version, i);
    }

    private void removeFeature(String str) {
        if (this.mAvailableFeatures.remove(str) != null) {
            Slog.d(TAG, "Removed unavailable feature " + str);
        }
    }

    void readPermission(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        if (this.mPermissions.containsKey(str)) {
            throw new IllegalStateException("Duplicate permission definition for " + str);
        }
        PermissionEntry permissionEntry = new PermissionEntry(str, XmlUtils.readBooleanAttribute(xmlPullParser, "perUser", false));
        this.mPermissions.put(str, permissionEntry);
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1) {
                return;
            }
            if (next == 3 && xmlPullParser.getDepth() <= depth) {
                return;
            }
            if (next != 3 && next != 4) {
                if ("group".equals(xmlPullParser.getName())) {
                    String attributeValue = xmlPullParser.getAttributeValue(null, "gid");
                    if (attributeValue != null) {
                        permissionEntry.gids = ArrayUtils.appendInt(permissionEntry.gids, Process.getGidForName(attributeValue));
                    } else {
                        Slog.w(TAG, "<group> without gid at " + xmlPullParser.getPositionDescription());
                    }
                }
                XmlUtils.skipCurrentTag(xmlPullParser);
            }
        }
    }

    private void readPrivAppPermissions(XmlPullParser xmlPullParser, ArrayMap<String, ArraySet<String>> arrayMap, ArrayMap<String, ArraySet<String>> arrayMap2) throws IOException, XmlPullParserException {
        String attributeValue = xmlPullParser.getAttributeValue(null, "package");
        if (TextUtils.isEmpty(attributeValue)) {
            Slog.w(TAG, "package is required for <privapp-permissions> in " + xmlPullParser.getPositionDescription());
            return;
        }
        ArraySet<String> arraySet = arrayMap.get(attributeValue);
        if (arraySet == null) {
            arraySet = new ArraySet<>();
        }
        ArraySet<String> arraySet2 = arrayMap2.get(attributeValue);
        int depth = xmlPullParser.getDepth();
        while (XmlUtils.nextElementWithin(xmlPullParser, depth)) {
            String name = xmlPullParser.getName();
            if ("permission".equals(name)) {
                String attributeValue2 = xmlPullParser.getAttributeValue(null, "name");
                if (TextUtils.isEmpty(attributeValue2)) {
                    Slog.w(TAG, "name is required for <permission> in " + xmlPullParser.getPositionDescription());
                } else {
                    arraySet.add(attributeValue2);
                }
            } else if ("deny-permission".equals(name)) {
                String attributeValue3 = xmlPullParser.getAttributeValue(null, "name");
                if (TextUtils.isEmpty(attributeValue3)) {
                    Slog.w(TAG, "name is required for <deny-permission> in " + xmlPullParser.getPositionDescription());
                } else {
                    if (arraySet2 == null) {
                        arraySet2 = new ArraySet<>();
                    }
                    arraySet2.add(attributeValue3);
                }
            }
        }
        arrayMap.put(attributeValue, arraySet);
        if (arraySet2 != null) {
            arrayMap2.put(attributeValue, arraySet2);
        }
    }

    void readOemPermissions(XmlPullParser xmlPullParser) throws IOException, XmlPullParserException {
        String attributeValue = xmlPullParser.getAttributeValue(null, "package");
        if (TextUtils.isEmpty(attributeValue)) {
            Slog.w(TAG, "package is required for <oem-permissions> in " + xmlPullParser.getPositionDescription());
            return;
        }
        ArrayMap<String, Boolean> arrayMap = this.mOemPermissions.get(attributeValue);
        if (arrayMap == null) {
            arrayMap = new ArrayMap<>();
        }
        int depth = xmlPullParser.getDepth();
        while (XmlUtils.nextElementWithin(xmlPullParser, depth)) {
            String name = xmlPullParser.getName();
            if ("permission".equals(name)) {
                String attributeValue2 = xmlPullParser.getAttributeValue(null, "name");
                if (TextUtils.isEmpty(attributeValue2)) {
                    Slog.w(TAG, "name is required for <permission> in " + xmlPullParser.getPositionDescription());
                } else {
                    arrayMap.put(attributeValue2, Boolean.TRUE);
                }
            } else if ("deny-permission".equals(name)) {
                String attributeValue3 = xmlPullParser.getAttributeValue(null, "name");
                if (TextUtils.isEmpty(attributeValue3)) {
                    Slog.w(TAG, "name is required for <deny-permission> in " + xmlPullParser.getPositionDescription());
                } else {
                    arrayMap.put(attributeValue3, Boolean.FALSE);
                }
            }
        }
        this.mOemPermissions.put(attributeValue, arrayMap);
    }
}
