package android.bluetooth;

import android.net.wifi.WifiEnterpriseConfig;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public final class BluetoothAvrcpPlayerSettings implements Parcelable {
    public static final Parcelable.Creator<BluetoothAvrcpPlayerSettings> CREATOR = new Parcelable.Creator<BluetoothAvrcpPlayerSettings>() { // from class: android.bluetooth.BluetoothAvrcpPlayerSettings.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothAvrcpPlayerSettings createFromParcel(Parcel parcel) {
            return new BluetoothAvrcpPlayerSettings(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothAvrcpPlayerSettings[] newArray(int i) {
            return new BluetoothAvrcpPlayerSettings[i];
        }
    };
    public static final int SETTING_EQUALIZER = 1;
    public static final int SETTING_REPEAT = 2;
    public static final int SETTING_SCAN = 8;
    public static final int SETTING_SHUFFLE = 4;
    public static final int STATE_ALL_TRACK = 3;
    public static final int STATE_GROUP = 4;
    public static final int STATE_INVALID = -1;
    public static final int STATE_OFF = 0;
    public static final int STATE_ON = 1;
    public static final int STATE_SINGLE_TRACK = 2;
    public static final String TAG = "BluetoothAvrcpPlayerSettings";
    private int mSettings;
    private Map<Integer, Integer> mSettingsValue;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mSettings);
        parcel.writeInt(this.mSettingsValue.size());
        Iterator<Integer> it = this.mSettingsValue.keySet().iterator();
        while (it.hasNext()) {
            int intValue = it.next().intValue();
            parcel.writeInt(intValue);
            parcel.writeInt(this.mSettingsValue.get(Integer.valueOf(intValue)).intValue());
        }
    }

    private BluetoothAvrcpPlayerSettings(Parcel parcel) {
        this.mSettingsValue = new HashMap();
        this.mSettings = parcel.readInt();
        int readInt = parcel.readInt();
        for (int i = 0; i < readInt; i++) {
            this.mSettingsValue.put(Integer.valueOf(parcel.readInt()), Integer.valueOf(parcel.readInt()));
        }
    }

    public BluetoothAvrcpPlayerSettings(int i) {
        this.mSettingsValue = new HashMap();
        this.mSettings = i;
    }

    public int getSettings() {
        return this.mSettings;
    }

    public void addSettingValue(int i, int i2) {
        if ((this.mSettings & i) == 0) {
            Log.e(TAG, "Setting not supported: " + i + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + this.mSettings);
            throw new IllegalStateException("Setting not supported: " + i);
        }
        this.mSettingsValue.put(Integer.valueOf(i), Integer.valueOf(i2));
    }

    public int getSettingValue(int i) {
        if ((this.mSettings & i) == 0) {
            Log.e(TAG, "Setting not supported: " + i + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + this.mSettings);
            throw new IllegalStateException("Setting not supported: " + i);
        }
        Integer num = this.mSettingsValue.get(Integer.valueOf(i));
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }
}
