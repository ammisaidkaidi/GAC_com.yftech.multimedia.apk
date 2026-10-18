package android.accessibilityservice;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.hardware.fingerprint.FingerprintManager;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import android.util.TypedValue;
import android.util.Xml;
import android.view.accessibility.AccessibilityEvent;
import com.android.internal.R;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: /home/user/work/dex/classes.dex */
public class AccessibilityServiceInfo implements Parcelable {
    public static final int CAPABILITY_CAN_CONTROL_MAGNIFICATION = 16;
    public static final int CAPABILITY_CAN_PERFORM_GESTURES = 32;
    public static final int CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY = 4;
    public static final int CAPABILITY_CAN_REQUEST_FILTER_KEY_EVENTS = 8;
    public static final int CAPABILITY_CAN_REQUEST_FINGERPRINT_GESTURES = 64;
    public static final int CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION = 2;
    public static final int CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT = 1;
    public static final Parcelable.Creator<AccessibilityServiceInfo> CREATOR = new Parcelable.Creator<AccessibilityServiceInfo>() { // from class: android.accessibilityservice.AccessibilityServiceInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AccessibilityServiceInfo createFromParcel(Parcel parcel) {
            AccessibilityServiceInfo accessibilityServiceInfo = new AccessibilityServiceInfo();
            accessibilityServiceInfo.initFromParcel(parcel);
            return accessibilityServiceInfo;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AccessibilityServiceInfo[] newArray(int i) {
            return new AccessibilityServiceInfo[i];
        }
    };
    public static final int DEFAULT = 1;
    public static final int FEEDBACK_ALL_MASK = -1;
    public static final int FEEDBACK_AUDIBLE = 4;
    public static final int FEEDBACK_BRAILLE = 32;
    public static final int FEEDBACK_GENERIC = 16;
    public static final int FEEDBACK_HAPTIC = 2;
    public static final int FEEDBACK_SPOKEN = 1;
    public static final int FEEDBACK_VISUAL = 8;
    public static final int FLAG_ENABLE_ACCESSIBILITY_VOLUME = 128;
    public static final int FLAG_FORCE_DIRECT_BOOT_AWARE = 65536;
    public static final int FLAG_INCLUDE_NOT_IMPORTANT_VIEWS = 2;
    public static final int FLAG_REPORT_VIEW_IDS = 16;
    public static final int FLAG_REQUEST_ACCESSIBILITY_BUTTON = 256;
    public static final int FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY = 8;
    public static final int FLAG_REQUEST_FILTER_KEY_EVENTS = 32;
    public static final int FLAG_REQUEST_FINGERPRINT_GESTURES = 512;
    public static final int FLAG_REQUEST_TOUCH_EXPLORATION_MODE = 4;
    public static final int FLAG_RETRIEVE_INTERACTIVE_WINDOWS = 64;
    private static final String TAG_ACCESSIBILITY_SERVICE = "accessibility-service";
    private static SparseArray<CapabilityInfo> sAvailableCapabilityInfos;
    public boolean crashed;
    public int eventTypes;
    public int feedbackType;
    public int flags;
    private int mCapabilities;
    private ComponentName mComponentName;
    private int mDescriptionResId;
    private String mNonLocalizedDescription;
    private String mNonLocalizedSummary;
    private ResolveInfo mResolveInfo;
    private String mSettingsActivityName;
    private int mSummaryResId;
    public long notificationTimeout;
    public String[] packageNames;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface FeedbackType {
    }

    public static String capabilityToString(int i) {
        if (i == 4) {
            return "CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY";
        }
        if (i == 8) {
            return "CAPABILITY_CAN_REQUEST_FILTER_KEY_EVENTS";
        }
        if (i == 16) {
            return "CAPABILITY_CAN_CONTROL_MAGNIFICATION";
        }
        if (i == 32) {
            return "CAPABILITY_CAN_PERFORM_GESTURES";
        }
        if (i == 64) {
            return "CAPABILITY_CAN_REQUEST_FINGERPRINT_GESTURES";
        }
        switch (i) {
            case 1:
                return "CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT";
            case 2:
                return "CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION";
            default:
                return "UNKNOWN";
        }
    }

    public static String flagToString(int i) {
        if (i == 4) {
            return "FLAG_REQUEST_TOUCH_EXPLORATION_MODE";
        }
        if (i == 8) {
            return "FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY";
        }
        if (i == 16) {
            return "FLAG_REPORT_VIEW_IDS";
        }
        if (i == 32) {
            return "FLAG_REQUEST_FILTER_KEY_EVENTS";
        }
        if (i == 64) {
            return "FLAG_RETRIEVE_INTERACTIVE_WINDOWS";
        }
        if (i == 128) {
            return "FLAG_ENABLE_ACCESSIBILITY_VOLUME";
        }
        if (i == 256) {
            return "FLAG_REQUEST_ACCESSIBILITY_BUTTON";
        }
        if (i == 512) {
            return "FLAG_REQUEST_FINGERPRINT_GESTURES";
        }
        switch (i) {
            case 1:
                return "DEFAULT";
            case 2:
                return "FLAG_INCLUDE_NOT_IMPORTANT_VIEWS";
            default:
                return null;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public AccessibilityServiceInfo() {
    }

    public AccessibilityServiceInfo(ResolveInfo resolveInfo, Context context) throws XmlPullParserException, IOException {
        XmlResourceParser xmlResourceParser;
        ServiceInfo serviceInfo = resolveInfo.serviceInfo;
        this.mComponentName = new ComponentName(serviceInfo.packageName, serviceInfo.name);
        this.mResolveInfo = resolveInfo;
        try {
            try {
                PackageManager packageManager = context.getPackageManager();
                xmlResourceParser = serviceInfo.loadXmlMetaData(packageManager, AccessibilityService.SERVICE_META_DATA);
                if (xmlResourceParser == null) {
                    if (xmlResourceParser != null) {
                        xmlResourceParser.close();
                        return;
                    }
                    return;
                }
                for (int i = 0; i != 1 && i != 2; i = xmlResourceParser.next()) {
                    try {
                    } catch (PackageManager.NameNotFoundException unused) {
                        throw new XmlPullParserException("Unable to create context for: " + serviceInfo.packageName);
                    } catch (Throwable th) {
                        th = th;
                        if (xmlResourceParser != null) {
                            xmlResourceParser.close();
                        }
                        throw th;
                    }
                }
                if (!TAG_ACCESSIBILITY_SERVICE.equals(xmlResourceParser.getName())) {
                    throw new XmlPullParserException("Meta-data does not start withaccessibility-service tag");
                }
                TypedArray obtainAttributes = packageManager.getResourcesForApplication(serviceInfo.applicationInfo).obtainAttributes(Xml.asAttributeSet(xmlResourceParser), R.styleable.AccessibilityService);
                this.eventTypes = obtainAttributes.getInt(3, 0);
                String string = obtainAttributes.getString(4);
                if (string != null) {
                    this.packageNames = string.split("(\\s)*,(\\s)*");
                }
                this.feedbackType = obtainAttributes.getInt(5, 0);
                this.notificationTimeout = obtainAttributes.getInt(6, 0);
                this.flags = obtainAttributes.getInt(7, 0);
                this.mSettingsActivityName = obtainAttributes.getString(2);
                if (obtainAttributes.getBoolean(8, false)) {
                    this.mCapabilities |= 1;
                }
                if (obtainAttributes.getBoolean(9, false)) {
                    this.mCapabilities = 2 | this.mCapabilities;
                }
                if (obtainAttributes.getBoolean(11, false)) {
                    this.mCapabilities = 8 | this.mCapabilities;
                }
                if (obtainAttributes.getBoolean(12, false)) {
                    this.mCapabilities |= 16;
                }
                if (obtainAttributes.getBoolean(13, false)) {
                    this.mCapabilities |= 32;
                }
                if (obtainAttributes.getBoolean(14, false)) {
                    this.mCapabilities |= 64;
                }
                TypedValue peekValue = obtainAttributes.peekValue(0);
                if (peekValue != null) {
                    this.mDescriptionResId = peekValue.resourceId;
                    CharSequence coerceToString = peekValue.coerceToString();
                    if (coerceToString != null) {
                        this.mNonLocalizedDescription = coerceToString.toString().trim();
                    }
                }
                TypedValue peekValue2 = obtainAttributes.peekValue(1);
                if (peekValue2 != null) {
                    this.mSummaryResId = peekValue2.resourceId;
                    CharSequence coerceToString2 = peekValue2.coerceToString();
                    if (coerceToString2 != null) {
                        this.mNonLocalizedSummary = coerceToString2.toString().trim();
                    }
                }
                obtainAttributes.recycle();
                if (xmlResourceParser != null) {
                    xmlResourceParser.close();
                }
            } catch (Throwable th2) {
                th = th2;
                xmlResourceParser = null;
            }
        } catch (PackageManager.NameNotFoundException unused2) {
        }
    }

    public void updateDynamicallyConfigurableProperties(AccessibilityServiceInfo accessibilityServiceInfo) {
        this.eventTypes = accessibilityServiceInfo.eventTypes;
        this.packageNames = accessibilityServiceInfo.packageNames;
        this.feedbackType = accessibilityServiceInfo.feedbackType;
        this.notificationTimeout = accessibilityServiceInfo.notificationTimeout;
        this.flags = accessibilityServiceInfo.flags;
    }

    public void setComponentName(ComponentName componentName) {
        this.mComponentName = componentName;
    }

    public ComponentName getComponentName() {
        return this.mComponentName;
    }

    public String getId() {
        return this.mComponentName.flattenToShortString();
    }

    public ResolveInfo getResolveInfo() {
        return this.mResolveInfo;
    }

    public String getSettingsActivityName() {
        return this.mSettingsActivityName;
    }

    public boolean getCanRetrieveWindowContent() {
        return (this.mCapabilities & 1) != 0;
    }

    public int getCapabilities() {
        return this.mCapabilities;
    }

    public void setCapabilities(int i) {
        this.mCapabilities = i;
    }

    public CharSequence loadSummary(PackageManager packageManager) {
        if (this.mSummaryResId == 0) {
            return this.mNonLocalizedSummary;
        }
        ServiceInfo serviceInfo = this.mResolveInfo.serviceInfo;
        CharSequence text = packageManager.getText(serviceInfo.packageName, this.mSummaryResId, serviceInfo.applicationInfo);
        if (text != null) {
            return text.toString().trim();
        }
        return null;
    }

    public String getDescription() {
        return this.mNonLocalizedDescription;
    }

    public String loadDescription(PackageManager packageManager) {
        if (this.mDescriptionResId == 0) {
            return this.mNonLocalizedDescription;
        }
        ServiceInfo serviceInfo = this.mResolveInfo.serviceInfo;
        CharSequence text = packageManager.getText(serviceInfo.packageName, this.mDescriptionResId, serviceInfo.applicationInfo);
        if (text != null) {
            return text.toString().trim();
        }
        return null;
    }

    public boolean isDirectBootAware() {
        return (this.flags & 65536) != 0 || this.mResolveInfo.serviceInfo.directBootAware;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.eventTypes);
        parcel.writeStringArray(this.packageNames);
        parcel.writeInt(this.feedbackType);
        parcel.writeLong(this.notificationTimeout);
        parcel.writeInt(this.flags);
        parcel.writeInt(this.crashed ? 1 : 0);
        parcel.writeParcelable(this.mComponentName, i);
        parcel.writeParcelable(this.mResolveInfo, 0);
        parcel.writeString(this.mSettingsActivityName);
        parcel.writeInt(this.mCapabilities);
        parcel.writeInt(this.mSummaryResId);
        parcel.writeString(this.mNonLocalizedSummary);
        parcel.writeInt(this.mDescriptionResId);
        parcel.writeString(this.mNonLocalizedDescription);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initFromParcel(Parcel parcel) {
        this.eventTypes = parcel.readInt();
        this.packageNames = parcel.readStringArray();
        this.feedbackType = parcel.readInt();
        this.notificationTimeout = parcel.readLong();
        this.flags = parcel.readInt();
        this.crashed = parcel.readInt() != 0;
        this.mComponentName = (ComponentName) parcel.readParcelable(getClass().getClassLoader());
        this.mResolveInfo = (ResolveInfo) parcel.readParcelable(null);
        this.mSettingsActivityName = parcel.readString();
        this.mCapabilities = parcel.readInt();
        this.mSummaryResId = parcel.readInt();
        this.mNonLocalizedSummary = parcel.readString();
        this.mDescriptionResId = parcel.readInt();
        this.mNonLocalizedDescription = parcel.readString();
    }

    public int hashCode() {
        return (this.mComponentName == null ? 0 : this.mComponentName.hashCode()) + 31;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AccessibilityServiceInfo accessibilityServiceInfo = (AccessibilityServiceInfo) obj;
        if (this.mComponentName == null) {
            if (accessibilityServiceInfo.mComponentName != null) {
                return false;
            }
        } else if (!this.mComponentName.equals(accessibilityServiceInfo.mComponentName)) {
            return false;
        }
        return true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        appendEventTypes(sb, this.eventTypes);
        sb.append(", ");
        appendPackageNames(sb, this.packageNames);
        sb.append(", ");
        appendFeedbackTypes(sb, this.feedbackType);
        sb.append(", ");
        sb.append("notificationTimeout: ");
        sb.append(this.notificationTimeout);
        sb.append(", ");
        appendFlags(sb, this.flags);
        sb.append(", ");
        sb.append("id: ");
        sb.append(getId());
        sb.append(", ");
        sb.append("resolveInfo: ");
        sb.append(this.mResolveInfo);
        sb.append(", ");
        sb.append("settingsActivityName: ");
        sb.append(this.mSettingsActivityName);
        sb.append(", ");
        sb.append("summary: ");
        sb.append(this.mNonLocalizedSummary);
        sb.append(", ");
        appendCapabilities(sb, this.mCapabilities);
        return sb.toString();
    }

    private static void appendFeedbackTypes(StringBuilder sb, int i) {
        sb.append("feedbackTypes:");
        sb.append("[");
        while (i != 0) {
            int numberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(i);
            sb.append(feedbackTypeToString(numberOfTrailingZeros));
            i &= ~numberOfTrailingZeros;
            if (i != 0) {
                sb.append(", ");
            }
        }
        sb.append("]");
    }

    private static void appendPackageNames(StringBuilder sb, String[] strArr) {
        sb.append("packageNames:");
        sb.append("[");
        if (strArr != null) {
            int length = strArr.length;
            for (int i = 0; i < length; i++) {
                sb.append(strArr[i]);
                if (i < length - 1) {
                    sb.append(", ");
                }
            }
        }
        sb.append("]");
    }

    private static void appendEventTypes(StringBuilder sb, int i) {
        sb.append("eventTypes:");
        sb.append("[");
        while (i != 0) {
            int numberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(i);
            sb.append(AccessibilityEvent.eventTypeToString(numberOfTrailingZeros));
            i &= ~numberOfTrailingZeros;
            if (i != 0) {
                sb.append(", ");
            }
        }
        sb.append("]");
    }

    private static void appendFlags(StringBuilder sb, int i) {
        sb.append("flags:");
        sb.append("[");
        while (i != 0) {
            int numberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(i);
            sb.append(flagToString(numberOfTrailingZeros));
            i &= ~numberOfTrailingZeros;
            if (i != 0) {
                sb.append(", ");
            }
        }
        sb.append("]");
    }

    private static void appendCapabilities(StringBuilder sb, int i) {
        sb.append("capabilities:");
        sb.append("[");
        while (i != 0) {
            int numberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(i);
            sb.append(capabilityToString(numberOfTrailingZeros));
            i &= ~numberOfTrailingZeros;
            if (i != 0) {
                sb.append(", ");
            }
        }
        sb.append("]");
    }

    public static String feedbackTypeToString(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        while (i != 0) {
            int numberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(i);
            i &= ~numberOfTrailingZeros;
            if (numberOfTrailingZeros == 4) {
                if (sb.length() > 1) {
                    sb.append(", ");
                }
                sb.append("FEEDBACK_AUDIBLE");
            } else if (numberOfTrailingZeros == 8) {
                if (sb.length() > 1) {
                    sb.append(", ");
                }
                sb.append("FEEDBACK_VISUAL");
            } else if (numberOfTrailingZeros == 16) {
                if (sb.length() > 1) {
                    sb.append(", ");
                }
                sb.append("FEEDBACK_GENERIC");
            } else if (numberOfTrailingZeros != 32) {
                switch (numberOfTrailingZeros) {
                    case 1:
                        if (sb.length() > 1) {
                            sb.append(", ");
                        }
                        sb.append("FEEDBACK_SPOKEN");
                        break;
                    case 2:
                        if (sb.length() > 1) {
                            sb.append(", ");
                        }
                        sb.append("FEEDBACK_HAPTIC");
                        break;
                }
            } else {
                if (sb.length() > 1) {
                    sb.append(", ");
                }
                sb.append("FEEDBACK_BRAILLE");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public List<CapabilityInfo> getCapabilityInfos() {
        return getCapabilityInfos(null);
    }

    public List<CapabilityInfo> getCapabilityInfos(Context context) {
        if (this.mCapabilities == 0) {
            return Collections.emptyList();
        }
        int i = this.mCapabilities;
        ArrayList arrayList = new ArrayList();
        SparseArray<CapabilityInfo> capabilityInfoSparseArray = getCapabilityInfoSparseArray(context);
        while (i != 0) {
            int numberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(i);
            i &= ~numberOfTrailingZeros;
            CapabilityInfo capabilityInfo = capabilityInfoSparseArray.get(numberOfTrailingZeros);
            if (capabilityInfo != null) {
                arrayList.add(capabilityInfo);
            }
        }
        return arrayList;
    }

    private static SparseArray<CapabilityInfo> getCapabilityInfoSparseArray(Context context) {
        if (sAvailableCapabilityInfos == null) {
            sAvailableCapabilityInfos = new SparseArray<>();
            sAvailableCapabilityInfos.put(1, new CapabilityInfo(1, 17039604, 17039598));
            sAvailableCapabilityInfos.put(2, new CapabilityInfo(2, 17039603, 17039597));
            sAvailableCapabilityInfos.put(8, new CapabilityInfo(8, 17039602, 17039596));
            sAvailableCapabilityInfos.put(16, new CapabilityInfo(16, 17039600, 17039594));
            sAvailableCapabilityInfos.put(32, new CapabilityInfo(32, 17039601, 17039595));
            if (context == null || fingerprintAvailable(context)) {
                sAvailableCapabilityInfos.put(64, new CapabilityInfo(64, 17039599, 17039593));
            }
        }
        return sAvailableCapabilityInfos;
    }

    private static boolean fingerprintAvailable(Context context) {
        return context.getPackageManager().hasSystemFeature(PackageManager.FEATURE_FINGERPRINT) && ((FingerprintManager) context.getSystemService(FingerprintManager.class)).isHardwareDetected();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class CapabilityInfo {
        public final int capability;
        public final int descResId;
        public final int titleResId;

        public CapabilityInfo(int i, int i2, int i3) {
            this.capability = i;
            this.titleResId = i2;
            this.descResId = i3;
        }
    }
}
