package android.app.admin;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Printer;
import android.util.SparseArray;
import android.util.Xml;
import com.android.internal.R;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: /home/user/work/dex/classes.dex */
public final class DeviceAdminInfo implements Parcelable {
    public static final Parcelable.Creator<DeviceAdminInfo> CREATOR;
    static final String TAG = "DeviceAdminInfo";
    public static final int USES_ENCRYPTED_STORAGE = 7;
    public static final int USES_POLICY_DEVICE_OWNER = -2;
    public static final int USES_POLICY_DISABLE_CAMERA = 8;
    public static final int USES_POLICY_DISABLE_KEYGUARD_FEATURES = 9;
    public static final int USES_POLICY_EXPIRE_PASSWORD = 6;
    public static final int USES_POLICY_FORCE_LOCK = 3;
    public static final int USES_POLICY_LIMIT_PASSWORD = 0;
    public static final int USES_POLICY_PROFILE_OWNER = -1;
    public static final int USES_POLICY_RESET_PASSWORD = 2;
    public static final int USES_POLICY_SETS_GLOBAL_PROXY = 5;
    public static final int USES_POLICY_WATCH_LOGIN = 1;
    public static final int USES_POLICY_WIPE_DATA = 4;
    final ActivityInfo mActivityInfo;
    boolean mSupportsTransferOwnership;
    int mUsesPolicies;
    boolean mVisible;
    static ArrayList<PolicyInfo> sPoliciesDisplayOrder = new ArrayList<>();
    static HashMap<String, Integer> sKnownPolicies = new HashMap<>();
    static SparseArray<PolicyInfo> sRevKnownPolicies = new SparseArray<>();

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class PolicyInfo {
        public final int description;
        public final int descriptionForSecondaryUsers;
        public final int ident;
        public final int label;
        public final int labelForSecondaryUsers;
        public final String tag;

        public PolicyInfo(int i, String str, int i2, int i3) {
            this(i, str, i2, i3, i2, i3);
        }

        public PolicyInfo(int i, String str, int i2, int i3, int i4, int i5) {
            this.ident = i;
            this.tag = str;
            this.label = i2;
            this.description = i3;
            this.labelForSecondaryUsers = i4;
            this.descriptionForSecondaryUsers = i5;
        }
    }

    static {
        sPoliciesDisplayOrder.add(new PolicyInfo(4, "wipe-data", 17040714, 17040703, 17040715, 17040704));
        sPoliciesDisplayOrder.add(new PolicyInfo(2, "reset-password", 17040711, 17040699));
        sPoliciesDisplayOrder.add(new PolicyInfo(0, "limit-password", 17040710, 17040698));
        sPoliciesDisplayOrder.add(new PolicyInfo(1, "watch-login", 17040713, 17040701, 17040713, 17040702));
        sPoliciesDisplayOrder.add(new PolicyInfo(3, "force-lock", 17040709, 17040697));
        sPoliciesDisplayOrder.add(new PolicyInfo(5, "set-global-proxy", 17040712, 17040700));
        sPoliciesDisplayOrder.add(new PolicyInfo(6, "expire-password", 17040708, 17040696));
        sPoliciesDisplayOrder.add(new PolicyInfo(7, "encrypted-storage", 17040707, 17040695));
        sPoliciesDisplayOrder.add(new PolicyInfo(8, "disable-camera", 17040705, 17040693));
        sPoliciesDisplayOrder.add(new PolicyInfo(9, "disable-keyguard-features", 17040706, 17040694));
        for (int i = 0; i < sPoliciesDisplayOrder.size(); i++) {
            PolicyInfo policyInfo = sPoliciesDisplayOrder.get(i);
            sRevKnownPolicies.put(policyInfo.ident, policyInfo);
            sKnownPolicies.put(policyInfo.tag, Integer.valueOf(policyInfo.ident));
        }
        CREATOR = new Parcelable.Creator<DeviceAdminInfo>() { // from class: android.app.admin.DeviceAdminInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public DeviceAdminInfo createFromParcel(Parcel parcel) {
                return new DeviceAdminInfo(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public DeviceAdminInfo[] newArray(int i2) {
                return new DeviceAdminInfo[i2];
            }
        };
    }

    public DeviceAdminInfo(Context context, ResolveInfo resolveInfo) throws XmlPullParserException, IOException {
        this(context, resolveInfo.activityInfo);
    }

    public DeviceAdminInfo(Context context, ActivityInfo activityInfo) throws XmlPullParserException, IOException {
        XmlResourceParser xmlResourceParser;
        int next;
        this.mActivityInfo = activityInfo;
        PackageManager packageManager = context.getPackageManager();
        XmlResourceParser xmlResourceParser2 = null;
        try {
            try {
                xmlResourceParser = this.mActivityInfo.loadXmlMetaData(packageManager, DeviceAdminReceiver.DEVICE_ADMIN_META_DATA);
            } catch (PackageManager.NameNotFoundException unused) {
            }
        } catch (Throwable th) {
            th = th;
            xmlResourceParser = xmlResourceParser2;
        }
        try {
            if (xmlResourceParser == null) {
                throw new XmlPullParserException("No android.app.device_admin meta-data");
            }
            Resources resourcesForApplication = packageManager.getResourcesForApplication(this.mActivityInfo.applicationInfo);
            AttributeSet asAttributeSet = Xml.asAttributeSet(xmlResourceParser);
            do {
                next = xmlResourceParser.next();
                if (next == 1) {
                    break;
                }
            } while (next != 2);
            if (!"device-admin".equals(xmlResourceParser.getName())) {
                throw new XmlPullParserException("Meta-data does not start with device-admin tag");
            }
            TypedArray obtainAttributes = resourcesForApplication.obtainAttributes(asAttributeSet, R.styleable.DeviceAdmin);
            this.mVisible = obtainAttributes.getBoolean(0, true);
            obtainAttributes.recycle();
            int depth = xmlResourceParser.getDepth();
            while (true) {
                int next2 = xmlResourceParser.next();
                if (next2 == 1 || (next2 == 3 && xmlResourceParser.getDepth() <= depth)) {
                    break;
                }
                if (next2 != 3 && next2 != 4) {
                    String name = xmlResourceParser.getName();
                    if (name.equals("uses-policies")) {
                        int depth2 = xmlResourceParser.getDepth();
                        while (true) {
                            int next3 = xmlResourceParser.next();
                            if (next3 != 1 && (next3 != 3 || xmlResourceParser.getDepth() > depth2)) {
                                if (next3 != 3 && next3 != 4) {
                                    String name2 = xmlResourceParser.getName();
                                    Integer num = sKnownPolicies.get(name2);
                                    if (num != null) {
                                        this.mUsesPolicies |= 1 << num.intValue();
                                    } else {
                                        Log.w(TAG, "Unknown tag under uses-policies of " + getComponent() + ": " + name2);
                                    }
                                }
                            }
                        }
                    } else if (!name.equals("support-transfer-ownership")) {
                        continue;
                    } else {
                        if (xmlResourceParser.next() != 3) {
                            throw new XmlPullParserException("support-transfer-ownership tag must be empty.");
                        }
                        this.mSupportsTransferOwnership = true;
                    }
                }
            }
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
        } catch (PackageManager.NameNotFoundException unused2) {
            xmlResourceParser2 = xmlResourceParser;
            throw new XmlPullParserException("Unable to create context for: " + this.mActivityInfo.packageName);
        } catch (Throwable th2) {
            th = th2;
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
            throw th;
        }
    }

    DeviceAdminInfo(Parcel parcel) {
        this.mActivityInfo = ActivityInfo.CREATOR.createFromParcel(parcel);
        this.mUsesPolicies = parcel.readInt();
        this.mSupportsTransferOwnership = parcel.readBoolean();
    }

    public String getPackageName() {
        return this.mActivityInfo.packageName;
    }

    public String getReceiverName() {
        return this.mActivityInfo.name;
    }

    public ActivityInfo getActivityInfo() {
        return this.mActivityInfo;
    }

    public ComponentName getComponent() {
        return new ComponentName(this.mActivityInfo.packageName, this.mActivityInfo.name);
    }

    public CharSequence loadLabel(PackageManager packageManager) {
        return this.mActivityInfo.loadLabel(packageManager);
    }

    public CharSequence loadDescription(PackageManager packageManager) throws Resources.NotFoundException {
        if (this.mActivityInfo.descriptionRes != 0) {
            return packageManager.getText(this.mActivityInfo.packageName, this.mActivityInfo.descriptionRes, this.mActivityInfo.applicationInfo);
        }
        throw new Resources.NotFoundException();
    }

    public Drawable loadIcon(PackageManager packageManager) {
        return this.mActivityInfo.loadIcon(packageManager);
    }

    public boolean isVisible() {
        return this.mVisible;
    }

    public boolean usesPolicy(int i) {
        return (this.mUsesPolicies & (1 << i)) != 0;
    }

    public String getTagForPolicy(int i) {
        return sRevKnownPolicies.get(i).tag;
    }

    public boolean supportsTransferOwnership() {
        return this.mSupportsTransferOwnership;
    }

    public ArrayList<PolicyInfo> getUsedPolicies() {
        ArrayList<PolicyInfo> arrayList = new ArrayList<>();
        for (int i = 0; i < sPoliciesDisplayOrder.size(); i++) {
            PolicyInfo policyInfo = sPoliciesDisplayOrder.get(i);
            if (usesPolicy(policyInfo.ident)) {
                arrayList.add(policyInfo);
            }
        }
        return arrayList;
    }

    public void writePoliciesToXml(XmlSerializer xmlSerializer) throws IllegalArgumentException, IllegalStateException, IOException {
        xmlSerializer.attribute(null, "flags", Integer.toString(this.mUsesPolicies));
    }

    public void readPoliciesFromXml(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        this.mUsesPolicies = Integer.parseInt(xmlPullParser.getAttributeValue(null, "flags"));
    }

    public void dump(Printer printer, String str) {
        printer.println(str + "Receiver:");
        this.mActivityInfo.dump(printer, str + "  ");
    }

    public String toString() {
        return "DeviceAdminInfo{" + this.mActivityInfo.name + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        this.mActivityInfo.writeToParcel(parcel, i);
        parcel.writeInt(this.mUsesPolicies);
        parcel.writeBoolean(this.mSupportsTransferOwnership);
    }
}
