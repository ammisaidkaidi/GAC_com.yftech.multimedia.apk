package android.service.persistentdata;

import android.annotation.SuppressLint;
import android.annotation.SystemApi;
import android.os.RemoteException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@SystemApi
/* loaded from: /home/user/work/dex/classes2.dex */
public class PersistentDataBlockManager {
    public static final int FLASH_LOCK_LOCKED = 1;
    public static final int FLASH_LOCK_UNKNOWN = -1;
    public static final int FLASH_LOCK_UNLOCKED = 0;
    private static final String TAG = "PersistentDataBlockManager";
    private IPersistentDataBlockService sService;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes2.dex */
    public @interface FlashLockState {
    }

    public PersistentDataBlockManager(IPersistentDataBlockService iPersistentDataBlockService) {
        this.sService = iPersistentDataBlockService;
    }

    @SuppressLint({"Doclava125"})
    public int write(byte[] bArr) {
        try {
            return this.sService.write(bArr);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @SuppressLint({"Doclava125"})
    public byte[] read() {
        try {
            return this.sService.read();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public int getDataBlockSize() {
        try {
            return this.sService.getDataBlockSize();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    @SuppressLint({"Doclava125"})
    public long getMaximumDataBlockSize() {
        try {
            return this.sService.getMaximumDataBlockSize();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void wipe() {
        try {
            this.sService.wipe();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public void setOemUnlockEnabled(boolean z) {
        try {
            this.sService.setOemUnlockEnabled(z);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public boolean getOemUnlockEnabled() {
        try {
            return this.sService.getOemUnlockEnabled();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }

    public int getFlashLockState() {
        try {
            return this.sService.getFlashLockState();
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }
}
