package android.service.textclassifier;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.service.textclassifier.ITextClassificationCallback;
import android.service.textclassifier.ITextLinksCallback;
import android.service.textclassifier.ITextSelectionCallback;
import android.view.textclassifier.SelectionEvent;
import android.view.textclassifier.TextClassification;
import android.view.textclassifier.TextClassificationContext;
import android.view.textclassifier.TextClassificationSessionId;
import android.view.textclassifier.TextLinks;
import android.view.textclassifier.TextSelection;

/* loaded from: /home/user/work/dex/classes2.dex */
public interface ITextClassifierService extends IInterface {
    void onClassifyText(TextClassificationSessionId textClassificationSessionId, TextClassification.Request request, ITextClassificationCallback iTextClassificationCallback) throws RemoteException;

    void onCreateTextClassificationSession(TextClassificationContext textClassificationContext, TextClassificationSessionId textClassificationSessionId) throws RemoteException;

    void onDestroyTextClassificationSession(TextClassificationSessionId textClassificationSessionId) throws RemoteException;

    void onGenerateLinks(TextClassificationSessionId textClassificationSessionId, TextLinks.Request request, ITextLinksCallback iTextLinksCallback) throws RemoteException;

    void onSelectionEvent(TextClassificationSessionId textClassificationSessionId, SelectionEvent selectionEvent) throws RemoteException;

    void onSuggestSelection(TextClassificationSessionId textClassificationSessionId, TextSelection.Request request, ITextSelectionCallback iTextSelectionCallback) throws RemoteException;

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static abstract class Stub extends Binder implements ITextClassifierService {
        private static final String DESCRIPTOR = "android.service.textclassifier.ITextClassifierService";
        static final int TRANSACTION_onClassifyText = 2;
        static final int TRANSACTION_onCreateTextClassificationSession = 5;
        static final int TRANSACTION_onDestroyTextClassificationSession = 6;
        static final int TRANSACTION_onGenerateLinks = 3;
        static final int TRANSACTION_onSelectionEvent = 4;
        static final int TRANSACTION_onSuggestSelection = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ITextClassifierService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof ITextClassifierService)) {
                return (ITextClassifierService) queryLocalInterface;
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
                    onSuggestSelection(parcel.readInt() != 0 ? TextClassificationSessionId.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? TextSelection.Request.CREATOR.createFromParcel(parcel) : null, ITextSelectionCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    onClassifyText(parcel.readInt() != 0 ? TextClassificationSessionId.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? TextClassification.Request.CREATOR.createFromParcel(parcel) : null, ITextClassificationCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    onGenerateLinks(parcel.readInt() != 0 ? TextClassificationSessionId.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? TextLinks.Request.CREATOR.createFromParcel(parcel) : null, ITextLinksCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    onSelectionEvent(parcel.readInt() != 0 ? TextClassificationSessionId.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? SelectionEvent.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    onCreateTextClassificationSession(parcel.readInt() != 0 ? TextClassificationContext.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? TextClassificationSessionId.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    onDestroyTextClassificationSession(parcel.readInt() != 0 ? TextClassificationSessionId.CREATOR.createFromParcel(parcel) : null);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: /home/user/work/dex/classes2.dex */
        private static class Proxy implements ITextClassifierService {
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

            @Override // android.service.textclassifier.ITextClassifierService
            public void onSuggestSelection(TextClassificationSessionId textClassificationSessionId, TextSelection.Request request, ITextSelectionCallback iTextSelectionCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (textClassificationSessionId != null) {
                        obtain.writeInt(1);
                        textClassificationSessionId.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (request != null) {
                        obtain.writeInt(1);
                        request.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(iTextSelectionCallback != null ? iTextSelectionCallback.asBinder() : null);
                    this.mRemote.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.service.textclassifier.ITextClassifierService
            public void onClassifyText(TextClassificationSessionId textClassificationSessionId, TextClassification.Request request, ITextClassificationCallback iTextClassificationCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (textClassificationSessionId != null) {
                        obtain.writeInt(1);
                        textClassificationSessionId.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (request != null) {
                        obtain.writeInt(1);
                        request.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(iTextClassificationCallback != null ? iTextClassificationCallback.asBinder() : null);
                    this.mRemote.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.service.textclassifier.ITextClassifierService
            public void onGenerateLinks(TextClassificationSessionId textClassificationSessionId, TextLinks.Request request, ITextLinksCallback iTextLinksCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (textClassificationSessionId != null) {
                        obtain.writeInt(1);
                        textClassificationSessionId.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (request != null) {
                        obtain.writeInt(1);
                        request.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(iTextLinksCallback != null ? iTextLinksCallback.asBinder() : null);
                    this.mRemote.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.service.textclassifier.ITextClassifierService
            public void onSelectionEvent(TextClassificationSessionId textClassificationSessionId, SelectionEvent selectionEvent) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (textClassificationSessionId != null) {
                        obtain.writeInt(1);
                        textClassificationSessionId.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (selectionEvent != null) {
                        obtain.writeInt(1);
                        selectionEvent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(4, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.service.textclassifier.ITextClassifierService
            public void onCreateTextClassificationSession(TextClassificationContext textClassificationContext, TextClassificationSessionId textClassificationSessionId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (textClassificationContext != null) {
                        obtain.writeInt(1);
                        textClassificationContext.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (textClassificationSessionId != null) {
                        obtain.writeInt(1);
                        textClassificationSessionId.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(5, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.service.textclassifier.ITextClassifierService
            public void onDestroyTextClassificationSession(TextClassificationSessionId textClassificationSessionId) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (textClassificationSessionId != null) {
                        obtain.writeInt(1);
                        textClassificationSessionId.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(6, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}
