package android.os.storage;

/* loaded from: /home/user/work/dex/classes2.dex */
public abstract class StorageManagerInternal {

    /* loaded from: /home/user/work/dex/classes2.dex */
    public interface ExternalStorageMountPolicy {
        int getMountMode(int i, String str);

        boolean hasExternalStorage(int i, String str);
    }

    public abstract void addExternalStoragePolicy(ExternalStorageMountPolicy externalStorageMountPolicy);

    public abstract int getExternalStorageMountMode(int i, String str);

    public abstract void onExternalStoragePolicyChanged(int i, String str);
}
