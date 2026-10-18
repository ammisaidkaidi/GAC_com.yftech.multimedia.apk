package android.os;

import android.os.Parcelable;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.ExceptionUtils;
import android.util.Log;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.widget.GridLayout;
import dalvik.annotation.optimization.CriticalNative;
import dalvik.annotation.optimization.FastNative;
import dalvik.system.VMRuntime;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import libcore.util.SneakyThrow;

/* loaded from: /home/user/work/dex/classes2.dex */
public final class Parcel {
    private static final boolean DEBUG_ARRAY_MAP = false;
    private static final boolean DEBUG_RECYCLE = false;
    private static final int EX_BAD_PARCELABLE = -2;
    private static final int EX_HAS_REPLY_HEADER = -128;
    private static final int EX_ILLEGAL_ARGUMENT = -3;
    private static final int EX_ILLEGAL_STATE = -5;
    private static final int EX_NETWORK_MAIN_THREAD = -6;
    private static final int EX_NULL_POINTER = -4;
    private static final int EX_PARCELABLE = -9;
    private static final int EX_SECURITY = -1;
    private static final int EX_SERVICE_SPECIFIC = -8;
    private static final int EX_TRANSACTION_FAILED = -129;
    private static final int EX_UNSUPPORTED_OPERATION = -7;
    private static final int POOL_SIZE = 6;
    private static final String TAG = "Parcel";
    private static final int VAL_BOOLEAN = 9;
    private static final int VAL_BOOLEANARRAY = 23;
    private static final int VAL_BUNDLE = 3;
    private static final int VAL_BYTE = 20;
    private static final int VAL_BYTEARRAY = 13;
    private static final int VAL_CHARSEQUENCE = 10;
    private static final int VAL_CHARSEQUENCEARRAY = 24;
    private static final int VAL_DOUBLE = 8;
    private static final int VAL_DOUBLEARRAY = 28;
    private static final int VAL_FLOAT = 7;
    private static final int VAL_IBINDER = 15;
    private static final int VAL_INTARRAY = 18;
    private static final int VAL_INTEGER = 1;
    private static final int VAL_LIST = 11;
    private static final int VAL_LONG = 6;
    private static final int VAL_LONGARRAY = 19;
    private static final int VAL_MAP = 2;
    private static final int VAL_NULL = -1;
    private static final int VAL_OBJECTARRAY = 17;
    private static final int VAL_PARCELABLE = 4;
    private static final int VAL_PARCELABLEARRAY = 16;
    private static final int VAL_PERSISTABLEBUNDLE = 25;
    private static final int VAL_SERIALIZABLE = 21;
    private static final int VAL_SHORT = 5;
    private static final int VAL_SIZE = 26;
    private static final int VAL_SIZEF = 27;
    private static final int VAL_SPARSEARRAY = 12;
    private static final int VAL_SPARSEBOOLEANARRAY = 22;
    private static final int VAL_STRING = 0;
    private static final int VAL_STRINGARRAY = 14;
    private static final int WRITE_EXCEPTION_STACK_TRACE_THRESHOLD_MS = 1000;
    private static volatile long sLastWriteExceptionStackTrace;
    private static boolean sParcelExceptionStackTrace;
    private ArrayMap<Class, Object> mClassCookies;
    private long mNativePtr;
    private long mNativeSize;
    private boolean mOwnsNativeParcelObject;
    private ReadWriteHelper mReadWriteHelper = ReadWriteHelper.DEFAULT;
    private RuntimeException mStack;
    private static final Parcel[] sOwnedPool = new Parcel[6];
    private static final Parcel[] sHolderPool = new Parcel[6];
    public static final Parcelable.Creator<String> STRING_CREATOR = new Parcelable.Creator<String>() { // from class: android.os.Parcel.1
        @Override // android.os.Parcelable.Creator
        public String createFromParcel(Parcel parcel) {
            return parcel.readString();
        }

        @Override // android.os.Parcelable.Creator
        public String[] newArray(int i) {
            return new String[i];
        }
    };
    private static final HashMap<ClassLoader, HashMap<String, Parcelable.Creator<?>>> mCreators = new HashMap<>();

    @Deprecated
    static native void closeFileDescriptor(FileDescriptor fileDescriptor) throws IOException;

    @Deprecated
    static native FileDescriptor dupFileDescriptor(FileDescriptor fileDescriptor) throws IOException;

    public static native long getGlobalAllocCount();

    public static native long getGlobalAllocSize();

    private static native long nativeAppendFrom(long j, long j2, int i, int i2);

    private static native int nativeCompareData(long j, long j2);

    private static native long nativeCreate();

    private static native byte[] nativeCreateByteArray(long j);

    @CriticalNative
    private static native int nativeDataAvail(long j);

    @CriticalNative
    private static native int nativeDataCapacity(long j);

    @CriticalNative
    private static native int nativeDataPosition(long j);

    @CriticalNative
    private static native int nativeDataSize(long j);

    private static native void nativeDestroy(long j);

    private static native void nativeEnforceInterface(long j, String str);

    private static native long nativeFreeBuffer(long j);

    @CriticalNative
    private static native long nativeGetBlobAshmemSize(long j);

    @CriticalNative
    private static native boolean nativeHasFileDescriptors(long j);

    private static native byte[] nativeMarshall(long j);

    @CriticalNative
    private static native boolean nativePushAllowFds(long j, boolean z);

    private static native byte[] nativeReadBlob(long j);

    private static native boolean nativeReadByteArray(long j, byte[] bArr, int i);

    @CriticalNative
    private static native double nativeReadDouble(long j);

    private static native FileDescriptor nativeReadFileDescriptor(long j);

    @CriticalNative
    private static native float nativeReadFloat(long j);

    @CriticalNative
    private static native int nativeReadInt(long j);

    @CriticalNative
    private static native long nativeReadLong(long j);

    static native String nativeReadString(long j);

    private static native IBinder nativeReadStrongBinder(long j);

    @CriticalNative
    private static native void nativeRestoreAllowFds(long j, boolean z);

    @FastNative
    private static native void nativeSetDataCapacity(long j, int i);

    @CriticalNative
    private static native void nativeSetDataPosition(long j, int i);

    @FastNative
    private static native long nativeSetDataSize(long j, int i);

    private static native long nativeUnmarshall(long j, byte[] bArr, int i, int i2);

    private static native void nativeWriteBlob(long j, byte[] bArr, int i, int i2);

    private static native void nativeWriteByteArray(long j, byte[] bArr, int i, int i2);

    @FastNative
    private static native void nativeWriteDouble(long j, double d);

    private static native long nativeWriteFileDescriptor(long j, FileDescriptor fileDescriptor);

    @FastNative
    private static native void nativeWriteFloat(long j, float f);

    @FastNative
    private static native void nativeWriteInt(long j, int i);

    private static native void nativeWriteInterfaceToken(long j, String str);

    @FastNative
    private static native void nativeWriteLong(long j, long j2);

    static native void nativeWriteString(long j, String str);

    private static native void nativeWriteStrongBinder(long j, IBinder iBinder);

    @Deprecated
    static native FileDescriptor openFileDescriptor(String str, int i) throws FileNotFoundException;

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class ReadWriteHelper {
        public static final ReadWriteHelper DEFAULT = new ReadWriteHelper();

        public void writeString(Parcel parcel, String str) {
            Parcel.nativeWriteString(parcel.mNativePtr, str);
        }

        public String readString(Parcel parcel) {
            return Parcel.nativeReadString(parcel.mNativePtr);
        }
    }

    public static Parcel obtain() {
        Parcel[] parcelArr = sOwnedPool;
        synchronized (parcelArr) {
            for (int i = 0; i < 6; i++) {
                try {
                    Parcel parcel = parcelArr[i];
                    if (parcel != null) {
                        parcelArr[i] = null;
                        parcel.mReadWriteHelper = ReadWriteHelper.DEFAULT;
                        return parcel;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return new Parcel(0L);
        }
    }

    public final void recycle() {
        Parcel[] parcelArr;
        freeBuffer();
        if (this.mOwnsNativeParcelObject) {
            parcelArr = sOwnedPool;
        } else {
            this.mNativePtr = 0L;
            parcelArr = sHolderPool;
        }
        synchronized (parcelArr) {
            for (int i = 0; i < 6; i++) {
                try {
                    if (parcelArr[i] == null) {
                        parcelArr[i] = this;
                        return;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public void setReadWriteHelper(ReadWriteHelper readWriteHelper) {
        if (readWriteHelper == null) {
            readWriteHelper = ReadWriteHelper.DEFAULT;
        }
        this.mReadWriteHelper = readWriteHelper;
    }

    public boolean hasReadWriteHelper() {
        return (this.mReadWriteHelper == null || this.mReadWriteHelper == ReadWriteHelper.DEFAULT) ? false : true;
    }

    public final int dataSize() {
        return nativeDataSize(this.mNativePtr);
    }

    public final int dataAvail() {
        return nativeDataAvail(this.mNativePtr);
    }

    public final int dataPosition() {
        return nativeDataPosition(this.mNativePtr);
    }

    public final int dataCapacity() {
        return nativeDataCapacity(this.mNativePtr);
    }

    public final void setDataSize(int i) {
        updateNativeSize(nativeSetDataSize(this.mNativePtr, i));
    }

    public final void setDataPosition(int i) {
        nativeSetDataPosition(this.mNativePtr, i);
    }

    public final void setDataCapacity(int i) {
        nativeSetDataCapacity(this.mNativePtr, i);
    }

    public final boolean pushAllowFds(boolean z) {
        return nativePushAllowFds(this.mNativePtr, z);
    }

    public final void restoreAllowFds(boolean z) {
        nativeRestoreAllowFds(this.mNativePtr, z);
    }

    public final byte[] marshall() {
        return nativeMarshall(this.mNativePtr);
    }

    public final void unmarshall(byte[] bArr, int i, int i2) {
        updateNativeSize(nativeUnmarshall(this.mNativePtr, bArr, i, i2));
    }

    public final void appendFrom(Parcel parcel, int i, int i2) {
        updateNativeSize(nativeAppendFrom(this.mNativePtr, parcel.mNativePtr, i, i2));
    }

    public final int compareData(Parcel parcel) {
        return nativeCompareData(this.mNativePtr, parcel.mNativePtr);
    }

    public final void setClassCookie(Class cls, Object obj) {
        if (this.mClassCookies == null) {
            this.mClassCookies = new ArrayMap<>();
        }
        this.mClassCookies.put(cls, obj);
    }

    public final Object getClassCookie(Class cls) {
        if (this.mClassCookies != null) {
            return this.mClassCookies.get(cls);
        }
        return null;
    }

    public final void adoptClassCookies(Parcel parcel) {
        this.mClassCookies = parcel.mClassCookies;
    }

    public Map<Class, Object> copyClassCookies() {
        return new ArrayMap(this.mClassCookies);
    }

    public void putClassCookies(Map<Class, Object> map) {
        if (map == null) {
            return;
        }
        if (this.mClassCookies == null) {
            this.mClassCookies = new ArrayMap<>();
        }
        this.mClassCookies.putAll(map);
    }

    public final boolean hasFileDescriptors() {
        return nativeHasFileDescriptors(this.mNativePtr);
    }

    public final void writeInterfaceToken(String str) {
        nativeWriteInterfaceToken(this.mNativePtr, str);
    }

    public final void enforceInterface(String str) {
        nativeEnforceInterface(this.mNativePtr, str);
    }

    public final void writeByteArray(byte[] bArr) {
        writeByteArray(bArr, 0, bArr != null ? bArr.length : 0);
    }

    public final void writeByteArray(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            writeInt(-1);
        } else {
            Arrays.checkOffsetAndCount(bArr.length, i, i2);
            nativeWriteByteArray(this.mNativePtr, bArr, i, i2);
        }
    }

    public final void writeBlob(byte[] bArr) {
        writeBlob(bArr, 0, bArr != null ? bArr.length : 0);
    }

    public final void writeBlob(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            writeInt(-1);
        } else {
            Arrays.checkOffsetAndCount(bArr.length, i, i2);
            nativeWriteBlob(this.mNativePtr, bArr, i, i2);
        }
    }

    public final void writeInt(int i) {
        nativeWriteInt(this.mNativePtr, i);
    }

    public final void writeLong(long j) {
        nativeWriteLong(this.mNativePtr, j);
    }

    public final void writeFloat(float f) {
        nativeWriteFloat(this.mNativePtr, f);
    }

    public final void writeDouble(double d) {
        nativeWriteDouble(this.mNativePtr, d);
    }

    public final void writeString(String str) {
        this.mReadWriteHelper.writeString(this, str);
    }

    public void writeStringNoHelper(String str) {
        nativeWriteString(this.mNativePtr, str);
    }

    public final void writeBoolean(boolean z) {
        writeInt(z ? 1 : 0);
    }

    public final void writeCharSequence(CharSequence charSequence) {
        TextUtils.writeToParcel(charSequence, this, 0);
    }

    public final void writeStrongBinder(IBinder iBinder) {
        nativeWriteStrongBinder(this.mNativePtr, iBinder);
    }

    public final void writeStrongInterface(IInterface iInterface) {
        writeStrongBinder(iInterface == null ? null : iInterface.asBinder());
    }

    public final void writeFileDescriptor(FileDescriptor fileDescriptor) {
        updateNativeSize(nativeWriteFileDescriptor(this.mNativePtr, fileDescriptor));
    }

    private void updateNativeSize(long j) {
        if (this.mOwnsNativeParcelObject) {
            if (j > 2147483647L) {
                j = 2147483647L;
            }
            if (j != this.mNativeSize) {
                int i = (int) (j - this.mNativeSize);
                if (i > 0) {
                    VMRuntime.getRuntime().registerNativeAllocation(i);
                } else {
                    VMRuntime.getRuntime().registerNativeFree(-i);
                }
                this.mNativeSize = j;
            }
        }
    }

    public final void writeRawFileDescriptor(FileDescriptor fileDescriptor) {
        nativeWriteFileDescriptor(this.mNativePtr, fileDescriptor);
    }

    public final void writeRawFileDescriptorArray(FileDescriptor[] fileDescriptorArr) {
        if (fileDescriptorArr != null) {
            writeInt(fileDescriptorArr.length);
            for (FileDescriptor fileDescriptor : fileDescriptorArr) {
                writeRawFileDescriptor(fileDescriptor);
            }
            return;
        }
        writeInt(-1);
    }

    public final void writeByte(byte b) {
        writeInt(b);
    }

    public final void writeMap(Map map) {
        writeMapInternal(map);
    }

    void writeMapInternal(Map<String, Object> map) {
        if (map == null) {
            writeInt(-1);
            return;
        }
        Set<Map.Entry<String, Object>> entrySet = map.entrySet();
        int size = entrySet.size();
        writeInt(size);
        for (Map.Entry<String, Object> entry : entrySet) {
            writeValue(entry.getKey());
            writeValue(entry.getValue());
            size--;
        }
        if (size != 0) {
            throw new BadParcelableException("Map size does not match number of entries!");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeArrayMapInternal(ArrayMap<String, Object> arrayMap) {
        if (arrayMap == null) {
            writeInt(-1);
            return;
        }
        int size = arrayMap.size();
        writeInt(size);
        for (int i = 0; i < size; i++) {
            writeString(arrayMap.keyAt(i));
            writeValue(arrayMap.valueAt(i));
        }
    }

    public void writeArrayMap(ArrayMap<String, Object> arrayMap) {
        writeArrayMapInternal(arrayMap);
    }

    public void writeArraySet(ArraySet<? extends Object> arraySet) {
        int size = arraySet != null ? arraySet.size() : -1;
        writeInt(size);
        for (int i = 0; i < size; i++) {
            writeValue(arraySet.valueAt(i));
        }
    }

    public final void writeBundle(Bundle bundle) {
        if (bundle == null) {
            writeInt(-1);
        } else {
            bundle.writeToParcel(this, 0);
        }
    }

    public final void writePersistableBundle(PersistableBundle persistableBundle) {
        if (persistableBundle == null) {
            writeInt(-1);
        } else {
            persistableBundle.writeToParcel(this, 0);
        }
    }

    public final void writeSize(Size size) {
        writeInt(size.getWidth());
        writeInt(size.getHeight());
    }

    public final void writeSizeF(SizeF sizeF) {
        writeFloat(sizeF.getWidth());
        writeFloat(sizeF.getHeight());
    }

    public final void writeList(List list) {
        if (list == null) {
            writeInt(-1);
            return;
        }
        int size = list.size();
        writeInt(size);
        for (int i = 0; i < size; i++) {
            writeValue(list.get(i));
        }
    }

    public final void writeArray(Object[] objArr) {
        if (objArr == null) {
            writeInt(-1);
            return;
        }
        writeInt(objArr.length);
        for (Object obj : objArr) {
            writeValue(obj);
        }
    }

    public final void writeSparseArray(SparseArray<Object> sparseArray) {
        if (sparseArray == null) {
            writeInt(-1);
            return;
        }
        int size = sparseArray.size();
        writeInt(size);
        for (int i = 0; i < size; i++) {
            writeInt(sparseArray.keyAt(i));
            writeValue(sparseArray.valueAt(i));
        }
    }

    public final void writeSparseBooleanArray(SparseBooleanArray sparseBooleanArray) {
        if (sparseBooleanArray == null) {
            writeInt(-1);
            return;
        }
        int size = sparseBooleanArray.size();
        writeInt(size);
        for (int i = 0; i < size; i++) {
            writeInt(sparseBooleanArray.keyAt(i));
            writeByte(sparseBooleanArray.valueAt(i) ? (byte) 1 : (byte) 0);
        }
    }

    public final void writeSparseIntArray(SparseIntArray sparseIntArray) {
        if (sparseIntArray == null) {
            writeInt(-1);
            return;
        }
        int size = sparseIntArray.size();
        writeInt(size);
        for (int i = 0; i < size; i++) {
            writeInt(sparseIntArray.keyAt(i));
            writeInt(sparseIntArray.valueAt(i));
        }
    }

    public final void writeBooleanArray(boolean[] zArr) {
        if (zArr != null) {
            writeInt(zArr.length);
            for (boolean z : zArr) {
                writeInt(z ? 1 : 0);
            }
            return;
        }
        writeInt(-1);
    }

    public final boolean[] createBooleanArray() {
        int readInt = readInt();
        if (readInt < 0 || readInt > (dataAvail() >> 2)) {
            return null;
        }
        boolean[] zArr = new boolean[readInt];
        for (int i = 0; i < readInt; i++) {
            zArr[i] = readInt() != 0;
        }
        return zArr;
    }

    public final void readBooleanArray(boolean[] zArr) {
        int readInt = readInt();
        if (readInt != zArr.length) {
            throw new RuntimeException("bad array lengths");
        }
        for (int i = 0; i < readInt; i++) {
            zArr[i] = readInt() != 0;
        }
    }

    public final void writeCharArray(char[] cArr) {
        if (cArr != null) {
            writeInt(cArr.length);
            for (char c : cArr) {
                writeInt(c);
            }
            return;
        }
        writeInt(-1);
    }

    public final char[] createCharArray() {
        int readInt = readInt();
        if (readInt < 0 || readInt > (dataAvail() >> 2)) {
            return null;
        }
        char[] cArr = new char[readInt];
        for (int i = 0; i < readInt; i++) {
            cArr[i] = (char) readInt();
        }
        return cArr;
    }

    public final void readCharArray(char[] cArr) {
        int readInt = readInt();
        if (readInt != cArr.length) {
            throw new RuntimeException("bad array lengths");
        }
        for (int i = 0; i < readInt; i++) {
            cArr[i] = (char) readInt();
        }
    }

    public final void writeIntArray(int[] iArr) {
        if (iArr != null) {
            writeInt(iArr.length);
            for (int i : iArr) {
                writeInt(i);
            }
            return;
        }
        writeInt(-1);
    }

    public final int[] createIntArray() {
        int readInt = readInt();
        if (readInt < 0 || readInt > (dataAvail() >> 2)) {
            return null;
        }
        int[] iArr = new int[readInt];
        for (int i = 0; i < readInt; i++) {
            iArr[i] = readInt();
        }
        return iArr;
    }

    public final void readIntArray(int[] iArr) {
        int readInt = readInt();
        if (readInt != iArr.length) {
            throw new RuntimeException("bad array lengths");
        }
        for (int i = 0; i < readInt; i++) {
            iArr[i] = readInt();
        }
    }

    public final void writeLongArray(long[] jArr) {
        if (jArr != null) {
            writeInt(jArr.length);
            for (long j : jArr) {
                writeLong(j);
            }
            return;
        }
        writeInt(-1);
    }

    public final long[] createLongArray() {
        int readInt = readInt();
        if (readInt < 0 || readInt > (dataAvail() >> 3)) {
            return null;
        }
        long[] jArr = new long[readInt];
        for (int i = 0; i < readInt; i++) {
            jArr[i] = readLong();
        }
        return jArr;
    }

    public final void readLongArray(long[] jArr) {
        int readInt = readInt();
        if (readInt != jArr.length) {
            throw new RuntimeException("bad array lengths");
        }
        for (int i = 0; i < readInt; i++) {
            jArr[i] = readLong();
        }
    }

    public final void writeFloatArray(float[] fArr) {
        if (fArr != null) {
            writeInt(fArr.length);
            for (float f : fArr) {
                writeFloat(f);
            }
            return;
        }
        writeInt(-1);
    }

    public final float[] createFloatArray() {
        int readInt = readInt();
        if (readInt < 0 || readInt > (dataAvail() >> 2)) {
            return null;
        }
        float[] fArr = new float[readInt];
        for (int i = 0; i < readInt; i++) {
            fArr[i] = readFloat();
        }
        return fArr;
    }

    public final void readFloatArray(float[] fArr) {
        int readInt = readInt();
        if (readInt != fArr.length) {
            throw new RuntimeException("bad array lengths");
        }
        for (int i = 0; i < readInt; i++) {
            fArr[i] = readFloat();
        }
    }

    public final void writeDoubleArray(double[] dArr) {
        if (dArr != null) {
            writeInt(dArr.length);
            for (double d : dArr) {
                writeDouble(d);
            }
            return;
        }
        writeInt(-1);
    }

    public final double[] createDoubleArray() {
        int readInt = readInt();
        if (readInt < 0 || readInt > (dataAvail() >> 3)) {
            return null;
        }
        double[] dArr = new double[readInt];
        for (int i = 0; i < readInt; i++) {
            dArr[i] = readDouble();
        }
        return dArr;
    }

    public final void readDoubleArray(double[] dArr) {
        int readInt = readInt();
        if (readInt != dArr.length) {
            throw new RuntimeException("bad array lengths");
        }
        for (int i = 0; i < readInt; i++) {
            dArr[i] = readDouble();
        }
    }

    public final void writeStringArray(String[] strArr) {
        if (strArr != null) {
            writeInt(strArr.length);
            for (String str : strArr) {
                writeString(str);
            }
            return;
        }
        writeInt(-1);
    }

    public final String[] createStringArray() {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        String[] strArr = new String[readInt];
        for (int i = 0; i < readInt; i++) {
            strArr[i] = readString();
        }
        return strArr;
    }

    public final void readStringArray(String[] strArr) {
        int readInt = readInt();
        if (readInt != strArr.length) {
            throw new RuntimeException("bad array lengths");
        }
        for (int i = 0; i < readInt; i++) {
            strArr[i] = readString();
        }
    }

    public final void writeBinderArray(IBinder[] iBinderArr) {
        if (iBinderArr != null) {
            writeInt(iBinderArr.length);
            for (IBinder iBinder : iBinderArr) {
                writeStrongBinder(iBinder);
            }
            return;
        }
        writeInt(-1);
    }

    public final void writeCharSequenceArray(CharSequence[] charSequenceArr) {
        if (charSequenceArr != null) {
            writeInt(charSequenceArr.length);
            for (CharSequence charSequence : charSequenceArr) {
                writeCharSequence(charSequence);
            }
            return;
        }
        writeInt(-1);
    }

    public final void writeCharSequenceList(ArrayList<CharSequence> arrayList) {
        if (arrayList != null) {
            int size = arrayList.size();
            writeInt(size);
            for (int i = 0; i < size; i++) {
                writeCharSequence(arrayList.get(i));
            }
            return;
        }
        writeInt(-1);
    }

    public final IBinder[] createBinderArray() {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        IBinder[] iBinderArr = new IBinder[readInt];
        for (int i = 0; i < readInt; i++) {
            iBinderArr[i] = readStrongBinder();
        }
        return iBinderArr;
    }

    public final void readBinderArray(IBinder[] iBinderArr) {
        int readInt = readInt();
        if (readInt != iBinderArr.length) {
            throw new RuntimeException("bad array lengths");
        }
        for (int i = 0; i < readInt; i++) {
            iBinderArr[i] = readStrongBinder();
        }
    }

    public final <T extends Parcelable> void writeTypedList(List<T> list) {
        writeTypedList(list, 0);
    }

    public <T extends Parcelable> void writeTypedList(List<T> list, int i) {
        if (list == null) {
            writeInt(-1);
            return;
        }
        int size = list.size();
        writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            writeTypedObject(list.get(i2), i);
        }
    }

    public final void writeStringList(List<String> list) {
        if (list == null) {
            writeInt(-1);
            return;
        }
        int size = list.size();
        writeInt(size);
        for (int i = 0; i < size; i++) {
            writeString(list.get(i));
        }
    }

    public final void writeBinderList(List<IBinder> list) {
        if (list == null) {
            writeInt(-1);
            return;
        }
        int size = list.size();
        writeInt(size);
        for (int i = 0; i < size; i++) {
            writeStrongBinder(list.get(i));
        }
    }

    public final <T extends Parcelable> void writeParcelableList(List<T> list, int i) {
        if (list == null) {
            writeInt(-1);
            return;
        }
        int size = list.size();
        writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            writeParcelable(list.get(i2), i);
        }
    }

    public final <T extends Parcelable> void writeTypedArray(T[] tArr, int i) {
        if (tArr != null) {
            writeInt(tArr.length);
            for (T t : tArr) {
                writeTypedObject(t, i);
            }
            return;
        }
        writeInt(-1);
    }

    public final <T extends Parcelable> void writeTypedObject(T t, int i) {
        if (t != null) {
            writeInt(1);
            t.writeToParcel(this, i);
        } else {
            writeInt(0);
        }
    }

    public final void writeValue(Object obj) {
        if (obj == null) {
            writeInt(-1);
            return;
        }
        if (obj instanceof String) {
            writeInt(0);
            writeString((String) obj);
            return;
        }
        if (obj instanceof Integer) {
            writeInt(1);
            writeInt(((Integer) obj).intValue());
            return;
        }
        if (obj instanceof Map) {
            writeInt(2);
            writeMap((Map) obj);
            return;
        }
        if (obj instanceof Bundle) {
            writeInt(3);
            writeBundle((Bundle) obj);
            return;
        }
        if (obj instanceof PersistableBundle) {
            writeInt(25);
            writePersistableBundle((PersistableBundle) obj);
            return;
        }
        if (obj instanceof Parcelable) {
            writeInt(4);
            writeParcelable((Parcelable) obj, 0);
            return;
        }
        if (obj instanceof Short) {
            writeInt(5);
            writeInt(((Short) obj).intValue());
            return;
        }
        if (obj instanceof Long) {
            writeInt(6);
            writeLong(((Long) obj).longValue());
            return;
        }
        if (obj instanceof Float) {
            writeInt(7);
            writeFloat(((Float) obj).floatValue());
            return;
        }
        if (obj instanceof Double) {
            writeInt(8);
            writeDouble(((Double) obj).doubleValue());
            return;
        }
        if (obj instanceof Boolean) {
            writeInt(9);
            writeInt(((Boolean) obj).booleanValue() ? 1 : 0);
            return;
        }
        if (obj instanceof CharSequence) {
            writeInt(10);
            writeCharSequence((CharSequence) obj);
            return;
        }
        if (obj instanceof List) {
            writeInt(11);
            writeList((List) obj);
            return;
        }
        if (obj instanceof SparseArray) {
            writeInt(12);
            writeSparseArray((SparseArray) obj);
            return;
        }
        if (obj instanceof boolean[]) {
            writeInt(23);
            writeBooleanArray((boolean[]) obj);
            return;
        }
        if (obj instanceof byte[]) {
            writeInt(13);
            writeByteArray((byte[]) obj);
            return;
        }
        if (obj instanceof String[]) {
            writeInt(14);
            writeStringArray((String[]) obj);
            return;
        }
        if (obj instanceof CharSequence[]) {
            writeInt(24);
            writeCharSequenceArray((CharSequence[]) obj);
            return;
        }
        if (obj instanceof IBinder) {
            writeInt(15);
            writeStrongBinder((IBinder) obj);
            return;
        }
        if (obj instanceof Parcelable[]) {
            writeInt(16);
            writeParcelableArray((Parcelable[]) obj, 0);
            return;
        }
        if (obj instanceof int[]) {
            writeInt(18);
            writeIntArray((int[]) obj);
            return;
        }
        if (obj instanceof long[]) {
            writeInt(19);
            writeLongArray((long[]) obj);
            return;
        }
        if (obj instanceof Byte) {
            writeInt(20);
            writeInt(((Byte) obj).byteValue());
            return;
        }
        if (obj instanceof Size) {
            writeInt(26);
            writeSize((Size) obj);
            return;
        }
        if (obj instanceof SizeF) {
            writeInt(27);
            writeSizeF((SizeF) obj);
            return;
        }
        if (obj instanceof double[]) {
            writeInt(28);
            writeDoubleArray((double[]) obj);
            return;
        }
        Class<?> cls = obj.getClass();
        if (cls.isArray() && cls.getComponentType() == Object.class) {
            writeInt(17);
            writeArray((Object[]) obj);
        } else if (obj instanceof Serializable) {
            writeInt(21);
            writeSerializable((Serializable) obj);
        } else {
            throw new RuntimeException("Parcel: unable to marshal value " + obj);
        }
    }

    public final void writeParcelable(Parcelable parcelable, int i) {
        if (parcelable == null) {
            writeString(null);
        } else {
            writeParcelableCreator(parcelable);
            parcelable.writeToParcel(this, i);
        }
    }

    public final void writeParcelableCreator(Parcelable parcelable) {
        writeString(parcelable.getClass().getName());
    }

    public final void writeSerializable(Serializable serializable) {
        if (serializable == null) {
            writeString(null);
            return;
        }
        String name = serializable.getClass().getName();
        writeString(name);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            objectOutputStream.writeObject(serializable);
            objectOutputStream.close();
            writeByteArray(byteArrayOutputStream.toByteArray());
        } catch (IOException e) {
            throw new RuntimeException("Parcelable encountered IOException writing serializable object (name = " + name + ")", e);
        }
    }

    public static void setStackTraceParceling(boolean z) {
        sParcelExceptionStackTrace = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void writeException(Exception exc) {
        int i;
        if ((exc instanceof Parcelable) && exc.getClass().getClassLoader() == Parcelable.class.getClassLoader()) {
            i = -9;
        } else if (exc instanceof SecurityException) {
            i = -1;
        } else if (exc instanceof BadParcelableException) {
            i = -2;
        } else if (exc instanceof IllegalArgumentException) {
            i = -3;
        } else if (exc instanceof NullPointerException) {
            i = -4;
        } else if (exc instanceof IllegalStateException) {
            i = -5;
        } else if (exc instanceof NetworkOnMainThreadException) {
            i = -6;
        } else if (exc instanceof UnsupportedOperationException) {
            i = -7;
        } else {
            i = exc instanceof ServiceSpecificException ? -8 : 0;
        }
        writeInt(i);
        StrictMode.clearGatheredViolations();
        if (i == 0) {
            if (exc instanceof RuntimeException) {
                throw ((RuntimeException) exc);
            }
            throw new RuntimeException(exc);
        }
        writeString(exc.getMessage());
        long elapsedRealtime = sParcelExceptionStackTrace ? SystemClock.elapsedRealtime() : 0L;
        if (sParcelExceptionStackTrace && elapsedRealtime - sLastWriteExceptionStackTrace > 1000) {
            sLastWriteExceptionStackTrace = elapsedRealtime;
            int dataPosition = dataPosition();
            writeInt(0);
            StackTraceElement[] stackTrace = exc.getStackTrace();
            int min = Math.min(stackTrace.length, 5);
            StringBuilder sb = new StringBuilder();
            for (int i2 = 0; i2 < min; i2++) {
                sb.append("\tat ");
                sb.append(stackTrace[i2]);
                sb.append('\n');
            }
            writeString(sb.toString());
            int dataPosition2 = dataPosition();
            setDataPosition(dataPosition);
            writeInt(dataPosition2 - dataPosition);
            setDataPosition(dataPosition2);
        } else {
            writeInt(0);
        }
        switch (i) {
            case -9:
                int dataPosition3 = dataPosition();
                writeInt(0);
                writeParcelable((Parcelable) exc, 1);
                int dataPosition4 = dataPosition();
                setDataPosition(dataPosition3);
                writeInt(dataPosition4 - dataPosition3);
                setDataPosition(dataPosition4);
                return;
            case -8:
                writeInt(((ServiceSpecificException) exc).errorCode);
                return;
            default:
                return;
        }
    }

    public final void writeNoException() {
        if (StrictMode.hasGatheredViolations()) {
            writeInt(EX_HAS_REPLY_HEADER);
            int dataPosition = dataPosition();
            writeInt(0);
            StrictMode.writeGatheredViolationsToParcel(this);
            int dataPosition2 = dataPosition();
            setDataPosition(dataPosition);
            writeInt(dataPosition2 - dataPosition);
            setDataPosition(dataPosition2);
            return;
        }
        writeInt(0);
    }

    public final void readException() {
        int readExceptionCode = readExceptionCode();
        if (readExceptionCode != 0) {
            readException(readExceptionCode, readString());
        }
    }

    public final int readExceptionCode() {
        int readInt = readInt();
        if (readInt != EX_HAS_REPLY_HEADER) {
            return readInt;
        }
        if (readInt() == 0) {
            Log.e(TAG, "Unexpected zero-sized Parcel reply header.");
            return 0;
        }
        StrictMode.readAndHandleBinderCallViolations(this);
        return 0;
    }

    public final void readException(int i, String str) {
        String readString = readInt() > 0 ? readString() : null;
        Exception createException = createException(i, str);
        if (readString != null) {
            RemoteException remoteException = new RemoteException("Remote stack trace:\n" + readString, null, false, false);
            try {
                Throwable rootCause = ExceptionUtils.getRootCause(createException);
                if (rootCause != null) {
                    rootCause.initCause(remoteException);
                }
            } catch (RuntimeException e) {
                Log.e(TAG, "Cannot set cause " + remoteException + " for " + createException, e);
            }
        }
        SneakyThrow.sneakyThrow(createException);
    }

    private Exception createException(int i, String str) {
        switch (i) {
            case -9:
                if (readInt() > 0) {
                    return (Exception) readParcelable(Parcelable.class.getClassLoader());
                }
                return new RuntimeException(str + " [missing Parcelable]");
            case -8:
                return new ServiceSpecificException(readInt(), str);
            case -7:
                return new UnsupportedOperationException(str);
            case -6:
                return new NetworkOnMainThreadException();
            case -5:
                return new IllegalStateException(str);
            case -4:
                return new NullPointerException(str);
            case -3:
                return new IllegalArgumentException(str);
            case -2:
                return new BadParcelableException(str);
            case -1:
                return new SecurityException(str);
            default:
                return new RuntimeException("Unknown exception code: " + i + " msg " + str);
        }
    }

    public final int readInt() {
        return nativeReadInt(this.mNativePtr);
    }

    public final long readLong() {
        return nativeReadLong(this.mNativePtr);
    }

    public final float readFloat() {
        return nativeReadFloat(this.mNativePtr);
    }

    public final double readDouble() {
        return nativeReadDouble(this.mNativePtr);
    }

    public final String readString() {
        return this.mReadWriteHelper.readString(this);
    }

    public String readStringNoHelper() {
        return nativeReadString(this.mNativePtr);
    }

    public final boolean readBoolean() {
        return readInt() != 0;
    }

    public final CharSequence readCharSequence() {
        return TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(this);
    }

    public final IBinder readStrongBinder() {
        return nativeReadStrongBinder(this.mNativePtr);
    }

    public final ParcelFileDescriptor readFileDescriptor() {
        FileDescriptor nativeReadFileDescriptor = nativeReadFileDescriptor(this.mNativePtr);
        if (nativeReadFileDescriptor != null) {
            return new ParcelFileDescriptor(nativeReadFileDescriptor);
        }
        return null;
    }

    public final FileDescriptor readRawFileDescriptor() {
        return nativeReadFileDescriptor(this.mNativePtr);
    }

    public final FileDescriptor[] createRawFileDescriptorArray() {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        FileDescriptor[] fileDescriptorArr = new FileDescriptor[readInt];
        for (int i = 0; i < readInt; i++) {
            fileDescriptorArr[i] = readRawFileDescriptor();
        }
        return fileDescriptorArr;
    }

    public final void readRawFileDescriptorArray(FileDescriptor[] fileDescriptorArr) {
        int readInt = readInt();
        if (readInt != fileDescriptorArr.length) {
            throw new RuntimeException("bad array lengths");
        }
        for (int i = 0; i < readInt; i++) {
            fileDescriptorArr[i] = readRawFileDescriptor();
        }
    }

    public final byte readByte() {
        return (byte) (readInt() & 255);
    }

    public final void readMap(Map map, ClassLoader classLoader) {
        readMapInternal(map, readInt(), classLoader);
    }

    public final void readList(List list, ClassLoader classLoader) {
        readListInternal(list, readInt(), classLoader);
    }

    public final HashMap readHashMap(ClassLoader classLoader) {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        HashMap hashMap = new HashMap(readInt);
        readMapInternal(hashMap, readInt, classLoader);
        return hashMap;
    }

    public final Bundle readBundle() {
        return readBundle(null);
    }

    public final Bundle readBundle(ClassLoader classLoader) {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        Bundle bundle = new Bundle(this, readInt);
        if (classLoader != null) {
            bundle.setClassLoader(classLoader);
        }
        return bundle;
    }

    public final PersistableBundle readPersistableBundle() {
        return readPersistableBundle(null);
    }

    public final PersistableBundle readPersistableBundle(ClassLoader classLoader) {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        PersistableBundle persistableBundle = new PersistableBundle(this, readInt);
        if (classLoader != null) {
            persistableBundle.setClassLoader(classLoader);
        }
        return persistableBundle;
    }

    public final Size readSize() {
        return new Size(readInt(), readInt());
    }

    public final SizeF readSizeF() {
        return new SizeF(readFloat(), readFloat());
    }

    public final byte[] createByteArray() {
        return nativeCreateByteArray(this.mNativePtr);
    }

    public final void readByteArray(byte[] bArr) {
        if (!nativeReadByteArray(this.mNativePtr, bArr, bArr != null ? bArr.length : 0)) {
            throw new RuntimeException("bad array lengths");
        }
    }

    public final byte[] readBlob() {
        return nativeReadBlob(this.mNativePtr);
    }

    public final String[] readStringArray() {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        String[] strArr = new String[readInt];
        for (int i = 0; i < readInt; i++) {
            strArr[i] = readString();
        }
        return strArr;
    }

    public final CharSequence[] readCharSequenceArray() {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        CharSequence[] charSequenceArr = new CharSequence[readInt];
        for (int i = 0; i < readInt; i++) {
            charSequenceArr[i] = readCharSequence();
        }
        return charSequenceArr;
    }

    public final ArrayList<CharSequence> readCharSequenceList() {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        ArrayList<CharSequence> arrayList = new ArrayList<>(readInt);
        for (int i = 0; i < readInt; i++) {
            arrayList.add(readCharSequence());
        }
        return arrayList;
    }

    public final ArrayList readArrayList(ClassLoader classLoader) {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(readInt);
        readListInternal(arrayList, readInt, classLoader);
        return arrayList;
    }

    public final Object[] readArray(ClassLoader classLoader) {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        Object[] objArr = new Object[readInt];
        readArrayInternal(objArr, readInt, classLoader);
        return objArr;
    }

    public final SparseArray readSparseArray(ClassLoader classLoader) {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        SparseArray sparseArray = new SparseArray(readInt);
        readSparseArrayInternal(sparseArray, readInt, classLoader);
        return sparseArray;
    }

    public final SparseBooleanArray readSparseBooleanArray() {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray(readInt);
        readSparseBooleanArrayInternal(sparseBooleanArray, readInt);
        return sparseBooleanArray;
    }

    public final SparseIntArray readSparseIntArray() {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        SparseIntArray sparseIntArray = new SparseIntArray(readInt);
        readSparseIntArrayInternal(sparseIntArray, readInt);
        return sparseIntArray;
    }

    public final <T> ArrayList<T> createTypedArrayList(Parcelable.Creator<T> creator) {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        GridLayout.Assoc assoc = (ArrayList<T>) new ArrayList(readInt);
        while (readInt > 0) {
            assoc.add(readTypedObject(creator));
            readInt--;
        }
        return assoc;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T> void readTypedList(List<T> list, Parcelable.Creator<T> creator) {
        int size = list.size();
        int readInt = readInt();
        int i = 0;
        while (i < size && i < readInt) {
            list.set(i, readTypedObject(creator));
            i++;
        }
        while (i < readInt) {
            list.add(readTypedObject(creator));
            i++;
        }
        while (i < size) {
            list.remove(readInt);
            i++;
        }
    }

    public final ArrayList<String> createStringArrayList() {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        ArrayList<String> arrayList = new ArrayList<>(readInt);
        while (readInt > 0) {
            arrayList.add(readString());
            readInt--;
        }
        return arrayList;
    }

    public final ArrayList<IBinder> createBinderArrayList() {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        ArrayList<IBinder> arrayList = new ArrayList<>(readInt);
        while (readInt > 0) {
            arrayList.add(readStrongBinder());
            readInt--;
        }
        return arrayList;
    }

    public final void readStringList(List<String> list) {
        int size = list.size();
        int readInt = readInt();
        int i = 0;
        while (i < size && i < readInt) {
            list.set(i, readString());
            i++;
        }
        while (i < readInt) {
            list.add(readString());
            i++;
        }
        while (i < size) {
            list.remove(readInt);
            i++;
        }
    }

    public final void readBinderList(List<IBinder> list) {
        int size = list.size();
        int readInt = readInt();
        int i = 0;
        while (i < size && i < readInt) {
            list.set(i, readStrongBinder());
            i++;
        }
        while (i < readInt) {
            list.add(readStrongBinder());
            i++;
        }
        while (i < size) {
            list.remove(readInt);
            i++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T extends Parcelable> List<T> readParcelableList(List<T> list, ClassLoader classLoader) {
        int readInt = readInt();
        if (readInt == -1) {
            list.clear();
            return list;
        }
        int size = list.size();
        int i = 0;
        while (i < size && i < readInt) {
            list.set(i, readParcelable(classLoader));
            i++;
        }
        while (i < readInt) {
            list.add(readParcelable(classLoader));
            i++;
        }
        while (i < size) {
            list.remove(readInt);
            i++;
        }
        return list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T> T[] createTypedArray(Parcelable.Creator<T> creator) {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        T[] newArray = creator.newArray(readInt);
        for (int i = 0; i < readInt; i++) {
            newArray[i] = readTypedObject(creator);
        }
        return newArray;
    }

    public final <T> void readTypedArray(T[] tArr, Parcelable.Creator<T> creator) {
        int readInt = readInt();
        if (readInt != tArr.length) {
            throw new RuntimeException("bad array lengths");
        }
        for (int i = 0; i < readInt; i++) {
            tArr[i] = readTypedObject(creator);
        }
    }

    @Deprecated
    public final <T> T[] readTypedArray(Parcelable.Creator<T> creator) {
        return (T[]) createTypedArray(creator);
    }

    public final <T> T readTypedObject(Parcelable.Creator<T> creator) {
        if (readInt() != 0) {
            return creator.createFromParcel(this);
        }
        return null;
    }

    public final <T extends Parcelable> void writeParcelableArray(T[] tArr, int i) {
        if (tArr != null) {
            writeInt(tArr.length);
            for (T t : tArr) {
                writeParcelable(t, i);
            }
            return;
        }
        writeInt(-1);
    }

    public final Object readValue(ClassLoader classLoader) {
        int readInt = readInt();
        switch (readInt) {
            case -1:
                return null;
            case 0:
                return readString();
            case 1:
                return Integer.valueOf(readInt());
            case 2:
                return readHashMap(classLoader);
            case 3:
                return readBundle(classLoader);
            case 4:
                return readParcelable(classLoader);
            case 5:
                return Short.valueOf((short) readInt());
            case 6:
                return Long.valueOf(readLong());
            case 7:
                return Float.valueOf(readFloat());
            case 8:
                return Double.valueOf(readDouble());
            case 9:
                return Boolean.valueOf(readInt() == 1);
            case 10:
                return readCharSequence();
            case 11:
                return readArrayList(classLoader);
            case 12:
                return readSparseArray(classLoader);
            case 13:
                return createByteArray();
            case 14:
                return readStringArray();
            case 15:
                return readStrongBinder();
            case 16:
                return readParcelableArray(classLoader);
            case 17:
                return readArray(classLoader);
            case 18:
                return createIntArray();
            case 19:
                return createLongArray();
            case 20:
                return Byte.valueOf(readByte());
            case 21:
                return readSerializable(classLoader);
            case 22:
                return readSparseBooleanArray();
            case 23:
                return createBooleanArray();
            case 24:
                return readCharSequenceArray();
            case 25:
                return readPersistableBundle(classLoader);
            case 26:
                return readSize();
            case 27:
                return readSizeF();
            case 28:
                return createDoubleArray();
            default:
                throw new RuntimeException("Parcel " + this + ": Unmarshalling unknown type code " + readInt + " at offset " + (dataPosition() - 4));
        }
    }

    public final <T extends Parcelable> T readParcelable(ClassLoader classLoader) {
        Parcelable.Creator<?> readParcelableCreator = readParcelableCreator(classLoader);
        if (readParcelableCreator == null) {
            return null;
        }
        if (readParcelableCreator instanceof Parcelable.ClassLoaderCreator) {
            return (T) ((Parcelable.ClassLoaderCreator) readParcelableCreator).createFromParcel(this, classLoader);
        }
        return (T) readParcelableCreator.createFromParcel(this);
    }

    public final <T extends Parcelable> T readCreator(Parcelable.Creator<?> creator, ClassLoader classLoader) {
        if (creator instanceof Parcelable.ClassLoaderCreator) {
            return (T) ((Parcelable.ClassLoaderCreator) creator).createFromParcel(this, classLoader);
        }
        return (T) creator.createFromParcel(this);
    }

    public final Parcelable.Creator<?> readParcelableCreator(ClassLoader classLoader) {
        Parcelable.Creator<?> creator;
        String readString = readString();
        if (readString == null) {
            return null;
        }
        synchronized (mCreators) {
            HashMap<String, Parcelable.Creator<?>> hashMap = mCreators.get(classLoader);
            if (hashMap == null) {
                hashMap = new HashMap<>();
                mCreators.put(classLoader, hashMap);
            }
            creator = hashMap.get(readString);
            if (creator == null) {
                if (classLoader == null) {
                    try {
                        classLoader = getClass().getClassLoader();
                    } catch (ClassNotFoundException e) {
                        Log.e(TAG, "Class not found when unmarshalling: " + readString, e);
                        throw new BadParcelableException("ClassNotFoundException when unmarshalling: " + readString);
                    } catch (IllegalAccessException e2) {
                        Log.e(TAG, "Illegal access when unmarshalling: " + readString, e2);
                        throw new BadParcelableException("IllegalAccessException when unmarshalling: " + readString);
                    } catch (NoSuchFieldException unused) {
                        throw new BadParcelableException("Parcelable protocol requires a Parcelable.Creator object called CREATOR on class " + readString);
                    }
                }
                Class<?> cls = Class.forName(readString, false, classLoader);
                if (!Parcelable.class.isAssignableFrom(cls)) {
                    throw new BadParcelableException("Parcelable protocol requires subclassing from Parcelable on class " + readString);
                }
                Field field = cls.getField("CREATOR");
                if ((field.getModifiers() & 8) == 0) {
                    throw new BadParcelableException("Parcelable protocol requires the CREATOR object to be static on class " + readString);
                }
                if (!Parcelable.Creator.class.isAssignableFrom(field.getType())) {
                    throw new BadParcelableException("Parcelable protocol requires a Parcelable.Creator object called CREATOR on class " + readString);
                }
                creator = (Parcelable.Creator) field.get(null);
                if (creator == null) {
                    throw new BadParcelableException("Parcelable protocol requires a non-null Parcelable.Creator object called CREATOR on class " + readString);
                }
                hashMap.put(readString, creator);
            }
        }
        return creator;
    }

    public final Parcelable[] readParcelableArray(ClassLoader classLoader) {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        Parcelable[] parcelableArr = new Parcelable[readInt];
        for (int i = 0; i < readInt; i++) {
            parcelableArr[i] = readParcelable(classLoader);
        }
        return parcelableArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T extends Parcelable> T[] readParcelableArray(ClassLoader classLoader, Class<T> cls) {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        T[] tArr = (T[]) ((Parcelable[]) Array.newInstance((Class<?>) cls, readInt));
        for (int i = 0; i < readInt; i++) {
            tArr[i] = readParcelable(classLoader);
        }
        return tArr;
    }

    public final Serializable readSerializable() {
        return readSerializable(null);
    }

    private final Serializable readSerializable(final ClassLoader classLoader) {
        String readString = readString();
        if (readString == null) {
            return null;
        }
        try {
            return (Serializable) new ObjectInputStream(new ByteArrayInputStream(createByteArray())) { // from class: android.os.Parcel.2
                @Override // java.io.ObjectInputStream
                protected Class<?> resolveClass(ObjectStreamClass objectStreamClass) throws IOException, ClassNotFoundException {
                    Class<?> cls;
                    return (classLoader == null || (cls = Class.forName(objectStreamClass.getName(), false, classLoader)) == null) ? super.resolveClass(objectStreamClass) : cls;
                }
            }.readObject();
        } catch (IOException e) {
            throw new RuntimeException("Parcelable encountered IOException reading a Serializable object (name = " + readString + ")", e);
        } catch (ClassNotFoundException e2) {
            throw new RuntimeException("Parcelable encountered ClassNotFoundException reading a Serializable object (name = " + readString + ")", e2);
        }
    }

    protected static final Parcel obtain(int i) {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static final Parcel obtain(long j) {
        Parcel[] parcelArr = sHolderPool;
        synchronized (parcelArr) {
            for (int i = 0; i < 6; i++) {
                try {
                    Parcel parcel = parcelArr[i];
                    if (parcel != null) {
                        parcelArr[i] = null;
                        parcel.init(j);
                        return parcel;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return new Parcel(j);
        }
    }

    private Parcel(long j) {
        init(j);
    }

    private void init(long j) {
        if (j != 0) {
            this.mNativePtr = j;
            this.mOwnsNativeParcelObject = false;
        } else {
            this.mNativePtr = nativeCreate();
            this.mOwnsNativeParcelObject = true;
        }
    }

    private void freeBuffer() {
        if (this.mOwnsNativeParcelObject) {
            updateNativeSize(nativeFreeBuffer(this.mNativePtr));
        }
        this.mReadWriteHelper = ReadWriteHelper.DEFAULT;
    }

    private void destroy() {
        if (this.mNativePtr != 0) {
            if (this.mOwnsNativeParcelObject) {
                nativeDestroy(this.mNativePtr);
                updateNativeSize(0L);
            }
            this.mNativePtr = 0L;
        }
        this.mReadWriteHelper = null;
    }

    protected void finalize() throws Throwable {
        destroy();
    }

    void readMapInternal(Map map, int i, ClassLoader classLoader) {
        while (i > 0) {
            map.put(readValue(classLoader), readValue(classLoader));
            i--;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void readArrayMapInternal(ArrayMap arrayMap, int i, ClassLoader classLoader) {
        while (i > 0) {
            arrayMap.append(readString(), readValue(classLoader));
            i--;
        }
        arrayMap.validate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void readArrayMapSafelyInternal(ArrayMap arrayMap, int i, ClassLoader classLoader) {
        while (i > 0) {
            arrayMap.put(readString(), readValue(classLoader));
            i--;
        }
    }

    public void readArrayMap(ArrayMap arrayMap, ClassLoader classLoader) {
        int readInt = readInt();
        if (readInt < 0) {
            return;
        }
        readArrayMapInternal(arrayMap, readInt, classLoader);
    }

    public ArraySet<? extends Object> readArraySet(ClassLoader classLoader) {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        ArraySet<? extends Object> arraySet = new ArraySet<>(readInt);
        for (int i = 0; i < readInt; i++) {
            arraySet.append(readValue(classLoader));
        }
        return arraySet;
    }

    private void readListInternal(List list, int i, ClassLoader classLoader) {
        while (i > 0) {
            list.add(readValue(classLoader));
            i--;
        }
    }

    private void readArrayInternal(Object[] objArr, int i, ClassLoader classLoader) {
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = readValue(classLoader);
        }
    }

    private void readSparseArrayInternal(SparseArray sparseArray, int i, ClassLoader classLoader) {
        while (i > 0) {
            sparseArray.append(readInt(), readValue(classLoader));
            i--;
        }
    }

    private void readSparseBooleanArrayInternal(SparseBooleanArray sparseBooleanArray, int i) {
        while (i > 0) {
            int readInt = readInt();
            boolean z = true;
            if (readByte() != 1) {
                z = false;
            }
            sparseBooleanArray.append(readInt, z);
            i--;
        }
    }

    private void readSparseIntArrayInternal(SparseIntArray sparseIntArray, int i) {
        while (i > 0) {
            sparseIntArray.append(readInt(), readInt());
            i--;
        }
    }

    public long getBlobAshmemSize() {
        return nativeGetBlobAshmemSize(this.mNativePtr);
    }
}
