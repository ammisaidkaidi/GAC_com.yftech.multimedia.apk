package android.printservice;

import android.annotation.SystemApi;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.util.Xml;
import com.android.internal.R;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

@SystemApi
/* loaded from: /home/user/work/dex/classes2.dex */
public final class PrintServiceInfo implements Parcelable {
    public static final Parcelable.Creator<PrintServiceInfo> CREATOR = new Parcelable.Creator<PrintServiceInfo>() { // from class: android.printservice.PrintServiceInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PrintServiceInfo createFromParcel(Parcel parcel) {
            return new PrintServiceInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PrintServiceInfo[] newArray(int i) {
            return new PrintServiceInfo[i];
        }
    };
    private static final String LOG_TAG = "PrintServiceInfo";
    private static final String TAG_PRINT_SERVICE = "print-service";
    private final String mAddPrintersActivityName;
    private final String mAdvancedPrintOptionsActivityName;
    private final String mId;
    private boolean mIsEnabled;
    private final ResolveInfo mResolveInfo;
    private final String mSettingsActivityName;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public PrintServiceInfo(Parcel parcel) {
        this.mId = parcel.readString();
        this.mIsEnabled = parcel.readByte() != 0;
        this.mResolveInfo = (ResolveInfo) parcel.readParcelable(null);
        this.mSettingsActivityName = parcel.readString();
        this.mAddPrintersActivityName = parcel.readString();
        this.mAdvancedPrintOptionsActivityName = parcel.readString();
    }

    public PrintServiceInfo(ResolveInfo resolveInfo, String str, String str2, String str3) {
        this.mId = new ComponentName(resolveInfo.serviceInfo.packageName, resolveInfo.serviceInfo.name).flattenToString();
        this.mResolveInfo = resolveInfo;
        this.mSettingsActivityName = str;
        this.mAddPrintersActivityName = str2;
        this.mAdvancedPrintOptionsActivityName = str3;
    }

    public ComponentName getComponentName() {
        return new ComponentName(this.mResolveInfo.serviceInfo.packageName, this.mResolveInfo.serviceInfo.name);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00cd, code lost:
    
        if (r0 != null) goto L20;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00b3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static PrintServiceInfo create(Context context, ResolveInfo resolveInfo) {
        String str;
        String str2;
        PackageManager packageManager = context.getPackageManager();
        XmlResourceParser loadXmlMetaData = resolveInfo.serviceInfo.loadXmlMetaData(packageManager, PrintService.SERVICE_META_DATA);
        String str3 = null;
        if (loadXmlMetaData != null) {
            for (int i = 0; i != 1 && i != 2; i = loadXmlMetaData.next()) {
                try {
                    try {
                    } finally {
                        if (loadXmlMetaData != null) {
                            loadXmlMetaData.close();
                        }
                    }
                } catch (PackageManager.NameNotFoundException unused) {
                    str = null;
                    str2 = null;
                    Log.e(LOG_TAG, "Unable to load resources for: " + resolveInfo.serviceInfo.packageName);
                    if (loadXmlMetaData != null) {
                    }
                    return new PrintServiceInfo(resolveInfo, str3, str, str2);
                } catch (IOException e) {
                    e = e;
                    str = null;
                    str2 = null;
                    Log.w(LOG_TAG, "Error reading meta-data:" + e);
                } catch (XmlPullParserException e2) {
                    e = e2;
                    str = null;
                    str2 = null;
                    Log.w(LOG_TAG, "Error reading meta-data:" + e);
                    if (loadXmlMetaData != null) {
                    }
                    return new PrintServiceInfo(resolveInfo, str3, str, str2);
                }
            }
            if (!TAG_PRINT_SERVICE.equals(loadXmlMetaData.getName())) {
                Log.e(LOG_TAG, "Ignoring meta-data that does not start with print-service tag");
                str = null;
                str2 = null;
            } else {
                TypedArray obtainAttributes = packageManager.getResourcesForApplication(resolveInfo.serviceInfo.applicationInfo).obtainAttributes(Xml.asAttributeSet(loadXmlMetaData), R.styleable.PrintService);
                String string = obtainAttributes.getString(0);
                try {
                    str = obtainAttributes.getString(1);
                    try {
                        str2 = obtainAttributes.getString(3);
                        try {
                            obtainAttributes.recycle();
                            str3 = string;
                        } catch (PackageManager.NameNotFoundException unused2) {
                            str3 = string;
                            Log.e(LOG_TAG, "Unable to load resources for: " + resolveInfo.serviceInfo.packageName);
                            if (loadXmlMetaData != null) {
                            }
                            return new PrintServiceInfo(resolveInfo, str3, str, str2);
                        } catch (IOException e3) {
                            e = e3;
                            str3 = string;
                            Log.w(LOG_TAG, "Error reading meta-data:" + e);
                        } catch (XmlPullParserException e4) {
                            e = e4;
                            str3 = string;
                            Log.w(LOG_TAG, "Error reading meta-data:" + e);
                            if (loadXmlMetaData != null) {
                            }
                            return new PrintServiceInfo(resolveInfo, str3, str, str2);
                        }
                    } catch (PackageManager.NameNotFoundException unused3) {
                        str2 = null;
                    } catch (IOException e5) {
                        e = e5;
                        str2 = null;
                    } catch (XmlPullParserException e6) {
                        e = e6;
                        str2 = null;
                    }
                } catch (PackageManager.NameNotFoundException unused4) {
                    str = null;
                    str2 = null;
                } catch (IOException e7) {
                    e = e7;
                    str = null;
                    str2 = null;
                } catch (XmlPullParserException e8) {
                    e = e8;
                    str = null;
                    str2 = null;
                }
            }
        } else {
            str = null;
            str2 = null;
        }
        return new PrintServiceInfo(resolveInfo, str3, str, str2);
    }

    public String getId() {
        return this.mId;
    }

    public boolean isEnabled() {
        return this.mIsEnabled;
    }

    public void setIsEnabled(boolean z) {
        this.mIsEnabled = z;
    }

    public ResolveInfo getResolveInfo() {
        return this.mResolveInfo;
    }

    public String getSettingsActivityName() {
        return this.mSettingsActivityName;
    }

    public String getAddPrintersActivityName() {
        return this.mAddPrintersActivityName;
    }

    public String getAdvancedOptionsActivityName() {
        return this.mAdvancedPrintOptionsActivityName;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mId);
        parcel.writeByte(this.mIsEnabled ? (byte) 1 : (byte) 0);
        parcel.writeParcelable(this.mResolveInfo, 0);
        parcel.writeString(this.mSettingsActivityName);
        parcel.writeString(this.mAddPrintersActivityName);
        parcel.writeString(this.mAdvancedPrintOptionsActivityName);
    }

    public int hashCode() {
        return (this.mId == null ? 0 : this.mId.hashCode()) + 31;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        PrintServiceInfo printServiceInfo = (PrintServiceInfo) obj;
        if (this.mId == null) {
            if (printServiceInfo.mId != null) {
                return false;
            }
        } else if (!this.mId.equals(printServiceInfo.mId)) {
            return false;
        }
        return true;
    }

    public String toString() {
        return "PrintServiceInfo{id=" + this.mId + "isEnabled=" + this.mIsEnabled + ", resolveInfo=" + this.mResolveInfo + ", settingsActivityName=" + this.mSettingsActivityName + ", addPrintersActivityName=" + this.mAddPrintersActivityName + ", advancedPrintOptionsActivityName=" + this.mAdvancedPrintOptionsActivityName + "}";
    }
}
