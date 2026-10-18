package android.security;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.security.keymaster.ExportResult;
import android.security.keymaster.KeyCharacteristics;
import android.security.keymaster.KeymasterArguments;
import android.security.keymaster.KeymasterBlob;
import android.security.keymaster.KeymasterCertificateChain;
import android.security.keymaster.OperationResult;

/* loaded from: /home/user/work/dex/classes2.dex */
public interface IKeystoreService extends IInterface {
    int abort(IBinder iBinder) throws RemoteException;

    int addAuthToken(byte[] bArr) throws RemoteException;

    int addRngEntropy(byte[] bArr, int i) throws RemoteException;

    int attestDeviceIds(KeymasterArguments keymasterArguments, KeymasterCertificateChain keymasterCertificateChain) throws RemoteException;

    int attestKey(String str, KeymasterArguments keymasterArguments, KeymasterCertificateChain keymasterCertificateChain) throws RemoteException;

    OperationResult begin(IBinder iBinder, String str, int i, boolean z, KeymasterArguments keymasterArguments, byte[] bArr, int i2) throws RemoteException;

    int cancelConfirmationPrompt(IBinder iBinder) throws RemoteException;

    int clear_uid(long j) throws RemoteException;

    int del(String str, int i) throws RemoteException;

    int exist(String str, int i) throws RemoteException;

    ExportResult exportKey(String str, int i, KeymasterBlob keymasterBlob, KeymasterBlob keymasterBlob2, int i2) throws RemoteException;

    OperationResult finish(IBinder iBinder, KeymasterArguments keymasterArguments, byte[] bArr, byte[] bArr2) throws RemoteException;

    int generate(String str, int i, int i2, int i3, int i4, KeystoreArguments keystoreArguments) throws RemoteException;

    int generateKey(String str, KeymasterArguments keymasterArguments, byte[] bArr, int i, int i2, KeyCharacteristics keyCharacteristics) throws RemoteException;

    byte[] get(String str, int i) throws RemoteException;

    int getKeyCharacteristics(String str, KeymasterBlob keymasterBlob, KeymasterBlob keymasterBlob2, int i, KeyCharacteristics keyCharacteristics) throws RemoteException;

    int getState(int i) throws RemoteException;

    byte[] get_pubkey(String str) throws RemoteException;

    long getmtime(String str, int i) throws RemoteException;

    String grant(String str, int i) throws RemoteException;

    int importKey(String str, KeymasterArguments keymasterArguments, int i, byte[] bArr, int i2, int i3, KeyCharacteristics keyCharacteristics) throws RemoteException;

    int importWrappedKey(String str, byte[] bArr, String str2, byte[] bArr2, KeymasterArguments keymasterArguments, long j, long j2, KeyCharacteristics keyCharacteristics) throws RemoteException;

    int import_key(String str, byte[] bArr, int i, int i2) throws RemoteException;

    int insert(String str, byte[] bArr, int i, int i2) throws RemoteException;

    boolean isConfirmationPromptSupported() throws RemoteException;

    int isEmpty(int i) throws RemoteException;

    boolean isOperationAuthorized(IBinder iBinder) throws RemoteException;

    int is_hardware_backed(String str) throws RemoteException;

    String[] list(String str, int i) throws RemoteException;

    int lock(int i) throws RemoteException;

    int onDeviceOffBody() throws RemoteException;

    int onKeyguardVisibilityChanged(boolean z, int i) throws RemoteException;

    int onUserAdded(int i, int i2) throws RemoteException;

    int onUserPasswordChanged(int i, String str) throws RemoteException;

    int onUserRemoved(int i) throws RemoteException;

    int presentConfirmationPrompt(IBinder iBinder, String str, byte[] bArr, String str2, int i) throws RemoteException;

    int reset() throws RemoteException;

    byte[] sign(String str, byte[] bArr) throws RemoteException;

    int ungrant(String str, int i) throws RemoteException;

    int unlock(int i, String str) throws RemoteException;

    OperationResult update(IBinder iBinder, KeymasterArguments keymasterArguments, byte[] bArr) throws RemoteException;

    int verify(String str, byte[] bArr, byte[] bArr2) throws RemoteException;

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static abstract class Stub extends Binder implements IKeystoreService {
        private static final String DESCRIPTOR = "android.security.IKeystoreService";
        static final int TRANSACTION_abort = 30;
        static final int TRANSACTION_addAuthToken = 32;
        static final int TRANSACTION_addRngEntropy = 22;
        static final int TRANSACTION_attestDeviceIds = 36;
        static final int TRANSACTION_attestKey = 35;
        static final int TRANSACTION_begin = 27;
        static final int TRANSACTION_cancelConfirmationPrompt = 40;
        static final int TRANSACTION_clear_uid = 21;
        static final int TRANSACTION_del = 4;
        static final int TRANSACTION_exist = 5;
        static final int TRANSACTION_exportKey = 26;
        static final int TRANSACTION_finish = 29;
        static final int TRANSACTION_generate = 12;
        static final int TRANSACTION_generateKey = 23;
        static final int TRANSACTION_get = 2;
        static final int TRANSACTION_getKeyCharacteristics = 24;
        static final int TRANSACTION_getState = 1;
        static final int TRANSACTION_get_pubkey = 16;
        static final int TRANSACTION_getmtime = 19;
        static final int TRANSACTION_grant = 17;
        static final int TRANSACTION_importKey = 25;
        static final int TRANSACTION_importWrappedKey = 38;
        static final int TRANSACTION_import_key = 13;
        static final int TRANSACTION_insert = 3;
        static final int TRANSACTION_isConfirmationPromptSupported = 41;
        static final int TRANSACTION_isEmpty = 11;
        static final int TRANSACTION_isOperationAuthorized = 31;
        static final int TRANSACTION_is_hardware_backed = 20;
        static final int TRANSACTION_list = 6;
        static final int TRANSACTION_lock = 9;
        static final int TRANSACTION_onDeviceOffBody = 37;
        static final int TRANSACTION_onKeyguardVisibilityChanged = 42;
        static final int TRANSACTION_onUserAdded = 33;
        static final int TRANSACTION_onUserPasswordChanged = 8;
        static final int TRANSACTION_onUserRemoved = 34;
        static final int TRANSACTION_presentConfirmationPrompt = 39;
        static final int TRANSACTION_reset = 7;
        static final int TRANSACTION_sign = 14;
        static final int TRANSACTION_ungrant = 18;
        static final int TRANSACTION_unlock = 10;
        static final int TRANSACTION_update = 28;
        static final int TRANSACTION_verify = 15;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IKeystoreService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IKeystoreService)) {
                return (IKeystoreService) queryLocalInterface;
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
                    int state = getState(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(state);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    byte[] bArr = get(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeByteArray(bArr);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    int insert = insert(parcel.readString(), parcel.createByteArray(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(insert);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    int del = del(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(del);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    int exist = exist(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(exist);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    String[] list = list(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStringArray(list);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    int reset = reset();
                    parcel2.writeNoException();
                    parcel2.writeInt(reset);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onUserPasswordChanged = onUserPasswordChanged(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(onUserPasswordChanged);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    int lock = lock(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(lock);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    int unlock = unlock(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(unlock);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    int isEmpty = isEmpty(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(isEmpty);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    int generate = generate(parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt() != 0 ? KeystoreArguments.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(generate);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    int import_key = import_key(parcel.readString(), parcel.createByteArray(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(import_key);
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    byte[] sign = sign(parcel.readString(), parcel.createByteArray());
                    parcel2.writeNoException();
                    parcel2.writeByteArray(sign);
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    int verify = verify(parcel.readString(), parcel.createByteArray(), parcel.createByteArray());
                    parcel2.writeNoException();
                    parcel2.writeInt(verify);
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    byte[] bArr2 = get_pubkey(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeByteArray(bArr2);
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    String grant = grant(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeString(grant);
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    int ungrant = ungrant(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(ungrant);
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    long j = getmtime(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeLong(j);
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    int is_hardware_backed = is_hardware_backed(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(is_hardware_backed);
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    int clear_uid = clear_uid(parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeInt(clear_uid);
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    int addRngEntropy = addRngEntropy(parcel.createByteArray(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(addRngEntropy);
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    String readString = parcel.readString();
                    KeymasterArguments createFromParcel = parcel.readInt() != 0 ? KeymasterArguments.CREATOR.createFromParcel(parcel) : null;
                    byte[] createByteArray = parcel.createByteArray();
                    int readInt = parcel.readInt();
                    int readInt2 = parcel.readInt();
                    KeyCharacteristics keyCharacteristics = new KeyCharacteristics();
                    int generateKey = generateKey(readString, createFromParcel, createByteArray, readInt, readInt2, keyCharacteristics);
                    parcel2.writeNoException();
                    parcel2.writeInt(generateKey);
                    parcel2.writeInt(1);
                    keyCharacteristics.writeToParcel(parcel2, 1);
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    String readString2 = parcel.readString();
                    KeymasterBlob createFromParcel2 = parcel.readInt() != 0 ? KeymasterBlob.CREATOR.createFromParcel(parcel) : null;
                    KeymasterBlob createFromParcel3 = parcel.readInt() != 0 ? KeymasterBlob.CREATOR.createFromParcel(parcel) : null;
                    int readInt3 = parcel.readInt();
                    KeyCharacteristics keyCharacteristics2 = new KeyCharacteristics();
                    int keyCharacteristics3 = getKeyCharacteristics(readString2, createFromParcel2, createFromParcel3, readInt3, keyCharacteristics2);
                    parcel2.writeNoException();
                    parcel2.writeInt(keyCharacteristics3);
                    parcel2.writeInt(1);
                    keyCharacteristics2.writeToParcel(parcel2, 1);
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    String readString3 = parcel.readString();
                    KeymasterArguments createFromParcel4 = parcel.readInt() != 0 ? KeymasterArguments.CREATOR.createFromParcel(parcel) : null;
                    int readInt4 = parcel.readInt();
                    byte[] createByteArray2 = parcel.createByteArray();
                    int readInt5 = parcel.readInt();
                    int readInt6 = parcel.readInt();
                    KeyCharacteristics keyCharacteristics4 = new KeyCharacteristics();
                    int importKey = importKey(readString3, createFromParcel4, readInt4, createByteArray2, readInt5, readInt6, keyCharacteristics4);
                    parcel2.writeNoException();
                    parcel2.writeInt(importKey);
                    parcel2.writeInt(1);
                    keyCharacteristics4.writeToParcel(parcel2, 1);
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    ExportResult exportKey = exportKey(parcel.readString(), parcel.readInt(), parcel.readInt() != 0 ? KeymasterBlob.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? KeymasterBlob.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    if (exportKey != null) {
                        parcel2.writeInt(1);
                        exportKey.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    OperationResult begin = begin(parcel.readStrongBinder(), parcel.readString(), parcel.readInt(), parcel.readInt() != 0, parcel.readInt() != 0 ? KeymasterArguments.CREATOR.createFromParcel(parcel) : null, parcel.createByteArray(), parcel.readInt());
                    parcel2.writeNoException();
                    if (begin != null) {
                        parcel2.writeInt(1);
                        begin.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 28:
                    parcel.enforceInterface(DESCRIPTOR);
                    OperationResult update = update(parcel.readStrongBinder(), parcel.readInt() != 0 ? KeymasterArguments.CREATOR.createFromParcel(parcel) : null, parcel.createByteArray());
                    parcel2.writeNoException();
                    if (update != null) {
                        parcel2.writeInt(1);
                        update.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 29:
                    parcel.enforceInterface(DESCRIPTOR);
                    OperationResult finish = finish(parcel.readStrongBinder(), parcel.readInt() != 0 ? KeymasterArguments.CREATOR.createFromParcel(parcel) : null, parcel.createByteArray(), parcel.createByteArray());
                    parcel2.writeNoException();
                    if (finish != null) {
                        parcel2.writeInt(1);
                        finish.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 30:
                    parcel.enforceInterface(DESCRIPTOR);
                    int abort = abort(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    parcel2.writeInt(abort);
                    return true;
                case 31:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean isOperationAuthorized = isOperationAuthorized(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    parcel2.writeInt(isOperationAuthorized ? 1 : 0);
                    return true;
                case 32:
                    parcel.enforceInterface(DESCRIPTOR);
                    int addAuthToken = addAuthToken(parcel.createByteArray());
                    parcel2.writeNoException();
                    parcel2.writeInt(addAuthToken);
                    return true;
                case 33:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onUserAdded = onUserAdded(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(onUserAdded);
                    return true;
                case 34:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onUserRemoved = onUserRemoved(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(onUserRemoved);
                    return true;
                case 35:
                    parcel.enforceInterface(DESCRIPTOR);
                    String readString4 = parcel.readString();
                    KeymasterArguments createFromParcel5 = parcel.readInt() != 0 ? KeymasterArguments.CREATOR.createFromParcel(parcel) : null;
                    KeymasterCertificateChain keymasterCertificateChain = new KeymasterCertificateChain();
                    int attestKey = attestKey(readString4, createFromParcel5, keymasterCertificateChain);
                    parcel2.writeNoException();
                    parcel2.writeInt(attestKey);
                    parcel2.writeInt(1);
                    keymasterCertificateChain.writeToParcel(parcel2, 1);
                    return true;
                case 36:
                    parcel.enforceInterface(DESCRIPTOR);
                    KeymasterArguments createFromParcel6 = parcel.readInt() != 0 ? KeymasterArguments.CREATOR.createFromParcel(parcel) : null;
                    KeymasterCertificateChain keymasterCertificateChain2 = new KeymasterCertificateChain();
                    int attestDeviceIds = attestDeviceIds(createFromParcel6, keymasterCertificateChain2);
                    parcel2.writeNoException();
                    parcel2.writeInt(attestDeviceIds);
                    parcel2.writeInt(1);
                    keymasterCertificateChain2.writeToParcel(parcel2, 1);
                    return true;
                case 37:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onDeviceOffBody = onDeviceOffBody();
                    parcel2.writeNoException();
                    parcel2.writeInt(onDeviceOffBody);
                    return true;
                case 38:
                    parcel.enforceInterface(DESCRIPTOR);
                    String readString5 = parcel.readString();
                    byte[] createByteArray3 = parcel.createByteArray();
                    String readString6 = parcel.readString();
                    byte[] createByteArray4 = parcel.createByteArray();
                    KeymasterArguments createFromParcel7 = parcel.readInt() != 0 ? KeymasterArguments.CREATOR.createFromParcel(parcel) : null;
                    long readLong = parcel.readLong();
                    long readLong2 = parcel.readLong();
                    KeyCharacteristics keyCharacteristics5 = new KeyCharacteristics();
                    int importWrappedKey = importWrappedKey(readString5, createByteArray3, readString6, createByteArray4, createFromParcel7, readLong, readLong2, keyCharacteristics5);
                    parcel2.writeNoException();
                    parcel2.writeInt(importWrappedKey);
                    parcel2.writeInt(1);
                    keyCharacteristics5.writeToParcel(parcel2, 1);
                    return true;
                case 39:
                    parcel.enforceInterface(DESCRIPTOR);
                    int presentConfirmationPrompt = presentConfirmationPrompt(parcel.readStrongBinder(), parcel.readString(), parcel.createByteArray(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(presentConfirmationPrompt);
                    return true;
                case 40:
                    parcel.enforceInterface(DESCRIPTOR);
                    int cancelConfirmationPrompt = cancelConfirmationPrompt(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    parcel2.writeInt(cancelConfirmationPrompt);
                    return true;
                case 41:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean isConfirmationPromptSupported = isConfirmationPromptSupported();
                    parcel2.writeNoException();
                    parcel2.writeInt(isConfirmationPromptSupported ? 1 : 0);
                    return true;
                case 42:
                    parcel.enforceInterface(DESCRIPTOR);
                    int onKeyguardVisibilityChanged = onKeyguardVisibilityChanged(parcel.readInt() != 0, parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(onKeyguardVisibilityChanged);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: /home/user/work/dex/classes2.dex */
        private static class Proxy implements IKeystoreService {
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

            @Override // android.security.IKeystoreService
            public int getState(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.security.IKeystoreService
            public byte[] get(String str, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createByteArray();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.security.IKeystoreService
            public int insert(String str, byte[] bArr, int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeByteArray(bArr);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.security.IKeystoreService
            public int del(String str, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.security.IKeystoreService
            public int exist(String str, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.security.IKeystoreService
            public String[] list(String str, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    this.mRemote.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createStringArray();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.security.IKeystoreService
            public int reset() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.security.IKeystoreService
            public int onUserPasswordChanged(int i, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    this.mRemote.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.security.IKeystoreService
            public int lock(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.security.IKeystoreService
            public int unlock(int i, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    this.mRemote.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.security.IKeystoreService
            public int isEmpty(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.security.IKeystoreService
            public int generate(String str, int i, int i2, int i3, int i4, KeystoreArguments keystoreArguments) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeInt(i4);
                    if (keystoreArguments != null) {
                        obtain.writeInt(1);
                        keystoreArguments.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.security.IKeystoreService
            public int import_key(String str, byte[] bArr, int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeByteArray(bArr);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.security.IKeystoreService
            public byte[] sign(String str, byte[] bArr) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeByteArray(bArr);
                    this.mRemote.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createByteArray();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.security.IKeystoreService
            public int verify(String str, byte[] bArr, byte[] bArr2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeByteArray(bArr);
                    obtain.writeByteArray(bArr2);
                    this.mRemote.transact(15, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.security.IKeystoreService
            public byte[] get_pubkey(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(16, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createByteArray();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.security.IKeystoreService
            public String grant(String str, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    this.mRemote.transact(17, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.security.IKeystoreService
            public int ungrant(String str, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    this.mRemote.transact(18, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.security.IKeystoreService
            public long getmtime(String str, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    this.mRemote.transact(19, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readLong();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.security.IKeystoreService
            public int is_hardware_backed(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(20, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.security.IKeystoreService
            public int clear_uid(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    this.mRemote.transact(21, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.security.IKeystoreService
            public int addRngEntropy(byte[] bArr, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeByteArray(bArr);
                    obtain.writeInt(i);
                    this.mRemote.transact(22, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.security.IKeystoreService
            public int generateKey(String str, KeymasterArguments keymasterArguments, byte[] bArr, int i, int i2, KeyCharacteristics keyCharacteristics) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    if (keymasterArguments != null) {
                        obtain.writeInt(1);
                        keymasterArguments.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeByteArray(bArr);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(23, obtain, obtain2, 0);
                    obtain2.readException();
                    int readInt = obtain2.readInt();
                    if (obtain2.readInt() != 0) {
                        keyCharacteristics.readFromParcel(obtain2);
                    }
                    return readInt;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.security.IKeystoreService
            public int getKeyCharacteristics(String str, KeymasterBlob keymasterBlob, KeymasterBlob keymasterBlob2, int i, KeyCharacteristics keyCharacteristics) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    if (keymasterBlob != null) {
                        obtain.writeInt(1);
                        keymasterBlob.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (keymasterBlob2 != null) {
                        obtain.writeInt(1);
                        keymasterBlob2.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i);
                    this.mRemote.transact(24, obtain, obtain2, 0);
                    obtain2.readException();
                    int readInt = obtain2.readInt();
                    if (obtain2.readInt() != 0) {
                        keyCharacteristics.readFromParcel(obtain2);
                    }
                    return readInt;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.security.IKeystoreService
            public int importKey(String str, KeymasterArguments keymasterArguments, int i, byte[] bArr, int i2, int i3, KeyCharacteristics keyCharacteristics) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    if (keymasterArguments != null) {
                        obtain.writeInt(1);
                        keymasterArguments.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i);
                    obtain.writeByteArray(bArr);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    this.mRemote.transact(25, obtain, obtain2, 0);
                    obtain2.readException();
                    int readInt = obtain2.readInt();
                    if (obtain2.readInt() != 0) {
                        keyCharacteristics.readFromParcel(obtain2);
                    }
                    return readInt;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.security.IKeystoreService
            public ExportResult exportKey(String str, int i, KeymasterBlob keymasterBlob, KeymasterBlob keymasterBlob2, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    if (keymasterBlob != null) {
                        obtain.writeInt(1);
                        keymasterBlob.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (keymasterBlob2 != null) {
                        obtain.writeInt(1);
                        keymasterBlob2.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i2);
                    this.mRemote.transact(26, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? ExportResult.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.security.IKeystoreService
            public OperationResult begin(IBinder iBinder, String str, int i, boolean z, KeymasterArguments keymasterArguments, byte[] bArr, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iBinder);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeInt(z ? 1 : 0);
                    if (keymasterArguments != null) {
                        obtain.writeInt(1);
                        keymasterArguments.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeByteArray(bArr);
                    obtain.writeInt(i2);
                    this.mRemote.transact(27, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? OperationResult.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.security.IKeystoreService
            public OperationResult update(IBinder iBinder, KeymasterArguments keymasterArguments, byte[] bArr) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iBinder);
                    if (keymasterArguments != null) {
                        obtain.writeInt(1);
                        keymasterArguments.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeByteArray(bArr);
                    this.mRemote.transact(28, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? OperationResult.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.security.IKeystoreService
            public OperationResult finish(IBinder iBinder, KeymasterArguments keymasterArguments, byte[] bArr, byte[] bArr2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iBinder);
                    if (keymasterArguments != null) {
                        obtain.writeInt(1);
                        keymasterArguments.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeByteArray(bArr);
                    obtain.writeByteArray(bArr2);
                    this.mRemote.transact(29, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? OperationResult.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.security.IKeystoreService
            public int abort(IBinder iBinder) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(30, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.security.IKeystoreService
            public boolean isOperationAuthorized(IBinder iBinder) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(31, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.security.IKeystoreService
            public int addAuthToken(byte[] bArr) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeByteArray(bArr);
                    this.mRemote.transact(32, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.security.IKeystoreService
            public int onUserAdded(int i, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(33, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.security.IKeystoreService
            public int onUserRemoved(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(34, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.security.IKeystoreService
            public int attestKey(String str, KeymasterArguments keymasterArguments, KeymasterCertificateChain keymasterCertificateChain) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    if (keymasterArguments != null) {
                        obtain.writeInt(1);
                        keymasterArguments.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(35, obtain, obtain2, 0);
                    obtain2.readException();
                    int readInt = obtain2.readInt();
                    if (obtain2.readInt() != 0) {
                        keymasterCertificateChain.readFromParcel(obtain2);
                    }
                    return readInt;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.security.IKeystoreService
            public int attestDeviceIds(KeymasterArguments keymasterArguments, KeymasterCertificateChain keymasterCertificateChain) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (keymasterArguments != null) {
                        obtain.writeInt(1);
                        keymasterArguments.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(36, obtain, obtain2, 0);
                    obtain2.readException();
                    int readInt = obtain2.readInt();
                    if (obtain2.readInt() != 0) {
                        keymasterCertificateChain.readFromParcel(obtain2);
                    }
                    return readInt;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.security.IKeystoreService
            public int onDeviceOffBody() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(37, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.security.IKeystoreService
            public int importWrappedKey(String str, byte[] bArr, String str2, byte[] bArr2, KeymasterArguments keymasterArguments, long j, long j2, KeyCharacteristics keyCharacteristics) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeByteArray(bArr);
                    obtain.writeString(str2);
                    obtain.writeByteArray(bArr2);
                    if (keymasterArguments != null) {
                        obtain.writeInt(1);
                        keymasterArguments.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeLong(j);
                    obtain.writeLong(j2);
                    this.mRemote.transact(38, obtain, obtain2, 0);
                    obtain2.readException();
                    int readInt = obtain2.readInt();
                    if (obtain2.readInt() != 0) {
                        keyCharacteristics.readFromParcel(obtain2);
                    }
                    return readInt;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.security.IKeystoreService
            public int presentConfirmationPrompt(IBinder iBinder, String str, byte[] bArr, String str2, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iBinder);
                    obtain.writeString(str);
                    obtain.writeByteArray(bArr);
                    obtain.writeString(str2);
                    obtain.writeInt(i);
                    this.mRemote.transact(39, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.security.IKeystoreService
            public int cancelConfirmationPrompt(IBinder iBinder) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(40, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.security.IKeystoreService
            public boolean isConfirmationPromptSupported() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(41, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.security.IKeystoreService
            public int onKeyguardVisibilityChanged(boolean z, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    obtain.writeInt(i);
                    this.mRemote.transact(42, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
