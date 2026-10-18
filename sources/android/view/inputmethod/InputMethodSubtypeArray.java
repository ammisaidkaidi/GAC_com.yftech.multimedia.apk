package android.view.inputmethod;

import android.os.Parcel;
import android.util.Slog;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.util.List;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/* loaded from: /home/user/work/dex/classes2.dex */
public class InputMethodSubtypeArray {
    private static final String TAG = "InputMethodSubtypeArray";
    private volatile byte[] mCompressedData;
    private final int mCount;
    private volatile int mDecompressedSize;
    private volatile InputMethodSubtype[] mInstance;
    private final Object mLockObject = new Object();

    public InputMethodSubtypeArray(List<InputMethodSubtype> list) {
        if (list == null) {
            this.mCount = 0;
        } else {
            this.mCount = list.size();
            this.mInstance = (InputMethodSubtype[]) list.toArray(new InputMethodSubtype[this.mCount]);
        }
    }

    public InputMethodSubtypeArray(Parcel parcel) {
        this.mCount = parcel.readInt();
        if (this.mCount > 0) {
            this.mDecompressedSize = parcel.readInt();
            this.mCompressedData = parcel.createByteArray();
        }
    }

    public void writeToParcel(Parcel parcel) {
        int length;
        if (this.mCount == 0) {
            parcel.writeInt(this.mCount);
            return;
        }
        byte[] bArr = this.mCompressedData;
        int i = this.mDecompressedSize;
        if (bArr == null && i == 0) {
            synchronized (this.mLockObject) {
                bArr = this.mCompressedData;
                i = this.mDecompressedSize;
                if (bArr == null && i == 0) {
                    byte[] marshall = marshall(this.mInstance);
                    byte[] compress = compress(marshall);
                    if (compress == null) {
                        length = -1;
                        Slog.i(TAG, "Failed to compress data.");
                    } else {
                        length = marshall.length;
                    }
                    this.mDecompressedSize = length;
                    this.mCompressedData = compress;
                    i = length;
                    bArr = compress;
                }
            }
        }
        if (bArr != null && i > 0) {
            parcel.writeInt(this.mCount);
            parcel.writeInt(i);
            parcel.writeByteArray(bArr);
        } else {
            Slog.i(TAG, "Unexpected state. Behaving as an empty array.");
            parcel.writeInt(0);
        }
    }

    public InputMethodSubtype get(int i) {
        if (i < 0 || this.mCount <= i) {
            throw new ArrayIndexOutOfBoundsException();
        }
        InputMethodSubtype[] inputMethodSubtypeArr = this.mInstance;
        if (inputMethodSubtypeArr == null) {
            synchronized (this.mLockObject) {
                inputMethodSubtypeArr = this.mInstance;
                if (inputMethodSubtypeArr == null) {
                    byte[] decompress = decompress(this.mCompressedData, this.mDecompressedSize);
                    this.mCompressedData = null;
                    this.mDecompressedSize = 0;
                    if (decompress != null) {
                        inputMethodSubtypeArr = unmarshall(decompress);
                    } else {
                        Slog.e(TAG, "Failed to decompress data. Returns null as fallback.");
                        inputMethodSubtypeArr = new InputMethodSubtype[this.mCount];
                    }
                    this.mInstance = inputMethodSubtypeArr;
                }
            }
        }
        return inputMethodSubtypeArr[i];
    }

    public int getCount() {
        return this.mCount;
    }

    private static byte[] marshall(InputMethodSubtype[] inputMethodSubtypeArr) {
        Parcel parcel;
        try {
            parcel = Parcel.obtain();
            try {
                parcel.writeTypedArray(inputMethodSubtypeArr, 0);
                byte[] marshall = parcel.marshall();
                if (parcel != null) {
                    parcel.recycle();
                }
                return marshall;
            } catch (Throwable th) {
                th = th;
                if (parcel != null) {
                    parcel.recycle();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            parcel = null;
        }
    }

    private static InputMethodSubtype[] unmarshall(byte[] bArr) {
        Parcel parcel;
        try {
            parcel = Parcel.obtain();
            try {
                parcel.unmarshall(bArr, 0, bArr.length);
                parcel.setDataPosition(0);
                InputMethodSubtype[] inputMethodSubtypeArr = (InputMethodSubtype[]) parcel.createTypedArray(InputMethodSubtype.CREATOR);
                if (parcel != null) {
                    parcel.recycle();
                }
                return inputMethodSubtypeArr;
            } catch (Throwable th) {
                th = th;
                if (parcel != null) {
                    parcel.recycle();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            parcel = null;
        }
    }

    private static byte[] compress(byte[] bArr) {
        Throwable th;
        Throwable th2;
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                try {
                    gZIPOutputStream.write(bArr);
                    gZIPOutputStream.finish();
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    $closeResource(null, gZIPOutputStream);
                    $closeResource(null, byteArrayOutputStream);
                    return byteArray;
                } catch (Throwable th3) {
                    th = th3;
                    th2 = null;
                    $closeResource(th2, gZIPOutputStream);
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                th = null;
                $closeResource(th, byteArrayOutputStream);
                throw th;
            }
        } catch (Exception e) {
            Slog.e(TAG, "Failed to compress the data.", e);
            return null;
        }
    }

    private static /* synthetic */ void $closeResource(Throwable th, AutoCloseable autoCloseable) {
        if (th == null) {
            autoCloseable.close();
            return;
        }
        try {
            autoCloseable.close();
        } catch (Throwable th2) {
            th.addSuppressed(th2);
        }
    }

    private static byte[] decompress(byte[] bArr, int i) {
        Throwable th;
        Throwable th2;
        int read;
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            try {
                GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
                try {
                    byte[] bArr2 = new byte[i];
                    int i2 = 0;
                    while (i2 < bArr2.length && (read = gZIPInputStream.read(bArr2, i2, bArr2.length - i2)) >= 0) {
                        i2 += read;
                    }
                    if (i != i2) {
                        $closeResource(null, gZIPInputStream);
                        $closeResource(null, byteArrayInputStream);
                        return null;
                    }
                    $closeResource(null, gZIPInputStream);
                    $closeResource(null, byteArrayInputStream);
                    return bArr2;
                } catch (Throwable th3) {
                    th = th3;
                    th2 = null;
                    $closeResource(th2, gZIPInputStream);
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                th = null;
                $closeResource(th, byteArrayInputStream);
                throw th;
            }
        } catch (Exception e) {
            Slog.e(TAG, "Failed to decompress the data.", e);
            return null;
        }
    }
}
