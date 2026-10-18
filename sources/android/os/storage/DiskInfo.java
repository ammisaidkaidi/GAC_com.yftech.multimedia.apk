package android.os.storage;

import android.R;
import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.DebugUtils;
import com.android.internal.util.IndentingPrintWriter;
import com.android.internal.util.Preconditions;
import java.io.CharArrayWriter;
import java.util.Objects;

/* loaded from: /home/user/work/dex/classes2.dex */
public class DiskInfo implements Parcelable {
    public static final String ACTION_DISK_SCANNED = "android.os.storage.action.DISK_SCANNED";
    public static final Parcelable.Creator<DiskInfo> CREATOR = new Parcelable.Creator<DiskInfo>() { // from class: android.os.storage.DiskInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DiskInfo createFromParcel(Parcel parcel) {
            return new DiskInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DiskInfo[] newArray(int i) {
            return new DiskInfo[i];
        }
    };
    public static final String EXTRA_DISK_ID = "android.os.storage.extra.DISK_ID";
    public static final String EXTRA_VOLUME_COUNT = "android.os.storage.extra.VOLUME_COUNT";
    public static final int FLAG_ADOPTABLE = 1;
    public static final int FLAG_DEFAULT_PRIMARY = 2;
    public static final int FLAG_SD = 4;
    public static final int FLAG_USB = 8;
    public final int flags;
    public final String id;
    public String label;
    public long size;
    public String sysPath;
    public int volumeCount;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public DiskInfo(String str, int i) {
        this.id = (String) Preconditions.checkNotNull(str);
        this.flags = i;
    }

    public DiskInfo(Parcel parcel) {
        this.id = parcel.readString();
        this.flags = parcel.readInt();
        this.size = parcel.readLong();
        this.label = parcel.readString();
        this.volumeCount = parcel.readInt();
        this.sysPath = parcel.readString();
    }

    public String getId() {
        return this.id;
    }

    private boolean isInteresting(String str) {
        return (TextUtils.isEmpty(str) || str.equalsIgnoreCase("ata") || str.toLowerCase().contains("generic") || str.toLowerCase().startsWith("usb") || str.toLowerCase().startsWith("multiple")) ? false : true;
    }

    public String getDescription() {
        Resources system = Resources.getSystem();
        if ((this.flags & 4) != 0) {
            return isInteresting(this.label) ? system.getString(R.string.permlab_handoverStatus, this.label) : system.getString(R.string.permlab_getTasks);
        }
        if ((this.flags & 8) != 0) {
            return isInteresting(this.label) ? system.getString(R.string.permlab_invokeCarrierSetup, this.label) : system.getString(R.string.permlab_install_shortcut);
        }
        return null;
    }

    public String getShortDescription() {
        Resources system = Resources.getSystem();
        if (isSd()) {
            return system.getString(R.string.permlab_getTasks);
        }
        if (isUsb()) {
            return system.getString(R.string.permlab_install_shortcut);
        }
        return null;
    }

    public boolean isAdoptable() {
        return (this.flags & 1) != 0;
    }

    public boolean isDefaultPrimary() {
        return (this.flags & 2) != 0;
    }

    public boolean isSd() {
        return (this.flags & 4) != 0;
    }

    public boolean isUsb() {
        return (this.flags & 8) != 0;
    }

    public String toString() {
        CharArrayWriter charArrayWriter = new CharArrayWriter();
        dump(new IndentingPrintWriter(charArrayWriter, "    ", 80));
        return charArrayWriter.toString();
    }

    public void dump(IndentingPrintWriter indentingPrintWriter) {
        indentingPrintWriter.println("DiskInfo{" + this.id + "}:");
        indentingPrintWriter.increaseIndent();
        indentingPrintWriter.printPair("flags", DebugUtils.flagsToString(getClass(), "FLAG_", this.flags));
        indentingPrintWriter.printPair("size", Long.valueOf(this.size));
        indentingPrintWriter.printPair("label", this.label);
        indentingPrintWriter.println();
        indentingPrintWriter.printPair("sysPath", this.sysPath);
        indentingPrintWriter.decreaseIndent();
        indentingPrintWriter.println();
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public DiskInfo m0clone() {
        Parcel obtain = Parcel.obtain();
        try {
            writeToParcel(obtain, 0);
            obtain.setDataPosition(0);
            return CREATOR.createFromParcel(obtain);
        } finally {
            obtain.recycle();
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof DiskInfo) {
            return Objects.equals(this.id, ((DiskInfo) obj).id);
        }
        return false;
    }

    public int hashCode() {
        return this.id.hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.id);
        parcel.writeInt(this.flags);
        parcel.writeLong(this.size);
        parcel.writeString(this.label);
        parcel.writeInt(this.volumeCount);
        parcel.writeString(this.sysPath);
    }
}
