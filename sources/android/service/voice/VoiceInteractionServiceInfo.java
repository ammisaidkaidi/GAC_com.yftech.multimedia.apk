package android.service.voice;

import android.app.AppGlobals;
import android.content.ComponentName;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import com.android.internal.R;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: /home/user/work/dex/classes2.dex */
public class VoiceInteractionServiceInfo {
    static final String TAG = "VoiceInteractionServiceInfo";
    private String mParseError;
    private String mRecognitionService;
    private ServiceInfo mServiceInfo;
    private String mSessionService;
    private String mSettingsActivity;
    private boolean mSupportsAssist;
    private boolean mSupportsLaunchFromKeyguard;
    private boolean mSupportsLocalInteraction;

    public VoiceInteractionServiceInfo(PackageManager packageManager, ComponentName componentName) throws PackageManager.NameNotFoundException {
        this(packageManager, packageManager.getServiceInfo(componentName, 128));
    }

    public VoiceInteractionServiceInfo(PackageManager packageManager, ComponentName componentName, int i) throws PackageManager.NameNotFoundException {
        this(packageManager, getServiceInfoOrThrow(componentName, i));
    }

    static ServiceInfo getServiceInfoOrThrow(ComponentName componentName, int i) throws PackageManager.NameNotFoundException {
        try {
            ServiceInfo serviceInfo = AppGlobals.getPackageManager().getServiceInfo(componentName, 269222016, i);
            if (serviceInfo != null) {
                return serviceInfo;
            }
        } catch (RemoteException unused) {
        }
        throw new PackageManager.NameNotFoundException(componentName.toString());
    }

    public VoiceInteractionServiceInfo(PackageManager packageManager, ServiceInfo serviceInfo) {
        XmlResourceParser xmlResourceParser;
        int next;
        if (serviceInfo == null) {
            this.mParseError = "Service not available";
            return;
        }
        if (!"android.permission.BIND_VOICE_INTERACTION".equals(serviceInfo.permission)) {
            this.mParseError = "Service does not require permission android.permission.BIND_VOICE_INTERACTION";
            return;
        }
        XmlResourceParser xmlResourceParser2 = null;
        try {
            try {
                xmlResourceParser = serviceInfo.loadXmlMetaData(packageManager, VoiceInteractionService.SERVICE_META_DATA);
            } catch (Throwable th) {
                th = th;
                xmlResourceParser = null;
            }
        } catch (PackageManager.NameNotFoundException e) {
            e = e;
        } catch (IOException e2) {
            e = e2;
        } catch (XmlPullParserException e3) {
            e = e3;
        }
        try {
            if (xmlResourceParser == null) {
                this.mParseError = "No android.voice_interaction meta-data for " + serviceInfo.packageName;
                if (xmlResourceParser != null) {
                    xmlResourceParser.close();
                    return;
                }
                return;
            }
            Resources resourcesForApplication = packageManager.getResourcesForApplication(serviceInfo.applicationInfo);
            AttributeSet asAttributeSet = Xml.asAttributeSet(xmlResourceParser);
            do {
                next = xmlResourceParser.next();
                if (next == 1) {
                    break;
                }
            } while (next != 2);
            if (!"voice-interaction-service".equals(xmlResourceParser.getName())) {
                this.mParseError = "Meta-data does not start with voice-interaction-service tag";
                if (xmlResourceParser != null) {
                    xmlResourceParser.close();
                    return;
                }
                return;
            }
            TypedArray obtainAttributes = resourcesForApplication.obtainAttributes(asAttributeSet, R.styleable.VoiceInteractionService);
            this.mSessionService = obtainAttributes.getString(1);
            this.mRecognitionService = obtainAttributes.getString(2);
            this.mSettingsActivity = obtainAttributes.getString(0);
            this.mSupportsAssist = obtainAttributes.getBoolean(3, false);
            this.mSupportsLaunchFromKeyguard = obtainAttributes.getBoolean(4, false);
            this.mSupportsLocalInteraction = obtainAttributes.getBoolean(5, false);
            obtainAttributes.recycle();
            if (this.mSessionService == null) {
                this.mParseError = "No sessionService specified";
                if (xmlResourceParser != null) {
                    xmlResourceParser.close();
                    return;
                }
                return;
            }
            if (this.mRecognitionService != null) {
                if (xmlResourceParser != null) {
                    xmlResourceParser.close();
                }
                this.mServiceInfo = serviceInfo;
            } else {
                this.mParseError = "No recognitionService specified";
                if (xmlResourceParser != null) {
                    xmlResourceParser.close();
                }
            }
        } catch (PackageManager.NameNotFoundException e4) {
            e = e4;
            xmlResourceParser2 = xmlResourceParser;
            this.mParseError = "Error parsing voice interation service meta-data: " + e;
            Log.w(TAG, "error parsing voice interaction service meta-data", e);
            if (xmlResourceParser2 != null) {
                xmlResourceParser2.close();
            }
        } catch (IOException e5) {
            e = e5;
            xmlResourceParser2 = xmlResourceParser;
            this.mParseError = "Error parsing voice interation service meta-data: " + e;
            Log.w(TAG, "error parsing voice interaction service meta-data", e);
            if (xmlResourceParser2 != null) {
                xmlResourceParser2.close();
            }
        } catch (XmlPullParserException e6) {
            e = e6;
            xmlResourceParser2 = xmlResourceParser;
            this.mParseError = "Error parsing voice interation service meta-data: " + e;
            Log.w(TAG, "error parsing voice interaction service meta-data", e);
            if (xmlResourceParser2 != null) {
                xmlResourceParser2.close();
            }
        } catch (Throwable th2) {
            th = th2;
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
            throw th;
        }
    }

    public String getParseError() {
        return this.mParseError;
    }

    public ServiceInfo getServiceInfo() {
        return this.mServiceInfo;
    }

    public String getSessionService() {
        return this.mSessionService;
    }

    public String getRecognitionService() {
        return this.mRecognitionService;
    }

    public String getSettingsActivity() {
        return this.mSettingsActivity;
    }

    public boolean getSupportsAssist() {
        return this.mSupportsAssist;
    }

    public boolean getSupportsLaunchFromKeyguard() {
        return this.mSupportsLaunchFromKeyguard;
    }

    public boolean getSupportsLocalInteraction() {
        return this.mSupportsLocalInteraction;
    }
}
