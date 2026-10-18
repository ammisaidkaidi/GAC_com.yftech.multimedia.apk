package android.service.autofill;

import android.app.AppGlobals;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.metrics.LogMaker;
import android.os.RemoteException;
import android.telephony.SubscriptionPlan;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import android.util.Xml;
import com.android.internal.R;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.util.XmlUtils;
import java.io.IOException;
import java.io.PrintWriter;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: /home/user/work/dex/classes2.dex */
public final class AutofillServiceInfo {
    private static final String TAG = "AutofillServiceInfo";
    private static final String TAG_AUTOFILL_SERVICE = "autofill-service";
    private static final String TAG_COMPATIBILITY_PACKAGE = "compatibility-package";
    private final ArrayMap<String, Long> mCompatibilityPackages;
    private final ServiceInfo mServiceInfo;
    private final String mSettingsActivity;

    private static ServiceInfo getServiceInfoOrThrow(ComponentName componentName, int i) throws PackageManager.NameNotFoundException {
        try {
            ServiceInfo serviceInfo = AppGlobals.getPackageManager().getServiceInfo(componentName, 128, i);
            if (serviceInfo != null) {
                return serviceInfo;
            }
        } catch (RemoteException unused) {
        }
        throw new PackageManager.NameNotFoundException(componentName.toString());
    }

    public AutofillServiceInfo(Context context, ComponentName componentName, int i) throws PackageManager.NameNotFoundException {
        this(context, getServiceInfoOrThrow(componentName, i));
    }

    public AutofillServiceInfo(Context context, ServiceInfo serviceInfo) {
        String str;
        TypedArray typedArray;
        if (!"android.permission.BIND_AUTOFILL_SERVICE".equals(serviceInfo.permission)) {
            if ("android.permission.BIND_AUTOFILL".equals(serviceInfo.permission)) {
                Log.w(TAG, "AutofillService from '" + serviceInfo.packageName + "' uses unsupported permission android.permission.BIND_AUTOFILL. It works for now, but might not be supported on future releases");
                new MetricsLogger().write(new LogMaker(1289).setPackageName(serviceInfo.packageName));
            } else {
                Log.w(TAG, "AutofillService from '" + serviceInfo.packageName + "' does not require permission android.permission.BIND_AUTOFILL_SERVICE");
                throw new SecurityException("Service does not require permission android.permission.BIND_AUTOFILL_SERVICE");
            }
        }
        this.mServiceInfo = serviceInfo;
        XmlResourceParser loadXmlMetaData = serviceInfo.loadXmlMetaData(context.getPackageManager(), AutofillService.SERVICE_META_DATA);
        ArrayMap<String, Long> arrayMap = null;
        if (loadXmlMetaData == null) {
            this.mSettingsActivity = null;
            this.mCompatibilityPackages = null;
            return;
        }
        try {
            Resources resourcesForApplication = context.getPackageManager().getResourcesForApplication(serviceInfo.applicationInfo);
            for (int i = 0; i != 1 && i != 2; i = loadXmlMetaData.next()) {
            }
            if (TAG_AUTOFILL_SERVICE.equals(loadXmlMetaData.getName())) {
                try {
                    typedArray = resourcesForApplication.obtainAttributes(Xml.asAttributeSet(loadXmlMetaData), R.styleable.AutofillService);
                    try {
                        str = typedArray.getString(0);
                        if (typedArray != null) {
                            try {
                                typedArray.recycle();
                            } catch (PackageManager.NameNotFoundException | IOException | XmlPullParserException e) {
                                e = e;
                                Log.e(TAG, "Error parsing auto fill service meta-data", e);
                                this.mSettingsActivity = str;
                                this.mCompatibilityPackages = arrayMap;
                            }
                        }
                        arrayMap = parseCompatibilityPackages(loadXmlMetaData, resourcesForApplication);
                    } catch (Throwable th) {
                        th = th;
                        if (typedArray != null) {
                            typedArray.recycle();
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    typedArray = null;
                }
            } else {
                Log.e(TAG, "Meta-data does not start with autofill-service tag");
                str = null;
            }
        } catch (PackageManager.NameNotFoundException | IOException | XmlPullParserException e2) {
            e = e2;
            str = null;
        }
        this.mSettingsActivity = str;
        this.mCompatibilityPackages = arrayMap;
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x008e, code lost:
    
        if (r2 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00aa, code lost:
    
        if (r2 == null) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0056, code lost:
    
        if (r2 != null) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private ArrayMap<String, Long> parseCompatibilityPackages(XmlPullParser xmlPullParser, Resources resources) throws IOException, XmlPullParserException {
        TypedArray typedArray;
        Long valueOf;
        int depth = xmlPullParser.getDepth();
        ArrayMap<String, Long> arrayMap = null;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || (next == 3 && xmlPullParser.getDepth() <= depth)) {
                break;
            }
            if (next != 3 && next != 4 && TAG_COMPATIBILITY_PACKAGE.equals(xmlPullParser.getName())) {
                try {
                    typedArray = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.AutofillService_CompatibilityPackage);
                    try {
                        String string = typedArray.getString(0);
                        if (TextUtils.isEmpty(string)) {
                            Log.e(TAG, "Invalid compatibility package:" + string);
                            XmlUtils.skipCurrentTag(xmlPullParser);
                        } else {
                            String string2 = typedArray.getString(1);
                            if (string2 != null) {
                                try {
                                    valueOf = Long.valueOf(Long.parseLong(string2));
                                    if (valueOf.longValue() < 0) {
                                        Log.e(TAG, "Invalid compatibility max version code:" + valueOf);
                                        XmlUtils.skipCurrentTag(xmlPullParser);
                                    }
                                } catch (NumberFormatException unused) {
                                    Log.e(TAG, "Invalid compatibility max version code:" + string2);
                                    XmlUtils.skipCurrentTag(xmlPullParser);
                                }
                            } else {
                                valueOf = Long.valueOf(SubscriptionPlan.BYTES_UNLIMITED);
                            }
                            if (arrayMap == null) {
                                arrayMap = new ArrayMap<>();
                            }
                            arrayMap.put(string, valueOf);
                            XmlUtils.skipCurrentTag(xmlPullParser);
                            if (typedArray != null) {
                                typedArray.recycle();
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        XmlUtils.skipCurrentTag(xmlPullParser);
                        if (typedArray != null) {
                            typedArray.recycle();
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    typedArray = null;
                }
            }
        }
        typedArray.recycle();
        return arrayMap;
    }

    public ServiceInfo getServiceInfo() {
        return this.mServiceInfo;
    }

    public String getSettingsActivity() {
        return this.mSettingsActivity;
    }

    public ArrayMap<String, Long> getCompatibilityPackages() {
        return this.mCompatibilityPackages;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("[");
        sb.append(this.mServiceInfo);
        sb.append(", settings:");
        sb.append(this.mSettingsActivity);
        sb.append(", hasCompatPckgs:");
        sb.append((this.mCompatibilityPackages == null || this.mCompatibilityPackages.isEmpty()) ? false : true);
        sb.append("]");
        return sb.toString();
    }

    public void dump(String str, PrintWriter printWriter) {
        printWriter.print(str);
        printWriter.print("Component: ");
        printWriter.println(getServiceInfo().getComponentName());
        printWriter.print(str);
        printWriter.print("Settings: ");
        printWriter.println(this.mSettingsActivity);
        printWriter.print(str);
        printWriter.print("Compat packages: ");
        printWriter.println(this.mCompatibilityPackages);
    }
}
