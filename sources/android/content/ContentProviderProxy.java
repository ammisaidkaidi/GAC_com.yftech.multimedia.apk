package android.content;

import android.content.res.AssetFileDescriptor;
import android.database.BulkCursorDescriptor;
import android.database.BulkCursorToCursorAdaptor;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.ICancellationSignal;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: ContentProviderNative.java */
/* loaded from: /home/user/work/dex/classes.dex */
final class ContentProviderProxy implements IContentProvider {
    private IBinder mRemote;

    public ContentProviderProxy(IBinder iBinder) {
        this.mRemote = iBinder;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.mRemote;
    }

    @Override // android.content.IContentProvider
    public Cursor query(String str, Uri uri, String[] strArr, Bundle bundle, ICancellationSignal iCancellationSignal) throws RemoteException {
        BulkCursorToCursorAdaptor bulkCursorToCursorAdaptor = new BulkCursorToCursorAdaptor();
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            try {
                obtain.writeInterfaceToken(IContentProvider.descriptor);
                obtain.writeString(str);
                uri.writeToParcel(obtain, 0);
                int length = strArr != null ? strArr.length : 0;
                obtain.writeInt(length);
                for (int i = 0; i < length; i++) {
                    obtain.writeString(strArr[i]);
                }
                obtain.writeBundle(bundle);
                obtain.writeStrongBinder(bulkCursorToCursorAdaptor.getObserver().asBinder());
                BulkCursorToCursorAdaptor bulkCursorToCursorAdaptor2 = null;
                obtain.writeStrongBinder(iCancellationSignal != null ? iCancellationSignal.asBinder() : null);
                this.mRemote.transact(1, obtain, obtain2, 0);
                DatabaseUtils.readExceptionFromParcel(obtain2);
                if (obtain2.readInt() != 0) {
                    BulkCursorDescriptor createFromParcel = BulkCursorDescriptor.CREATOR.createFromParcel(obtain2);
                    Binder.copyAllowBlocking(this.mRemote, createFromParcel.cursor != null ? createFromParcel.cursor.asBinder() : null);
                    bulkCursorToCursorAdaptor.initialize(createFromParcel);
                    bulkCursorToCursorAdaptor2 = bulkCursorToCursorAdaptor;
                } else {
                    bulkCursorToCursorAdaptor.close();
                }
                return bulkCursorToCursorAdaptor2;
            } catch (RemoteException e) {
                bulkCursorToCursorAdaptor.close();
                throw e;
            } catch (RuntimeException e2) {
                bulkCursorToCursorAdaptor.close();
                throw e2;
            }
        } finally {
            obtain.recycle();
            obtain2.recycle();
        }
    }

    @Override // android.content.IContentProvider
    public String getType(Uri uri) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(IContentProvider.descriptor);
            uri.writeToParcel(obtain, 0);
            this.mRemote.transact(2, obtain, obtain2, 0);
            DatabaseUtils.readExceptionFromParcel(obtain2);
            return obtain2.readString();
        } finally {
            obtain.recycle();
            obtain2.recycle();
        }
    }

    @Override // android.content.IContentProvider
    public Uri insert(String str, Uri uri, ContentValues contentValues) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(IContentProvider.descriptor);
            obtain.writeString(str);
            uri.writeToParcel(obtain, 0);
            contentValues.writeToParcel(obtain, 0);
            this.mRemote.transact(3, obtain, obtain2, 0);
            DatabaseUtils.readExceptionFromParcel(obtain2);
            return Uri.CREATOR.createFromParcel(obtain2);
        } finally {
            obtain.recycle();
            obtain2.recycle();
        }
    }

    @Override // android.content.IContentProvider
    public int bulkInsert(String str, Uri uri, ContentValues[] contentValuesArr) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(IContentProvider.descriptor);
            obtain.writeString(str);
            uri.writeToParcel(obtain, 0);
            obtain.writeTypedArray(contentValuesArr, 0);
            this.mRemote.transact(13, obtain, obtain2, 0);
            DatabaseUtils.readExceptionFromParcel(obtain2);
            return obtain2.readInt();
        } finally {
            obtain.recycle();
            obtain2.recycle();
        }
    }

    @Override // android.content.IContentProvider
    public ContentProviderResult[] applyBatch(String str, ArrayList<ContentProviderOperation> arrayList) throws RemoteException, OperationApplicationException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(IContentProvider.descriptor);
            obtain.writeString(str);
            obtain.writeInt(arrayList.size());
            Iterator<ContentProviderOperation> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().writeToParcel(obtain, 0);
            }
            this.mRemote.transact(20, obtain, obtain2, 0);
            DatabaseUtils.readExceptionWithOperationApplicationExceptionFromParcel(obtain2);
            return (ContentProviderResult[]) obtain2.createTypedArray(ContentProviderResult.CREATOR);
        } finally {
            obtain.recycle();
            obtain2.recycle();
        }
    }

    @Override // android.content.IContentProvider
    public int delete(String str, Uri uri, String str2, String[] strArr) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(IContentProvider.descriptor);
            obtain.writeString(str);
            uri.writeToParcel(obtain, 0);
            obtain.writeString(str2);
            obtain.writeStringArray(strArr);
            this.mRemote.transact(4, obtain, obtain2, 0);
            DatabaseUtils.readExceptionFromParcel(obtain2);
            return obtain2.readInt();
        } finally {
            obtain.recycle();
            obtain2.recycle();
        }
    }

    @Override // android.content.IContentProvider
    public int update(String str, Uri uri, ContentValues contentValues, String str2, String[] strArr) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(IContentProvider.descriptor);
            obtain.writeString(str);
            uri.writeToParcel(obtain, 0);
            contentValues.writeToParcel(obtain, 0);
            obtain.writeString(str2);
            obtain.writeStringArray(strArr);
            this.mRemote.transact(10, obtain, obtain2, 0);
            DatabaseUtils.readExceptionFromParcel(obtain2);
            return obtain2.readInt();
        } finally {
            obtain.recycle();
            obtain2.recycle();
        }
    }

    @Override // android.content.IContentProvider
    public ParcelFileDescriptor openFile(String str, Uri uri, String str2, ICancellationSignal iCancellationSignal, IBinder iBinder) throws RemoteException, FileNotFoundException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(IContentProvider.descriptor);
            obtain.writeString(str);
            uri.writeToParcel(obtain, 0);
            obtain.writeString(str2);
            obtain.writeStrongBinder(iCancellationSignal != null ? iCancellationSignal.asBinder() : null);
            obtain.writeStrongBinder(iBinder);
            this.mRemote.transact(14, obtain, obtain2, 0);
            DatabaseUtils.readExceptionWithFileNotFoundExceptionFromParcel(obtain2);
            return obtain2.readInt() != 0 ? (ParcelFileDescriptor) ParcelFileDescriptor.CREATOR.createFromParcel(obtain2) : null;
        } finally {
            obtain.recycle();
            obtain2.recycle();
        }
    }

    @Override // android.content.IContentProvider
    public AssetFileDescriptor openAssetFile(String str, Uri uri, String str2, ICancellationSignal iCancellationSignal) throws RemoteException, FileNotFoundException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(IContentProvider.descriptor);
            obtain.writeString(str);
            uri.writeToParcel(obtain, 0);
            obtain.writeString(str2);
            obtain.writeStrongBinder(iCancellationSignal != null ? iCancellationSignal.asBinder() : null);
            this.mRemote.transact(15, obtain, obtain2, 0);
            DatabaseUtils.readExceptionWithFileNotFoundExceptionFromParcel(obtain2);
            return obtain2.readInt() != 0 ? AssetFileDescriptor.CREATOR.createFromParcel(obtain2) : null;
        } finally {
            obtain.recycle();
            obtain2.recycle();
        }
    }

    @Override // android.content.IContentProvider
    public Bundle call(String str, String str2, String str3, Bundle bundle) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(IContentProvider.descriptor);
            obtain.writeString(str);
            obtain.writeString(str2);
            obtain.writeString(str3);
            obtain.writeBundle(bundle);
            this.mRemote.transact(21, obtain, obtain2, 0);
            DatabaseUtils.readExceptionFromParcel(obtain2);
            return obtain2.readBundle();
        } finally {
            obtain.recycle();
            obtain2.recycle();
        }
    }

    @Override // android.content.IContentProvider
    public String[] getStreamTypes(Uri uri, String str) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(IContentProvider.descriptor);
            uri.writeToParcel(obtain, 0);
            obtain.writeString(str);
            this.mRemote.transact(22, obtain, obtain2, 0);
            DatabaseUtils.readExceptionFromParcel(obtain2);
            return obtain2.createStringArray();
        } finally {
            obtain.recycle();
            obtain2.recycle();
        }
    }

    @Override // android.content.IContentProvider
    public AssetFileDescriptor openTypedAssetFile(String str, Uri uri, String str2, Bundle bundle, ICancellationSignal iCancellationSignal) throws RemoteException, FileNotFoundException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(IContentProvider.descriptor);
            obtain.writeString(str);
            uri.writeToParcel(obtain, 0);
            obtain.writeString(str2);
            obtain.writeBundle(bundle);
            obtain.writeStrongBinder(iCancellationSignal != null ? iCancellationSignal.asBinder() : null);
            this.mRemote.transact(23, obtain, obtain2, 0);
            DatabaseUtils.readExceptionWithFileNotFoundExceptionFromParcel(obtain2);
            return obtain2.readInt() != 0 ? AssetFileDescriptor.CREATOR.createFromParcel(obtain2) : null;
        } finally {
            obtain.recycle();
            obtain2.recycle();
        }
    }

    @Override // android.content.IContentProvider
    public ICancellationSignal createCancellationSignal() throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(IContentProvider.descriptor);
            this.mRemote.transact(24, obtain, obtain2, 0);
            DatabaseUtils.readExceptionFromParcel(obtain2);
            return ICancellationSignal.Stub.asInterface(obtain2.readStrongBinder());
        } finally {
            obtain.recycle();
            obtain2.recycle();
        }
    }

    @Override // android.content.IContentProvider
    public Uri canonicalize(String str, Uri uri) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(IContentProvider.descriptor);
            obtain.writeString(str);
            uri.writeToParcel(obtain, 0);
            this.mRemote.transact(25, obtain, obtain2, 0);
            DatabaseUtils.readExceptionFromParcel(obtain2);
            return Uri.CREATOR.createFromParcel(obtain2);
        } finally {
            obtain.recycle();
            obtain2.recycle();
        }
    }

    @Override // android.content.IContentProvider
    public Uri uncanonicalize(String str, Uri uri) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(IContentProvider.descriptor);
            obtain.writeString(str);
            uri.writeToParcel(obtain, 0);
            this.mRemote.transact(26, obtain, obtain2, 0);
            DatabaseUtils.readExceptionFromParcel(obtain2);
            return Uri.CREATOR.createFromParcel(obtain2);
        } finally {
            obtain.recycle();
            obtain2.recycle();
        }
    }

    @Override // android.content.IContentProvider
    public boolean refresh(String str, Uri uri, Bundle bundle, ICancellationSignal iCancellationSignal) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(IContentProvider.descriptor);
            obtain.writeString(str);
            uri.writeToParcel(obtain, 0);
            obtain.writeBundle(bundle);
            obtain.writeStrongBinder(iCancellationSignal != null ? iCancellationSignal.asBinder() : null);
            this.mRemote.transact(27, obtain, obtain2, 0);
            DatabaseUtils.readExceptionFromParcel(obtain2);
            return obtain2.readInt() == 0;
        } finally {
            obtain.recycle();
            obtain2.recycle();
        }
    }
}
