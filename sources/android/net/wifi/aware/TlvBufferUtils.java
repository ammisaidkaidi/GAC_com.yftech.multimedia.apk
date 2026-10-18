package android.net.wifi.aware;

import java.nio.BufferOverflowException;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import libcore.io.Memory;

/* loaded from: /home/user/work/dex/classes.dex */
public class TlvBufferUtils {
    private TlvBufferUtils() {
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class TlvConstructor {
        private byte[] mArray;
        private int mArrayLength;
        private int mLengthSize;
        private int mPosition;
        private int mTypeSize;

        public TlvConstructor(int i, int i2) {
            if (i < 0 || i > 2 || i2 <= 0 || i2 > 2) {
                throw new IllegalArgumentException("Invalid sizes - typeSize=" + i + ", lengthSize=" + i2);
            }
            this.mTypeSize = i;
            this.mLengthSize = i2;
        }

        public TlvConstructor wrap(byte[] bArr) {
            this.mArray = bArr;
            this.mArrayLength = bArr == null ? 0 : bArr.length;
            return this;
        }

        public TlvConstructor allocate(int i) {
            this.mArray = new byte[i];
            this.mArrayLength = i;
            return this;
        }

        public TlvConstructor allocateAndPut(List<byte[]> list) {
            if (list != null) {
                int i = 0;
                for (byte[] bArr : list) {
                    i += this.mTypeSize + this.mLengthSize;
                    if (bArr != null) {
                        i += bArr.length;
                    }
                }
                allocate(i);
                Iterator<byte[]> it = list.iterator();
                while (it.hasNext()) {
                    putByteArray(0, it.next());
                }
            }
            return this;
        }

        public TlvConstructor putByte(int i, byte b) {
            checkLength(1);
            addHeader(i, 1);
            byte[] bArr = this.mArray;
            int i2 = this.mPosition;
            this.mPosition = i2 + 1;
            bArr[i2] = b;
            return this;
        }

        public TlvConstructor putByteArray(int i, byte[] bArr, int i2, int i3) {
            checkLength(i3);
            addHeader(i, i3);
            if (i3 != 0) {
                System.arraycopy(bArr, i2, this.mArray, this.mPosition, i3);
            }
            this.mPosition += i3;
            return this;
        }

        public TlvConstructor putByteArray(int i, byte[] bArr) {
            return putByteArray(i, bArr, 0, bArr == null ? 0 : bArr.length);
        }

        public TlvConstructor putZeroLengthElement(int i) {
            checkLength(0);
            addHeader(i, 0);
            return this;
        }

        public TlvConstructor putShort(int i, short s) {
            checkLength(2);
            addHeader(i, 2);
            Memory.pokeShort(this.mArray, this.mPosition, s, ByteOrder.BIG_ENDIAN);
            this.mPosition += 2;
            return this;
        }

        public TlvConstructor putInt(int i, int i2) {
            checkLength(4);
            addHeader(i, 4);
            Memory.pokeInt(this.mArray, this.mPosition, i2, ByteOrder.BIG_ENDIAN);
            this.mPosition += 4;
            return this;
        }

        public TlvConstructor putString(int i, String str) {
            byte[] bArr;
            int i2;
            if (str != null) {
                bArr = str.getBytes();
                i2 = bArr.length;
            } else {
                bArr = null;
                i2 = 0;
            }
            return putByteArray(i, bArr, 0, i2);
        }

        public byte[] getArray() {
            return Arrays.copyOf(this.mArray, getActualLength());
        }

        private int getActualLength() {
            return this.mPosition;
        }

        private void checkLength(int i) {
            if (this.mPosition + this.mTypeSize + this.mLengthSize + i > this.mArrayLength) {
                throw new BufferOverflowException();
            }
        }

        private void addHeader(int i, int i2) {
            if (this.mTypeSize == 1) {
                this.mArray[this.mPosition] = (byte) i;
            } else if (this.mTypeSize == 2) {
                Memory.pokeShort(this.mArray, this.mPosition, (short) i, ByteOrder.BIG_ENDIAN);
            }
            this.mPosition += this.mTypeSize;
            if (this.mLengthSize == 1) {
                this.mArray[this.mPosition] = (byte) i2;
            } else if (this.mLengthSize == 2) {
                Memory.pokeShort(this.mArray, this.mPosition, (short) i2, ByteOrder.BIG_ENDIAN);
            }
            this.mPosition += this.mLengthSize;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class TlvElement {
        public int length;
        public int offset;
        public byte[] refArray;
        public int type;

        private TlvElement(int i, int i2, byte[] bArr, int i3) {
            this.type = i;
            this.length = i2;
            this.refArray = bArr;
            this.offset = i3;
            if (i3 + i2 > bArr.length) {
                throw new BufferOverflowException();
            }
        }

        public byte getByte() {
            if (this.length != 1) {
                throw new IllegalArgumentException("Accesing a byte from a TLV element of length " + this.length);
            }
            return this.refArray[this.offset];
        }

        public short getShort() {
            if (this.length != 2) {
                throw new IllegalArgumentException("Accesing a short from a TLV element of length " + this.length);
            }
            return Memory.peekShort(this.refArray, this.offset, ByteOrder.BIG_ENDIAN);
        }

        public int getInt() {
            if (this.length != 4) {
                throw new IllegalArgumentException("Accesing an int from a TLV element of length " + this.length);
            }
            return Memory.peekInt(this.refArray, this.offset, ByteOrder.BIG_ENDIAN);
        }

        public String getString() {
            return new String(this.refArray, this.offset, this.length);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class TlvIterable implements Iterable<TlvElement> {
        private byte[] mArray;
        private int mArrayLength;
        private int mLengthSize;
        private int mTypeSize;

        public TlvIterable(int i, int i2, byte[] bArr) {
            if (i < 0 || i > 2 || i2 <= 0 || i2 > 2) {
                throw new IllegalArgumentException("Invalid sizes - typeSize=" + i + ", lengthSize=" + i2);
            }
            this.mTypeSize = i;
            this.mLengthSize = i2;
            this.mArray = bArr;
            this.mArrayLength = bArr == null ? 0 : bArr.length;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("[");
            Iterator<TlvElement> it = iterator();
            boolean z = true;
            while (it.hasNext()) {
                TlvElement next = it.next();
                if (!z) {
                    sb.append(",");
                }
                z = false;
                sb.append(" (");
                if (this.mTypeSize != 0) {
                    sb.append("T=" + next.type + ",");
                }
                sb.append("L=" + next.length + ") ");
                if (next.length == 0) {
                    sb.append("<null>");
                } else if (next.length == 1) {
                    sb.append((int) next.getByte());
                } else if (next.length == 2) {
                    sb.append((int) next.getShort());
                } else if (next.length == 4) {
                    sb.append(next.getInt());
                } else {
                    sb.append("<bytes>");
                }
                if (next.length != 0) {
                    sb.append(" (S='" + next.getString() + "')");
                }
            }
            sb.append("]");
            return sb.toString();
        }

        public List<byte[]> toList() {
            ArrayList arrayList = new ArrayList();
            Iterator<TlvElement> it = iterator();
            while (it.hasNext()) {
                TlvElement next = it.next();
                arrayList.add(Arrays.copyOfRange(next.refArray, next.offset, next.offset + next.length));
            }
            return arrayList;
        }

        @Override // java.lang.Iterable
        public Iterator<TlvElement> iterator() {
            return new Iterator<TlvElement>() { // from class: android.net.wifi.aware.TlvBufferUtils.TlvIterable.1
                private int mOffset = 0;

                @Override // java.util.Iterator
                public boolean hasNext() {
                    return this.mOffset < TlvIterable.this.mArrayLength;
                }

                /* JADX WARN: Can't rename method to resolve collision */
                /* JADX WARN: Removed duplicated region for block: B:13:0x0053  */
                /* JADX WARN: Removed duplicated region for block: B:9:0x0048  */
                @Override // java.util.Iterator
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public TlvElement next() {
                    short s;
                    short peekShort;
                    if (hasNext()) {
                        short s2 = 0;
                        if (TlvIterable.this.mTypeSize == 1) {
                            peekShort = TlvIterable.this.mArray[this.mOffset];
                        } else if (TlvIterable.this.mTypeSize == 2) {
                            peekShort = Memory.peekShort(TlvIterable.this.mArray, this.mOffset, ByteOrder.BIG_ENDIAN);
                        } else {
                            s = 0;
                            this.mOffset += TlvIterable.this.mTypeSize;
                            if (TlvIterable.this.mLengthSize != 1) {
                                s2 = TlvIterable.this.mArray[this.mOffset];
                            } else if (TlvIterable.this.mLengthSize == 2) {
                                s2 = Memory.peekShort(TlvIterable.this.mArray, this.mOffset, ByteOrder.BIG_ENDIAN);
                            }
                            this.mOffset += TlvIterable.this.mLengthSize;
                            TlvElement tlvElement = new TlvElement(s, s2, TlvIterable.this.mArray, this.mOffset);
                            this.mOffset += s2;
                            return tlvElement;
                        }
                        s = peekShort;
                        this.mOffset += TlvIterable.this.mTypeSize;
                        if (TlvIterable.this.mLengthSize != 1) {
                        }
                        this.mOffset += TlvIterable.this.mLengthSize;
                        TlvElement tlvElement2 = new TlvElement(s, s2, TlvIterable.this.mArray, this.mOffset);
                        this.mOffset += s2;
                        return tlvElement2;
                    }
                    throw new NoSuchElementException();
                }

                @Override // java.util.Iterator
                public void remove() {
                    throw new UnsupportedOperationException();
                }
            };
        }
    }

    public static boolean isValid(byte[] bArr, int i, int i2) {
        if (i < 0 || i > 2) {
            throw new IllegalArgumentException("Invalid arguments - typeSize must be 0, 1, or 2: typeSize=" + i);
        }
        if (i2 <= 0 || i2 > 2) {
            throw new IllegalArgumentException("Invalid arguments - lengthSize must be 1 or 2: lengthSize=" + i2);
        }
        if (bArr == null) {
            return true;
        }
        int i3 = 0;
        while (true) {
            int i4 = i3 + i;
            if (i4 + i2 > bArr.length) {
                break;
            }
            if (i2 == 1) {
                i3 = bArr[i4] + i2 + i4;
            } else {
                i3 = Memory.peekShort(bArr, i4, ByteOrder.BIG_ENDIAN) + i2 + i4;
            }
        }
        return i3 == bArr.length;
    }
}
