package android.os;

import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ServiceManagerNative.java */
/* loaded from: /home/user/work/dex/classes2.dex */
public class ServiceManagerProxy implements IServiceManager {
    private IBinder mRemote;

    public ServiceManagerProxy(IBinder iBinder) {
        this.mRemote = iBinder;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.mRemote;
    }

    @Override // android.os.IServiceManager
    public IBinder getService(String str) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        obtain.writeInterfaceToken(IServiceManager.descriptor);
        obtain.writeString(str);
        this.mRemote.transact(1, obtain, obtain2, 0);
        IBinder readStrongBinder = obtain2.readStrongBinder();
        obtain2.recycle();
        obtain.recycle();
        return readStrongBinder;
    }

    @Override // android.os.IServiceManager
    public IBinder checkService(String str) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        obtain.writeInterfaceToken(IServiceManager.descriptor);
        obtain.writeString(str);
        this.mRemote.transact(2, obtain, obtain2, 0);
        IBinder readStrongBinder = obtain2.readStrongBinder();
        obtain2.recycle();
        obtain.recycle();
        return readStrongBinder;
    }

    @Override // android.os.IServiceManager
    public void addService(String str, IBinder iBinder, boolean z, int i) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        obtain.writeInterfaceToken(IServiceManager.descriptor);
        obtain.writeString(str);
        obtain.writeStrongBinder(iBinder);
        obtain.writeInt(z ? 1 : 0);
        obtain.writeInt(i);
        this.mRemote.transact(3, obtain, obtain2, 0);
        obtain2.recycle();
        obtain.recycle();
    }

    @Override // android.os.IServiceManager
    public String[] listServices(int i) throws RemoteException {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (true) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            obtain.writeInterfaceToken(IServiceManager.descriptor);
            obtain.writeInt(i2);
            obtain.writeInt(i);
            i2++;
            try {
                if (!this.mRemote.transact(4, obtain, obtain2, 0)) {
                    break;
                }
                arrayList.add(obtain2.readString());
                obtain2.recycle();
                obtain.recycle();
            } catch (RuntimeException unused) {
            }
        }
        String[] strArr = new String[arrayList.size()];
        arrayList.toArray(strArr);
        return strArr;
    }

    @Override // android.os.IServiceManager
    public void setPermissionController(IPermissionController iPermissionController) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        obtain.writeInterfaceToken(IServiceManager.descriptor);
        obtain.writeStrongBinder(iPermissionController.asBinder());
        this.mRemote.transact(6, obtain, obtain2, 0);
        obtain2.recycle();
        obtain.recycle();
    }
}
