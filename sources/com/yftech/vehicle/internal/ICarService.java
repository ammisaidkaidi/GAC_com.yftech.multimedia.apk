package com.yftech.vehicle.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.yftech.vehicle.internal.ISignalCallback;

/* loaded from: /home/user/work/dex/classes4.dex */
public interface ICarService extends IInterface {
    byte[] getSignalValue(int i) throws RemoteException;

    byte[] getSignalsValue(int[] iArr) throws RemoteException;

    void registerSignalCallback(ISignalCallback iSignalCallback, int[] iArr) throws RemoteException;

    boolean setSignalValue(int i, byte[] bArr) throws RemoteException;

    void unregisterSignalCallback(ISignalCallback iSignalCallback) throws RemoteException;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static abstract class Stub extends Binder implements ICarService {
        private static final String DESCRIPTOR = "com.yftech.vehicle.internal.ICarService";
        static final int TRANSACTION_getSignalValue = 1;
        static final int TRANSACTION_getSignalsValue = 2;
        static final int TRANSACTION_registerSignalCallback = 4;
        static final int TRANSACTION_setSignalValue = 3;
        static final int TRANSACTION_unregisterSignalCallback = 5;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICarService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof ICarService)) {
                return (ICarService) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    byte[] signalValue = getSignalValue(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeByteArray(signalValue);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    byte[] signalsValue = getSignalsValue(parcel.createIntArray());
                    parcel2.writeNoException();
                    parcel2.writeByteArray(signalsValue);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean signalValue2 = setSignalValue(parcel.readInt(), parcel.createByteArray());
                    parcel2.writeNoException();
                    parcel2.writeInt(signalValue2 ? 1 : 0);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerSignalCallback(ISignalCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.createIntArray());
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterSignalCallback(ISignalCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: /home/user/work/dex/classes4.dex */
        private static class Proxy implements ICarService {
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

            @Override // com.yftech.vehicle.internal.ICarService
            public byte[] getSignalValue(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createByteArray();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.yftech.vehicle.internal.ICarService
            public byte[] getSignalsValue(int[] iArr) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeIntArray(iArr);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createByteArray();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.yftech.vehicle.internal.ICarService
            public boolean setSignalValue(int i, byte[] bArr) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeByteArray(bArr);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.yftech.vehicle.internal.ICarService
            public void registerSignalCallback(ISignalCallback iSignalCallback, int[] iArr) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iSignalCallback != null ? iSignalCallback.asBinder() : null);
                    obtain.writeIntArray(iArr);
                    this.mRemote.transact(4, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.yftech.vehicle.internal.ICarService
            public void unregisterSignalCallback(ISignalCallback iSignalCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iSignalCallback != null ? iSignalCallback.asBinder() : null);
                    this.mRemote.transact(5, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}
