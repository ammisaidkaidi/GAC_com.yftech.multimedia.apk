package android.os.storage;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Environment;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.provider.DocumentsContract;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.DebugUtils;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.Menu;
import com.android.internal.util.IndentingPrintWriter;
import com.android.internal.util.Preconditions;
import java.io.CharArrayWriter;
import java.io.File;
import java.util.Comparator;
import java.util.Objects;

/* loaded from: /home/user/work/dex/classes2.dex */
public class VolumeInfo implements Parcelable {
    public static final String ACTION_VOLUME_STATE_CHANGED = "android.os.storage.action.VOLUME_STATE_CHANGED";
    public static final Parcelable.Creator<VolumeInfo> CREATOR;
    private static final String DOCUMENT_AUTHORITY = "com.android.externalstorage.documents";
    private static final String DOCUMENT_ROOT_PRIMARY_EMULATED = "primary";
    public static final String EXTRA_VOLUME_ID = "android.os.storage.extra.VOLUME_ID";
    public static final String EXTRA_VOLUME_STATE = "android.os.storage.extra.VOLUME_STATE";
    public static final String ID_EMULATED_INTERNAL = "emulated";
    public static final String ID_PRIVATE_INTERNAL = "private";
    public static final int MOUNT_FLAG_PRIMARY = 1;
    public static final int MOUNT_FLAG_VISIBLE = 2;
    public static final int STATE_BAD_REMOVAL = 8;
    public static final int STATE_CHECKING = 1;
    public static final int STATE_EJECTING = 5;
    public static final int STATE_FORMATTING = 4;
    public static final int STATE_MOUNTED = 2;
    public static final int STATE_MOUNTED_READ_ONLY = 3;
    public static final int STATE_REMOVED = 7;
    public static final int STATE_UNMOUNTABLE = 6;
    public static final int STATE_UNMOUNTED = 0;
    public static final int TYPE_ASEC = 3;
    public static final int TYPE_EMULATED = 2;
    public static final int TYPE_OBB = 4;
    public static final int TYPE_PRIVATE = 1;
    public static final int TYPE_PUBLIC = 0;
    public final DiskInfo disk;
    public String fsLabel;
    public String fsType;
    public String fsUuid;
    public final String id;
    public String internalPath;
    public int mountFlags;
    public int mountUserId;
    public final String partGuid;
    public String path;
    public int state;
    public final int type;
    private static SparseArray<String> sStateToEnvironment = new SparseArray<>();
    private static ArrayMap<String, String> sEnvironmentToBroadcast = new ArrayMap<>();
    private static SparseIntArray sStateToDescrip = new SparseIntArray();
    private static final boolean ATC_AOSP_ENHANCEMENT = SystemProperties.getBoolean("ro.atc.aosp_enhancement", false);
    private static final Comparator<VolumeInfo> sDescriptionComparator = new Comparator<VolumeInfo>() { // from class: android.os.storage.VolumeInfo.1
        @Override // java.util.Comparator
        public int compare(VolumeInfo volumeInfo, VolumeInfo volumeInfo2) {
            if (VolumeInfo.ID_PRIVATE_INTERNAL.equals(volumeInfo.getId())) {
                return -1;
            }
            if (volumeInfo.getDescription() == null) {
                return 1;
            }
            if (volumeInfo2.getDescription() == null) {
                return -1;
            }
            return volumeInfo.getDescription().compareTo(volumeInfo2.getDescription());
        }
    };

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    static {
        sStateToEnvironment.put(0, Environment.MEDIA_UNMOUNTED);
        sStateToEnvironment.put(1, Environment.MEDIA_CHECKING);
        sStateToEnvironment.put(2, Environment.MEDIA_MOUNTED);
        sStateToEnvironment.put(3, Environment.MEDIA_MOUNTED_READ_ONLY);
        sStateToEnvironment.put(4, Environment.MEDIA_UNMOUNTED);
        sStateToEnvironment.put(5, Environment.MEDIA_EJECTING);
        sStateToEnvironment.put(6, Environment.MEDIA_UNMOUNTABLE);
        sStateToEnvironment.put(7, Environment.MEDIA_REMOVED);
        sStateToEnvironment.put(8, Environment.MEDIA_BAD_REMOVAL);
        sEnvironmentToBroadcast.put(Environment.MEDIA_UNMOUNTED, "android.intent.action.MEDIA_UNMOUNTED");
        sEnvironmentToBroadcast.put(Environment.MEDIA_CHECKING, "android.intent.action.MEDIA_CHECKING");
        sEnvironmentToBroadcast.put(Environment.MEDIA_MOUNTED, "android.intent.action.MEDIA_MOUNTED");
        sEnvironmentToBroadcast.put(Environment.MEDIA_MOUNTED_READ_ONLY, "android.intent.action.MEDIA_MOUNTED");
        sEnvironmentToBroadcast.put(Environment.MEDIA_EJECTING, "android.intent.action.MEDIA_EJECT");
        sEnvironmentToBroadcast.put(Environment.MEDIA_UNMOUNTABLE, "android.intent.action.MEDIA_UNMOUNTABLE");
        sEnvironmentToBroadcast.put(Environment.MEDIA_REMOVED, "android.intent.action.MEDIA_REMOVED");
        sEnvironmentToBroadcast.put(Environment.MEDIA_BAD_REMOVAL, "android.intent.action.MEDIA_BAD_REMOVAL");
        sStateToDescrip.put(0, R.string.config_defaultPictureInPictureScreenEdgeInsets);
        sStateToDescrip.put(1, R.string.config_defaultContentCaptureService);
        sStateToDescrip.put(2, R.string.config_defaultModuleMetadataProvider);
        sStateToDescrip.put(3, R.string.config_defaultNearbySharingComponent);
        sStateToDescrip.put(4, R.string.config_defaultDndAccessPackages);
        sStateToDescrip.put(5, R.string.config_defaultContentSuggestionsService);
        sStateToDescrip.put(6, R.string.config_defaultNetworkScorerPackageName);
        sStateToDescrip.put(7, R.string.config_defaultNetworkRecommendationProviderPackage);
        sStateToDescrip.put(8, R.string.config_defaultBugReportHandlerApp);
        CREATOR = new Parcelable.Creator<VolumeInfo>() { // from class: android.os.storage.VolumeInfo.2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public VolumeInfo createFromParcel(Parcel parcel) {
                return new VolumeInfo(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public VolumeInfo[] newArray(int i) {
                return new VolumeInfo[i];
            }
        };
    }

    public VolumeInfo(String str, int i, DiskInfo diskInfo, String str2) {
        this.mountFlags = 0;
        this.mountUserId = -1;
        this.state = 0;
        this.id = (String) Preconditions.checkNotNull(str);
        this.type = i;
        this.disk = diskInfo;
        this.partGuid = str2;
    }

    public VolumeInfo(Parcel parcel) {
        this.mountFlags = 0;
        this.mountUserId = -1;
        this.state = 0;
        this.id = parcel.readString();
        this.type = parcel.readInt();
        if (parcel.readInt() != 0) {
            this.disk = DiskInfo.CREATOR.createFromParcel(parcel);
        } else {
            this.disk = null;
        }
        this.partGuid = parcel.readString();
        this.mountFlags = parcel.readInt();
        this.mountUserId = parcel.readInt();
        this.state = parcel.readInt();
        this.fsType = parcel.readString();
        this.fsUuid = parcel.readString();
        this.fsLabel = parcel.readString();
        this.path = parcel.readString();
        this.internalPath = parcel.readString();
    }

    public static String getEnvironmentForState(int i) {
        String str = sStateToEnvironment.get(i);
        return str != null ? str : "unknown";
    }

    public static String getBroadcastForEnvironment(String str) {
        return sEnvironmentToBroadcast.get(str);
    }

    public static String getBroadcastForState(int i) {
        return getBroadcastForEnvironment(getEnvironmentForState(i));
    }

    public static Comparator<VolumeInfo> getDescriptionComparator() {
        return sDescriptionComparator;
    }

    public String getId() {
        return this.id;
    }

    public DiskInfo getDisk() {
        return this.disk;
    }

    public String getDiskId() {
        if (this.disk != null) {
            return this.disk.id;
        }
        return null;
    }

    public int getType() {
        return this.type;
    }

    public int getState() {
        return this.state;
    }

    public int getStateDescription() {
        return sStateToDescrip.get(this.state, 0);
    }

    public String getFsUuid() {
        return this.fsUuid;
    }

    public int getMountUserId() {
        return this.mountUserId;
    }

    public String getDescription() {
        if (ID_PRIVATE_INTERNAL.equals(this.id) || ID_EMULATED_INTERNAL.equals(this.id)) {
            return Resources.getSystem().getString(R.string.permlab_getPackageSize);
        }
        if (TextUtils.isEmpty(this.fsLabel)) {
            return null;
        }
        return this.fsLabel;
    }

    public boolean isMountedReadable() {
        return this.state == 2 || this.state == 3;
    }

    public boolean isMountedWritable() {
        return this.state == 2;
    }

    public boolean isPrimary() {
        return (this.mountFlags & 1) != 0;
    }

    public boolean isPrimaryPhysical() {
        return isPrimary() && getType() == 0;
    }

    public boolean isVisible() {
        return (this.mountFlags & 2) != 0;
    }

    public boolean isVisibleForUser(int i) {
        if (this.type == 0 && this.mountUserId == i) {
            return isVisible();
        }
        if (this.type == 2) {
            return isVisible();
        }
        return false;
    }

    public boolean isVisibleForRead(int i) {
        return isVisibleForUser(i);
    }

    public boolean isVisibleForWrite(int i) {
        return isVisibleForUser(i);
    }

    public File getPath() {
        if (this.path != null) {
            return new File(this.path);
        }
        return null;
    }

    public File getInternalPath() {
        if (this.internalPath != null) {
            return new File(this.internalPath);
        }
        return null;
    }

    public File getPathForUser(int i) {
        if (this.path == null) {
            return null;
        }
        if (this.type == 0) {
            return new File(this.path);
        }
        if (this.type == 2) {
            return new File(this.path, Integer.toString(i));
        }
        return null;
    }

    public File getInternalPathForUser(int i) {
        if (ATC_AOSP_ENHANCEMENT && this.path == null) {
            Slog.d("VolumeInfo", "path is not set by Vold yet, use alternate path");
            return new File("/dev/null");
        }
        if (this.type == 0 && this.path != null) {
            return new File(this.path.replace("/storage/", "/mnt/media_rw/"));
        }
        return getPathForUser(i);
    }

    public StorageVolume buildStorageVolume(Context context, int i, boolean z) {
        String bestVolumeDescription;
        String str;
        long j;
        boolean z2;
        StorageManager storageManager = (StorageManager) context.getSystemService(StorageManager.class);
        String environmentForState = z ? Environment.MEDIA_UNMOUNTED : getEnvironmentForState(this.state);
        File pathForUser = getPathForUser(i);
        if (pathForUser == null) {
            pathForUser = new File("/dev/null");
        }
        File file = pathForUser;
        File internalPathForUser = getInternalPathForUser(i);
        if (internalPathForUser == null) {
            internalPathForUser = new File("/dev/null");
        }
        File file2 = internalPathForUser;
        String str2 = null;
        String str3 = this.fsUuid;
        boolean z3 = true;
        if (this.type == 2) {
            VolumeInfo findPrivateForEmulated = storageManager.findPrivateForEmulated(this);
            if (findPrivateForEmulated != null) {
                str2 = storageManager.getBestVolumeDescription(findPrivateForEmulated);
                str3 = findPrivateForEmulated.fsUuid;
            }
            z2 = !ID_EMULATED_INTERNAL.equals(this.id);
            bestVolumeDescription = str2;
            str = str3;
            j = 0;
        } else if (this.type == 0) {
            bestVolumeDescription = storageManager.getBestVolumeDescription(this);
            str = str3;
            j = "vfat".equals(this.fsType) ? 4294967295L : 0L;
            z2 = true;
            z3 = false;
        } else {
            throw new IllegalStateException("Unexpected volume type " + this.type);
        }
        return new StorageVolume(this.id, file, file2, bestVolumeDescription == null ? context.getString(17039374) : bestVolumeDescription, isPrimary(), z2, z3, false, j, new UserHandle(i), str, environmentForState);
    }

    public static int buildStableMtpStorageId(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            i = (i * 31) + str.charAt(i2);
        }
        int i3 = ((i << 16) ^ i) & Menu.CATEGORY_MASK;
        if (i3 == 0) {
            i3 = 131072;
        }
        if (i3 == 65536) {
            i3 = 131072;
        }
        if (i3 == -65536) {
            i3 = -131072;
        }
        return i3 | 1;
    }

    public Intent buildBrowseIntent() {
        return buildBrowseIntentForUser(UserHandle.myUserId());
    }

    public Intent buildBrowseIntentForUser(int i) {
        Uri buildRootUri;
        if (this.type == 0 && this.mountUserId == i) {
            buildRootUri = DocumentsContract.buildRootUri("com.android.externalstorage.documents", this.fsUuid);
        } else {
            if (this.type != 2 || !isPrimary()) {
                return null;
            }
            buildRootUri = DocumentsContract.buildRootUri("com.android.externalstorage.documents", DOCUMENT_ROOT_PRIMARY_EMULATED);
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.setDataAndType(buildRootUri, DocumentsContract.Root.MIME_TYPE_ITEM);
        intent.putExtra(DocumentsContract.EXTRA_SHOW_ADVANCED, isPrimary());
        return intent;
    }

    public String toString() {
        CharArrayWriter charArrayWriter = new CharArrayWriter();
        dump(new IndentingPrintWriter(charArrayWriter, "    ", 80));
        return charArrayWriter.toString();
    }

    public void dump(IndentingPrintWriter indentingPrintWriter) {
        indentingPrintWriter.println("VolumeInfo{" + this.id + "}:");
        indentingPrintWriter.increaseIndent();
        indentingPrintWriter.printPair("type", DebugUtils.valueToString(getClass(), "TYPE_", this.type));
        indentingPrintWriter.printPair("diskId", getDiskId());
        indentingPrintWriter.printPair("partGuid", this.partGuid);
        indentingPrintWriter.printPair("mountFlags", DebugUtils.flagsToString(getClass(), "MOUNT_FLAG_", this.mountFlags));
        indentingPrintWriter.printPair("mountUserId", Integer.valueOf(this.mountUserId));
        indentingPrintWriter.printPair("state", DebugUtils.valueToString(getClass(), "STATE_", this.state));
        indentingPrintWriter.println();
        indentingPrintWriter.printPair("fsType", this.fsType);
        indentingPrintWriter.printPair("fsUuid", this.fsUuid);
        indentingPrintWriter.printPair("fsLabel", this.fsLabel);
        indentingPrintWriter.println();
        indentingPrintWriter.printPair("path", this.path);
        indentingPrintWriter.printPair("internalPath", this.internalPath);
        indentingPrintWriter.decreaseIndent();
        indentingPrintWriter.println();
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public VolumeInfo m1clone() {
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
        if (obj instanceof VolumeInfo) {
            return Objects.equals(this.id, ((VolumeInfo) obj).id);
        }
        return false;
    }

    public int hashCode() {
        return this.id.hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.id);
        parcel.writeInt(this.type);
        if (this.disk != null) {
            parcel.writeInt(1);
            this.disk.writeToParcel(parcel, i);
        } else {
            parcel.writeInt(0);
        }
        parcel.writeString(this.partGuid);
        parcel.writeInt(this.mountFlags);
        parcel.writeInt(this.mountUserId);
        parcel.writeInt(this.state);
        parcel.writeString(this.fsType);
        parcel.writeString(this.fsUuid);
        parcel.writeString(this.fsLabel);
        parcel.writeString(this.path);
        parcel.writeString(this.internalPath);
    }
}
