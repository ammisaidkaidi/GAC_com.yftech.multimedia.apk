package android.nfc.cardemulation;

import android.app.Activity;
import android.app.ActivityThread;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.IPackageManager;
import android.nfc.INfcCardEmulation;
import android.nfc.NfcAdapter;
import android.os.RemoteException;
import android.provider.Settings;
import android.util.Log;
import java.util.HashMap;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public final class CardEmulation {
    public static final String ACTION_CHANGE_DEFAULT = "android.nfc.cardemulation.action.ACTION_CHANGE_DEFAULT";
    public static final String CATEGORY_OTHER = "other";
    public static final String CATEGORY_PAYMENT = "payment";
    public static final String EXTRA_CATEGORY = "category";
    public static final String EXTRA_SERVICE_COMPONENT = "component";
    public static final int SELECTION_MODE_ALWAYS_ASK = 1;
    public static final int SELECTION_MODE_ASK_IF_CONFLICT = 2;
    public static final int SELECTION_MODE_PREFER_DEFAULT = 0;
    static final String TAG = "CardEmulation";
    static HashMap<Context, CardEmulation> sCardEmus = new HashMap<>();
    static boolean sIsInitialized = false;
    static INfcCardEmulation sService;
    final Context mContext;

    private CardEmulation(Context context, INfcCardEmulation iNfcCardEmulation) {
        this.mContext = context.getApplicationContext();
        sService = iNfcCardEmulation;
    }

    public static synchronized CardEmulation getInstance(NfcAdapter nfcAdapter) {
        CardEmulation cardEmulation;
        synchronized (CardEmulation.class) {
            if (nfcAdapter == null) {
                throw new NullPointerException("NfcAdapter is null");
            }
            Context context = nfcAdapter.getContext();
            if (context == null) {
                Log.e(TAG, "NfcAdapter context is null.");
                throw new UnsupportedOperationException();
            }
            if (!sIsInitialized) {
                IPackageManager packageManager = ActivityThread.getPackageManager();
                if (packageManager == null) {
                    Log.e(TAG, "Cannot get PackageManager");
                    throw new UnsupportedOperationException();
                }
                try {
                    if (!packageManager.hasSystemFeature("android.hardware.nfc.hce", 0)) {
                        Log.e(TAG, "This device does not support card emulation");
                        throw new UnsupportedOperationException();
                    }
                    sIsInitialized = true;
                } catch (RemoteException unused) {
                    Log.e(TAG, "PackageManager query failed.");
                    throw new UnsupportedOperationException();
                }
            }
            cardEmulation = sCardEmus.get(context);
            if (cardEmulation == null) {
                INfcCardEmulation cardEmulationService = nfcAdapter.getCardEmulationService();
                if (cardEmulationService == null) {
                    Log.e(TAG, "This device does not implement the INfcCardEmulation interface.");
                    throw new UnsupportedOperationException();
                }
                cardEmulation = new CardEmulation(context, cardEmulationService);
                sCardEmus.put(context, cardEmulation);
            }
        }
        return cardEmulation;
    }

    public boolean isDefaultServiceForCategory(ComponentName componentName, String str) {
        try {
            return sService.isDefaultServiceForCategory(this.mContext.getUserId(), componentName, str);
        } catch (RemoteException unused) {
            recoverService();
            if (sService == null) {
                Log.e(TAG, "Failed to recover CardEmulationService.");
                return false;
            }
            try {
                return sService.isDefaultServiceForCategory(this.mContext.getUserId(), componentName, str);
            } catch (RemoteException unused2) {
                Log.e(TAG, "Failed to recover CardEmulationService.");
                return false;
            }
        }
    }

    public boolean isDefaultServiceForAid(ComponentName componentName, String str) {
        try {
            return sService.isDefaultServiceForAid(this.mContext.getUserId(), componentName, str);
        } catch (RemoteException unused) {
            recoverService();
            if (sService == null) {
                Log.e(TAG, "Failed to recover CardEmulationService.");
                return false;
            }
            try {
                return sService.isDefaultServiceForAid(this.mContext.getUserId(), componentName, str);
            } catch (RemoteException unused2) {
                Log.e(TAG, "Failed to reach CardEmulationService.");
                return false;
            }
        }
    }

    public boolean categoryAllowsForegroundPreference(String str) {
        if (!CATEGORY_PAYMENT.equals(str)) {
            return true;
        }
        try {
            return Settings.Secure.getInt(this.mContext.getContentResolver(), "nfc_payment_foreground") != 0;
        } catch (Settings.SettingNotFoundException unused) {
            return false;
        }
    }

    public int getSelectionModeForCategory(String str) {
        if (CATEGORY_PAYMENT.equals(str)) {
            return Settings.Secure.getString(this.mContext.getContentResolver(), "nfc_payment_default_component") != null ? 0 : 1;
        }
        return 2;
    }

    public boolean registerAidsForService(ComponentName componentName, String str, List<String> list) {
        AidGroup aidGroup = new AidGroup(list, str);
        try {
            return sService.registerAidGroupForService(this.mContext.getUserId(), componentName, aidGroup);
        } catch (RemoteException unused) {
            recoverService();
            if (sService == null) {
                Log.e(TAG, "Failed to recover CardEmulationService.");
                return false;
            }
            try {
                return sService.registerAidGroupForService(this.mContext.getUserId(), componentName, aidGroup);
            } catch (RemoteException unused2) {
                Log.e(TAG, "Failed to reach CardEmulationService.");
                return false;
            }
        }
    }

    public List<String> getAidsForService(ComponentName componentName, String str) {
        try {
            AidGroup aidGroupForService = sService.getAidGroupForService(this.mContext.getUserId(), componentName, str);
            if (aidGroupForService != null) {
                return aidGroupForService.getAids();
            }
            return null;
        } catch (RemoteException unused) {
            recoverService();
            if (sService == null) {
                Log.e(TAG, "Failed to recover CardEmulationService.");
                return null;
            }
            try {
                AidGroup aidGroupForService2 = sService.getAidGroupForService(this.mContext.getUserId(), componentName, str);
                if (aidGroupForService2 != null) {
                    return aidGroupForService2.getAids();
                }
                return null;
            } catch (RemoteException unused2) {
                Log.e(TAG, "Failed to recover CardEmulationService.");
                return null;
            }
        }
    }

    public boolean removeAidsForService(ComponentName componentName, String str) {
        try {
            return sService.removeAidGroupForService(this.mContext.getUserId(), componentName, str);
        } catch (RemoteException unused) {
            recoverService();
            if (sService == null) {
                Log.e(TAG, "Failed to recover CardEmulationService.");
                return false;
            }
            try {
                return sService.removeAidGroupForService(this.mContext.getUserId(), componentName, str);
            } catch (RemoteException unused2) {
                Log.e(TAG, "Failed to reach CardEmulationService.");
                return false;
            }
        }
    }

    public boolean setPreferredService(Activity activity, ComponentName componentName) {
        if (activity == null || componentName == null) {
            throw new NullPointerException("activity or service or category is null");
        }
        if (!activity.isResumed()) {
            throw new IllegalArgumentException("Activity must be resumed.");
        }
        try {
            return sService.setPreferredService(componentName);
        } catch (RemoteException unused) {
            recoverService();
            if (sService == null) {
                Log.e(TAG, "Failed to recover CardEmulationService.");
                return false;
            }
            try {
                return sService.setPreferredService(componentName);
            } catch (RemoteException unused2) {
                Log.e(TAG, "Failed to reach CardEmulationService.");
                return false;
            }
        }
    }

    public boolean unsetPreferredService(Activity activity) {
        if (activity == null) {
            throw new NullPointerException("activity is null");
        }
        if (!activity.isResumed()) {
            throw new IllegalArgumentException("Activity must be resumed.");
        }
        try {
            return sService.unsetPreferredService();
        } catch (RemoteException unused) {
            recoverService();
            if (sService == null) {
                Log.e(TAG, "Failed to recover CardEmulationService.");
                return false;
            }
            try {
                return sService.unsetPreferredService();
            } catch (RemoteException unused2) {
                Log.e(TAG, "Failed to reach CardEmulationService.");
                return false;
            }
        }
    }

    public boolean supportsAidPrefixRegistration() {
        try {
            return sService.supportsAidPrefixRegistration();
        } catch (RemoteException unused) {
            recoverService();
            if (sService == null) {
                Log.e(TAG, "Failed to recover CardEmulationService.");
                return false;
            }
            try {
                return sService.supportsAidPrefixRegistration();
            } catch (RemoteException unused2) {
                Log.e(TAG, "Failed to reach CardEmulationService.");
                return false;
            }
        }
    }

    public boolean setDefaultServiceForCategory(ComponentName componentName, String str) {
        try {
            return sService.setDefaultServiceForCategory(this.mContext.getUserId(), componentName, str);
        } catch (RemoteException unused) {
            recoverService();
            if (sService == null) {
                Log.e(TAG, "Failed to recover CardEmulationService.");
                return false;
            }
            try {
                return sService.setDefaultServiceForCategory(this.mContext.getUserId(), componentName, str);
            } catch (RemoteException unused2) {
                Log.e(TAG, "Failed to reach CardEmulationService.");
                return false;
            }
        }
    }

    public boolean setDefaultForNextTap(ComponentName componentName) {
        try {
            return sService.setDefaultForNextTap(this.mContext.getUserId(), componentName);
        } catch (RemoteException unused) {
            recoverService();
            if (sService == null) {
                Log.e(TAG, "Failed to recover CardEmulationService.");
                return false;
            }
            try {
                return sService.setDefaultForNextTap(this.mContext.getUserId(), componentName);
            } catch (RemoteException unused2) {
                Log.e(TAG, "Failed to reach CardEmulationService.");
                return false;
            }
        }
    }

    public List<ApduServiceInfo> getServices(String str) {
        try {
            return sService.getServices(this.mContext.getUserId(), str);
        } catch (RemoteException unused) {
            recoverService();
            if (sService == null) {
                Log.e(TAG, "Failed to recover CardEmulationService.");
                return null;
            }
            try {
                return sService.getServices(this.mContext.getUserId(), str);
            } catch (RemoteException unused2) {
                Log.e(TAG, "Failed to reach CardEmulationService.");
                return null;
            }
        }
    }

    public static boolean isValidAid(String str) {
        if (str == null) {
            return false;
        }
        if ((str.endsWith("*") || str.endsWith("#")) && str.length() % 2 == 0) {
            Log.e(TAG, "AID " + str + " is not a valid AID.");
            return false;
        }
        if (!str.endsWith("*") && !str.endsWith("#") && str.length() % 2 != 0) {
            Log.e(TAG, "AID " + str + " is not a valid AID.");
            return false;
        }
        if (str.matches("[0-9A-Fa-f]{10,32}\\*?\\#?")) {
            return true;
        }
        Log.e(TAG, "AID " + str + " is not a valid AID.");
        return false;
    }

    void recoverService() {
        sService = NfcAdapter.getDefaultAdapter(this.mContext).getCardEmulationService();
    }
}
