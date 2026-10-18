package android.os;

/* loaded from: /home/user/work/dex/classes2.dex */
public interface IProcessInfoService extends IInterface {
    void getProcessStatesAndOomScoresFromPids(int[] iArr, int[] iArr2, int[] iArr3) throws RemoteException;

    void getProcessStatesFromPids(int[] iArr, int[] iArr2) throws RemoteException;

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static abstract class Stub extends Binder implements IProcessInfoService {
        private static final String DESCRIPTOR = "android.os.IProcessInfoService";
        static final int TRANSACTION_getProcessStatesAndOomScoresFromPids = 2;
        static final int TRANSACTION_getProcessStatesFromPids = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IProcessInfoService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IProcessInfoService)) {
                return (IProcessInfoService) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            int[] iArr;
            if (i == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    int[] createIntArray = parcel.createIntArray();
                    int readInt = parcel.readInt();
                    iArr = readInt >= 0 ? new int[readInt] : null;
                    getProcessStatesFromPids(createIntArray, iArr);
                    parcel2.writeNoException();
                    parcel2.writeIntArray(iArr);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    int[] createIntArray2 = parcel.createIntArray();
                    int readInt2 = parcel.readInt();
                    int[] iArr2 = readInt2 < 0 ? null : new int[readInt2];
                    int readInt3 = parcel.readInt();
                    iArr = readInt3 >= 0 ? new int[readInt3] : null;
                    getProcessStatesAndOomScoresFromPids(createIntArray2, iArr2, iArr);
                    parcel2.writeNoException();
                    parcel2.writeIntArray(iArr2);
                    parcel2.writeIntArray(iArr);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: /home/user/work/dex/classes2.dex */
        private static class Proxy implements IProcessInfoService {
            private IBinder mRemote;

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // android.os.IProcessInfoService
            public void getProcessStatesFromPids(int[] iArr, int[] iArr2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeIntArray(iArr);
                    if (iArr2 == null) {
                        obtain.writeInt(-1);
                    } else {
                        obtain.writeInt(iArr2.length);
                    }
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    obtain2.readIntArray(iArr2);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IProcessInfoService
            public void getProcessStatesAndOomScoresFromPids(int[] iArr, int[] iArr2, int[] iArr3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeIntArray(iArr);
                    if (iArr2 == null) {
                        obtain.writeInt(-1);
                    } else {
                        obtain.writeInt(iArr2.length);
                    }
                    if (iArr3 == null) {
                        obtain.writeInt(-1);
                    } else {
                        obtain.writeInt(iArr3.length);
                    }
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    obtain2.readIntArray(iArr2);
                    obtain2.readIntArray(iArr3);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
