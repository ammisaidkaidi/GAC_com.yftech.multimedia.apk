package android.view.inputmethod;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Printer;
import android.util.Slog;
import android.util.Xml;
import android.view.inputmethod.InputMethodSubtype;
import com.android.internal.R;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: /home/user/work/dex/classes2.dex */
public final class InputMethodInfo implements Parcelable {
    public static final Parcelable.Creator<InputMethodInfo> CREATOR = new Parcelable.Creator<InputMethodInfo>() { // from class: android.view.inputmethod.InputMethodInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public InputMethodInfo createFromParcel(Parcel parcel) {
            return new InputMethodInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public InputMethodInfo[] newArray(int i) {
            return new InputMethodInfo[i];
        }
    };
    static final String TAG = "InputMethodInfo";
    private final boolean mForceDefault;
    final String mId;
    private final boolean mIsAuxIme;
    final int mIsDefaultResId;
    final boolean mIsVrOnly;
    final ResolveInfo mService;
    final String mSettingsActivityName;
    private final InputMethodSubtypeArray mSubtypes;
    private final boolean mSupportsSwitchingToNextInputMethod;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public static String computeId(ResolveInfo resolveInfo) {
        ServiceInfo serviceInfo = resolveInfo.serviceInfo;
        return new ComponentName(serviceInfo.packageName, serviceInfo.name).flattenToShortString();
    }

    public InputMethodInfo(Context context, ResolveInfo resolveInfo) throws XmlPullParserException, IOException {
        this(context, resolveInfo, null);
    }

    public InputMethodInfo(Context context, ResolveInfo resolveInfo, List<InputMethodSubtype> list) throws XmlPullParserException, IOException {
        XmlResourceParser xmlResourceParser;
        int next;
        int i;
        int i2;
        this.mService = resolveInfo;
        ServiceInfo serviceInfo = resolveInfo.serviceInfo;
        this.mId = computeId(resolveInfo);
        this.mForceDefault = false;
        PackageManager packageManager = context.getPackageManager();
        ArrayList arrayList = new ArrayList();
        XmlResourceParser xmlResourceParser2 = null;
        try {
            try {
                xmlResourceParser = serviceInfo.loadXmlMetaData(packageManager, InputMethod.SERVICE_META_DATA);
                try {
                    try {
                        if (xmlResourceParser == null) {
                            throw new XmlPullParserException("No android.view.im meta-data");
                        }
                        Resources resourcesForApplication = packageManager.getResourcesForApplication(serviceInfo.applicationInfo);
                        AttributeSet asAttributeSet = Xml.asAttributeSet(xmlResourceParser);
                        do {
                            next = xmlResourceParser.next();
                            i = 2;
                            i2 = 1;
                            if (next == 1) {
                                break;
                            }
                        } while (next != 2);
                        if (!"input-method".equals(xmlResourceParser.getName())) {
                            throw new XmlPullParserException("Meta-data does not start with input-method tag");
                        }
                        TypedArray obtainAttributes = resourcesForApplication.obtainAttributes(asAttributeSet, R.styleable.InputMethod);
                        String string = obtainAttributes.getString(1);
                        int i3 = 3;
                        boolean z = obtainAttributes.getBoolean(3, false);
                        int resourceId = obtainAttributes.getResourceId(0, 0);
                        boolean z2 = obtainAttributes.getBoolean(2, false);
                        obtainAttributes.recycle();
                        int depth = xmlResourceParser.getDepth();
                        boolean z3 = true;
                        while (true) {
                            int next2 = xmlResourceParser.next();
                            if ((next2 != i3 || xmlResourceParser.getDepth() > depth) && next2 != i2) {
                                if (next2 == i) {
                                    if (!"subtype".equals(xmlResourceParser.getName())) {
                                        throw new XmlPullParserException("Meta-data in input-method does not start with subtype tag");
                                    }
                                    TypedArray obtainAttributes2 = resourcesForApplication.obtainAttributes(asAttributeSet, R.styleable.InputMethod_Subtype);
                                    Resources resources = resourcesForApplication;
                                    InputMethodSubtype build = new InputMethodSubtype.InputMethodSubtypeBuilder().setSubtypeNameResId(obtainAttributes2.getResourceId(0, 0)).setSubtypeIconResId(obtainAttributes2.getResourceId(1, 0)).setLanguageTag(obtainAttributes2.getString(9)).setSubtypeLocale(obtainAttributes2.getString(2)).setSubtypeMode(obtainAttributes2.getString(3)).setSubtypeExtraValue(obtainAttributes2.getString(4)).setIsAuxiliary(obtainAttributes2.getBoolean(5, false)).setOverridesImplicitlyEnabledSubtype(obtainAttributes2.getBoolean(6, false)).setSubtypeId(obtainAttributes2.getInt(7, 0)).setIsAsciiCapable(obtainAttributes2.getBoolean(8, false)).build();
                                    z3 = build.isAuxiliary() ? z3 : false;
                                    arrayList.add(build);
                                    i2 = 1;
                                    resourcesForApplication = resources;
                                    i = 2;
                                }
                                i3 = 3;
                            }
                        }
                        if (xmlResourceParser != null) {
                            xmlResourceParser.close();
                        }
                        boolean z4 = arrayList.size() == 0 ? false : z3;
                        if (list != null) {
                            int size = list.size();
                            for (int i4 = 0; i4 < size; i4++) {
                                InputMethodSubtype inputMethodSubtype = list.get(i4);
                                if (!arrayList.contains(inputMethodSubtype)) {
                                    arrayList.add(inputMethodSubtype);
                                } else {
                                    Slog.w(TAG, "Duplicated subtype definition found: " + inputMethodSubtype.getLocale() + ", " + inputMethodSubtype.getMode());
                                }
                            }
                        }
                        this.mSubtypes = new InputMethodSubtypeArray(arrayList);
                        this.mSettingsActivityName = string;
                        this.mIsDefaultResId = resourceId;
                        this.mIsAuxIme = z4;
                        this.mSupportsSwitchingToNextInputMethod = z2;
                        this.mIsVrOnly = z;
                    } catch (Throwable th) {
                        th = th;
                        if (xmlResourceParser != null) {
                            xmlResourceParser.close();
                        }
                        throw th;
                    }
                } catch (PackageManager.NameNotFoundException | IndexOutOfBoundsException | NumberFormatException unused) {
                    xmlResourceParser2 = xmlResourceParser;
                    throw new XmlPullParserException("Unable to create context for: " + serviceInfo.packageName);
                }
            } catch (PackageManager.NameNotFoundException | IndexOutOfBoundsException | NumberFormatException unused2) {
            }
        } catch (Throwable th2) {
            th = th2;
            xmlResourceParser = xmlResourceParser2;
        }
    }

    InputMethodInfo(Parcel parcel) {
        this.mId = parcel.readString();
        this.mSettingsActivityName = parcel.readString();
        this.mIsDefaultResId = parcel.readInt();
        this.mIsAuxIme = parcel.readInt() == 1;
        this.mSupportsSwitchingToNextInputMethod = parcel.readInt() == 1;
        this.mIsVrOnly = parcel.readBoolean();
        this.mService = (ResolveInfo) ResolveInfo.CREATOR.createFromParcel(parcel);
        this.mSubtypes = new InputMethodSubtypeArray(parcel);
        this.mForceDefault = false;
    }

    public InputMethodInfo(String str, String str2, CharSequence charSequence, String str3) {
        this(buildDummyResolveInfo(str, str2, charSequence), false, str3, null, 0, false, true, false);
    }

    public InputMethodInfo(ResolveInfo resolveInfo, boolean z, String str, List<InputMethodSubtype> list, int i, boolean z2) {
        this(resolveInfo, z, str, list, i, z2, true, false);
    }

    public InputMethodInfo(ResolveInfo resolveInfo, boolean z, String str, List<InputMethodSubtype> list, int i, boolean z2, boolean z3, boolean z4) {
        ServiceInfo serviceInfo = resolveInfo.serviceInfo;
        this.mService = resolveInfo;
        this.mId = new ComponentName(serviceInfo.packageName, serviceInfo.name).flattenToShortString();
        this.mSettingsActivityName = str;
        this.mIsDefaultResId = i;
        this.mIsAuxIme = z;
        this.mSubtypes = new InputMethodSubtypeArray(list);
        this.mForceDefault = z2;
        this.mSupportsSwitchingToNextInputMethod = z3;
        this.mIsVrOnly = z4;
    }

    private static ResolveInfo buildDummyResolveInfo(String str, String str2, CharSequence charSequence) {
        ResolveInfo resolveInfo = new ResolveInfo();
        ServiceInfo serviceInfo = new ServiceInfo();
        ApplicationInfo applicationInfo = new ApplicationInfo();
        applicationInfo.packageName = str;
        applicationInfo.enabled = true;
        serviceInfo.applicationInfo = applicationInfo;
        serviceInfo.enabled = true;
        serviceInfo.packageName = str;
        serviceInfo.name = str2;
        serviceInfo.exported = true;
        serviceInfo.nonLocalizedLabel = charSequence;
        resolveInfo.serviceInfo = serviceInfo;
        return resolveInfo;
    }

    public String getId() {
        return this.mId;
    }

    public String getPackageName() {
        return this.mService.serviceInfo.packageName;
    }

    public String getServiceName() {
        return this.mService.serviceInfo.name;
    }

    public ServiceInfo getServiceInfo() {
        return this.mService.serviceInfo;
    }

    public ComponentName getComponent() {
        return new ComponentName(this.mService.serviceInfo.packageName, this.mService.serviceInfo.name);
    }

    public CharSequence loadLabel(PackageManager packageManager) {
        return this.mService.loadLabel(packageManager);
    }

    public Drawable loadIcon(PackageManager packageManager) {
        return this.mService.loadIcon(packageManager);
    }

    public String getSettingsActivity() {
        return this.mSettingsActivityName;
    }

    public boolean isVrOnly() {
        return this.mIsVrOnly;
    }

    public int getSubtypeCount() {
        return this.mSubtypes.getCount();
    }

    public InputMethodSubtype getSubtypeAt(int i) {
        return this.mSubtypes.get(i);
    }

    public int getIsDefaultResourceId() {
        return this.mIsDefaultResId;
    }

    public boolean isDefault(Context context) {
        if (this.mForceDefault) {
            return true;
        }
        try {
            if (getIsDefaultResourceId() == 0) {
                return false;
            }
            return context.createPackageContext(getPackageName(), 0).getResources().getBoolean(getIsDefaultResourceId());
        } catch (PackageManager.NameNotFoundException | Resources.NotFoundException unused) {
            return false;
        }
    }

    public void dump(Printer printer, String str) {
        printer.println(str + "mId=" + this.mId + " mSettingsActivityName=" + this.mSettingsActivityName + " mIsVrOnly=" + this.mIsVrOnly + " mSupportsSwitchingToNextInputMethod=" + this.mSupportsSwitchingToNextInputMethod);
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("mIsDefaultResId=0x");
        sb.append(Integer.toHexString(this.mIsDefaultResId));
        printer.println(sb.toString());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append("Service:");
        printer.println(sb2.toString());
        this.mService.dump(printer, str + "  ");
    }

    public String toString() {
        return "InputMethodInfo{" + this.mId + ", settings: " + this.mSettingsActivityName + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof InputMethodInfo)) {
            return this.mId.equals(((InputMethodInfo) obj).mId);
        }
        return false;
    }

    public int hashCode() {
        return this.mId.hashCode();
    }

    public boolean isAuxiliaryIme() {
        return this.mIsAuxIme;
    }

    public boolean supportsSwitchingToNextInputMethod() {
        return this.mSupportsSwitchingToNextInputMethod;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mId);
        parcel.writeString(this.mSettingsActivityName);
        parcel.writeInt(this.mIsDefaultResId);
        parcel.writeInt(this.mIsAuxIme ? 1 : 0);
        parcel.writeInt(this.mSupportsSwitchingToNextInputMethod ? 1 : 0);
        parcel.writeBoolean(this.mIsVrOnly);
        this.mService.writeToParcel(parcel, i);
        this.mSubtypes.writeToParcel(parcel);
    }
}
