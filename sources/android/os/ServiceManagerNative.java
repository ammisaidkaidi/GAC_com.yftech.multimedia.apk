package android.os;

import android.os.IPermissionController;

/* loaded from: /home/user/work/dex/classes2.dex */
public abstract class ServiceManagerNative extends Binder implements IServiceManager {
    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    public static IServiceManager asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IServiceManager iServiceManager = (IServiceManager) iBinder.queryLocalInterface(IServiceManager.descriptor);
        return iServiceManager != null ? iServiceManager : new ServiceManagerProxy(iBinder);
    }

    public ServiceManagerNative() {
        attachInterface(this, IServiceManager.descriptor);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x006b A[ExcHandler: RemoteException -> 0x006b, RETURN] */
    @Override // android.os.Binder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 6) {
            switch (i) {
                case 1:
                    parcel.enforceInterface(IServiceManager.descriptor);
                    parcel2.writeStrongBinder(getService(parcel.readString()));
                    return true;
                case 2:
                    parcel.enforceInterface(IServiceManager.descriptor);
                    parcel2.writeStrongBinder(checkService(parcel.readString()));
                    return true;
                case 3:
                    parcel.enforceInterface(IServiceManager.descriptor);
                    addService(parcel.readString(), parcel.readStrongBinder(), parcel.readInt() != 0, parcel.readInt());
                    return true;
                case 4:
                    parcel.enforceInterface(IServiceManager.descriptor);
                    parcel2.writeStringArray(listServices(parcel.readInt()));
                    return true;
                default:
                    return false;
            }
        }
        parcel.enforceInterface(IServiceManager.descriptor);
        setPermissionController(IPermissionController.Stub.asInterface(parcel.readStrongBinder()));
        return true;
    }
}
