package android.content.pm;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
abstract class BaseParceledListSlice<T> implements Parcelable {
    private static boolean DEBUG = false;
    private static final int MAX_IPC_SIZE = 65536;
    private static String TAG = "ParceledListSlice";
    private int mInlineCountLimit = Integer.MAX_VALUE;
    private final List<T> mList;

    protected abstract Parcelable.Creator<?> readParcelableCreator(Parcel parcel, ClassLoader classLoader);

    protected abstract void writeElement(T t, Parcel parcel, int i);

    protected abstract void writeParcelableCreator(T t, Parcel parcel);

    public BaseParceledListSlice(List<T> list) {
        this.mList = list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BaseParceledListSlice(Parcel parcel, ClassLoader classLoader) {
        int readInt = parcel.readInt();
        this.mList = new ArrayList(readInt);
        if (DEBUG) {
            Log.d(TAG, "Retrieving " + readInt + " items");
        }
        if (readInt <= 0) {
            return;
        }
        Parcelable.Creator<?> readParcelableCreator = readParcelableCreator(parcel, classLoader);
        Class<?> cls = null;
        int i = 0;
        while (i < readInt && parcel.readInt() != 0) {
            T readCreator = readCreator(readParcelableCreator, parcel, classLoader);
            if (cls == null) {
                cls = readCreator.getClass();
            } else {
                verifySameType(cls, readCreator.getClass());
            }
            this.mList.add(readCreator);
            if (DEBUG) {
                Log.d(TAG, "Read inline #" + i + ": " + this.mList.get(this.mList.size() - 1));
            }
            i++;
        }
        if (i >= readInt) {
            return;
        }
        IBinder readStrongBinder = parcel.readStrongBinder();
        while (i < readInt) {
            if (DEBUG) {
                Log.d(TAG, "Reading more @" + i + " of " + readInt + ": retriever=" + readStrongBinder);
            }
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            obtain.writeInt(i);
            try {
                readStrongBinder.transact(1, obtain, obtain2, 0);
                while (i < readInt && obtain2.readInt() != 0) {
                    T readCreator2 = readCreator(readParcelableCreator, obtain2, classLoader);
                    verifySameType(cls, readCreator2.getClass());
                    this.mList.add(readCreator2);
                    if (DEBUG) {
                        Log.d(TAG, "Read extra #" + i + ": " + this.mList.get(this.mList.size() - 1));
                    }
                    i++;
                }
                obtain2.recycle();
                obtain.recycle();
            } catch (RemoteException e) {
                Log.w(TAG, "Failure retrieving array; only received " + i + " of " + readInt, e);
                return;
            }
        }
    }

    private T readCreator(Parcelable.Creator<?> creator, Parcel parcel, ClassLoader classLoader) {
        if (creator instanceof Parcelable.ClassLoaderCreator) {
            return (T) ((Parcelable.ClassLoaderCreator) creator).createFromParcel(parcel, classLoader);
        }
        return (T) creator.createFromParcel(parcel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void verifySameType(Class<?> cls, Class<?> cls2) {
        if (cls2.equals(cls)) {
            return;
        }
        throw new IllegalArgumentException("Can't unparcel type " + cls2.getName() + " in list of type " + cls.getName());
    }

    public List<T> getList() {
        return this.mList;
    }

    public void setInlineCountLimit(int i) {
        this.mInlineCountLimit = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x008e, code lost:
    
        r8.writeInt(0);
        r2 = new android.content.pm.BaseParceledListSlice.AnonymousClass1(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0098, code lost:
    
        if (android.content.pm.BaseParceledListSlice.DEBUG == false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x009a, code lost:
    
        android.util.Log.d(android.content.pm.BaseParceledListSlice.TAG, "Breaking @" + r3 + " of " + r0 + ": retriever=" + r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00c0, code lost:
    
        r8.writeStrongBinder(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00c3, code lost:
    
        return;
     */
    @Override // android.os.Parcelable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void writeToParcel(Parcel parcel, final int i) {
        final int size = this.mList.size();
        parcel.writeInt(size);
        if (DEBUG) {
            Log.d(TAG, "Writing " + size + " items");
        }
        if (size > 0) {
            final Class<?> cls = this.mList.get(0).getClass();
            writeParcelableCreator(this.mList.get(0), parcel);
            int i2 = 0;
            while (i2 < size && i2 < this.mInlineCountLimit && parcel.dataSize() < 65536) {
                parcel.writeInt(1);
                T t = this.mList.get(i2);
                verifySameType(cls, t.getClass());
                writeElement(t, parcel, i);
                if (DEBUG) {
                    Log.d(TAG, "Wrote inline #" + i2 + ": " + this.mList.get(i2));
                }
                i2++;
            }
        }
    }
}
