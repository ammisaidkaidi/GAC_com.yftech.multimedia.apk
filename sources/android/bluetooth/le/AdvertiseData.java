package android.bluetooth.le;

import android.os.Parcel;
import android.os.ParcelUuid;
import android.os.Parcelable;
import android.util.ArrayMap;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: /home/user/work/dex/classes.dex */
public final class AdvertiseData implements Parcelable {
    public static final Parcelable.Creator<AdvertiseData> CREATOR = new Parcelable.Creator<AdvertiseData>() { // from class: android.bluetooth.le.AdvertiseData.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AdvertiseData[] newArray(int i) {
            return new AdvertiseData[i];
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AdvertiseData createFromParcel(Parcel parcel) {
            Builder builder = new Builder();
            Iterator it = parcel.createTypedArrayList(ParcelUuid.CREATOR).iterator();
            while (it.hasNext()) {
                builder.addServiceUuid((ParcelUuid) it.next());
            }
            int readInt = parcel.readInt();
            for (int i = 0; i < readInt; i++) {
                builder.addManufacturerData(parcel.readInt(), parcel.createByteArray());
            }
            int readInt2 = parcel.readInt();
            for (int i2 = 0; i2 < readInt2; i2++) {
                builder.addServiceData((ParcelUuid) parcel.readTypedObject(ParcelUuid.CREATOR), parcel.createByteArray());
            }
            builder.setIncludeTxPowerLevel(parcel.readByte() == 1);
            builder.setIncludeDeviceName(parcel.readByte() == 1);
            return builder.build();
        }
    };
    private final boolean mIncludeDeviceName;
    private final boolean mIncludeTxPowerLevel;
    private final SparseArray<byte[]> mManufacturerSpecificData;
    private final Map<ParcelUuid, byte[]> mServiceData;
    private final List<ParcelUuid> mServiceUuids;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    private AdvertiseData(List<ParcelUuid> list, SparseArray<byte[]> sparseArray, Map<ParcelUuid, byte[]> map, boolean z, boolean z2) {
        this.mServiceUuids = list;
        this.mManufacturerSpecificData = sparseArray;
        this.mServiceData = map;
        this.mIncludeTxPowerLevel = z;
        this.mIncludeDeviceName = z2;
    }

    public List<ParcelUuid> getServiceUuids() {
        return this.mServiceUuids;
    }

    public SparseArray<byte[]> getManufacturerSpecificData() {
        return this.mManufacturerSpecificData;
    }

    public Map<ParcelUuid, byte[]> getServiceData() {
        return this.mServiceData;
    }

    public boolean getIncludeTxPowerLevel() {
        return this.mIncludeTxPowerLevel;
    }

    public boolean getIncludeDeviceName() {
        return this.mIncludeDeviceName;
    }

    public int hashCode() {
        return Objects.hash(this.mServiceUuids, this.mManufacturerSpecificData, this.mServiceData, Boolean.valueOf(this.mIncludeDeviceName), Boolean.valueOf(this.mIncludeTxPowerLevel));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AdvertiseData advertiseData = (AdvertiseData) obj;
        return Objects.equals(this.mServiceUuids, advertiseData.mServiceUuids) && BluetoothLeUtils.equals(this.mManufacturerSpecificData, advertiseData.mManufacturerSpecificData) && BluetoothLeUtils.equals(this.mServiceData, advertiseData.mServiceData) && this.mIncludeDeviceName == advertiseData.mIncludeDeviceName && this.mIncludeTxPowerLevel == advertiseData.mIncludeTxPowerLevel;
    }

    public String toString() {
        return "AdvertiseData [mServiceUuids=" + this.mServiceUuids + ", mManufacturerSpecificData=" + BluetoothLeUtils.toString(this.mManufacturerSpecificData) + ", mServiceData=" + BluetoothLeUtils.toString(this.mServiceData) + ", mIncludeTxPowerLevel=" + this.mIncludeTxPowerLevel + ", mIncludeDeviceName=" + this.mIncludeDeviceName + "]";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedArray((ParcelUuid[]) this.mServiceUuids.toArray(new ParcelUuid[this.mServiceUuids.size()]), i);
        parcel.writeInt(this.mManufacturerSpecificData.size());
        for (int i2 = 0; i2 < this.mManufacturerSpecificData.size(); i2++) {
            parcel.writeInt(this.mManufacturerSpecificData.keyAt(i2));
            parcel.writeByteArray(this.mManufacturerSpecificData.valueAt(i2));
        }
        parcel.writeInt(this.mServiceData.size());
        for (ParcelUuid parcelUuid : this.mServiceData.keySet()) {
            parcel.writeTypedObject(parcelUuid, i);
            parcel.writeByteArray(this.mServiceData.get(parcelUuid));
        }
        parcel.writeByte(getIncludeTxPowerLevel() ? (byte) 1 : (byte) 0);
        parcel.writeByte(getIncludeDeviceName() ? (byte) 1 : (byte) 0);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class Builder {
        private boolean mIncludeDeviceName;
        private boolean mIncludeTxPowerLevel;
        private List<ParcelUuid> mServiceUuids = new ArrayList();
        private SparseArray<byte[]> mManufacturerSpecificData = new SparseArray<>();
        private Map<ParcelUuid, byte[]> mServiceData = new ArrayMap();

        public Builder addServiceUuid(ParcelUuid parcelUuid) {
            if (parcelUuid == null) {
                throw new IllegalArgumentException("serivceUuids are null");
            }
            this.mServiceUuids.add(parcelUuid);
            return this;
        }

        public Builder addServiceData(ParcelUuid parcelUuid, byte[] bArr) {
            if (parcelUuid == null || bArr == null) {
                throw new IllegalArgumentException("serviceDataUuid or serviceDataUuid is null");
            }
            this.mServiceData.put(parcelUuid, bArr);
            return this;
        }

        public Builder addManufacturerData(int i, byte[] bArr) {
            if (i >= 0) {
                if (bArr == null) {
                    throw new IllegalArgumentException("manufacturerSpecificData is null");
                }
                this.mManufacturerSpecificData.put(i, bArr);
                return this;
            }
            throw new IllegalArgumentException("invalid manufacturerId - " + i);
        }

        public Builder setIncludeTxPowerLevel(boolean z) {
            this.mIncludeTxPowerLevel = z;
            return this;
        }

        public Builder setIncludeDeviceName(boolean z) {
            this.mIncludeDeviceName = z;
            return this;
        }

        public AdvertiseData build() {
            return new AdvertiseData(this.mServiceUuids, this.mManufacturerSpecificData, this.mServiceData, this.mIncludeTxPowerLevel, this.mIncludeDeviceName);
        }
    }
}
